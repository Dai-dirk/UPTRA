#include <iostream>
#include <set>
#include <cstdlib>
#include <ctime>
#include <regex>
#include <sstream>
#include <list>
#include <getopt.h>
#include "op/operations.h"
#include "ir/adg_ir.h"
#include "ir/dfg_ir.h"
#include "mapper/mapper_sa.h"
#include "spdlog/spdlog.h"
#include "spdlog/cfg/argv.h"

// split string using regex
std::vector<std::string> split(const std::string& str, const std::string& delim){
    std::regex re{ delim };
    return std::vector<std::string>{
        std::sregex_token_iterator(str.begin(), str.end(), re, -1),
        std::sregex_token_iterator()
    };
}

// remove the prefix path  
std::string fileNameRemovePath(const std::string& filename) {
  size_t lastindex = filename.find_last_of(".");
  std::string res = filename.substr(0, lastindex);

  lastindex = filename.find_last_of("\\/");
  if (lastindex != std::string::npos) {
    res = res.substr(lastindex + 1);
  }
  return res;
}

// get the file directory
std::string fileDir(const std::string& filename) {
  size_t lastindex = filename.find_last_of("\\/");
  if (lastindex == std::string::npos) {
    return std::string("./");
  }
  return filename.substr(0, lastindex);
}

int main(int argc, char* argv[]) {
    // spdlog load log level from argv
    // ./examlpe SPDLOG_LEVEL=info, mylogger=trace
    spdlog::cfg::load_argv_levels(argc, argv);

    static struct option long_options[] = {
        // {"verbose",        no_argument,       nullptr, 'v',},
        {"dump-config",     required_argument, nullptr, 'c',},  // true/false
        {"dump-mapped-viz", required_argument, nullptr, 'm',},  // true/false
        {"obj-opt",         required_argument, nullptr, 'o',},  // true/false
        {"timeout-ms",      required_argument, nullptr, 't',},
        {"max-iters",       required_argument, nullptr, 'i',},
        {"op-file",         required_argument, nullptr, 'p',},
        {"adg-file",        required_argument, nullptr, 'a',},
        {"dfg-files",       required_argument, nullptr, 'd',},  // can input multiple files, separated by " " or ","
        {"spatial",        required_argument, nullptr, 's',},
        {0, 0, 0, 0,}
    };
    static char* const short_options = (char *)"c:m:o:t:i:p:a:d:s:";

    std::string op_fn;  // "resources/ops/operations.json";  // operations file name
    std::string adg_fn; // "resources/adgs/my_cgra_test.json"; // ADG filename
    std::vector<std::string> dfg_fns; // "resources/dfgs/conv3.dot"; // DFG filenames
    int timeout_ms = 3600000;
    int max_iters = 2000;
    bool dumpConfig = true;
    bool dumpMappedViz = true;
    bool objOpt = true;
    bool spatial = false;
    std::string resultDir = "";

    int opt;
    while ((opt = getopt_long(argc, argv, short_options, long_options, nullptr)) != -1) {
        switch (opt) {
        //   case 'v': verbose = true; break;
            case 'c': std::istringstream(optarg) >> std::boolalpha >> dumpConfig; break;
            case 'm': std::istringstream(optarg) >> std::boolalpha >> dumpMappedViz; break;
            case 'o': std::istringstream(optarg) >> std::boolalpha >> objOpt; break;
            case 't': timeout_ms = atoi(optarg); break;
            case 'i': max_iters = atoi(optarg); break;
            case 'p': op_fn = optarg; break;
            case 'a': adg_fn = optarg; break;
            case 'd': dfg_fns = split(optarg, "[\\s,?]+"); break;  
            case 's': std::istringstream(optarg) >> std::boolalpha >> spatial; break;         
            case '?': std::cout << "Unknown option: " << optopt << std::endl; exit(1);
        }
    }
    if(op_fn.empty()){
        std::cout << "Please input operation file!" << std::endl; 
        exit(1);
    }
    if(adg_fn.empty()){
        std::cout << "Please input ADG file!" << std::endl; 
        exit(1);
    }
    if(dfg_fns.empty()){
        std::cout << "Please input at least one DFG file!" << std::endl; 
        exit(1);
    }

    unsigned seed = time(0); // random seed using current time
    srand(seed);  // set random generator seed 
    std::cout << "Parse Operations: " << op_fn << std::endl;
    Operations::Instance(op_fn);
    // Operations::print();

    std::cout << "Parse ADG: " << adg_fn << std::endl;
    ADGIR adg_ir(adg_fn);
    ADG* adg = adg_ir.getADG();
    std::cout<< "ADGNode size: " << adg->nodes().size() << std::endl;

    // map DFG to ADG
    MapperSA mapper(adg, timeout_ms, max_iters, objOpt);
    // MapperSA mapper(adg, dfg, 3600000, 2000);
    int numDfg = dfg_fns.size();
    int numSucceed = 0;
    for(auto& dfg_fn : dfg_fns){
        std::cout << "Parse DFG: " << dfg_fn << std::endl;
        DFGIR dfg_ir(dfg_fn);
        DFG* dfg = dfg_ir.getDFG();
        // dfg->print();
        // map DFG to ADG
        mapper.setDFG(dfg);
        resultDir = fileDir(dfg_fn);
        bool succeed;
        std::vector<int> II;
        std::vector<int> Lat;
        std::vector<double> run_time;
        double ALL_II=0;
        double ALL_Lat=0;
        double ALL_time=0;
        for(int i = 0; i < 1 ; i++){
            succeed = mapper.execute(dumpConfig, dumpMappedViz, resultDir, spatial);
            if(!succeed){
                break;
            }
            II.push_back(mapper.getII());
            ALL_II += mapper.getII();
            Lat.push_back(mapper.getLat() + 1);
            ALL_Lat += (mapper.getLat() + 1);
            run_time.push_back(mapper.RunTime()/1000);
            ALL_time += (mapper.RunTime()/1000);
        }
        if(!succeed){
            break;
        }
        /*std::cout << "ALL II: ";
        for(auto elem : II){
            std::cout << elem << " "; 
        }
        std::cout << " Average: " << ALL_II/10 << std::endl;
        std::cout << "ALL Lat: ";
        for(auto elem : Lat){
            std::cout << elem << " "; 
        }
        std::cout << " Average: " << ALL_Lat/10 << std::endl;
        std::cout << "ALL TIME: ";
        for(auto elem : run_time){
            std::cout << elem << " "; 
        }
        std::cout << " Average: " << ALL_time/10 << std::endl;*/
        numSucceed++;
    }
    
    if(numDfg > 1){
        std::cout << "=============================================\n";
        if(numSucceed == numDfg){
            std::cout << "Succeed to map all the DFGs, number:  " << numSucceed << std::endl;
        }else{
            std::cout << "Fail to map the DFG:  " << dfg_fns[numSucceed] << std::endl;
        }
        std::cout << "=============================================\n";
    }
    
    return numSucceed != numDfg;
}
