
#include "mapper/mapper.h"


Mapper::Mapper(ADG* adg): _adg(adg) {
    initializeAdg();
}

Mapper::Mapper(ADG* adg, DFG* dfg): _adg(adg), _dfg(dfg) {
    initializeAdg();
    initializeDfg();
    _mapping = new Mapping(adg, dfg);
    // initializeCandidates();
    _isDfgModified = false;
    //@UPTRA: use topology order
    initialALAP();
    //sortDfgNodeInPlaceOrder();
}

Mapper::~Mapper(){
    if(_mapping != nullptr){
        delete _mapping;
    }
    if(_dfgModified != nullptr){
        delete _dfgModified;
    }
}

void Mapper::setADG(ADG* adg){
    _adg = adg;
    initializeAdg();
    if(_mapping != nullptr){
        delete _mapping;
    }
    _mapping = new Mapping(adg, _dfg);
}

// set DFG and initialize DFG
// modify: if the DFG is a modified one
void Mapper::setDFG(DFG* dfg, bool modify){
    _dfg = dfg;
    initializeDfg();
    if(_mapping != nullptr){
        delete _mapping;
    }
    _mapping = new Mapping(_adg, dfg);
    // initializeCandidates();
    if(modify){
        setDfgModified(dfg);
    } else{
        _isDfgModified = false;
    }
    //@UPTRA: use topology order
    initialALAP();
    //pre-optimize for inserting pass node
    preOptDFG();
    //sortDfgNodeInFlexibilityOrder();
    //sortDfgNodeInPlaceOrder();
}


// set modified DFG and delete the old one
void Mapper::setDfgModified(DFG* dfg){
    if(_dfgModified != nullptr){
        delete _dfgModified;
    }
    _dfgModified = dfg;
    _isDfgModified = true;
}

// // set ADG and initialize ADG
// void Mapper::setADG(ADG* adg){
//     _adg = adg;
//     initializeAdg();
// }


// initialize mapping status of ADG
void Mapper::initializeAdg(){
    // std::cout << "Initialize ADG\n";
    calAdgNodeDist();
}


// initialize mapping status of DFG
void Mapper::initializeDfg(){
    // topoSortDfgNodes();
    _dfg->topoSortNodes();
}


// // initialize candidates of DFG nodes
// void Mapper::initializeCandidates(){
//     Candidate cdt(_mapping, 50);
//     cdt.findCandidates();
//     // candidates = cdt.candidates(); // RETURN &
//     candidatesCnt = cdt.cnt();
// }


// // sort dfg nodes in reversed topological order
// // depth-first search
// void Mapper::dfs(DFGNode* node, std::map<int, bool>& visited){
//     int nodeId = node->id();
//     if(visited.count(nodeId) && visited[nodeId]){
//         return; // already visited
//     }
//     visited[nodeId] = true;
//     for(auto& in : node->inputs()){
//         int inNodeId = in.second.first;
//         if(inNodeId == _dfg->id()){ // node connected to DFG input port
//             continue;
//         }
//         dfs(_dfg->node(inNodeId), visited); // visit input node
//     }
//     dfgNodeTopo.push_back(_dfg->node(nodeId));
// }

// // sort dfg nodes in reversed topological order
// void Mapper::topoSortDfgNodes(){
//     std::map<int, bool> visited; // node visited status
//     for(auto& in : _dfg->outputs()){
//         int inNodeId = in.second.first;
//         if(inNodeId == _dfg->id()){ // node connected to DFG input port
//             continue;
//         }
//         dfs(_dfg->node(inNodeId), visited); // visit input node
//     }
// }


