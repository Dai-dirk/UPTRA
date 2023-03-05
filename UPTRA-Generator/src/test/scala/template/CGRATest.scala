package dsa

import scala.io.Source
import java.io._
import java.math.BigInteger
import scala.math.BigInt
import chisel3._
import chisel3.util._
import chisel3.assert

import scala.collection.mutable
import scala.collection.mutable.{ArrayBuffer, ListBuffer}
//import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}
import chiseltest._
import org.scalatest._
import org.scalatest.flatspec.AnyFlatSpec
import spec.CGRASpec

//The main object of Architecture simulation
class TestSim extends AnyFlatSpec with ChiselScalatestTester{
  

  //select which benchmark to be simulated
  val benchmark = "LSU/test/centro-fir_CONST"
  val IOFilename = s"../bechmarks/$benchmark/mapped_dfgio.txt"


  val simulationHelper = new SimulationHelper()
  simulationHelper.init(IOFilename)
  val outputCycle = simulationHelper.getOutputCycle()
  val inputnum = simulationHelper.getinputnum()
  val outputnum = simulationHelper.getoutputnum()
  val loadnum = simulationHelper.getloadnum()
  val storenum = simulationHelper.getstorenum()
  println("outputCycle: " + outputCycle)
  println("inputnum: " + inputnum)
  println("outputnum: " + outputnum)
  println("loadnum: " + loadnum)
  println("storenum: " + storenum)

  //set the size of data for simulation 
  val dataSize = 2

  var inData = Array.ofDim[Int](inputnum,dataSize)
  var outPortRefArrays = Array.ofDim[Int](outputnum,dataSize)
  var loadData = Array.ofDim[Int](loadnum,dataSize)
  var storeRefArrays = Array.ofDim[Int](storenum,dataSize)
  var results = new Array[Int](outputnum)
  val inputArray = new ArrayBuffer[Tuple2[Int, Int]]()
  val outputArray = new ArrayBuffer[Tuple2[Int, Int]]()
  var loadport = new ArrayBuffer[Int]()
  var storeport = new ArrayBuffer[Int]()
  var loadmap = Map[Int, Array[Int]]()
  var loadaddr = Array.ofDim[Int](loadnum,dataSize)
  var loadaddrmap = Map[Int, Array[Int]]()
  var storeaddr = Array.ofDim[Int](storenum,dataSize)
  var storeaddrmap = Map[Int, Array[Int]]()
  var inputMap = Map[Tuple2[Int, Int], Array[Int]]()
  var outputMap = Map[Tuple2[Int, Int], Array[Int]]()
  val loadArray = new ArrayBuffer[Tuple3[Int, Int, Int]]()
  val storeArray = new ArrayBuffer[Tuple3[Int, Int, Int]]()
  var loadMap = Map[Tuple3[Int, Int, Int], Int]()
  var storeMap = Map[Tuple3[Int, Int, Int], Int]()
  var loadcycleids = new ArrayBuffer[Int]()
  var storecycleids = new ArrayBuffer[Int]()
  

  for(j <- 0 until inputnum) {
   inData(j) = (0 until dataSize).map(i => j).toArray
    inputArray.append(simulationHelper.inputArray(j))
    inputMap = inputMap ++ Map(inputArray(j) -> inData(j))
  }
  

  for(j <- 0 until loadnum) {
    loadData(j) = (0 until dataSize).map(i => scala.util.Random.nextInt(10)).toArray
    
    loadport.append(simulationHelper.loadPorts(j))
    loadcycleids.append(simulationHelper.loadcycleid(j))
  }

  for(j <- 0 until storenum) {
    storeport.append(simulationHelper.storePorts(j))
    storecycleids.append(simulationHelper.storecycleid(j))
  }

  var refArray = Array[Int]()
  var ref = 0

  var refstoreArray = Array[Int]()
  var refstore = 0

  // the II of mapped DFG, II = 1 for static configuration
  var testII = 1

