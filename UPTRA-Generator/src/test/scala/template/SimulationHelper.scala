package dsa

import scala.collection.mutable.ArrayBuffer
import scala.io.Source

/** A class that helps users to automatically generate simulation codes for an architecture.
 * A result TXT can be interpreted in this class.
 * The result TXT indicate the mapping result of DFG IO nodes,
 * which consists of the name of these nodes, fire time and skew.
 */
class SimulationHelper() {

  var size = 0
  val opArray = new ArrayBuffer[String]()
  val fireTimeArray = new ArrayBuffer[Int]()
  var inputnum = 0
  var outputnum = 0
  var outputCycle = 0
  var loadnum = 0
  var storenum = 0
  val loadPorts = new ArrayBuffer[Int]()
  val storePorts = new ArrayBuffer[Int]()
  var II = 1
  val inputArray = new ArrayBuffer[Tuple2[Int, Int]]()
  val outputArray = new ArrayBuffer[Tuple2[Int, Int]]()
  var inputMap = Map[Tuple2[Int, Int], Array[Int]]()
  var outputMap = Map[Tuple2[Int, Int], Array[Int]]()
  var loadcycleid = new ArrayBuffer[Int]()
  var storecycleid = new ArrayBuffer[Int]()

  /** Add the mapping result of a mapped DFG node.
   *
   * @param result a line in the result TXT indicating the mapping result of a mapped DFG IO node
   */
  def addResult(result: String): Unit = {
    val tempList = result.replaceAll(",","").split(" ").toList

    //Add the name of the DFG node ID into opArray.
    val op = tempList(0)
    if (op.contains("#")) {
      return
    }
    else {
      if (op.contains("II")) {
        II = tempList(1).toInt
        return
      }
    }
    opArray.append(op)

    val moduleNum = tempList(1)
    val cycleid = (tempList(2).toInt-1)%II
    if (op.contains("output") || op.contains("input")) {
      if (op.contains("output")) {
        //Add the identification number of the mapped output ports into outPorts.
        outputArray.append(Tuple2(tempList(1).toInt, tempList(2).toInt))
        outputnum = outputnum + 1
      } else if (op.contains("input")) {
        //Add the identification number of the mapped input ports into inputPorts.
        inputArray.append(Tuple2(tempList(1).toInt, tempList(2).toInt))
        inputnum = inputnum + 1
      }
    }
    if (op.contains("load") || op.contains("store")) {
      if (op.contains("load")) {
        //Add the identification number of the mapped output ports into outPorts.
        loadPorts.append(moduleNum.toInt)
        loadnum = loadnum + 1
        loadcycleid.append(cycleid.toInt)
      } else if (op.contains("store")) {
        //Add the identification number of the mapped input ports into inputPorts.
        storePorts.append(moduleNum.toInt)
        storenum = storenum + 1
        storecycleid.append(cycleid.toInt)
      }
    }
    //println(tempList(1))
    //Add the fire time of the mapped IO node into fireTimeArray.
    val fireTime = tempList(2).toInt
    fireTimeArray.append(fireTime)
  }

  /** Reset values in this class.
   */
  def reset(): Unit = {
    size = 0
    opArray.clear()
    fireTimeArray.clear()
    outputArray.clear()
    outputMap = Map[Tuple2[Int, Int], Array[Int]]()
    inputMap = Map[Tuple2[Int, Int], Array[Int]]()
  }

  /** Initialize values in this class according to a result TXT.
   *
   * @param resultFilename the file name of the result TXT
   */
  def init(resultFilename: String): Unit = {
    reset()
    val resultArray = Source.fromFile(resultFilename).getLines().toArray
    val mesageArray = resultArray.tail
    mesageArray.map(r => addResult(r))
    size = opArray.size
    //Set the cycle we can obtain the last result.
    outputCycle = fireTimeArray.reduce((t1, t2) => Math.max(t1, t2))
  }

  /** Get the number of inputports
   */
  def getinputnum(): Int = {
    inputnum
  }

  /** Get the number of outputports
   */
  def getoutputnum(): Int = {
    outputnum
  }

  /** Get the number of loadports
   */
  def getloadnum(): Int = {
    loadnum
  }

  /** Get the number of storeports
   */
  def getstorenum(): Int = {
    storenum
  }

  /** Get II
   */
  def getii(): Int = {
    println("II: " + II)
    II
  }
  /** Get data arrays with corresponding address.
   *
   * @param dataSize      the data size of a data array
   * @param inDataArrays  the input data arrays for LSUs
   * @param outDataArrays the expected data arrays for LSUs
   * @param refDataArrays the expected data arrays for the output ports
   * @return the expected data arrays for the output ports with corresponding identification number)
   */
  def getDataWithAddr(dataSize: Int = 0, inDataArrays: Array[Array[Int]] = null,
                      outDataArrays: Array[Array[Int]] = null, refDataArrays: Array[Array[Int]] = null): Array[Any] = {
    val refDataAddr = new ArrayBuffer[Tuple2[Int, Int]]()
    val refstoreAddr = new ArrayBuffer[Int]()
    var inDatas = Map[List[Int], Array[Int]]()
    var outDatas = Map[Int, Array[Int]]()
    var refDatas = Map[Int, Array[Int]]()
    var index = 0
    var p = 0
    var q = 0
    var addrMap = Map[Int, Int]()
    var addr = 0
    
      for (i <- 0 until size) {
        val op = opArray(i)
        if (op.contains("output")) {
          refDataAddr.append(outputArray(p))
          p = p + 1
        }
        if (op.contains("store")) {
          refstoreAddr.append(storePorts(q))
          q = q + 1
        }
      }

    for (i <- 0 until refDataAddr.size) {
      outputMap = outputMap ++ Map(refDataAddr(i) -> refDataArrays(i))
    }

    for (i <- 0 until refstoreAddr.size) {
      outDatas = refDatas ++ Map(refstoreAddr(i) -> outDataArrays(i))
    }
    Array(outputMap, outDatas)
  }

  /** Get the cycle we can obtain the result.
   *
   * @return the cycle we can obtain the result
   */
  def getOutputCycle(): Int = {
    outputCycle
  }
}