// calculate the shortest path among ADG nodes
void Mapper::calAdgNodeDist(){
    // map ADG node id to continuous index starting from 0
    std::map<int, int> _adgNodeId2Idx;
    // distances among ADG nodes
    std::vector<std::vector<int>> _adgNodeDist; // [node-idx][node-idx]
    int i = 0;
    // if the ADG node with the index is GIB
    std::map<int, bool> adgNodeIdx2GIB;
    for(auto& node : _adg->nodes()){
        adgNodeIdx2GIB[i] = (node.second->type() == "GIB");
        _adgNodeId2Idx[node.first] = i++;
    }
    int n = i; // total node number
    int inf = 0x7fffffff;
    _adgNodeDist.assign(n, std::vector<int>(n, inf));
    for(auto& node : _adg->nodes()){
        int idx = _adgNodeId2Idx[node.first];
        _adgNodeDist[idx][idx] = INT_MAX;
        for(auto& src : node.second->inputs()){
            int srcId = src.second.first;
            if(srcId == _adg->id()){
                continue; // connected to ADG input port
            }
            int srcPort = src.second.second;
            ADGNode* srcNode = _adg->node(srcId);
            int dist = 1;
            if(srcNode->type() == "GIB" && node.second->type() == "GIB"){
                if(dynamic_cast<GIBNode*>(srcNode)->outReged(srcPort)){ // output port reged
                    dist = 2;
                }
            }
            int srcIdx = _adgNodeId2Idx[srcId];
            _adgNodeDist[srcIdx][idx] = dist;
        }
    }
    // Floyd algorithm
    for (int k = 0; k < n; ++k) {
        if(adgNodeIdx2GIB[k]){
            for (int i = 0; i < n; ++i) {
                for (int j = 0; j < n; ++j) {
                    if (_adgNodeDist[i][k] < inf && _adgNodeDist[k][j] < inf &&
                        _adgNodeDist[i][j] > _adgNodeDist[i][k] + _adgNodeDist[k][j]) {
                        _adgNodeDist[i][j] = _adgNodeDist[i][k] + _adgNodeDist[k][j];
                    }
                }
            }
        }
    }

    // shortest distance between two ADG nodes (GPE/IOB nodes)
    for(auto& inode : _adg->nodes()){
       // if(inode.second->type() == "GIB" || inode.second->type() == "OB"){
        if(inode.second->type() == "GIB" ){
            continue;
        }
        int i = _adgNodeId2Idx[inode.first];
        for(auto& jnode : _adg->nodes()){
            if(jnode.second->type() == "GIB" ||(inode.second->type() == "IB" && jnode.second->type() == "IB")\
            ||(inode.second->type() == "OB" && jnode.second->type() == "OB")||(inode.second->type() == "OB" && jnode.second->type() == "IB")||
              (inode.second->type() == "IB" && jnode.second->type() == "OB")){
                continue;
            }
            int j = _adgNodeId2Idx[jnode.first];
            _adgNode2NodeDist[std::make_pair(inode.first, jnode.first)] = _adgNodeDist[i][j];
            //std::cout <<inode.second->type() <<"(" <<inode.first <<")"<< "to" <<jnode.second->type() <<"("<< jnode.first << ") : " << _adgNodeDist[i][j] << std::endl;;
        }
        //std::cout << std::endl;
    }

    // // shortest distance between ADG node (GPE node) and the ADG IO
    // for(auto& inode : _adg->nodes()){
    //     if(inode.second->type() != "GPE"){
    //         continue;
    //     }
    //     int i = _adgNodeId2Idx[inode.first];
    //     int minDist2IB = inf;
    //     int minDist2OB = inf;
    //     for(auto& jnode : _adg->nodes()){
    //         auto jtype = jnode.second->type();
    //         int j = _adgNodeId2Idx[jnode.first];
    //         if(jtype == "IB"){
    //             minDist2IB = std::min(minDist2IB, _adgNodeDist[j][i]);
    //         }else if(jtype == "OB"){
    //             minDist2OB = std::min(minDist2OB, _adgNodeDist[i][j]);
    //         }
    //     }
    //     _adgNode2IODist[inode.first] = std::make_pair(minDist2IB, minDist2OB);
    //     // std::cout << inode.first << ": " << minDist2IB << "," << minDist2OB << std::endl;
    // }
}