  benchmark match {
    

    case "LSU/test/centro-fir_CONST" => {
      for (i <- 1 until dataSize) {
        loadaddr(0)(i) = 1
        loadaddr(1)(i) = 1
        loadaddr(2)(i) = 1
        loadaddr(3)(i)= 1
        loadaddr(4)(i) = 1
        loadaddr(5)(i) = 1
        loadaddr(6)(i) = 1
        loadaddr(7)(i)= 1
        loadaddr(8)(i)= 1
        loadaddr(9)(i)= 1
        loadaddr(10)(i)= 1
        loadaddr(11)(i)= 1
        loadaddr(12)(i)= 1
        loadaddr(13)(i)= 1

        for (j <- 0 until loadnum) {
          loadArray.append(Tuple3(loadport(j), loadaddr(j)(i), loadcycleids(j)))
          loadMap = loadMap ++ Map(Tuple3(loadport(j), loadaddr(j)(i), loadcycleids(j)) -> loadData(j)(i))
        }          
      }
       for (i <- 1 until dataSize) {
        storeRefArrays(0)(i) = (loadMap(Tuple3(loadport(0), loadaddr(0)(i), loadcycleids(0))) + loadMap(Tuple3(loadport(1), loadaddr(1)(i), loadcycleids(1)))) * (loadMap(Tuple3(loadport(12), loadaddr(12)(i), loadcycleids(12))) + loadMap(Tuple3(loadport(13), loadaddr(13)(i), loadcycleids(13)))) * 2 + loadMap(Tuple3(loadport(2), loadaddr(2)(i), loadcycleids(2)))
        storeRefArrays(1)(i) = (loadMap(Tuple3(loadport(3), loadaddr(3)(i), loadcycleids(3))) + loadMap(Tuple3(loadport(4), loadaddr(4)(i), loadcycleids(4)))) * (loadMap(Tuple3(loadport(12), loadaddr(12)(i), loadcycleids(12))) + loadMap(Tuple3(loadport(13), loadaddr(13)(i), loadcycleids(13)))) * 2 + loadMap(Tuple3(loadport(5), loadaddr(5)(i), loadcycleids(5)))
        storeRefArrays(2)(i) = (loadMap(Tuple3(loadport(6), loadaddr(6)(i), loadcycleids(6))) + loadMap(Tuple3(loadport(7), loadaddr(7)(i), loadcycleids(7)))) * (loadMap(Tuple3(loadport(12), loadaddr(12)(i), loadcycleids(12))) + loadMap(Tuple3(loadport(13), loadaddr(13)(i), loadcycleids(13)))) * 2 + loadMap(Tuple3(loadport(8), loadaddr(8)(i), loadcycleids(8)))
        storeRefArrays(3)(i) = (loadMap(Tuple3(loadport(9), loadaddr(9)(i), loadcycleids(9))) + loadMap(Tuple3(loadport(10), loadaddr(10)(i), loadcycleids(10)))) * (loadMap(Tuple3(loadport(12), loadaddr(12)(i), loadcycleids(12))) + loadMap(Tuple3(loadport(13), loadaddr(13)(i), loadcycleids(13)))) * 2 + loadMap(Tuple3(loadport(11), loadaddr(11)(i), loadcycleids(11)))
        storeaddr(0)(i) = 6
        storeaddr(1)(i) = 7
        storeaddr(2)(i) = 6
        storeaddr(3)(i) = 7
        for (j <- 0 until storenum) {
          storeArray.append(Tuple3(storeport(j), storeaddr(j)(i), storecycleids(j)))
          storeMap = storeMap ++ Map(Tuple3(storeport(j), storeaddr(j)(i), storecycleids(j)) -> storeRefArrays(j)(i))
        } 
      }
    }

  }
  

  //}

  for(j <- 0 until loadnum) {
    loadaddrmap = loadaddrmap ++ Map(loadport(j) -> loadaddr(j))
  }
  for(j <- 0 until storenum) {
    //storeport.append(simulationHelper.storePorts(j))
    storeaddrmap = storeaddrmap ++ Map(storeport(j) -> storeaddr(j))
  }
  //val outDataRefArrays = Array(refArray)
  val dataWithAddr = simulationHelper.getDataWithAddr(inDataArrays = inData, outDataArrays = storeRefArrays, refDataArrays = outPortRefArrays)
  val outPortRefs = dataWithAddr(0).asInstanceOf[Map[Tuple2[Int, Int], Array[Int]]]

  val storeRefs = dataWithAddr(1).asInstanceOf[Map[Int, Array[Int]]]
  testII = simulationHelper.getii
  
