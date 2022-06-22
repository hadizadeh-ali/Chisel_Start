;buildInfoPackage: chisel3, version: 3.3.1, scalaVersion: 2.12.11, sbtVersion: 1.3.10
circuit FirstModule : 
  module FirstModule : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<32>, flip offset : UInt<2>, out : UInt<8>}
    
    io.out <= UInt<8>("h00") @[FirstModule.scala 11:10]
    node _T = eq(io.offset, UInt<2>("h00")) @[FirstModule.scala 12:19]
    when _T : @[FirstModule.scala 12:33]
      node _T_1 = bits(io.in, 7, 0) @[FirstModule.scala 13:20]
      io.out <= _T_1 @[FirstModule.scala 13:12]
      skip @[FirstModule.scala 12:33]
    else : @[FirstModule.scala 14:35]
      node _T_2 = eq(io.offset, UInt<1>("h01")) @[FirstModule.scala 14:26]
      when _T_2 : @[FirstModule.scala 14:35]
        node _T_3 = bits(io.in, 15, 8) @[FirstModule.scala 15:20]
        io.out <= _T_3 @[FirstModule.scala 15:12]
        skip @[FirstModule.scala 14:35]
      else : @[FirstModule.scala 16:35]
        node _T_4 = eq(io.offset, UInt<2>("h02")) @[FirstModule.scala 16:26]
        when _T_4 : @[FirstModule.scala 16:35]
          node _T_5 = bits(io.in, 23, 16) @[FirstModule.scala 17:20]
          io.out <= _T_5 @[FirstModule.scala 17:12]
          skip @[FirstModule.scala 16:35]
        else : @[FirstModule.scala 18:16]
          node _T_6 = bits(io.in, 31, 24) @[FirstModule.scala 19:20]
          io.out <= _T_6 @[FirstModule.scala 19:12]
          skip @[FirstModule.scala 18:16]
    