// get the shortest distance between two ADG nodes
int Mapper::getAdgNodeDist(int srcId, int dstId){
    // return _adgNodeDist[_adgNodeId2Idx[srcId]][_adgNodeId2Idx[dstId]];
    return _adgNode2NodeDist[std::make_pair(srcId, dstId)];
}

// // get the shortest distance between ADG node and ADG input
// int Mapper::getAdgNode2InputDist(int id){
//     return _adgNode2IODist[id].first;
// }

// // get the shortest distance between ADG node and ADG input
// int Mapper::getAdgNode2OutputDist(int id){
//     return _adgNode2IODist[id].second;
// }

// new
// calculate the number of the candidates for one DFG node
int Mapper::calCandidatesCnt(DFGNode* dfgNode, int maxCandidates){
    int candidatesCnt = 0;
    for(auto& elem : _adg->nodes()){
        auto adgNode = elem.second;
        //select GPE node
        if(adgNode->type() != "GPE" && adgNode->type() != "LSU"){
            continue;
        }
        if(adgNode->type() == "GPE"){
          GPENode* gpeNode = dynamic_cast<GPENode*>(adgNode);
          // check if the DFG node operationis supported
          if(gpeNode->opCapable(dfgNode->operation())){
            candidatesCnt++;
        }
        }else{
          LSUNode* lsuNode = dynamic_cast<LSUNode*>(adgNode);
          // check if the DFG node operationis supported
          if(lsuNode->opCapable(dfgNode->operation())){
            candidatesCnt++;
        }
        }

    }
    return std::min(candidatesCnt, maxCandidates);
}