  val parameters = new Parameters(testII)
  parameters.setOutPortRefs(outPortRefs)
  parameters.setStoreRefs(storeMap)
  parameters.setStoreAddr(storeaddrmap)

  //Pass the input data to tester
  parameters.setInputPortData(inputMap)
  parameters.setLoadData(loadMap)
  parameters.setPortCycle(simulationHelper)
  parameters.setLoadAddr(loadaddrmap)
  
  //set the scale of simulated architecture
  val jsonFile = "src/main/resources/cgra_spec.json"
  CGRASpec.loadSpec(jsonFile)

  ////////chiseltest
  behavior of "CGRA"
  it should "work harder" in {
    test(new CGRA(CGRASpec.attrs, false)) {
      c => new BMTester(c, s"../bechmarks/$benchmark/config.bit", parameters, inputnum, outputnum, loadnum, storenum)

    }
  }



}
////////////////////////////////////////////////////////////////////////////////////////////////////////
/** A class which passes the parameters for apptester.
 *
 * @param testII     the targeted II
 */
class Parameters(testII: Int) {

  /** A map between the targeted output port and the expected data array.
   */
  var outPortRefs = Map[Tuple2[Int, Int], Array[Int]]()

  /** A map between the targeted store and the expected data array.
   */
  var storeRefs = Map[Tuple3[Int, Int, Int], Int]()

  /** A map between the targeted input port and the input data array.
   */
  var inputPortData = Map[Tuple2[Int, Int], Array[Int]]()

  /** A map between the targeted load and the load data array.
   */
  var loadPortData = Map[Tuple3[Int, Int, Int], Int]()

  /** The cycle we can obtain the result.
   */
  var outputCycle = 1

  /** A table of the load data's address.
   */
  var loadAddr = Map[Int, Array[Int]]()

  /** A table of the store data's address.
   */
  var storeAddr = Map[Int, Array[Int]]()

//get parameters from simulate main function

  def setPortCycle(simulationHelper: SimulationHelper): Unit = {
    outputCycle = simulationHelper.outputCycle
  }

  /** Set the map between the targeted output port and the expected data array.
   */
  def setOutPortRefs(arg: Map[Tuple2[Int, Int], Array[Int]]): Unit = {
    outPortRefs = arg
  }

  /** Set the table of the load data's address.
   */
  def setLoadAddr(arg: Map[Int, Array[Int]]): Unit = {
    loadAddr = arg
  }

  /** Set the table of the store data's address.
   */
  def setStoreAddr(arg: Map[Int, Array[Int]]): Unit = {
    storeAddr = arg
  }
  /** Set the map between the targeted store and the expected data array.
   */
  def setStoreRefs(arg: Map[Tuple3[Int, Int, Int], Int]): Unit = {
    storeRefs = arg
  }
  
  /** Set the map between the targeted input port and the input data array.
   */
  def setInputPortData(arg: Map[Tuple2[Int, Int], Array[Int]]): Unit = {
    inputPortData = arg
  }

  /** Set the map between the targeted load and the load data array.
   */
  def setLoadData(arg: Map[Tuple3[Int, Int, Int], Int]): Unit = {
    loadPortData = arg
  }
//pass parameters to Apptester  

  /** Get the targeted II.
   */
  def getTestII(): Int = {
    testII
  }

  /** Get the cycle we can obtain the result.
   */
  def getOutputCycle(): Int = {
    outputCycle
  }

  /** Get the map between the targeted output port and the expected data array.
   */
  def getOutPortRefs(): Map[Tuple2[Int, Int], Array[Int]] = {
    outPortRefs
  }

  /** Get the map between the targeted input port and the input data array.
   */
  def getInputPortData(): Map[Tuple2[Int, Int], Array[Int]] = {
    inputPortData
  }

    /** Get the table of the load data's address.
   */
  def getLoadAddr(): Map[Int, Array[Int]] = {
    loadAddr
  }

  /** Get the table of the store data's address.
   */
  def getStoreAddr(): Map[Int, Array[Int]] = {
    storeAddr
  }
  /** Get the map between the targeted store and the expected data array.
   */
  def getStoreRefs(): Map[Tuple3[Int, Int, Int], Int] = {
    storeRefs
  }

