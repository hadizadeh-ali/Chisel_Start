// See LICENSE.txt for license details.
package myProject

import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class FirstModuleTB(c: FirstModule) extends PeekPokeTester(c) {
  val test_in = 12345678
  for (t <- 0 until 4) {
    poke(c.io.in,     test_in)
    poke(c.io.offset, t)
    step(1)
    expect(c.io.out, (test_in >> (t * 8)) & 0xFF)
  }
}