// sort the DFG node IDs in placing order (ALAP order)
void Mapper::sortDfgNodeInPlaceOrder(){
    std::map<int, int> ALAP; // <dfgnode-id, ALAP>
    std::map<int, int> flexibility; // <dfgnode-id, flexibility>
    std::map<int, int> out_degree; // <dfgnode-id, flexibility>
    std::vector<int> sortedIdx; // <candidate-index, sum-distance>
    dfgNodeIdPlaceOrder.clear();
    // topological order
    for(auto node : _dfg->topoNodes()){
        dfgNodeIdPlaceOrder.push_back(node->id());
        ALAP[node->id()] = node->getALAP();
        flexibility[node->id()] = node->getALAP() - node->getASAP();
        for(auto elem : node->outputEdges()){
           out_degree[node->id()] += elem.second.size();
        }
        //std::cout << "node: " << node->name() << " out_dgree: " << out_degree[node->id()] << std::endl;
    }
    std::stable_sort(dfgNodeIdPlaceOrder.begin(), dfgNodeIdPlaceOrder.end(), [&](int a, int b){
        return ALAP[a] <  ALAP[b];
    });
    for (int node: dfgNodeIdPlaceOrder) {
        sortedIdx.push_back(node);
    //std::cout << "OLD Node ID: " << _dfg->node(node)->name()<<"("<<_dfg->node(node)->id() <<") ALAP: " <<_dfg->node(node)->getALAP()<< " flexibility: "<< flexibility[_dfg->node(node)->id()]<<std::endl;
    }
    int from = 0;
    for(int i = 1; i < sortedIdx.size(); ++i){
        if(ALAP[sortedIdx[i - 1]] != ALAP[sortedIdx[i]]){  //for the nodes has same ALAP, sort by flexibility
            std::stable_sort(dfgNodeIdPlaceOrder.begin() + from, dfgNodeIdPlaceOrder.begin() + i , [&](int a, int b){
                return out_degree[a] > out_degree[b];
            });
            from = i;
        }
    }
    std::stable_sort(dfgNodeIdPlaceOrder.begin() + from, dfgNodeIdPlaceOrder.end() , [&](int a, int b){
                return out_degree[a] > out_degree[b];
            });
    //int from = 0;
    /*for(int i = 1; i < sortedIdx.size(); ++i){
        if(ALAP[sortedIdx[i - 1]] != ALAP[sortedIdx[i]]){  //for the nodes has same ALAP, sort by flexibility
            std::stable_sort(dfgNodeIdPlaceOrder.begin() + from, dfgNodeIdPlaceOrder.begin() + i , [&](int a, int b){
                return flexibility[a] > flexibility[b];
            });
            from = i;
        }
    }
    std::stable_sort(dfgNodeIdPlaceOrder.begin() + from, dfgNodeIdPlaceOrder.end() , [&](int a, int b){
                return flexibility[a] > flexibility[b];
            });*/
    for (int node: dfgNodeIdPlaceOrder) {
    //std::cout << "Node ID: " << _dfg->node(node)->name()<<"("<<_dfg->node(node)->id() <<") ALAP: " <<_dfg->node(node)->getALAP()<< " flexibility: "<< flexibility[_dfg->node(node)->id()]<<std::endl;
    std::cout << "Node ID: " << _dfg->node(node)->name()<<"("<<_dfg->node(node)->id() <<") ALAP: " <<_dfg->node(node)->getALAP()<< " out_dgree: "<< out_degree[_dfg->node(node)->id()]<<std::endl;
    }

}
//new for module schedule
void Mapper::initialALAP(){
    //first we calculate the ALAP value
    std::map< DFGNode *, int> ALAPvalue;   // <dfgnode-id, ALAP>
    int maxValue = 0;
   for(auto node = _dfg->topoNodes().rbegin(); node !=_dfg->topoNodes().rend(); ++node){
    //for(DFGNode * node :_dfg->topoNodes()){
       int level = 0;
       for(auto outs : (**node).outputs()){   // all outputs
          for(auto out : outs.second){       //get <output node id , output node port>
             if(out.first != 0){
               if(level < _dfg->node(out.first)->getALAP() + (**node).opLatency()){ // dstALAP + self oplatency
                 level =  _dfg->node(out.first)->getALAP() + (**node).opLatency();
                }
              }
            }
        }
       (**node).setALAP(level);
       if (maxValue < level) {
          maxValue = level;
        }
    }
    for (DFGNode* node: _dfg->topoNodes()) {
    node->setALAP(maxValue - node->getALAP());
    }
     //second we calculate the ASAP value
    // int low_flex = 0;
     for(DFGNode * node :_dfg->topoNodes()){
         int level = 0;
         for(auto ins : node->inputs()){
            if(ins.second.first != 0){
                if(level < _dfg->node(ins.second.first)->getASAP() + _dfg->node(ins.second.first)->opLatency() )
                level = _dfg->node(ins.second.first)->getASAP() + _dfg->node(ins.second.first)->opLatency() ;
            }
         node->setASAP(level);
         }
    //get the lowest flexibility
         /*if(low_flex > node->getALAP() - node->getASAP())
           low_flex = node->getALAP() - node->getASAP();*/
     }
    /*for (DFGNode* node: _dfg->topoNodes()) {
    std::cout << "Node ID: " << node->name()<<"("<<node->id() <<") ASAP:" << node->getASAP() << std::endl;
    }*/

}

