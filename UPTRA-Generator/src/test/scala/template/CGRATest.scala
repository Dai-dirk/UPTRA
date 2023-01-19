package dsa

import scala.io.Source
import java.io._
import java.math.BigInteger
import scala.math.BigInt
import chisel3._
import chisel3.util._

import scala.collection.mutable
import scala.collection.mutable.{ArrayBuffer, ListBuffer}
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}
import spec.CGRASpec

class CGRATest(c: CGRA, cfgFilename: String) extends PeekPokeTester(c) {
  val rows = c.rows
  val cols = c.cols
  // read config bit file
  Source.fromFile(cfgFilename).getLines().foreach{
    line => {
      val items = line.split(" ")
      val addr = Integer.parseInt(items(0), 16);        // config bus address
      val data = BigInt(new BigInteger(items(1), 16));  // config bus data
      poke(c.io.cfg_en, 1)
      poke(c.io.cfg_addr, addr)
      println("addr"+addr)
      poke(c.io.cfg_data, data)
      step(1)
    }
  }
  // delay for config done
  step(c.cfgRegNum + 2)
  poke(c.io.cfg_en, 0)

  //send CPU data to LSU
  poke(c.io.hostInterface(7).write_data.valid, 1)//load2
  poke(c.io.hostInterface(7).write_data.bits, 5)
  poke(c.io.hostInterface(7).write_addr, 3)
  poke(c.io.hostInterface(7).cycle, 0)
  step(1)
  poke(c.io.hostInterface(4).write_data.valid, 1)//load5
  poke(c.io.hostInterface(4).write_data.bits, 5)
  poke(c.io.hostInterface(4).write_addr, 2)
  poke(c.io.hostInterface(4).cycle, 0)
  step(1)
  poke(c.io.hostInterface(7).write_data.valid, 1)//load2
  poke(c.io.hostInterface(7).write_data.bits, 7)
  poke(c.io.hostInterface(7).write_addr, 6)
  poke(c.io.hostInterface(7).cycle, 0)
  step(1)
  poke(c.io.hostInterface(4).write_data.valid, 1)//load5
  poke(c.io.hostInterface(4).write_data.bits, 7)
  poke(c.io.hostInterface(4).write_addr, 4)
  poke(c.io.hostInterface(4).cycle, 0)
  step(1)
  poke(c.io.hostInterface(7).write_data.valid, 0)
  poke(c.io.hostInterface(4).write_data.valid, 0)
  step(1)
  /*poke(c.io.hostInterface(7).read_data.ready, 1)
  poke(c.io.hostInterface(7).read_addr, 11)
  step(1)
  val read=peek(c.io.hostInterface(7).read_data.bits).toString()
  println("read:"+read)*/
  // enable computation
  for( i <- 0 until cols+2){
    poke(c.io.en(i), 1)
  }
  // input test data
  // refer to mapped_dfgio.txt for the occupied I/O ports
  for( i <- 0 until 100){
    step(1)
    val add9 = peek(c.io.out(1)).toString()//out13
    val mul3 = peek(c.io.out(6)).toString()//out12
    val mul6 = peek(c.io.out(4)).toString()//out11
    val out = peek(c.io.out(5)).toString()//out8
    println("~~~~~~~~~~~~~~" + i + "~~~~~~~~~~~~~~~~")
    println("add9:" + add9 + " mul3: " + mul3 +" mul6: "+ mul6 +" out: " + out)
    println(" ")

  }
  //    println(peek(c.io.out(1)).toString())
  //step(5)
  //
  //println("OUTPUT and STORE data:"+read0+","+read1)
  /*for( i <- 1 until 20){
    poke(c.io.in(6), 6)
    poke(c.io.in(7), -50)
//    poke(c.io.in(0), (2*i+1))
    step(1)
    val valid1 = { if(i >= 2) "V: " else "X: " }
    val valid2 = { if(i >= 5) "V: " else "X: " }
    val out1 = peek(c.io.out(6)).toInt
    val out2 = peek(c.io.out(0)).toString()
//    println(peek(c.io.out(1)).toString())
    println(valid1 + out1 + ", " + valid2 + out2)
  }*/
}


object CGRATester extends App {
  val jsonFile = "src/main/resources/cgra_spec.json"
  CGRASpec.loadSpec(jsonFile)
  // val dut = new CGRA(attrs)
  iotesters.Driver.execute(args, () => new CGRA(CGRASpec.attrs, false)) {
    c => new CGRATest(c, "src/main/resources/config.bit")
  }

}


