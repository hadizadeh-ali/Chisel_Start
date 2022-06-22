module FirstModule(
  input         clock,
  input         reset,
  input  [31:0] io_in,
  input  [1:0]  io_offset,
  output [7:0]  io_out
);
  wire  _T = io_offset == 2'h0; // @[FirstModule.scala 12:19]
  wire  _T_2 = io_offset == 2'h1; // @[FirstModule.scala 14:26]
  wire  _T_4 = io_offset == 2'h2; // @[FirstModule.scala 16:26]
  wire [7:0] _GEN_0 = _T_4 ? io_in[23:16] : io_in[31:24]; // @[FirstModule.scala 16:35]
  wire [7:0] _GEN_1 = _T_2 ? io_in[15:8] : _GEN_0; // @[FirstModule.scala 14:35]
  assign io_out = _T ? io_in[7:0] : _GEN_1; // @[FirstModule.scala 11:10 FirstModule.scala 13:12 FirstModule.scala 15:12 FirstModule.scala 17:12 FirstModule.scala 19:12]
endmodule