  /** Get the map between the targeted load and the load data array.
   */
  def getLoadData(): Map[Tuple3[Int, Int, Int], Int] = {
    loadPortData
  }
}

/** A base class of testers for benchmarks.
 * It help users to test the architecture and benchmark in the specific format of Chisel testers using the Verilator backend.
 *
 * @param c             the top design
 * @param parameters the class which passes the parameters for apptester
 */
class ApplicationTester(c: CGRA, parameters: Parameters) extends AnyFlatSpec with ChiselScalatestTester {
  /** Translate a signed Int as unsigned BigInt.
   * @param signedInt the signed Int
   * @return the unsigned BigInt
   */
   // behavior of "c"
  def asUnsignedInt(signedInt: Int): BigInt = (BigInt(signedInt >>> 1) << 1) + (signedInt & 1)

  /** Verifies data in output ports during the activating process.
   *
   * @param testII the targeted II
   */
  def checkPortOuts(testII: Int): Unit = {
    val refs = parameters.getOutPortRefs()
    val outputCycle = parameters.getOutputCycle()
//    val outputPortCycleMap = parameters.outputPortCycleMap
    val dataSize = refs.toArray.last._2.size - 1

    val T = (dataSize + outputCycle / testII) * testII

    println("*******" + outputCycle + "******" + T + "*******" + dataSize)
    for (t <- 0 until T) {c.clock.step(1)
      for (port <- refs.keys) {     
        val data = refs(port)
        val cycle = port._2 
        if (t >= cycle && t < cycle + dataSize * testII) {
          if (cycle % testII == t % testII) {
            c.io.out(port._1).expect(asUnsignedInt(data((t - cycle)/testII + 1)).U)
            println("cycle: " + t + "; outportID: " + port._1)
            println(asUnsignedInt(data((t - cycle)/testII + 1)).toString + " " + c.io.out(port._1).peek().toString())
          }
        }
      }
 
    }
  }
  /** Transfers data through the input ports.
   *
   * @param testII the targeted II
   */
  def inputs(testII: Int): Unit = {
    val refs = parameters.getOutPortRefs()
    val outputCycle = parameters.getOutputCycle()
    val inputDataMap = parameters.getInputPortData()
//    val inputPortCycleMap = parameters.inputPortCycleMap
    val dataSize = inputDataMap.toArray.last._2.size - 1

    val T = (dataSize + outputCycle / testII) * testII
    for (t <- 0 until T) {
      for (port <- inputDataMap.keys) {
        val data = inputDataMap(port)
        val cycle = port._2
        if (t >= cycle && t < cycle + dataSize * testII) {
          if (cycle % testII == t % testII) {
            c.io.in(port._1).poke(asUnsignedInt(data((t - cycle)/testII + 1)).U)
            println("cycle: " + t + "; " + "inportID: " + port._1.toString + " inData: " + data((t-cycle)/testII + 1).toString)
          }
        }
      }
      c.clock.step(1)
    }
  }

    /** Run.
   *
   * @param testII the targeted II
   */
  def run(testII: Int): Unit = {
    val outputCycle = parameters.getOutputCycle()
    val dataSize = 1

    val T = (dataSize + outputCycle / testII) * testII
    for (t <- 0 until T  ) {
      println("T:" + t)
      c.clock.step(1)
    }
  }

  /** Verifies data in output ports during the activating process when transferring data through the input ports.
   *
   * @param testII the targeted II
   */
  def checkPortOutsWithInput(testII: Int): Unit = {
    val refs = parameters.getOutPortRefs()
    val outputCycle = parameters.getOutputCycle()
    val inputDataMap = parameters.getInputPortData()
//    val outputPortCycleMap = parameters.outputPortCycleMap
//    val inputPortCycleMap = parameters.inputPortCycleMap
    val dataSize = refs.toArray.last._2.size - 1

    val T = (dataSize + outputCycle / testII) * testII 
    for (t <- 0 until T) {
      c.clock.step(1)
      for (port <- inputDataMap.keys) {
        val data = inputDataMap(port)
        val cycle = port._2
        if (t >= cycle && t < cycle + dataSize * testII) {
          if (cycle % testII == t % testII) {
            c.io.in(port._1).poke(asUnsignedInt(data((t - cycle)/testII + 1)).U)
            println("cycle: " + t + "; " + "inportID: " + port._1.toString + " inData: " + data((t-cycle)/testII + 1).toString)
          }
        }
      }
      
      for (port <- refs.keys) {
        val data = refs(port)
        val cycle = port._2
        if (t >= cycle && t < cycle + dataSize * testII) {
          if (cycle % testII == t % testII) {
            c.io.out(port._1).expect(asUnsignedInt(data((t - cycle)/testII + 1)).U)
            println("cycle: " + t + "; outportID: " + port._1)
            println(asUnsignedInt(data((t - cycle)/testII + 1)).toString + " " + c.io.out(port._1).peek().toString())
          }
        }
      }
      
    }
  }