//pre-optimized the DFG
void Mapper::preOptDFG(){
     std::map<int, int> Vioedges;// <edge id, pass num>
    int maxDelay = 0;
    for(auto elem: _adg->nodes()){
        if(elem.second->type() == "GPE" ){
            maxDelay = dynamic_cast<GPENode*>(elem.second)->maxDelay();
            break;
        }else if(elem.second->type() == "LSU"){
            maxDelay = dynamic_cast<LSUNode*>(elem.second)->maxDelay();
            break;
        }
    }
     for(auto & node : _dfg->topoNodes()){
        int curASAP = node->getASAP();
        int curALAP = node->getALAP();
        //std::cout << "curNode and maxDelay and inedgesize: " << node->name() << "," << maxDelay <<","<<node->inputEdges().size()<< std::endl;
        for(auto inEdge: node->inputEdges()){
            int inEdgeId = inEdge.second;
            //std::cout << "edge id :" << inEdgeId << std::endl;
            int srcId = _dfg->edge(inEdgeId)->srcId();
            DFGNode* srcNode = _dfg->node(srcId);
            int srcASAP = srcNode->getASAP();
            int srcALAP = srcNode->getALAP();
            int ALAI_dif  = std::min(std::abs(curALAP - srcALAP),std::abs(curASAP - srcASAP));
            if(ALAI_dif <= 1)// only consider bigger difference value between ALAP
                continue;
            int max_size = std::max(_adg->rows(),_adg->colums());
            //get the  maximum delay number of ADGNode 
            if(ALAI_dif > (maxDelay + 0.5 * max_size)){
                int num = std::floor(ALAI_dif / (maxDelay + 0.5 * max_size));
            std::cout << "ALAI_dif: " << ALAI_dif << "," << max_size<< std::endl;
                Vioedges[inEdgeId] = num;
                continue;
                
            }else{
                continue;
            }
        }
     }
     if(!Vioedges.empty()){
        for(auto elem : Vioedges){
                int maxNodeId = _dfg->nodes().rbegin()->first; // std::map auto sort the key
                int maxEdgeId = _dfg->edges().rbegin()->first;
                DFGEdge* e = _dfg->edge(elem.first);
                //std::cout << "prenodename and edgeid: " <<srcNode->name()<<","<< inEdgeId << std::endl; 
                int srcId = e->srcId();
                int dstId = e->dstId();
                int srcPortIdx = e->srcPortIdx();
                int dstPortIdx = e->dstPortIdx();
                _dfg->delEdge(elem.first);
                int lastId = srcId;
                int lastPort = srcPortIdx;
                for(int i = 0; i < elem.second; i++){
                    DFGNode* newNode = new DFGNode();
                    newNode->setId(++maxNodeId);
                    newNode->setName("pass"+std::to_string(maxNodeId));
                    newNode->setOperation("PASS");
                    _dfg->addNode(newNode);
                    DFGEdge* e1 = new DFGEdge(lastId, maxNodeId);
                    e1->setId(++maxEdgeId);
                    e1->setSrcPortIdx(lastPort);
                    e1->setDstPortIdx(0);
                    _dfg->addEdge(e1);
                    lastId = maxNodeId;
                    lastPort = 0;
                    std::cout << "[PTRA] Pre-optimize, inserting one pass node!" << std::endl;
                }
                DFGEdge* e2 = new DFGEdge(maxNodeId, dstId);
                e2->setId(++maxEdgeId);
                e2->setSrcPortIdx(0);
                e2->setDstPortIdx(dstPortIdx);
                _dfg->addEdge(e2);
        }
        initializeDfg();
        initialALAP();
     }
}



// ===== timestamp functions >>>>>>>>>
void Mapper::setStartTime(){
    _start = std::chrono::steady_clock::now();
}


void Mapper::setTimeOut(double timeout){
    _timeout = timeout;
}


//get the running time in millisecond
double Mapper::runningTimeMS(){
    auto end = std::chrono::steady_clock::now();
    double runTime = std::chrono::duration_cast<std::chrono::milliseconds>(end-_start).count();
    setRunTime(runTime);
    return std::chrono::duration_cast<std::chrono::milliseconds>(end-_start).count();
}



// ==== map functions below >>>>>>>>
// check if the DFG can be mapped to the ADG according to the resources
bool Mapper::preMapCheck(ADG* adg, DFG* dfg){
    // first, check the I/O port number
    if(adg->numInputs() < dfg->numInputs() || adg->numOutputs() < dfg->numOutputs()){
        std::cout << "This DFG has too many I/O port!\n";
        return false;
    }
    // second, check the total node number
    if((adg->numGpeNodes()+adg->numLSUNodes()) < dfg->nodes().size()){                    //new, number of GPE Nodes + number of LSU Nodes
        std::cout << "This DFG has too many nodes!\n";
        return false;
    }
    // third, check if there are enough ADG nodes that can map the DFG nodes
    // supported operation count of ADG
    std::map<std::string, int> adgOpCnt;
    for(auto& elem : adg->nodes()){
        if(elem.second->type() == "GPE"){
            auto node = dynamic_cast<GPENode*>(elem.second);
            for(auto& op : node->operations()){
                if(adgOpCnt.count(op)){
                    adgOpCnt[op] += 1;
                } else {
                    adgOpCnt[op] = 1;
                }
            }
        }else if(elem.second->type() == "LSU"){
            auto node = dynamic_cast<LSUNode*>(elem.second);
            for(auto& op : node->operations()){
                if(adgOpCnt.count(op)){
                    adgOpCnt[op] += 1;
                } else {
                    adgOpCnt[op] = 1;
                }
            }
        }else if(elem.second->type() == "IB"){
            auto node = dynamic_cast<IOBNode*>(elem.second);
            for(auto& op : node->operations()){
                std::cout << "op: " << op <<std::endl;
                if(adgOpCnt.count(op)){
                    adgOpCnt[op] += 1;
                } else {
                    adgOpCnt[op] = 1;
                }
            }
        }else if(elem.second->type() == "OB"){
            auto node = dynamic_cast<IOBNode*>(elem.second);
            for(auto& op : node->operations()){
                std::cout << "op: " << op <<std::endl;
                if(adgOpCnt.count(op)){
                    adgOpCnt[op] += 1;
                } else {
                    adgOpCnt[op] = 1;
                }
            }
        }
    }
    // operation count of DFG
    std::map<std::string, int> dfgOpCnt;
    //int lsOpCnt=0;                          //new
    for(auto& elem : dfg->nodes()){
        auto op = elem.second->operation();
        assert(!op.empty());
           if(dfgOpCnt.count(op)){
            dfgOpCnt[op] += 1;
           } else {
            dfgOpCnt[op] = 1;
           }

    }
    //std::cout << "mapper335 precheck done: " << std::endl;
    for(auto& elem : dfgOpCnt){
        if(adgOpCnt[elem.first] < elem.second){
            std::cout << "No enough ADG nodes to support " << elem.first << std::endl;
            return false; // there should be enough ADG nodes that support this operation
        }
    }
    /*if(adg->numLSUNodes() < lsOpCnt){
        std::cout << "No enough LSU nodes to support LOAD and STORE operations " << std::endl;
        return false;
    }*/
    return true;
}

// // map the DFG to the ADG
// bool Mapper::mapping(){

// }


// mapper with running time
bool Mapper::mapperTimed(bool spatial){
    setStartTime();
    //new
    if(!spatial){
    // Initialize the II
        std::cout << "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" << std::endl;
        int ResMII = getResMII(getADG(), getDFG());
        std::cout << "[Initial ResMII: " << ResMII << "]" << std::endl;
        std::cout << "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" << std::endl;
        int RecMII = getRecMII(getDFG());
        std::cout << "[Initial RecMII: " << RecMII << "]" << std::endl;
        std::cout << "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" << std::endl;
        II = ResMII > RecMII? ResMII :RecMII;       // II = MAX(RecMII, ResMII)
    }else{
        if(!preMapCheck(getADG(), getDFG())){
        return false;
        }
        II = 1;
        std::cout << "Pre-map checking passed!\n";
    }
    // check if the DFG can be mapped to the ADG according to the resources
    // new: In temporal mapping, there is no need to preMapCheck
    /*if(!preMapCheck(getADG(), getDFG())){
        return false;
    }
    std::cout << "Pre-map checking passed!\n";*/
    //@UPTRA: sort the DFGNodes in ALAP value, mapping order will use ALAP order (just for cycle, insert pass node will has incorrect ALAP)
    sortDfgNodeInPlaceOrder();
    bool succeed = mapper(spatial);
    std::cout << "Running time(s): " << runningTimeMS()/1000 << std::endl;
    return succeed;
}