  /** Save data to be loaded in mem.
   *
   */
  def loads: Unit = {
    val loadDataMap = parameters.getLoadData()
    val loadAddrMap = parameters.getLoadAddr()
      for (port <- loadDataMap.keys) {
        val data = loadDataMap(port)
        val Addr = port._2
        c.io.hostInterface(port._1).write_data.valid.poke(1.B)
        c.io.hostInterface(port._1).write_data.bits.poke(asUnsignedInt(data).U)
        c.io.hostInterface(port._1).write_addr.poke(asUnsignedInt(Addr).U)
        c.io.hostInterface(port._1).cycle.poke(asUnsignedInt(port._3).U)
        println("LoadMemID: " + port._1.toString + " Addr: " + Addr.toString + "  inData: " + data.toString + " cycle%II: " + port._3.toString)
        c.clock.step(1)
      }
    for (port <- loadDataMap.keys) {
      c.io.hostInterface(port._1).write_data.valid.poke(0.B)
      c.clock.step(1)
    }
  }

  /** Check data in mem.
   */
  def checkStore: Unit = {
    val refs = parameters.getStoreRefs()
    val storeAddrMap = parameters.getStoreAddr()
      for (port <- refs.keys) {
        val data = refs(port)
        val Addr = port._2
        c.io.hostInterface(port._1).read_addr.poke(asUnsignedInt(Addr).U)
        c.io.hostInterface(port._1).read_data.ready.poke(1.B)
        c.io.hostInterface(port._1).cycle.poke(asUnsignedInt(port._3).U)
        c.clock.step(1)
        c.io.hostInterface(port._1).read_data.bits.expect(asUnsignedInt(data).U)
        println("StoreMemID: " + port._1 + " Addr: " + Addr.toString + " cycle%II: " + port._3.toString)
        println(asUnsignedInt(data).toString + " " + c.io.hostInterface(port._1).read_data.bits.peek().toString())
      }
  }
}

class BMTester(c: CGRA, cfgFilename: String, parameters: Parameters, innum: Int, outnum: Int, loadnum: Int, storenum:Int) extends ApplicationTester(c, parameters) {
  val rows = c.rows
  val cols = c.cols
  // read config bit file
  Source.fromFile(cfgFilename).getLines().foreach{
    line => {
      val items = line.split(" ")
      val addr = Integer.parseInt(items(0), 16);        // config bus address
      val data = BigInt(new BigInteger(items(1), 16));  // config bus data
      c.io.cfg_en.poke(1.B)
      c.io.cfg_addr.poke(addr.U)
      c.io.cfg_data.poke(data.U)
      c.clock.step(1)
    }
  }

  // delay for config done
  c.clock.step(c.cfgRegNum + 2)
  c.io.cfg_en.poke(0.B)

  if(loadnum != 0) {
    loads
  }
  // enable computation
  for( i <- 0 until cols+2){
    c.io.en(i).poke(1.B)
  }
  val testII = parameters.getTestII()
  

  if((innum != 0) && (outnum != 0)) {
    checkPortOutsWithInput(testII)
  }
  else if((innum == 0) && (outnum != 0)) {
    checkPortOuts(testII)
  }
  else if((innum != 0) && (outnum == 0)) {
    inputs(testII)
   } else {
     run(testII)
  }

  // disable computation
  for( i <- 0 until cols+2){
    c.io.en(i).poke(0.B)
  }

  if(storenum != 0) {
    checkStore
  }
  // input test data

  
}