// execute mapping, timing sceduling, visualizing, config getting
// dumpConfig : dump configuration file
// dumpMappedViz : dump mapped visual graph
// resultDir: mapped result directory
bool Mapper::execute(bool dumpConfig, bool dumpMappedViz, std::string resultDir, bool spatial){
    std::cout << "Start mapping >>>>>>\n";
    bool res = mapperTimed(spatial);
    std::cout << "**************\n";
    if(res){
        std::string dir;
        if(!resultDir.empty()){
            dir = resultDir;
        }else{
            dir = "results"; // default directory
        }
        if(dumpMappedViz){
            Graphviz viz(_mapping, dir);
            viz.drawDFG();
            std::cout << "[UPTRA] Draw mapped DFG successfully!" << std::endl;
            //@UPTRA TODO: draw mapped ADG according to II
            //viz.drawADG();
            viz.dumpDFGIO();
            std::cout << "[UPTRA] Dump mapped DFG IO message successfully!" << std::endl;
        }
        if(dumpConfig){
            Configuration cfg(_mapping);
            std::ofstream ofs(dir + "/config.bit");
            cfg.dumpCfgData(ofs);
            std::cout << "[UPTRA] Dump config data successfully!" << std::endl;
        }
        std::cout << "Succeed to map DFG to ADG!<<<<<<\n" << std::endl;
    } else{
        std::cout << "Fail to map DFG to ADG!<<<<<<\n" << std::endl;
    }
    return res;
}
//new
//calculate the ResMII= (DFGNode nums) / (ADGNode nums)
int Mapper::getResMII(ADG* adg, DFG* dfg){
  //calculate available resources
  //@UPTRA: both IOB/GPE/LSU will dominate the ResMII, find the biggest among them
  int availableGPE = adg->numGpeNodes();
  int availableLSU = adg->numLSUNodes();
  int availableIOB = adg->numIOBNodes();
  int numGPE = 0;
  int numIOB = 0;
  int numLSU = 0;
  for(auto elem : dfg->nodes()){
    //std::cout << elem.second->operation() << std::endl;
    if(elem.second->operation() == "INPUT" || elem.second->operation() == "OUTPUT"){
        numIOB += 1 ;
    }else if(elem.second->operation() == "LOAD" || elem.second->operation() == "STORE"){
        numLSU += 1 ;
    }else{
        numGPE += 1 ;
    }
  }
  int ResMII_GPE = ceil(float(numGPE) / availableGPE);
  int ResMII_LSU = ceil(float(numLSU) / availableLSU);
  int ResMII_IOB = ceil(float(numIOB) / availableIOB);
  int ResMII = std::max(ResMII_GPE, ResMII_LSU);
  ResMII = std::max(ResMII, ResMII_IOB);
  std::cout << "Available GPE resources: " << availableGPE << " DFG size (functional nodes): " << numGPE <<" ResMII_GPE: " << ResMII_GPE << std::endl;
  std::cout << "Available LSU resources: " << availableLSU << " DFG size (load/store nodes): " << numLSU <<" ResMII_LSU: " << ResMII_LSU << std::endl;
  std::cout << "Available IOB resources: " << availableIOB << " DFG size (input/output nodes): " << numIOB <<" ResMII_IOB: " << ResMII_IOB << std::endl;
  return ResMII;
}
//new
//calculate the RecMII
//TODO: RecMII = MAX (delay(c) / distance(c))
int Mapper::getRecMII( DFG* dfg){
  float RecMII = 0.0;
  float temp_RecMII = 0.0;
  std::list<std::list<DFGEdge*>*>* cycles = dfg->getCycles();
  std::cout << "[UPTRA] number of cycles: " << cycles->size() << std::endl;
  for( auto cycle: *cycles) {
    temp_RecMII = float(cycle->size()) / 1.0;
    if(temp_RecMII > RecMII)
      RecMII = temp_RecMII;
  }
  return ceil(RecMII);
}
