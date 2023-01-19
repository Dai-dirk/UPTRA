module IOB(
  input  [31:0] io_in_0,
  output [31:0] io_out_0
);
  assign io_out_0 = io_in_0; // @[IOB.scala 60:42]
endmodule
module Muxn(
  input         io_config,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  output [31:0] io_out
);
  assign io_out = io_config ? io_in_1 : io_in_0; // @[Multiplexer.scala 20:10]
endmodule
module ConfigMem(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input         io_en,
  input  [2:0]  io_cycle,
  input  [2:0]  io_II,
  input  [31:0] io_cfg_data,
  output        io_out_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg  configmem_0_0; // @[ConfigMem.scala 81:26]
  reg  configmem_0_1; // @[ConfigMem.scala 81:26]
  reg  configmem_0_2; // @[ConfigMem.scala 81:26]
  reg  configmem_0_3; // @[ConfigMem.scala 81:26]
  reg  configmem_0_4; // @[ConfigMem.scala 81:26]
  reg [2:0] config_pointer_i; // @[ConfigMem.scala 95:32]
  reg [2:0] config_pointer; // @[ConfigMem.scala 96:30]
  wire  _GEN_5 = io_cfg_en & io_cfg_data[0]; // @[ConfigMem.scala 102:54]
  wire  _T_5 = config_pointer_i == io_II; // @[ConfigMem.scala 124:46]
  wire [2:0] _T_7 = config_pointer_i + 3'h1; // @[ConfigMem.scala 124:77]
  wire  _GEN_13 = 3'h1 == config_pointer ? configmem_0_1 : configmem_0_0; // @[ConfigMem.scala 131:45]
  wire  _GEN_14 = 3'h2 == config_pointer ? configmem_0_2 : _GEN_13; // @[ConfigMem.scala 131:45]
  wire  _GEN_15 = 3'h3 == config_pointer ? configmem_0_3 : _GEN_14; // @[ConfigMem.scala 131:45]
  assign io_out_0 = 3'h4 == config_pointer ? configmem_0_4 : _GEN_15; // @[ConfigMem.scala 131:45]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  configmem_0_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  configmem_0_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  configmem_0_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  configmem_0_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  configmem_0_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  config_pointer_i = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  config_pointer = _RAND_6[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      configmem_0_0 <= 1'h0;
    end else if (io_cfg_en) begin
      if (3'h0 == io_cycle) begin
        configmem_0_0 <= _GEN_5;
      end
    end
    if (reset) begin
      configmem_0_1 <= 1'h0;
    end else if (io_cfg_en) begin
      if (3'h1 == io_cycle) begin
        configmem_0_1 <= _GEN_5;
      end
    end
    if (reset) begin
      configmem_0_2 <= 1'h0;
    end else if (io_cfg_en) begin
      if (3'h2 == io_cycle) begin
        configmem_0_2 <= _GEN_5;
      end
    end
    if (reset) begin
      configmem_0_3 <= 1'h0;
    end else if (io_cfg_en) begin
      if (3'h3 == io_cycle) begin
        configmem_0_3 <= _GEN_5;
      end
    end
    if (reset) begin
      configmem_0_4 <= 1'h0;
    end else if (io_cfg_en) begin
      if (3'h4 == io_cycle) begin
        configmem_0_4 <= _GEN_5;
      end
    end
    if (reset) begin
      config_pointer_i <= 3'h0;
    end else if (io_en) begin
      if (_T_5) begin
        config_pointer_i <= 3'h0;
      end else begin
        config_pointer_i <= _T_7;
      end
    end else begin
      config_pointer_i <= 3'h0;
    end
    config_pointer <= config_pointer_i;
  end
endmodule
module IOB_8(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input         io_en,
  output [31:0] io_out_0
);
  wire  Muxn_io_config; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_in_0; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_in_1; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_out; // @[IOB.scala 40:41]
  wire  ConfigMem_clock; // @[IOB.scala 41:21]
  wire  ConfigMem_reset; // @[IOB.scala 41:21]
  wire  ConfigMem_io_cfg_en; // @[IOB.scala 41:21]
  wire  ConfigMem_io_en; // @[IOB.scala 41:21]
  wire [2:0] ConfigMem_io_cycle; // @[IOB.scala 41:21]
  wire [2:0] ConfigMem_io_II; // @[IOB.scala 41:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[IOB.scala 41:21]
  wire  ConfigMem_io_out_0; // @[IOB.scala 41:21]
  wire  _T_1 = 10'h7 == io_cfg_addr[17:8]; // @[IOB.scala 42:50]
  Muxn Muxn ( // @[IOB.scala 40:41]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_out(Muxn_io_out)
  );
  ConfigMem ConfigMem ( // @[IOB.scala 41:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  assign io_out_0 = Muxn_io_out; // @[IOB.scala 55:17]
  assign Muxn_io_config = ConfigMem_io_out_0; // @[IOB.scala 56:22]
  assign Muxn_io_in_0 = io_in_0; // @[IOB.scala 53:23]
  assign Muxn_io_in_1 = io_in_1; // @[IOB.scala 53:23]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[IOB.scala 42:19]
  assign ConfigMem_io_en = io_en; // @[IOB.scala 44:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[IOB.scala 45:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[IOB.scala 46:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[IOB.scala 47:21]
endmodule
module IOB_9(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input         io_en,
  output [31:0] io_out_0
);
  wire  Muxn_io_config; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_in_0; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_in_1; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_out; // @[IOB.scala 40:41]
  wire  ConfigMem_clock; // @[IOB.scala 41:21]
  wire  ConfigMem_reset; // @[IOB.scala 41:21]
  wire  ConfigMem_io_cfg_en; // @[IOB.scala 41:21]
  wire  ConfigMem_io_en; // @[IOB.scala 41:21]
  wire [2:0] ConfigMem_io_cycle; // @[IOB.scala 41:21]
  wire [2:0] ConfigMem_io_II; // @[IOB.scala 41:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[IOB.scala 41:21]
  wire  ConfigMem_io_out_0; // @[IOB.scala 41:21]
  wire  _T_1 = 10'h8 == io_cfg_addr[17:8]; // @[IOB.scala 42:50]
  Muxn Muxn ( // @[IOB.scala 40:41]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_out(Muxn_io_out)
  );
  ConfigMem ConfigMem ( // @[IOB.scala 41:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  assign io_out_0 = Muxn_io_out; // @[IOB.scala 55:17]
  assign Muxn_io_config = ConfigMem_io_out_0; // @[IOB.scala 56:22]
  assign Muxn_io_in_0 = io_in_0; // @[IOB.scala 53:23]
  assign Muxn_io_in_1 = io_in_1; // @[IOB.scala 53:23]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[IOB.scala 42:19]
  assign ConfigMem_io_en = io_en; // @[IOB.scala 44:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[IOB.scala 45:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[IOB.scala 46:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[IOB.scala 47:21]
endmodule
module IOB_10(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input         io_en,
  output [31:0] io_out_0
);
  wire  Muxn_io_config; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_in_0; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_in_1; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_out; // @[IOB.scala 40:41]
  wire  ConfigMem_clock; // @[IOB.scala 41:21]
  wire  ConfigMem_reset; // @[IOB.scala 41:21]
  wire  ConfigMem_io_cfg_en; // @[IOB.scala 41:21]
  wire  ConfigMem_io_en; // @[IOB.scala 41:21]
  wire [2:0] ConfigMem_io_cycle; // @[IOB.scala 41:21]
  wire [2:0] ConfigMem_io_II; // @[IOB.scala 41:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[IOB.scala 41:21]
  wire  ConfigMem_io_out_0; // @[IOB.scala 41:21]
  wire  _T_1 = 10'h9 == io_cfg_addr[17:8]; // @[IOB.scala 42:50]
  Muxn Muxn ( // @[IOB.scala 40:41]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_out(Muxn_io_out)
  );
  ConfigMem ConfigMem ( // @[IOB.scala 41:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  assign io_out_0 = Muxn_io_out; // @[IOB.scala 55:17]
  assign Muxn_io_config = ConfigMem_io_out_0; // @[IOB.scala 56:22]
  assign Muxn_io_in_0 = io_in_0; // @[IOB.scala 53:23]
  assign Muxn_io_in_1 = io_in_1; // @[IOB.scala 53:23]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[IOB.scala 42:19]
  assign ConfigMem_io_en = io_en; // @[IOB.scala 44:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[IOB.scala 45:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[IOB.scala 46:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[IOB.scala 47:21]
endmodule
module IOB_11(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input         io_en,
  output [31:0] io_out_0
);
  wire  Muxn_io_config; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_in_0; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_in_1; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_out; // @[IOB.scala 40:41]
  wire  ConfigMem_clock; // @[IOB.scala 41:21]
  wire  ConfigMem_reset; // @[IOB.scala 41:21]
  wire  ConfigMem_io_cfg_en; // @[IOB.scala 41:21]
  wire  ConfigMem_io_en; // @[IOB.scala 41:21]
  wire [2:0] ConfigMem_io_cycle; // @[IOB.scala 41:21]
  wire [2:0] ConfigMem_io_II; // @[IOB.scala 41:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[IOB.scala 41:21]
  wire  ConfigMem_io_out_0; // @[IOB.scala 41:21]
  wire  _T_1 = 10'ha == io_cfg_addr[17:8]; // @[IOB.scala 42:50]
  Muxn Muxn ( // @[IOB.scala 40:41]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_out(Muxn_io_out)
  );
  ConfigMem ConfigMem ( // @[IOB.scala 41:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  assign io_out_0 = Muxn_io_out; // @[IOB.scala 55:17]
  assign Muxn_io_config = ConfigMem_io_out_0; // @[IOB.scala 56:22]
  assign Muxn_io_in_0 = io_in_0; // @[IOB.scala 53:23]
  assign Muxn_io_in_1 = io_in_1; // @[IOB.scala 53:23]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[IOB.scala 42:19]
  assign ConfigMem_io_en = io_en; // @[IOB.scala 44:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[IOB.scala 45:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[IOB.scala 46:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[IOB.scala 47:21]
endmodule
module IOB_12(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input         io_en,
  output [31:0] io_out_0
);
  wire  Muxn_io_config; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_in_0; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_in_1; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_out; // @[IOB.scala 40:41]
  wire  ConfigMem_clock; // @[IOB.scala 41:21]
  wire  ConfigMem_reset; // @[IOB.scala 41:21]
  wire  ConfigMem_io_cfg_en; // @[IOB.scala 41:21]
  wire  ConfigMem_io_en; // @[IOB.scala 41:21]
  wire [2:0] ConfigMem_io_cycle; // @[IOB.scala 41:21]
  wire [2:0] ConfigMem_io_II; // @[IOB.scala 41:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[IOB.scala 41:21]
  wire  ConfigMem_io_out_0; // @[IOB.scala 41:21]
  wire  _T_1 = 10'h49 == io_cfg_addr[17:8]; // @[IOB.scala 42:50]
  Muxn Muxn ( // @[IOB.scala 40:41]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_out(Muxn_io_out)
  );
  ConfigMem ConfigMem ( // @[IOB.scala 41:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  assign io_out_0 = Muxn_io_out; // @[IOB.scala 55:17]
  assign Muxn_io_config = ConfigMem_io_out_0; // @[IOB.scala 56:22]
  assign Muxn_io_in_0 = io_in_0; // @[IOB.scala 53:23]
  assign Muxn_io_in_1 = io_in_1; // @[IOB.scala 53:23]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[IOB.scala 42:19]
  assign ConfigMem_io_en = io_en; // @[IOB.scala 44:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[IOB.scala 45:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[IOB.scala 46:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[IOB.scala 47:21]
endmodule
module IOB_13(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input         io_en,
  output [31:0] io_out_0
);
  wire  Muxn_io_config; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_in_0; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_in_1; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_out; // @[IOB.scala 40:41]
  wire  ConfigMem_clock; // @[IOB.scala 41:21]
  wire  ConfigMem_reset; // @[IOB.scala 41:21]
  wire  ConfigMem_io_cfg_en; // @[IOB.scala 41:21]
  wire  ConfigMem_io_en; // @[IOB.scala 41:21]
  wire [2:0] ConfigMem_io_cycle; // @[IOB.scala 41:21]
  wire [2:0] ConfigMem_io_II; // @[IOB.scala 41:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[IOB.scala 41:21]
  wire  ConfigMem_io_out_0; // @[IOB.scala 41:21]
  wire  _T_1 = 10'h4a == io_cfg_addr[17:8]; // @[IOB.scala 42:50]
  Muxn Muxn ( // @[IOB.scala 40:41]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_out(Muxn_io_out)
  );
  ConfigMem ConfigMem ( // @[IOB.scala 41:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  assign io_out_0 = Muxn_io_out; // @[IOB.scala 55:17]
  assign Muxn_io_config = ConfigMem_io_out_0; // @[IOB.scala 56:22]
  assign Muxn_io_in_0 = io_in_0; // @[IOB.scala 53:23]
  assign Muxn_io_in_1 = io_in_1; // @[IOB.scala 53:23]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[IOB.scala 42:19]
  assign ConfigMem_io_en = io_en; // @[IOB.scala 44:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[IOB.scala 45:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[IOB.scala 46:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[IOB.scala 47:21]
endmodule
module IOB_14(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input         io_en,
  output [31:0] io_out_0
);
  wire  Muxn_io_config; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_in_0; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_in_1; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_out; // @[IOB.scala 40:41]
  wire  ConfigMem_clock; // @[IOB.scala 41:21]
  wire  ConfigMem_reset; // @[IOB.scala 41:21]
  wire  ConfigMem_io_cfg_en; // @[IOB.scala 41:21]
  wire  ConfigMem_io_en; // @[IOB.scala 41:21]
  wire [2:0] ConfigMem_io_cycle; // @[IOB.scala 41:21]
  wire [2:0] ConfigMem_io_II; // @[IOB.scala 41:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[IOB.scala 41:21]
  wire  ConfigMem_io_out_0; // @[IOB.scala 41:21]
  wire  _T_1 = 10'h4b == io_cfg_addr[17:8]; // @[IOB.scala 42:50]
  Muxn Muxn ( // @[IOB.scala 40:41]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_out(Muxn_io_out)
  );
  ConfigMem ConfigMem ( // @[IOB.scala 41:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  assign io_out_0 = Muxn_io_out; // @[IOB.scala 55:17]
  assign Muxn_io_config = ConfigMem_io_out_0; // @[IOB.scala 56:22]
  assign Muxn_io_in_0 = io_in_0; // @[IOB.scala 53:23]
  assign Muxn_io_in_1 = io_in_1; // @[IOB.scala 53:23]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[IOB.scala 42:19]
  assign ConfigMem_io_en = io_en; // @[IOB.scala 44:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[IOB.scala 45:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[IOB.scala 46:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[IOB.scala 47:21]
endmodule
module IOB_15(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input         io_en,
  output [31:0] io_out_0
);
  wire  Muxn_io_config; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_in_0; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_in_1; // @[IOB.scala 40:41]
  wire [31:0] Muxn_io_out; // @[IOB.scala 40:41]
  wire  ConfigMem_clock; // @[IOB.scala 41:21]
  wire  ConfigMem_reset; // @[IOB.scala 41:21]
  wire  ConfigMem_io_cfg_en; // @[IOB.scala 41:21]
  wire  ConfigMem_io_en; // @[IOB.scala 41:21]
  wire [2:0] ConfigMem_io_cycle; // @[IOB.scala 41:21]
  wire [2:0] ConfigMem_io_II; // @[IOB.scala 41:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[IOB.scala 41:21]
  wire  ConfigMem_io_out_0; // @[IOB.scala 41:21]
  wire  _T_1 = 10'h4c == io_cfg_addr[17:8]; // @[IOB.scala 42:50]
  Muxn Muxn ( // @[IOB.scala 40:41]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_out(Muxn_io_out)
  );
  ConfigMem ConfigMem ( // @[IOB.scala 41:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  assign io_out_0 = Muxn_io_out; // @[IOB.scala 55:17]
  assign Muxn_io_config = ConfigMem_io_out_0; // @[IOB.scala 56:22]
  assign Muxn_io_in_0 = io_in_0; // @[IOB.scala 53:23]
  assign Muxn_io_in_1 = io_in_1; // @[IOB.scala 53:23]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[IOB.scala 42:19]
  assign ConfigMem_io_en = io_en; // @[IOB.scala 44:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[IOB.scala 45:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[IOB.scala 46:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[IOB.scala 47:21]
endmodule
module ALU(
  input  [4:0]  io_config,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  output [31:0] io_out
);
  wire [31:0] _T_4 = io_in_0 + io_in_1; // @[Operations.scala 131:41]
  wire [31:0] _T_8 = io_in_0 - io_in_1; // @[Operations.scala 133:41]
  wire [63:0] _T_11 = io_in_0 * io_in_1; // @[Operations.scala 135:41]
  wire [31:0] _T_14 = io_in_0 & io_in_1; // @[Operations.scala 146:41]
  wire [31:0] _T_17 = io_in_0 | io_in_1; // @[Operations.scala 148:41]
  wire [31:0] _T_20 = io_in_0 ^ io_in_1; // @[Operations.scala 150:41]
  wire  _T_21 = 5'h0 == io_config; // @[Mux.scala 80:60]
  wire [31:0] _T_22 = _T_21 ? io_in_0 : 32'h0; // @[Mux.scala 80:57]
  wire  _T_23 = 5'h1 == io_config; // @[Mux.scala 80:60]
  wire [31:0] _T_24 = _T_23 ? _T_4 : _T_22; // @[Mux.scala 80:57]
  wire  _T_25 = 5'h2 == io_config; // @[Mux.scala 80:60]
  wire [31:0] _T_26 = _T_25 ? _T_8 : _T_24; // @[Mux.scala 80:57]
  wire  _T_27 = 5'h3 == io_config; // @[Mux.scala 80:60]
  wire [63:0] _T_28 = _T_27 ? _T_11 : {{32'd0}, _T_26}; // @[Mux.scala 80:57]
  wire  _T_29 = 5'h4 == io_config; // @[Mux.scala 80:60]
  wire [63:0] _T_30 = _T_29 ? {{32'd0}, _T_14} : _T_28; // @[Mux.scala 80:57]
  wire  _T_31 = 5'h5 == io_config; // @[Mux.scala 80:60]
  wire [63:0] _T_32 = _T_31 ? {{32'd0}, _T_17} : _T_30; // @[Mux.scala 80:57]
  wire  _T_33 = 5'h6 == io_config; // @[Mux.scala 80:60]
  wire [63:0] _T_34 = _T_33 ? {{32'd0}, _T_20} : _T_32; // @[Mux.scala 80:57]
  assign io_out = _T_34[31:0]; // @[ALU.scala 25:10]
endmodule
module RF(
  input         clock,
  input         reset,
  input         io_en,
  input  [31:0] io_in_0,
  output [31:0] io_out_0,
  output [31:0] io_out_1
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] regs_0; // @[RegFile.scala 24:21]
  assign io_out_0 = regs_0; // @[RegFile.scala 37:42]
  assign io_out_1 = regs_0; // @[RegFile.scala 37:42]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regs_0 = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      regs_0 <= 32'h0;
    end else if (io_en) begin
      regs_0 <= io_in_0;
    end
  end
endmodule
module DelayPipe(
  input         clock,
  input         reset,
  input         io_en,
  input  [2:0]  io_config,
  input  [31:0] io_in,
  output [31:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] regs_0; // @[DelayPipe.scala 70:21]
  reg [31:0] regs_1; // @[DelayPipe.scala 70:21]
  reg [31:0] regs_2; // @[DelayPipe.scala 70:21]
  reg [31:0] regs_3; // @[DelayPipe.scala 70:21]
  reg [31:0] regs_4; // @[DelayPipe.scala 70:21]
  reg [2:0] wptr; // @[DelayPipe.scala 71:21]
  reg [2:0] rptr; // @[DelayPipe.scala 72:21]
  reg [2:0] config_temp; // @[DelayPipe.scala 74:28]
  wire  _T_1 = wptr < 3'h4; // @[DelayPipe.scala 77:23]
  wire  _T_2 = io_en & _T_1; // @[DelayPipe.scala 77:14]
  wire [2:0] _T_4 = wptr + 3'h1; // @[DelayPipe.scala 78:17]
  wire  _T_7 = _T_4 >= io_config; // @[DelayPipe.scala 83:17]
  wire [2:0] _T_11 = _T_4 - io_config; // @[DelayPipe.scala 84:24]
  wire [2:0] _T_13 = 3'h6 + wptr; // @[DelayPipe.scala 86:30]
  wire [2:0] _T_15 = _T_13 - io_config; // @[DelayPipe.scala 86:37]
  wire  _T_16 = io_config > 3'h0; // @[DelayPipe.scala 90:28]
  wire  _T_17 = io_en & _T_16; // @[DelayPipe.scala 90:14]
  reg [2:0] cnt; // @[DelayPipe.scala 94:20]
  wire  _T_18 = ~io_en; // @[DelayPipe.scala 95:8]
  wire  _T_19 = config_temp != io_config; // @[DelayPipe.scala 97:26]
  wire  _T_20 = cnt < io_config; // @[DelayPipe.scala 99:18]
  wire [2:0] _T_22 = cnt + 3'h1; // @[DelayPipe.scala 100:16]
  wire  _T_23 = 3'h0 == io_config; // @[DelayPipe.scala 103:22]
  wire  _T_24 = io_en & _T_23; // @[DelayPipe.scala 103:14]
  wire  _T_25 = cnt == io_config; // @[DelayPipe.scala 105:28]
  wire  _T_26 = io_en & _T_25; // @[DelayPipe.scala 105:20]
  wire [31:0] _GEN_16 = 3'h1 == rptr ? regs_1 : regs_0; // @[DelayPipe.scala 106:12]
  wire [31:0] _GEN_17 = 3'h2 == rptr ? regs_2 : _GEN_16; // @[DelayPipe.scala 106:12]
  wire [31:0] _GEN_18 = 3'h3 == rptr ? regs_3 : _GEN_17; // @[DelayPipe.scala 106:12]
  wire [31:0] _GEN_19 = 3'h4 == rptr ? regs_4 : _GEN_18; // @[DelayPipe.scala 106:12]
  wire [31:0] _GEN_20 = _T_26 ? _GEN_19 : 32'h0; // @[DelayPipe.scala 105:43]
  assign io_out = _T_24 ? io_in : _GEN_20; // @[DelayPipe.scala 104:12 DelayPipe.scala 106:12 DelayPipe.scala 108:12]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regs_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  regs_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  regs_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  regs_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  regs_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  wptr = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  rptr = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  config_temp = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  cnt = _RAND_8[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      regs_0 <= 32'h0;
    end else if (_T_17) begin
      if (3'h0 == wptr) begin
        regs_0 <= io_in;
      end
    end
    if (reset) begin
      regs_1 <= 32'h0;
    end else if (_T_17) begin
      if (3'h1 == wptr) begin
        regs_1 <= io_in;
      end
    end
    if (reset) begin
      regs_2 <= 32'h0;
    end else if (_T_17) begin
      if (3'h2 == wptr) begin
        regs_2 <= io_in;
      end
    end
    if (reset) begin
      regs_3 <= 32'h0;
    end else if (_T_17) begin
      if (3'h3 == wptr) begin
        regs_3 <= io_in;
      end
    end
    if (reset) begin
      regs_4 <= 32'h0;
    end else if (_T_17) begin
      if (3'h4 == wptr) begin
        regs_4 <= io_in;
      end
    end
    if (reset) begin
      wptr <= 3'h0;
    end else if (_T_2) begin
      wptr <= _T_4;
    end else begin
      wptr <= 3'h0;
    end
    if (reset) begin
      rptr <= 3'h0;
    end else if (_T_7) begin
      rptr <= _T_11;
    end else begin
      rptr <= _T_15;
    end
    if (reset) begin
      config_temp <= 3'h0;
    end else begin
      config_temp <= io_config;
    end
    if (reset) begin
      cnt <= 3'h0;
    end else if (_T_18) begin
      cnt <= 3'h0;
    end else if (_T_19) begin
      cnt <= 3'h1;
    end else if (_T_20) begin
      cnt <= _T_22;
    end
  end
endmodule
module Muxn_8(
  input  [2:0]  io_config,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  output [31:0] io_out
);
  wire  _T_2 = 3'h1 == io_config; // @[Mux.scala 80:60]
  wire [31:0] _T_3 = _T_2 ? io_in_1 : io_in_0; // @[Mux.scala 80:57]
  wire  _T_4 = 3'h2 == io_config; // @[Mux.scala 80:60]
  wire [31:0] _T_5 = _T_4 ? io_in_2 : _T_3; // @[Mux.scala 80:57]
  wire  _T_6 = 3'h3 == io_config; // @[Mux.scala 80:60]
  wire [31:0] _T_7 = _T_6 ? io_in_3 : _T_5; // @[Mux.scala 80:57]
  wire  _T_8 = 3'h4 == io_config; // @[Mux.scala 80:60]
  wire [31:0] _T_9 = _T_8 ? io_in_4 : _T_7; // @[Mux.scala 80:57]
  wire  _T_10 = 3'h5 == io_config; // @[Mux.scala 80:60]
  assign io_out = _T_10 ? io_in_5 : _T_9; // @[Multiplexer.scala 20:10]
endmodule
module ConfigMem_8(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input         io_en,
  input  [2:0]  io_cycle,
  input  [2:0]  io_II,
  input         io_cfg_addr,
  input  [31:0] io_cfg_data,
  output [48:0] io_out_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [48:0] configmem_0_0; // @[ConfigMem.scala 81:26]
  reg [48:0] configmem_0_1; // @[ConfigMem.scala 81:26]
  reg [48:0] configmem_0_2; // @[ConfigMem.scala 81:26]
  reg [48:0] configmem_0_3; // @[ConfigMem.scala 81:26]
  reg [48:0] configmem_0_4; // @[ConfigMem.scala 81:26]
  reg [2:0] config_pointer_i; // @[ConfigMem.scala 95:32]
  reg [2:0] config_pointer; // @[ConfigMem.scala 96:30]
  wire  _T_1 = ~io_cfg_addr; // @[ConfigMem.scala 111:38]
  wire  _T_2 = io_cfg_en & _T_1; // @[ConfigMem.scala 111:22]
  wire [48:0] _GEN_1 = 3'h1 == io_cycle ? configmem_0_1 : configmem_0_0; // @[ConfigMem.scala 113:64]
  wire [48:0] _GEN_2 = 3'h2 == io_cycle ? configmem_0_2 : _GEN_1; // @[ConfigMem.scala 113:64]
  wire [48:0] _GEN_3 = 3'h3 == io_cycle ? configmem_0_3 : _GEN_2; // @[ConfigMem.scala 113:64]
  wire [48:0] _GEN_4 = 3'h4 == io_cycle ? configmem_0_4 : _GEN_3; // @[ConfigMem.scala 113:64]
  wire [48:0] _T_4 = {_GEN_4[48:32],io_cfg_data}; // @[Cat.scala 29:58]
  wire  _T_6 = io_cfg_en & io_cfg_addr; // @[ConfigMem.scala 111:22]
  wire [63:0] _T_8 = {io_cfg_data,_GEN_4[31:0]}; // @[Cat.scala 29:58]
  wire  _T_9 = config_pointer_i == io_II; // @[ConfigMem.scala 124:46]
  wire [2:0] _T_11 = config_pointer_i + 3'h1; // @[ConfigMem.scala 124:77]
  wire [48:0] _GEN_27 = 3'h1 == config_pointer ? configmem_0_1 : configmem_0_0; // @[ConfigMem.scala 131:45]
  wire [48:0] _GEN_28 = 3'h2 == config_pointer ? configmem_0_2 : _GEN_27; // @[ConfigMem.scala 131:45]
  wire [48:0] _GEN_29 = 3'h3 == config_pointer ? configmem_0_3 : _GEN_28; // @[ConfigMem.scala 131:45]
  assign io_out_0 = 3'h4 == config_pointer ? configmem_0_4 : _GEN_29; // @[ConfigMem.scala 131:45]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  configmem_0_0 = _RAND_0[48:0];
  _RAND_1 = {2{`RANDOM}};
  configmem_0_1 = _RAND_1[48:0];
  _RAND_2 = {2{`RANDOM}};
  configmem_0_2 = _RAND_2[48:0];
  _RAND_3 = {2{`RANDOM}};
  configmem_0_3 = _RAND_3[48:0];
  _RAND_4 = {2{`RANDOM}};
  configmem_0_4 = _RAND_4[48:0];
  _RAND_5 = {1{`RANDOM}};
  config_pointer_i = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  config_pointer = _RAND_6[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      configmem_0_0 <= 49'h0;
    end else if (_T_6) begin
      if (3'h0 == io_cycle) begin
        configmem_0_0 <= _T_8[48:0];
      end else if (_T_2) begin
        if (3'h0 == io_cycle) begin
          configmem_0_0 <= _T_4;
        end
      end
    end else if (_T_2) begin
      if (3'h0 == io_cycle) begin
        configmem_0_0 <= _T_4;
      end
    end
    if (reset) begin
      configmem_0_1 <= 49'h0;
    end else if (_T_6) begin
      if (3'h1 == io_cycle) begin
        configmem_0_1 <= _T_8[48:0];
      end else if (_T_2) begin
        if (3'h1 == io_cycle) begin
          configmem_0_1 <= _T_4;
        end
      end
    end else if (_T_2) begin
      if (3'h1 == io_cycle) begin
        configmem_0_1 <= _T_4;
      end
    end
    if (reset) begin
      configmem_0_2 <= 49'h0;
    end else if (_T_6) begin
      if (3'h2 == io_cycle) begin
        configmem_0_2 <= _T_8[48:0];
      end else if (_T_2) begin
        if (3'h2 == io_cycle) begin
          configmem_0_2 <= _T_4;
        end
      end
    end else if (_T_2) begin
      if (3'h2 == io_cycle) begin
        configmem_0_2 <= _T_4;
      end
    end
    if (reset) begin
      configmem_0_3 <= 49'h0;
    end else if (_T_6) begin
      if (3'h3 == io_cycle) begin
        configmem_0_3 <= _T_8[48:0];
      end else if (_T_2) begin
        if (3'h3 == io_cycle) begin
          configmem_0_3 <= _T_4;
        end
      end
    end else if (_T_2) begin
      if (3'h3 == io_cycle) begin
        configmem_0_3 <= _T_4;
      end
    end
    if (reset) begin
      configmem_0_4 <= 49'h0;
    end else if (_T_6) begin
      if (3'h4 == io_cycle) begin
        configmem_0_4 <= _T_8[48:0];
      end else if (_T_2) begin
        if (3'h4 == io_cycle) begin
          configmem_0_4 <= _T_4;
        end
      end
    end else if (_T_2) begin
      if (3'h4 == io_cycle) begin
        configmem_0_4 <= _T_4;
      end
    end
    if (reset) begin
      config_pointer_i <= 3'h0;
    end else if (io_en) begin
      if (_T_9) begin
        config_pointer_i <= 3'h0;
      end else begin
        config_pointer_i <= _T_11;
      end
    end else begin
      config_pointer_i <= 3'h0;
    end
    config_pointer <= config_pointer_i;
  end
endmodule
module GPE(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  output [31:0] io_out_0
);
  wire [4:0] alu_io_config; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_0; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_1; // @[PE.scala 52:19]
  wire [31:0] alu_io_out; // @[PE.scala 52:19]
  wire  rf_clock; // @[PE.scala 53:18]
  wire  rf_reset; // @[PE.scala 53:18]
  wire  rf_io_en; // @[PE.scala 53:18]
  wire [31:0] rf_io_in_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_1; // @[PE.scala 53:18]
  wire  DelayPipe_clock; // @[PE.scala 54:54]
  wire  DelayPipe_reset; // @[PE.scala 54:54]
  wire  DelayPipe_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_out; // @[PE.scala 54:54]
  wire  DelayPipe_1_clock; // @[PE.scala 54:54]
  wire  DelayPipe_1_reset; // @[PE.scala 54:54]
  wire  DelayPipe_1_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_1_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_out; // @[PE.scala 54:54]
  wire [2:0] Muxn_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_out; // @[PE.scala 57:49]
  wire [2:0] Muxn_1_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_out; // @[PE.scala 57:49]
  wire  cfg_clock; // @[PE.scala 92:19]
  wire  cfg_reset; // @[PE.scala 92:19]
  wire  cfg_io_cfg_en; // @[PE.scala 92:19]
  wire  cfg_io_en; // @[PE.scala 92:19]
  wire [2:0] cfg_io_cycle; // @[PE.scala 92:19]
  wire [2:0] cfg_io_II; // @[PE.scala 92:19]
  wire  cfg_io_cfg_addr; // @[PE.scala 92:19]
  wire [31:0] cfg_io_cfg_data; // @[PE.scala 92:19]
  wire [48:0] cfg_io_out_0; // @[PE.scala 92:19]
  wire  _T_1 = 10'h14 == io_cfg_addr[17:8]; // @[PE.scala 93:48]
  wire [48:0] cfgOut = cfg_io_out_0; // @[PE.scala 102:20 PE.scala 103:10]
  ALU alu ( // @[PE.scala 52:19]
    .io_config(alu_io_config),
    .io_in_0(alu_io_in_0),
    .io_in_1(alu_io_in_1),
    .io_out(alu_io_out)
  );
  RF rf ( // @[PE.scala 53:18]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_en(rf_io_en),
    .io_in_0(rf_io_in_0),
    .io_out_0(rf_io_out_0),
    .io_out_1(rf_io_out_1)
  );
  DelayPipe DelayPipe ( // @[PE.scala 54:54]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[PE.scala 54:54]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  Muxn_8 Muxn ( // @[PE.scala 57:49]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_in_4(Muxn_io_in_4),
    .io_in_5(Muxn_io_in_5),
    .io_out(Muxn_io_out)
  );
  Muxn_8 Muxn_1 ( // @[PE.scala 57:49]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_in_4(Muxn_1_io_in_4),
    .io_in_5(Muxn_1_io_in_5),
    .io_out(Muxn_1_io_out)
  );
  ConfigMem_8 cfg ( // @[PE.scala 92:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0)
  );
  assign io_out_0 = rf_io_out_0; // @[PE.scala 79:13]
  assign alu_io_config = cfgOut[36:32]; // @[PE.scala 106:19]
  assign alu_io_in_0 = DelayPipe_io_out; // @[PE.scala 73:18]
  assign alu_io_in_1 = DelayPipe_1_io_out; // @[PE.scala 73:18]
  assign rf_clock = clock;
  assign rf_reset = reset;
  assign rf_io_en = io_en; // @[PE.scala 77:12]
  assign rf_io_in_0 = alu_io_out; // @[PE.scala 78:15]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_io_config = cfgOut[39:37]; // @[PE.scala 119:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[PE.scala 72:23]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_1_io_config = cfgOut[42:40]; // @[PE.scala 119:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[PE.scala 72:23]
  assign Muxn_io_config = cfgOut[45:43]; // @[PE.scala 127:23]
  assign Muxn_io_in_0 = io_in_0; // @[PE.scala 64:12]
  assign Muxn_io_in_1 = io_in_1; // @[PE.scala 64:12]
  assign Muxn_io_in_2 = io_in_2; // @[PE.scala 64:12]
  assign Muxn_io_in_3 = io_in_3; // @[PE.scala 64:12]
  assign Muxn_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign Muxn_1_io_config = cfgOut[48:46]; // @[PE.scala 127:23]
  assign Muxn_1_io_in_0 = io_in_4; // @[PE.scala 64:12]
  assign Muxn_1_io_in_1 = io_in_5; // @[PE.scala 64:12]
  assign Muxn_1_io_in_2 = io_in_6; // @[PE.scala 64:12]
  assign Muxn_1_io_in_3 = io_in_7; // @[PE.scala 64:12]
  assign Muxn_1_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_1_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_1; // @[PE.scala 93:17]
  assign cfg_io_en = io_en; // @[PE.scala 95:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[PE.scala 96:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[PE.scala 97:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[PE.scala 94:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[PE.scala 98:19]
endmodule
module GPE_1(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  output [31:0] io_out_0
);
  wire [4:0] alu_io_config; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_0; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_1; // @[PE.scala 52:19]
  wire [31:0] alu_io_out; // @[PE.scala 52:19]
  wire  rf_clock; // @[PE.scala 53:18]
  wire  rf_reset; // @[PE.scala 53:18]
  wire  rf_io_en; // @[PE.scala 53:18]
  wire [31:0] rf_io_in_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_1; // @[PE.scala 53:18]
  wire  DelayPipe_clock; // @[PE.scala 54:54]
  wire  DelayPipe_reset; // @[PE.scala 54:54]
  wire  DelayPipe_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_out; // @[PE.scala 54:54]
  wire  DelayPipe_1_clock; // @[PE.scala 54:54]
  wire  DelayPipe_1_reset; // @[PE.scala 54:54]
  wire  DelayPipe_1_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_1_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_out; // @[PE.scala 54:54]
  wire [2:0] Muxn_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_out; // @[PE.scala 57:49]
  wire [2:0] Muxn_1_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_out; // @[PE.scala 57:49]
  wire  cfg_clock; // @[PE.scala 92:19]
  wire  cfg_reset; // @[PE.scala 92:19]
  wire  cfg_io_cfg_en; // @[PE.scala 92:19]
  wire  cfg_io_en; // @[PE.scala 92:19]
  wire [2:0] cfg_io_cycle; // @[PE.scala 92:19]
  wire [2:0] cfg_io_II; // @[PE.scala 92:19]
  wire  cfg_io_cfg_addr; // @[PE.scala 92:19]
  wire [31:0] cfg_io_cfg_data; // @[PE.scala 92:19]
  wire [48:0] cfg_io_out_0; // @[PE.scala 92:19]
  wire  _T_1 = 10'h15 == io_cfg_addr[17:8]; // @[PE.scala 93:48]
  wire [48:0] cfgOut = cfg_io_out_0; // @[PE.scala 102:20 PE.scala 103:10]
  ALU alu ( // @[PE.scala 52:19]
    .io_config(alu_io_config),
    .io_in_0(alu_io_in_0),
    .io_in_1(alu_io_in_1),
    .io_out(alu_io_out)
  );
  RF rf ( // @[PE.scala 53:18]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_en(rf_io_en),
    .io_in_0(rf_io_in_0),
    .io_out_0(rf_io_out_0),
    .io_out_1(rf_io_out_1)
  );
  DelayPipe DelayPipe ( // @[PE.scala 54:54]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[PE.scala 54:54]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  Muxn_8 Muxn ( // @[PE.scala 57:49]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_in_4(Muxn_io_in_4),
    .io_in_5(Muxn_io_in_5),
    .io_out(Muxn_io_out)
  );
  Muxn_8 Muxn_1 ( // @[PE.scala 57:49]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_in_4(Muxn_1_io_in_4),
    .io_in_5(Muxn_1_io_in_5),
    .io_out(Muxn_1_io_out)
  );
  ConfigMem_8 cfg ( // @[PE.scala 92:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0)
  );
  assign io_out_0 = rf_io_out_0; // @[PE.scala 79:13]
  assign alu_io_config = cfgOut[36:32]; // @[PE.scala 106:19]
  assign alu_io_in_0 = DelayPipe_io_out; // @[PE.scala 73:18]
  assign alu_io_in_1 = DelayPipe_1_io_out; // @[PE.scala 73:18]
  assign rf_clock = clock;
  assign rf_reset = reset;
  assign rf_io_en = io_en; // @[PE.scala 77:12]
  assign rf_io_in_0 = alu_io_out; // @[PE.scala 78:15]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_io_config = cfgOut[39:37]; // @[PE.scala 119:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[PE.scala 72:23]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_1_io_config = cfgOut[42:40]; // @[PE.scala 119:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[PE.scala 72:23]
  assign Muxn_io_config = cfgOut[45:43]; // @[PE.scala 127:23]
  assign Muxn_io_in_0 = io_in_0; // @[PE.scala 64:12]
  assign Muxn_io_in_1 = io_in_1; // @[PE.scala 64:12]
  assign Muxn_io_in_2 = io_in_2; // @[PE.scala 64:12]
  assign Muxn_io_in_3 = io_in_3; // @[PE.scala 64:12]
  assign Muxn_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign Muxn_1_io_config = cfgOut[48:46]; // @[PE.scala 127:23]
  assign Muxn_1_io_in_0 = io_in_4; // @[PE.scala 64:12]
  assign Muxn_1_io_in_1 = io_in_5; // @[PE.scala 64:12]
  assign Muxn_1_io_in_2 = io_in_6; // @[PE.scala 64:12]
  assign Muxn_1_io_in_3 = io_in_7; // @[PE.scala 64:12]
  assign Muxn_1_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_1_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_1; // @[PE.scala 93:17]
  assign cfg_io_en = io_en; // @[PE.scala 95:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[PE.scala 96:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[PE.scala 97:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[PE.scala 94:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[PE.scala 98:19]
endmodule
module GPE_2(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  output [31:0] io_out_0
);
  wire [4:0] alu_io_config; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_0; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_1; // @[PE.scala 52:19]
  wire [31:0] alu_io_out; // @[PE.scala 52:19]
  wire  rf_clock; // @[PE.scala 53:18]
  wire  rf_reset; // @[PE.scala 53:18]
  wire  rf_io_en; // @[PE.scala 53:18]
  wire [31:0] rf_io_in_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_1; // @[PE.scala 53:18]
  wire  DelayPipe_clock; // @[PE.scala 54:54]
  wire  DelayPipe_reset; // @[PE.scala 54:54]
  wire  DelayPipe_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_out; // @[PE.scala 54:54]
  wire  DelayPipe_1_clock; // @[PE.scala 54:54]
  wire  DelayPipe_1_reset; // @[PE.scala 54:54]
  wire  DelayPipe_1_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_1_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_out; // @[PE.scala 54:54]
  wire [2:0] Muxn_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_out; // @[PE.scala 57:49]
  wire [2:0] Muxn_1_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_out; // @[PE.scala 57:49]
  wire  cfg_clock; // @[PE.scala 92:19]
  wire  cfg_reset; // @[PE.scala 92:19]
  wire  cfg_io_cfg_en; // @[PE.scala 92:19]
  wire  cfg_io_en; // @[PE.scala 92:19]
  wire [2:0] cfg_io_cycle; // @[PE.scala 92:19]
  wire [2:0] cfg_io_II; // @[PE.scala 92:19]
  wire  cfg_io_cfg_addr; // @[PE.scala 92:19]
  wire [31:0] cfg_io_cfg_data; // @[PE.scala 92:19]
  wire [48:0] cfg_io_out_0; // @[PE.scala 92:19]
  wire  _T_1 = 10'h16 == io_cfg_addr[17:8]; // @[PE.scala 93:48]
  wire [48:0] cfgOut = cfg_io_out_0; // @[PE.scala 102:20 PE.scala 103:10]
  ALU alu ( // @[PE.scala 52:19]
    .io_config(alu_io_config),
    .io_in_0(alu_io_in_0),
    .io_in_1(alu_io_in_1),
    .io_out(alu_io_out)
  );
  RF rf ( // @[PE.scala 53:18]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_en(rf_io_en),
    .io_in_0(rf_io_in_0),
    .io_out_0(rf_io_out_0),
    .io_out_1(rf_io_out_1)
  );
  DelayPipe DelayPipe ( // @[PE.scala 54:54]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[PE.scala 54:54]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  Muxn_8 Muxn ( // @[PE.scala 57:49]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_in_4(Muxn_io_in_4),
    .io_in_5(Muxn_io_in_5),
    .io_out(Muxn_io_out)
  );
  Muxn_8 Muxn_1 ( // @[PE.scala 57:49]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_in_4(Muxn_1_io_in_4),
    .io_in_5(Muxn_1_io_in_5),
    .io_out(Muxn_1_io_out)
  );
  ConfigMem_8 cfg ( // @[PE.scala 92:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0)
  );
  assign io_out_0 = rf_io_out_0; // @[PE.scala 79:13]
  assign alu_io_config = cfgOut[36:32]; // @[PE.scala 106:19]
  assign alu_io_in_0 = DelayPipe_io_out; // @[PE.scala 73:18]
  assign alu_io_in_1 = DelayPipe_1_io_out; // @[PE.scala 73:18]
  assign rf_clock = clock;
  assign rf_reset = reset;
  assign rf_io_en = io_en; // @[PE.scala 77:12]
  assign rf_io_in_0 = alu_io_out; // @[PE.scala 78:15]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_io_config = cfgOut[39:37]; // @[PE.scala 119:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[PE.scala 72:23]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_1_io_config = cfgOut[42:40]; // @[PE.scala 119:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[PE.scala 72:23]
  assign Muxn_io_config = cfgOut[45:43]; // @[PE.scala 127:23]
  assign Muxn_io_in_0 = io_in_0; // @[PE.scala 64:12]
  assign Muxn_io_in_1 = io_in_1; // @[PE.scala 64:12]
  assign Muxn_io_in_2 = io_in_2; // @[PE.scala 64:12]
  assign Muxn_io_in_3 = io_in_3; // @[PE.scala 64:12]
  assign Muxn_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign Muxn_1_io_config = cfgOut[48:46]; // @[PE.scala 127:23]
  assign Muxn_1_io_in_0 = io_in_4; // @[PE.scala 64:12]
  assign Muxn_1_io_in_1 = io_in_5; // @[PE.scala 64:12]
  assign Muxn_1_io_in_2 = io_in_6; // @[PE.scala 64:12]
  assign Muxn_1_io_in_3 = io_in_7; // @[PE.scala 64:12]
  assign Muxn_1_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_1_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_1; // @[PE.scala 93:17]
  assign cfg_io_en = io_en; // @[PE.scala 95:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[PE.scala 96:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[PE.scala 97:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[PE.scala 94:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[PE.scala 98:19]
endmodule
module GPE_3(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  output [31:0] io_out_0
);
  wire [4:0] alu_io_config; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_0; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_1; // @[PE.scala 52:19]
  wire [31:0] alu_io_out; // @[PE.scala 52:19]
  wire  rf_clock; // @[PE.scala 53:18]
  wire  rf_reset; // @[PE.scala 53:18]
  wire  rf_io_en; // @[PE.scala 53:18]
  wire [31:0] rf_io_in_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_1; // @[PE.scala 53:18]
  wire  DelayPipe_clock; // @[PE.scala 54:54]
  wire  DelayPipe_reset; // @[PE.scala 54:54]
  wire  DelayPipe_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_out; // @[PE.scala 54:54]
  wire  DelayPipe_1_clock; // @[PE.scala 54:54]
  wire  DelayPipe_1_reset; // @[PE.scala 54:54]
  wire  DelayPipe_1_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_1_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_out; // @[PE.scala 54:54]
  wire [2:0] Muxn_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_out; // @[PE.scala 57:49]
  wire [2:0] Muxn_1_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_out; // @[PE.scala 57:49]
  wire  cfg_clock; // @[PE.scala 92:19]
  wire  cfg_reset; // @[PE.scala 92:19]
  wire  cfg_io_cfg_en; // @[PE.scala 92:19]
  wire  cfg_io_en; // @[PE.scala 92:19]
  wire [2:0] cfg_io_cycle; // @[PE.scala 92:19]
  wire [2:0] cfg_io_II; // @[PE.scala 92:19]
  wire  cfg_io_cfg_addr; // @[PE.scala 92:19]
  wire [31:0] cfg_io_cfg_data; // @[PE.scala 92:19]
  wire [48:0] cfg_io_out_0; // @[PE.scala 92:19]
  wire  _T_1 = 10'h17 == io_cfg_addr[17:8]; // @[PE.scala 93:48]
  wire [48:0] cfgOut = cfg_io_out_0; // @[PE.scala 102:20 PE.scala 103:10]
  ALU alu ( // @[PE.scala 52:19]
    .io_config(alu_io_config),
    .io_in_0(alu_io_in_0),
    .io_in_1(alu_io_in_1),
    .io_out(alu_io_out)
  );
  RF rf ( // @[PE.scala 53:18]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_en(rf_io_en),
    .io_in_0(rf_io_in_0),
    .io_out_0(rf_io_out_0),
    .io_out_1(rf_io_out_1)
  );
  DelayPipe DelayPipe ( // @[PE.scala 54:54]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[PE.scala 54:54]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  Muxn_8 Muxn ( // @[PE.scala 57:49]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_in_4(Muxn_io_in_4),
    .io_in_5(Muxn_io_in_5),
    .io_out(Muxn_io_out)
  );
  Muxn_8 Muxn_1 ( // @[PE.scala 57:49]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_in_4(Muxn_1_io_in_4),
    .io_in_5(Muxn_1_io_in_5),
    .io_out(Muxn_1_io_out)
  );
  ConfigMem_8 cfg ( // @[PE.scala 92:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0)
  );
  assign io_out_0 = rf_io_out_0; // @[PE.scala 79:13]
  assign alu_io_config = cfgOut[36:32]; // @[PE.scala 106:19]
  assign alu_io_in_0 = DelayPipe_io_out; // @[PE.scala 73:18]
  assign alu_io_in_1 = DelayPipe_1_io_out; // @[PE.scala 73:18]
  assign rf_clock = clock;
  assign rf_reset = reset;
  assign rf_io_en = io_en; // @[PE.scala 77:12]
  assign rf_io_in_0 = alu_io_out; // @[PE.scala 78:15]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_io_config = cfgOut[39:37]; // @[PE.scala 119:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[PE.scala 72:23]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_1_io_config = cfgOut[42:40]; // @[PE.scala 119:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[PE.scala 72:23]
  assign Muxn_io_config = cfgOut[45:43]; // @[PE.scala 127:23]
  assign Muxn_io_in_0 = io_in_0; // @[PE.scala 64:12]
  assign Muxn_io_in_1 = io_in_1; // @[PE.scala 64:12]
  assign Muxn_io_in_2 = io_in_2; // @[PE.scala 64:12]
  assign Muxn_io_in_3 = io_in_3; // @[PE.scala 64:12]
  assign Muxn_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign Muxn_1_io_config = cfgOut[48:46]; // @[PE.scala 127:23]
  assign Muxn_1_io_in_0 = io_in_4; // @[PE.scala 64:12]
  assign Muxn_1_io_in_1 = io_in_5; // @[PE.scala 64:12]
  assign Muxn_1_io_in_2 = io_in_6; // @[PE.scala 64:12]
  assign Muxn_1_io_in_3 = io_in_7; // @[PE.scala 64:12]
  assign Muxn_1_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_1_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_1; // @[PE.scala 93:17]
  assign cfg_io_en = io_en; // @[PE.scala 95:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[PE.scala 96:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[PE.scala 97:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[PE.scala 94:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[PE.scala 98:19]
endmodule
module GPE_4(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  output [31:0] io_out_0
);
  wire [4:0] alu_io_config; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_0; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_1; // @[PE.scala 52:19]
  wire [31:0] alu_io_out; // @[PE.scala 52:19]
  wire  rf_clock; // @[PE.scala 53:18]
  wire  rf_reset; // @[PE.scala 53:18]
  wire  rf_io_en; // @[PE.scala 53:18]
  wire [31:0] rf_io_in_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_1; // @[PE.scala 53:18]
  wire  DelayPipe_clock; // @[PE.scala 54:54]
  wire  DelayPipe_reset; // @[PE.scala 54:54]
  wire  DelayPipe_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_out; // @[PE.scala 54:54]
  wire  DelayPipe_1_clock; // @[PE.scala 54:54]
  wire  DelayPipe_1_reset; // @[PE.scala 54:54]
  wire  DelayPipe_1_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_1_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_out; // @[PE.scala 54:54]
  wire [2:0] Muxn_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_out; // @[PE.scala 57:49]
  wire [2:0] Muxn_1_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_out; // @[PE.scala 57:49]
  wire  cfg_clock; // @[PE.scala 92:19]
  wire  cfg_reset; // @[PE.scala 92:19]
  wire  cfg_io_cfg_en; // @[PE.scala 92:19]
  wire  cfg_io_en; // @[PE.scala 92:19]
  wire [2:0] cfg_io_cycle; // @[PE.scala 92:19]
  wire [2:0] cfg_io_II; // @[PE.scala 92:19]
  wire  cfg_io_cfg_addr; // @[PE.scala 92:19]
  wire [31:0] cfg_io_cfg_data; // @[PE.scala 92:19]
  wire [48:0] cfg_io_out_0; // @[PE.scala 92:19]
  wire  _T_1 = 10'h20 == io_cfg_addr[17:8]; // @[PE.scala 93:48]
  wire [48:0] cfgOut = cfg_io_out_0; // @[PE.scala 102:20 PE.scala 103:10]
  ALU alu ( // @[PE.scala 52:19]
    .io_config(alu_io_config),
    .io_in_0(alu_io_in_0),
    .io_in_1(alu_io_in_1),
    .io_out(alu_io_out)
  );
  RF rf ( // @[PE.scala 53:18]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_en(rf_io_en),
    .io_in_0(rf_io_in_0),
    .io_out_0(rf_io_out_0),
    .io_out_1(rf_io_out_1)
  );
  DelayPipe DelayPipe ( // @[PE.scala 54:54]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[PE.scala 54:54]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  Muxn_8 Muxn ( // @[PE.scala 57:49]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_in_4(Muxn_io_in_4),
    .io_in_5(Muxn_io_in_5),
    .io_out(Muxn_io_out)
  );
  Muxn_8 Muxn_1 ( // @[PE.scala 57:49]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_in_4(Muxn_1_io_in_4),
    .io_in_5(Muxn_1_io_in_5),
    .io_out(Muxn_1_io_out)
  );
  ConfigMem_8 cfg ( // @[PE.scala 92:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0)
  );
  assign io_out_0 = rf_io_out_0; // @[PE.scala 79:13]
  assign alu_io_config = cfgOut[36:32]; // @[PE.scala 106:19]
  assign alu_io_in_0 = DelayPipe_io_out; // @[PE.scala 73:18]
  assign alu_io_in_1 = DelayPipe_1_io_out; // @[PE.scala 73:18]
  assign rf_clock = clock;
  assign rf_reset = reset;
  assign rf_io_en = io_en; // @[PE.scala 77:12]
  assign rf_io_in_0 = alu_io_out; // @[PE.scala 78:15]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_io_config = cfgOut[39:37]; // @[PE.scala 119:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[PE.scala 72:23]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_1_io_config = cfgOut[42:40]; // @[PE.scala 119:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[PE.scala 72:23]
  assign Muxn_io_config = cfgOut[45:43]; // @[PE.scala 127:23]
  assign Muxn_io_in_0 = io_in_0; // @[PE.scala 64:12]
  assign Muxn_io_in_1 = io_in_1; // @[PE.scala 64:12]
  assign Muxn_io_in_2 = io_in_2; // @[PE.scala 64:12]
  assign Muxn_io_in_3 = io_in_3; // @[PE.scala 64:12]
  assign Muxn_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign Muxn_1_io_config = cfgOut[48:46]; // @[PE.scala 127:23]
  assign Muxn_1_io_in_0 = io_in_4; // @[PE.scala 64:12]
  assign Muxn_1_io_in_1 = io_in_5; // @[PE.scala 64:12]
  assign Muxn_1_io_in_2 = io_in_6; // @[PE.scala 64:12]
  assign Muxn_1_io_in_3 = io_in_7; // @[PE.scala 64:12]
  assign Muxn_1_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_1_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_1; // @[PE.scala 93:17]
  assign cfg_io_en = io_en; // @[PE.scala 95:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[PE.scala 96:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[PE.scala 97:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[PE.scala 94:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[PE.scala 98:19]
endmodule
module GPE_5(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  output [31:0] io_out_0
);
  wire [4:0] alu_io_config; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_0; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_1; // @[PE.scala 52:19]
  wire [31:0] alu_io_out; // @[PE.scala 52:19]
  wire  rf_clock; // @[PE.scala 53:18]
  wire  rf_reset; // @[PE.scala 53:18]
  wire  rf_io_en; // @[PE.scala 53:18]
  wire [31:0] rf_io_in_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_1; // @[PE.scala 53:18]
  wire  DelayPipe_clock; // @[PE.scala 54:54]
  wire  DelayPipe_reset; // @[PE.scala 54:54]
  wire  DelayPipe_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_out; // @[PE.scala 54:54]
  wire  DelayPipe_1_clock; // @[PE.scala 54:54]
  wire  DelayPipe_1_reset; // @[PE.scala 54:54]
  wire  DelayPipe_1_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_1_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_out; // @[PE.scala 54:54]
  wire [2:0] Muxn_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_out; // @[PE.scala 57:49]
  wire [2:0] Muxn_1_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_out; // @[PE.scala 57:49]
  wire  cfg_clock; // @[PE.scala 92:19]
  wire  cfg_reset; // @[PE.scala 92:19]
  wire  cfg_io_cfg_en; // @[PE.scala 92:19]
  wire  cfg_io_en; // @[PE.scala 92:19]
  wire [2:0] cfg_io_cycle; // @[PE.scala 92:19]
  wire [2:0] cfg_io_II; // @[PE.scala 92:19]
  wire  cfg_io_cfg_addr; // @[PE.scala 92:19]
  wire [31:0] cfg_io_cfg_data; // @[PE.scala 92:19]
  wire [48:0] cfg_io_out_0; // @[PE.scala 92:19]
  wire  _T_1 = 10'h21 == io_cfg_addr[17:8]; // @[PE.scala 93:48]
  wire [48:0] cfgOut = cfg_io_out_0; // @[PE.scala 102:20 PE.scala 103:10]
  ALU alu ( // @[PE.scala 52:19]
    .io_config(alu_io_config),
    .io_in_0(alu_io_in_0),
    .io_in_1(alu_io_in_1),
    .io_out(alu_io_out)
  );
  RF rf ( // @[PE.scala 53:18]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_en(rf_io_en),
    .io_in_0(rf_io_in_0),
    .io_out_0(rf_io_out_0),
    .io_out_1(rf_io_out_1)
  );
  DelayPipe DelayPipe ( // @[PE.scala 54:54]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[PE.scala 54:54]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  Muxn_8 Muxn ( // @[PE.scala 57:49]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_in_4(Muxn_io_in_4),
    .io_in_5(Muxn_io_in_5),
    .io_out(Muxn_io_out)
  );
  Muxn_8 Muxn_1 ( // @[PE.scala 57:49]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_in_4(Muxn_1_io_in_4),
    .io_in_5(Muxn_1_io_in_5),
    .io_out(Muxn_1_io_out)
  );
  ConfigMem_8 cfg ( // @[PE.scala 92:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0)
  );
  assign io_out_0 = rf_io_out_0; // @[PE.scala 79:13]
  assign alu_io_config = cfgOut[36:32]; // @[PE.scala 106:19]
  assign alu_io_in_0 = DelayPipe_io_out; // @[PE.scala 73:18]
  assign alu_io_in_1 = DelayPipe_1_io_out; // @[PE.scala 73:18]
  assign rf_clock = clock;
  assign rf_reset = reset;
  assign rf_io_en = io_en; // @[PE.scala 77:12]
  assign rf_io_in_0 = alu_io_out; // @[PE.scala 78:15]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_io_config = cfgOut[39:37]; // @[PE.scala 119:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[PE.scala 72:23]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_1_io_config = cfgOut[42:40]; // @[PE.scala 119:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[PE.scala 72:23]
  assign Muxn_io_config = cfgOut[45:43]; // @[PE.scala 127:23]
  assign Muxn_io_in_0 = io_in_0; // @[PE.scala 64:12]
  assign Muxn_io_in_1 = io_in_1; // @[PE.scala 64:12]
  assign Muxn_io_in_2 = io_in_2; // @[PE.scala 64:12]
  assign Muxn_io_in_3 = io_in_3; // @[PE.scala 64:12]
  assign Muxn_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign Muxn_1_io_config = cfgOut[48:46]; // @[PE.scala 127:23]
  assign Muxn_1_io_in_0 = io_in_4; // @[PE.scala 64:12]
  assign Muxn_1_io_in_1 = io_in_5; // @[PE.scala 64:12]
  assign Muxn_1_io_in_2 = io_in_6; // @[PE.scala 64:12]
  assign Muxn_1_io_in_3 = io_in_7; // @[PE.scala 64:12]
  assign Muxn_1_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_1_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_1; // @[PE.scala 93:17]
  assign cfg_io_en = io_en; // @[PE.scala 95:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[PE.scala 96:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[PE.scala 97:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[PE.scala 94:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[PE.scala 98:19]
endmodule
module GPE_6(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  output [31:0] io_out_0
);
  wire [4:0] alu_io_config; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_0; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_1; // @[PE.scala 52:19]
  wire [31:0] alu_io_out; // @[PE.scala 52:19]
  wire  rf_clock; // @[PE.scala 53:18]
  wire  rf_reset; // @[PE.scala 53:18]
  wire  rf_io_en; // @[PE.scala 53:18]
  wire [31:0] rf_io_in_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_1; // @[PE.scala 53:18]
  wire  DelayPipe_clock; // @[PE.scala 54:54]
  wire  DelayPipe_reset; // @[PE.scala 54:54]
  wire  DelayPipe_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_out; // @[PE.scala 54:54]
  wire  DelayPipe_1_clock; // @[PE.scala 54:54]
  wire  DelayPipe_1_reset; // @[PE.scala 54:54]
  wire  DelayPipe_1_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_1_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_out; // @[PE.scala 54:54]
  wire [2:0] Muxn_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_out; // @[PE.scala 57:49]
  wire [2:0] Muxn_1_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_out; // @[PE.scala 57:49]
  wire  cfg_clock; // @[PE.scala 92:19]
  wire  cfg_reset; // @[PE.scala 92:19]
  wire  cfg_io_cfg_en; // @[PE.scala 92:19]
  wire  cfg_io_en; // @[PE.scala 92:19]
  wire [2:0] cfg_io_cycle; // @[PE.scala 92:19]
  wire [2:0] cfg_io_II; // @[PE.scala 92:19]
  wire  cfg_io_cfg_addr; // @[PE.scala 92:19]
  wire [31:0] cfg_io_cfg_data; // @[PE.scala 92:19]
  wire [48:0] cfg_io_out_0; // @[PE.scala 92:19]
  wire  _T_1 = 10'h22 == io_cfg_addr[17:8]; // @[PE.scala 93:48]
  wire [48:0] cfgOut = cfg_io_out_0; // @[PE.scala 102:20 PE.scala 103:10]
  ALU alu ( // @[PE.scala 52:19]
    .io_config(alu_io_config),
    .io_in_0(alu_io_in_0),
    .io_in_1(alu_io_in_1),
    .io_out(alu_io_out)
  );
  RF rf ( // @[PE.scala 53:18]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_en(rf_io_en),
    .io_in_0(rf_io_in_0),
    .io_out_0(rf_io_out_0),
    .io_out_1(rf_io_out_1)
  );
  DelayPipe DelayPipe ( // @[PE.scala 54:54]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[PE.scala 54:54]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  Muxn_8 Muxn ( // @[PE.scala 57:49]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_in_4(Muxn_io_in_4),
    .io_in_5(Muxn_io_in_5),
    .io_out(Muxn_io_out)
  );
  Muxn_8 Muxn_1 ( // @[PE.scala 57:49]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_in_4(Muxn_1_io_in_4),
    .io_in_5(Muxn_1_io_in_5),
    .io_out(Muxn_1_io_out)
  );
  ConfigMem_8 cfg ( // @[PE.scala 92:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0)
  );
  assign io_out_0 = rf_io_out_0; // @[PE.scala 79:13]
  assign alu_io_config = cfgOut[36:32]; // @[PE.scala 106:19]
  assign alu_io_in_0 = DelayPipe_io_out; // @[PE.scala 73:18]
  assign alu_io_in_1 = DelayPipe_1_io_out; // @[PE.scala 73:18]
  assign rf_clock = clock;
  assign rf_reset = reset;
  assign rf_io_en = io_en; // @[PE.scala 77:12]
  assign rf_io_in_0 = alu_io_out; // @[PE.scala 78:15]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_io_config = cfgOut[39:37]; // @[PE.scala 119:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[PE.scala 72:23]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_1_io_config = cfgOut[42:40]; // @[PE.scala 119:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[PE.scala 72:23]
  assign Muxn_io_config = cfgOut[45:43]; // @[PE.scala 127:23]
  assign Muxn_io_in_0 = io_in_0; // @[PE.scala 64:12]
  assign Muxn_io_in_1 = io_in_1; // @[PE.scala 64:12]
  assign Muxn_io_in_2 = io_in_2; // @[PE.scala 64:12]
  assign Muxn_io_in_3 = io_in_3; // @[PE.scala 64:12]
  assign Muxn_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign Muxn_1_io_config = cfgOut[48:46]; // @[PE.scala 127:23]
  assign Muxn_1_io_in_0 = io_in_4; // @[PE.scala 64:12]
  assign Muxn_1_io_in_1 = io_in_5; // @[PE.scala 64:12]
  assign Muxn_1_io_in_2 = io_in_6; // @[PE.scala 64:12]
  assign Muxn_1_io_in_3 = io_in_7; // @[PE.scala 64:12]
  assign Muxn_1_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_1_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_1; // @[PE.scala 93:17]
  assign cfg_io_en = io_en; // @[PE.scala 95:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[PE.scala 96:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[PE.scala 97:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[PE.scala 94:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[PE.scala 98:19]
endmodule
module GPE_7(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  output [31:0] io_out_0
);
  wire [4:0] alu_io_config; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_0; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_1; // @[PE.scala 52:19]
  wire [31:0] alu_io_out; // @[PE.scala 52:19]
  wire  rf_clock; // @[PE.scala 53:18]
  wire  rf_reset; // @[PE.scala 53:18]
  wire  rf_io_en; // @[PE.scala 53:18]
  wire [31:0] rf_io_in_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_1; // @[PE.scala 53:18]
  wire  DelayPipe_clock; // @[PE.scala 54:54]
  wire  DelayPipe_reset; // @[PE.scala 54:54]
  wire  DelayPipe_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_out; // @[PE.scala 54:54]
  wire  DelayPipe_1_clock; // @[PE.scala 54:54]
  wire  DelayPipe_1_reset; // @[PE.scala 54:54]
  wire  DelayPipe_1_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_1_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_out; // @[PE.scala 54:54]
  wire [2:0] Muxn_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_out; // @[PE.scala 57:49]
  wire [2:0] Muxn_1_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_out; // @[PE.scala 57:49]
  wire  cfg_clock; // @[PE.scala 92:19]
  wire  cfg_reset; // @[PE.scala 92:19]
  wire  cfg_io_cfg_en; // @[PE.scala 92:19]
  wire  cfg_io_en; // @[PE.scala 92:19]
  wire [2:0] cfg_io_cycle; // @[PE.scala 92:19]
  wire [2:0] cfg_io_II; // @[PE.scala 92:19]
  wire  cfg_io_cfg_addr; // @[PE.scala 92:19]
  wire [31:0] cfg_io_cfg_data; // @[PE.scala 92:19]
  wire [48:0] cfg_io_out_0; // @[PE.scala 92:19]
  wire  _T_1 = 10'h23 == io_cfg_addr[17:8]; // @[PE.scala 93:48]
  wire [48:0] cfgOut = cfg_io_out_0; // @[PE.scala 102:20 PE.scala 103:10]
  ALU alu ( // @[PE.scala 52:19]
    .io_config(alu_io_config),
    .io_in_0(alu_io_in_0),
    .io_in_1(alu_io_in_1),
    .io_out(alu_io_out)
  );
  RF rf ( // @[PE.scala 53:18]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_en(rf_io_en),
    .io_in_0(rf_io_in_0),
    .io_out_0(rf_io_out_0),
    .io_out_1(rf_io_out_1)
  );
  DelayPipe DelayPipe ( // @[PE.scala 54:54]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[PE.scala 54:54]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  Muxn_8 Muxn ( // @[PE.scala 57:49]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_in_4(Muxn_io_in_4),
    .io_in_5(Muxn_io_in_5),
    .io_out(Muxn_io_out)
  );
  Muxn_8 Muxn_1 ( // @[PE.scala 57:49]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_in_4(Muxn_1_io_in_4),
    .io_in_5(Muxn_1_io_in_5),
    .io_out(Muxn_1_io_out)
  );
  ConfigMem_8 cfg ( // @[PE.scala 92:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0)
  );
  assign io_out_0 = rf_io_out_0; // @[PE.scala 79:13]
  assign alu_io_config = cfgOut[36:32]; // @[PE.scala 106:19]
  assign alu_io_in_0 = DelayPipe_io_out; // @[PE.scala 73:18]
  assign alu_io_in_1 = DelayPipe_1_io_out; // @[PE.scala 73:18]
  assign rf_clock = clock;
  assign rf_reset = reset;
  assign rf_io_en = io_en; // @[PE.scala 77:12]
  assign rf_io_in_0 = alu_io_out; // @[PE.scala 78:15]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_io_config = cfgOut[39:37]; // @[PE.scala 119:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[PE.scala 72:23]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_1_io_config = cfgOut[42:40]; // @[PE.scala 119:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[PE.scala 72:23]
  assign Muxn_io_config = cfgOut[45:43]; // @[PE.scala 127:23]
  assign Muxn_io_in_0 = io_in_0; // @[PE.scala 64:12]
  assign Muxn_io_in_1 = io_in_1; // @[PE.scala 64:12]
  assign Muxn_io_in_2 = io_in_2; // @[PE.scala 64:12]
  assign Muxn_io_in_3 = io_in_3; // @[PE.scala 64:12]
  assign Muxn_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign Muxn_1_io_config = cfgOut[48:46]; // @[PE.scala 127:23]
  assign Muxn_1_io_in_0 = io_in_4; // @[PE.scala 64:12]
  assign Muxn_1_io_in_1 = io_in_5; // @[PE.scala 64:12]
  assign Muxn_1_io_in_2 = io_in_6; // @[PE.scala 64:12]
  assign Muxn_1_io_in_3 = io_in_7; // @[PE.scala 64:12]
  assign Muxn_1_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_1_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_1; // @[PE.scala 93:17]
  assign cfg_io_en = io_en; // @[PE.scala 95:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[PE.scala 96:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[PE.scala 97:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[PE.scala 94:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[PE.scala 98:19]
endmodule
module GPE_8(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  output [31:0] io_out_0
);
  wire [4:0] alu_io_config; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_0; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_1; // @[PE.scala 52:19]
  wire [31:0] alu_io_out; // @[PE.scala 52:19]
  wire  rf_clock; // @[PE.scala 53:18]
  wire  rf_reset; // @[PE.scala 53:18]
  wire  rf_io_en; // @[PE.scala 53:18]
  wire [31:0] rf_io_in_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_1; // @[PE.scala 53:18]
  wire  DelayPipe_clock; // @[PE.scala 54:54]
  wire  DelayPipe_reset; // @[PE.scala 54:54]
  wire  DelayPipe_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_out; // @[PE.scala 54:54]
  wire  DelayPipe_1_clock; // @[PE.scala 54:54]
  wire  DelayPipe_1_reset; // @[PE.scala 54:54]
  wire  DelayPipe_1_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_1_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_out; // @[PE.scala 54:54]
  wire [2:0] Muxn_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_out; // @[PE.scala 57:49]
  wire [2:0] Muxn_1_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_out; // @[PE.scala 57:49]
  wire  cfg_clock; // @[PE.scala 92:19]
  wire  cfg_reset; // @[PE.scala 92:19]
  wire  cfg_io_cfg_en; // @[PE.scala 92:19]
  wire  cfg_io_en; // @[PE.scala 92:19]
  wire [2:0] cfg_io_cycle; // @[PE.scala 92:19]
  wire [2:0] cfg_io_II; // @[PE.scala 92:19]
  wire  cfg_io_cfg_addr; // @[PE.scala 92:19]
  wire [31:0] cfg_io_cfg_data; // @[PE.scala 92:19]
  wire [48:0] cfg_io_out_0; // @[PE.scala 92:19]
  wire  _T_1 = 10'h2c == io_cfg_addr[17:8]; // @[PE.scala 93:48]
  wire [48:0] cfgOut = cfg_io_out_0; // @[PE.scala 102:20 PE.scala 103:10]
  ALU alu ( // @[PE.scala 52:19]
    .io_config(alu_io_config),
    .io_in_0(alu_io_in_0),
    .io_in_1(alu_io_in_1),
    .io_out(alu_io_out)
  );
  RF rf ( // @[PE.scala 53:18]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_en(rf_io_en),
    .io_in_0(rf_io_in_0),
    .io_out_0(rf_io_out_0),
    .io_out_1(rf_io_out_1)
  );
  DelayPipe DelayPipe ( // @[PE.scala 54:54]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[PE.scala 54:54]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  Muxn_8 Muxn ( // @[PE.scala 57:49]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_in_4(Muxn_io_in_4),
    .io_in_5(Muxn_io_in_5),
    .io_out(Muxn_io_out)
  );
  Muxn_8 Muxn_1 ( // @[PE.scala 57:49]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_in_4(Muxn_1_io_in_4),
    .io_in_5(Muxn_1_io_in_5),
    .io_out(Muxn_1_io_out)
  );
  ConfigMem_8 cfg ( // @[PE.scala 92:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0)
  );
  assign io_out_0 = rf_io_out_0; // @[PE.scala 79:13]
  assign alu_io_config = cfgOut[36:32]; // @[PE.scala 106:19]
  assign alu_io_in_0 = DelayPipe_io_out; // @[PE.scala 73:18]
  assign alu_io_in_1 = DelayPipe_1_io_out; // @[PE.scala 73:18]
  assign rf_clock = clock;
  assign rf_reset = reset;
  assign rf_io_en = io_en; // @[PE.scala 77:12]
  assign rf_io_in_0 = alu_io_out; // @[PE.scala 78:15]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_io_config = cfgOut[39:37]; // @[PE.scala 119:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[PE.scala 72:23]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_1_io_config = cfgOut[42:40]; // @[PE.scala 119:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[PE.scala 72:23]
  assign Muxn_io_config = cfgOut[45:43]; // @[PE.scala 127:23]
  assign Muxn_io_in_0 = io_in_0; // @[PE.scala 64:12]
  assign Muxn_io_in_1 = io_in_1; // @[PE.scala 64:12]
  assign Muxn_io_in_2 = io_in_2; // @[PE.scala 64:12]
  assign Muxn_io_in_3 = io_in_3; // @[PE.scala 64:12]
  assign Muxn_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign Muxn_1_io_config = cfgOut[48:46]; // @[PE.scala 127:23]
  assign Muxn_1_io_in_0 = io_in_4; // @[PE.scala 64:12]
  assign Muxn_1_io_in_1 = io_in_5; // @[PE.scala 64:12]
  assign Muxn_1_io_in_2 = io_in_6; // @[PE.scala 64:12]
  assign Muxn_1_io_in_3 = io_in_7; // @[PE.scala 64:12]
  assign Muxn_1_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_1_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_1; // @[PE.scala 93:17]
  assign cfg_io_en = io_en; // @[PE.scala 95:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[PE.scala 96:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[PE.scala 97:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[PE.scala 94:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[PE.scala 98:19]
endmodule
module GPE_9(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  output [31:0] io_out_0
);
  wire [4:0] alu_io_config; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_0; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_1; // @[PE.scala 52:19]
  wire [31:0] alu_io_out; // @[PE.scala 52:19]
  wire  rf_clock; // @[PE.scala 53:18]
  wire  rf_reset; // @[PE.scala 53:18]
  wire  rf_io_en; // @[PE.scala 53:18]
  wire [31:0] rf_io_in_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_1; // @[PE.scala 53:18]
  wire  DelayPipe_clock; // @[PE.scala 54:54]
  wire  DelayPipe_reset; // @[PE.scala 54:54]
  wire  DelayPipe_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_out; // @[PE.scala 54:54]
  wire  DelayPipe_1_clock; // @[PE.scala 54:54]
  wire  DelayPipe_1_reset; // @[PE.scala 54:54]
  wire  DelayPipe_1_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_1_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_out; // @[PE.scala 54:54]
  wire [2:0] Muxn_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_out; // @[PE.scala 57:49]
  wire [2:0] Muxn_1_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_out; // @[PE.scala 57:49]
  wire  cfg_clock; // @[PE.scala 92:19]
  wire  cfg_reset; // @[PE.scala 92:19]
  wire  cfg_io_cfg_en; // @[PE.scala 92:19]
  wire  cfg_io_en; // @[PE.scala 92:19]
  wire [2:0] cfg_io_cycle; // @[PE.scala 92:19]
  wire [2:0] cfg_io_II; // @[PE.scala 92:19]
  wire  cfg_io_cfg_addr; // @[PE.scala 92:19]
  wire [31:0] cfg_io_cfg_data; // @[PE.scala 92:19]
  wire [48:0] cfg_io_out_0; // @[PE.scala 92:19]
  wire  _T_1 = 10'h2d == io_cfg_addr[17:8]; // @[PE.scala 93:48]
  wire [48:0] cfgOut = cfg_io_out_0; // @[PE.scala 102:20 PE.scala 103:10]
  ALU alu ( // @[PE.scala 52:19]
    .io_config(alu_io_config),
    .io_in_0(alu_io_in_0),
    .io_in_1(alu_io_in_1),
    .io_out(alu_io_out)
  );
  RF rf ( // @[PE.scala 53:18]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_en(rf_io_en),
    .io_in_0(rf_io_in_0),
    .io_out_0(rf_io_out_0),
    .io_out_1(rf_io_out_1)
  );
  DelayPipe DelayPipe ( // @[PE.scala 54:54]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[PE.scala 54:54]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  Muxn_8 Muxn ( // @[PE.scala 57:49]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_in_4(Muxn_io_in_4),
    .io_in_5(Muxn_io_in_5),
    .io_out(Muxn_io_out)
  );
  Muxn_8 Muxn_1 ( // @[PE.scala 57:49]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_in_4(Muxn_1_io_in_4),
    .io_in_5(Muxn_1_io_in_5),
    .io_out(Muxn_1_io_out)
  );
  ConfigMem_8 cfg ( // @[PE.scala 92:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0)
  );
  assign io_out_0 = rf_io_out_0; // @[PE.scala 79:13]
  assign alu_io_config = cfgOut[36:32]; // @[PE.scala 106:19]
  assign alu_io_in_0 = DelayPipe_io_out; // @[PE.scala 73:18]
  assign alu_io_in_1 = DelayPipe_1_io_out; // @[PE.scala 73:18]
  assign rf_clock = clock;
  assign rf_reset = reset;
  assign rf_io_en = io_en; // @[PE.scala 77:12]
  assign rf_io_in_0 = alu_io_out; // @[PE.scala 78:15]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_io_config = cfgOut[39:37]; // @[PE.scala 119:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[PE.scala 72:23]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_1_io_config = cfgOut[42:40]; // @[PE.scala 119:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[PE.scala 72:23]
  assign Muxn_io_config = cfgOut[45:43]; // @[PE.scala 127:23]
  assign Muxn_io_in_0 = io_in_0; // @[PE.scala 64:12]
  assign Muxn_io_in_1 = io_in_1; // @[PE.scala 64:12]
  assign Muxn_io_in_2 = io_in_2; // @[PE.scala 64:12]
  assign Muxn_io_in_3 = io_in_3; // @[PE.scala 64:12]
  assign Muxn_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign Muxn_1_io_config = cfgOut[48:46]; // @[PE.scala 127:23]
  assign Muxn_1_io_in_0 = io_in_4; // @[PE.scala 64:12]
  assign Muxn_1_io_in_1 = io_in_5; // @[PE.scala 64:12]
  assign Muxn_1_io_in_2 = io_in_6; // @[PE.scala 64:12]
  assign Muxn_1_io_in_3 = io_in_7; // @[PE.scala 64:12]
  assign Muxn_1_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_1_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_1; // @[PE.scala 93:17]
  assign cfg_io_en = io_en; // @[PE.scala 95:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[PE.scala 96:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[PE.scala 97:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[PE.scala 94:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[PE.scala 98:19]
endmodule
module GPE_10(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  output [31:0] io_out_0
);
  wire [4:0] alu_io_config; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_0; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_1; // @[PE.scala 52:19]
  wire [31:0] alu_io_out; // @[PE.scala 52:19]
  wire  rf_clock; // @[PE.scala 53:18]
  wire  rf_reset; // @[PE.scala 53:18]
  wire  rf_io_en; // @[PE.scala 53:18]
  wire [31:0] rf_io_in_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_1; // @[PE.scala 53:18]
  wire  DelayPipe_clock; // @[PE.scala 54:54]
  wire  DelayPipe_reset; // @[PE.scala 54:54]
  wire  DelayPipe_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_out; // @[PE.scala 54:54]
  wire  DelayPipe_1_clock; // @[PE.scala 54:54]
  wire  DelayPipe_1_reset; // @[PE.scala 54:54]
  wire  DelayPipe_1_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_1_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_out; // @[PE.scala 54:54]
  wire [2:0] Muxn_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_out; // @[PE.scala 57:49]
  wire [2:0] Muxn_1_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_out; // @[PE.scala 57:49]
  wire  cfg_clock; // @[PE.scala 92:19]
  wire  cfg_reset; // @[PE.scala 92:19]
  wire  cfg_io_cfg_en; // @[PE.scala 92:19]
  wire  cfg_io_en; // @[PE.scala 92:19]
  wire [2:0] cfg_io_cycle; // @[PE.scala 92:19]
  wire [2:0] cfg_io_II; // @[PE.scala 92:19]
  wire  cfg_io_cfg_addr; // @[PE.scala 92:19]
  wire [31:0] cfg_io_cfg_data; // @[PE.scala 92:19]
  wire [48:0] cfg_io_out_0; // @[PE.scala 92:19]
  wire  _T_1 = 10'h2e == io_cfg_addr[17:8]; // @[PE.scala 93:48]
  wire [48:0] cfgOut = cfg_io_out_0; // @[PE.scala 102:20 PE.scala 103:10]
  ALU alu ( // @[PE.scala 52:19]
    .io_config(alu_io_config),
    .io_in_0(alu_io_in_0),
    .io_in_1(alu_io_in_1),
    .io_out(alu_io_out)
  );
  RF rf ( // @[PE.scala 53:18]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_en(rf_io_en),
    .io_in_0(rf_io_in_0),
    .io_out_0(rf_io_out_0),
    .io_out_1(rf_io_out_1)
  );
  DelayPipe DelayPipe ( // @[PE.scala 54:54]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[PE.scala 54:54]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  Muxn_8 Muxn ( // @[PE.scala 57:49]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_in_4(Muxn_io_in_4),
    .io_in_5(Muxn_io_in_5),
    .io_out(Muxn_io_out)
  );
  Muxn_8 Muxn_1 ( // @[PE.scala 57:49]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_in_4(Muxn_1_io_in_4),
    .io_in_5(Muxn_1_io_in_5),
    .io_out(Muxn_1_io_out)
  );
  ConfigMem_8 cfg ( // @[PE.scala 92:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0)
  );
  assign io_out_0 = rf_io_out_0; // @[PE.scala 79:13]
  assign alu_io_config = cfgOut[36:32]; // @[PE.scala 106:19]
  assign alu_io_in_0 = DelayPipe_io_out; // @[PE.scala 73:18]
  assign alu_io_in_1 = DelayPipe_1_io_out; // @[PE.scala 73:18]
  assign rf_clock = clock;
  assign rf_reset = reset;
  assign rf_io_en = io_en; // @[PE.scala 77:12]
  assign rf_io_in_0 = alu_io_out; // @[PE.scala 78:15]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_io_config = cfgOut[39:37]; // @[PE.scala 119:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[PE.scala 72:23]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_1_io_config = cfgOut[42:40]; // @[PE.scala 119:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[PE.scala 72:23]
  assign Muxn_io_config = cfgOut[45:43]; // @[PE.scala 127:23]
  assign Muxn_io_in_0 = io_in_0; // @[PE.scala 64:12]
  assign Muxn_io_in_1 = io_in_1; // @[PE.scala 64:12]
  assign Muxn_io_in_2 = io_in_2; // @[PE.scala 64:12]
  assign Muxn_io_in_3 = io_in_3; // @[PE.scala 64:12]
  assign Muxn_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign Muxn_1_io_config = cfgOut[48:46]; // @[PE.scala 127:23]
  assign Muxn_1_io_in_0 = io_in_4; // @[PE.scala 64:12]
  assign Muxn_1_io_in_1 = io_in_5; // @[PE.scala 64:12]
  assign Muxn_1_io_in_2 = io_in_6; // @[PE.scala 64:12]
  assign Muxn_1_io_in_3 = io_in_7; // @[PE.scala 64:12]
  assign Muxn_1_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_1_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_1; // @[PE.scala 93:17]
  assign cfg_io_en = io_en; // @[PE.scala 95:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[PE.scala 96:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[PE.scala 97:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[PE.scala 94:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[PE.scala 98:19]
endmodule
module GPE_11(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  output [31:0] io_out_0
);
  wire [4:0] alu_io_config; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_0; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_1; // @[PE.scala 52:19]
  wire [31:0] alu_io_out; // @[PE.scala 52:19]
  wire  rf_clock; // @[PE.scala 53:18]
  wire  rf_reset; // @[PE.scala 53:18]
  wire  rf_io_en; // @[PE.scala 53:18]
  wire [31:0] rf_io_in_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_1; // @[PE.scala 53:18]
  wire  DelayPipe_clock; // @[PE.scala 54:54]
  wire  DelayPipe_reset; // @[PE.scala 54:54]
  wire  DelayPipe_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_out; // @[PE.scala 54:54]
  wire  DelayPipe_1_clock; // @[PE.scala 54:54]
  wire  DelayPipe_1_reset; // @[PE.scala 54:54]
  wire  DelayPipe_1_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_1_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_out; // @[PE.scala 54:54]
  wire [2:0] Muxn_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_out; // @[PE.scala 57:49]
  wire [2:0] Muxn_1_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_out; // @[PE.scala 57:49]
  wire  cfg_clock; // @[PE.scala 92:19]
  wire  cfg_reset; // @[PE.scala 92:19]
  wire  cfg_io_cfg_en; // @[PE.scala 92:19]
  wire  cfg_io_en; // @[PE.scala 92:19]
  wire [2:0] cfg_io_cycle; // @[PE.scala 92:19]
  wire [2:0] cfg_io_II; // @[PE.scala 92:19]
  wire  cfg_io_cfg_addr; // @[PE.scala 92:19]
  wire [31:0] cfg_io_cfg_data; // @[PE.scala 92:19]
  wire [48:0] cfg_io_out_0; // @[PE.scala 92:19]
  wire  _T_1 = 10'h2f == io_cfg_addr[17:8]; // @[PE.scala 93:48]
  wire [48:0] cfgOut = cfg_io_out_0; // @[PE.scala 102:20 PE.scala 103:10]
  ALU alu ( // @[PE.scala 52:19]
    .io_config(alu_io_config),
    .io_in_0(alu_io_in_0),
    .io_in_1(alu_io_in_1),
    .io_out(alu_io_out)
  );
  RF rf ( // @[PE.scala 53:18]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_en(rf_io_en),
    .io_in_0(rf_io_in_0),
    .io_out_0(rf_io_out_0),
    .io_out_1(rf_io_out_1)
  );
  DelayPipe DelayPipe ( // @[PE.scala 54:54]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[PE.scala 54:54]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  Muxn_8 Muxn ( // @[PE.scala 57:49]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_in_4(Muxn_io_in_4),
    .io_in_5(Muxn_io_in_5),
    .io_out(Muxn_io_out)
  );
  Muxn_8 Muxn_1 ( // @[PE.scala 57:49]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_in_4(Muxn_1_io_in_4),
    .io_in_5(Muxn_1_io_in_5),
    .io_out(Muxn_1_io_out)
  );
  ConfigMem_8 cfg ( // @[PE.scala 92:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0)
  );
  assign io_out_0 = rf_io_out_0; // @[PE.scala 79:13]
  assign alu_io_config = cfgOut[36:32]; // @[PE.scala 106:19]
  assign alu_io_in_0 = DelayPipe_io_out; // @[PE.scala 73:18]
  assign alu_io_in_1 = DelayPipe_1_io_out; // @[PE.scala 73:18]
  assign rf_clock = clock;
  assign rf_reset = reset;
  assign rf_io_en = io_en; // @[PE.scala 77:12]
  assign rf_io_in_0 = alu_io_out; // @[PE.scala 78:15]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_io_config = cfgOut[39:37]; // @[PE.scala 119:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[PE.scala 72:23]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_1_io_config = cfgOut[42:40]; // @[PE.scala 119:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[PE.scala 72:23]
  assign Muxn_io_config = cfgOut[45:43]; // @[PE.scala 127:23]
  assign Muxn_io_in_0 = io_in_0; // @[PE.scala 64:12]
  assign Muxn_io_in_1 = io_in_1; // @[PE.scala 64:12]
  assign Muxn_io_in_2 = io_in_2; // @[PE.scala 64:12]
  assign Muxn_io_in_3 = io_in_3; // @[PE.scala 64:12]
  assign Muxn_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign Muxn_1_io_config = cfgOut[48:46]; // @[PE.scala 127:23]
  assign Muxn_1_io_in_0 = io_in_4; // @[PE.scala 64:12]
  assign Muxn_1_io_in_1 = io_in_5; // @[PE.scala 64:12]
  assign Muxn_1_io_in_2 = io_in_6; // @[PE.scala 64:12]
  assign Muxn_1_io_in_3 = io_in_7; // @[PE.scala 64:12]
  assign Muxn_1_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_1_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_1; // @[PE.scala 93:17]
  assign cfg_io_en = io_en; // @[PE.scala 95:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[PE.scala 96:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[PE.scala 97:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[PE.scala 94:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[PE.scala 98:19]
endmodule
module GPE_12(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  output [31:0] io_out_0
);
  wire [4:0] alu_io_config; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_0; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_1; // @[PE.scala 52:19]
  wire [31:0] alu_io_out; // @[PE.scala 52:19]
  wire  rf_clock; // @[PE.scala 53:18]
  wire  rf_reset; // @[PE.scala 53:18]
  wire  rf_io_en; // @[PE.scala 53:18]
  wire [31:0] rf_io_in_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_1; // @[PE.scala 53:18]
  wire  DelayPipe_clock; // @[PE.scala 54:54]
  wire  DelayPipe_reset; // @[PE.scala 54:54]
  wire  DelayPipe_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_out; // @[PE.scala 54:54]
  wire  DelayPipe_1_clock; // @[PE.scala 54:54]
  wire  DelayPipe_1_reset; // @[PE.scala 54:54]
  wire  DelayPipe_1_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_1_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_out; // @[PE.scala 54:54]
  wire [2:0] Muxn_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_out; // @[PE.scala 57:49]
  wire [2:0] Muxn_1_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_out; // @[PE.scala 57:49]
  wire  cfg_clock; // @[PE.scala 92:19]
  wire  cfg_reset; // @[PE.scala 92:19]
  wire  cfg_io_cfg_en; // @[PE.scala 92:19]
  wire  cfg_io_en; // @[PE.scala 92:19]
  wire [2:0] cfg_io_cycle; // @[PE.scala 92:19]
  wire [2:0] cfg_io_II; // @[PE.scala 92:19]
  wire  cfg_io_cfg_addr; // @[PE.scala 92:19]
  wire [31:0] cfg_io_cfg_data; // @[PE.scala 92:19]
  wire [48:0] cfg_io_out_0; // @[PE.scala 92:19]
  wire  _T_1 = 10'h38 == io_cfg_addr[17:8]; // @[PE.scala 93:48]
  wire [48:0] cfgOut = cfg_io_out_0; // @[PE.scala 102:20 PE.scala 103:10]
  ALU alu ( // @[PE.scala 52:19]
    .io_config(alu_io_config),
    .io_in_0(alu_io_in_0),
    .io_in_1(alu_io_in_1),
    .io_out(alu_io_out)
  );
  RF rf ( // @[PE.scala 53:18]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_en(rf_io_en),
    .io_in_0(rf_io_in_0),
    .io_out_0(rf_io_out_0),
    .io_out_1(rf_io_out_1)
  );
  DelayPipe DelayPipe ( // @[PE.scala 54:54]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[PE.scala 54:54]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  Muxn_8 Muxn ( // @[PE.scala 57:49]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_in_4(Muxn_io_in_4),
    .io_in_5(Muxn_io_in_5),
    .io_out(Muxn_io_out)
  );
  Muxn_8 Muxn_1 ( // @[PE.scala 57:49]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_in_4(Muxn_1_io_in_4),
    .io_in_5(Muxn_1_io_in_5),
    .io_out(Muxn_1_io_out)
  );
  ConfigMem_8 cfg ( // @[PE.scala 92:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0)
  );
  assign io_out_0 = rf_io_out_0; // @[PE.scala 79:13]
  assign alu_io_config = cfgOut[36:32]; // @[PE.scala 106:19]
  assign alu_io_in_0 = DelayPipe_io_out; // @[PE.scala 73:18]
  assign alu_io_in_1 = DelayPipe_1_io_out; // @[PE.scala 73:18]
  assign rf_clock = clock;
  assign rf_reset = reset;
  assign rf_io_en = io_en; // @[PE.scala 77:12]
  assign rf_io_in_0 = alu_io_out; // @[PE.scala 78:15]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_io_config = cfgOut[39:37]; // @[PE.scala 119:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[PE.scala 72:23]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_1_io_config = cfgOut[42:40]; // @[PE.scala 119:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[PE.scala 72:23]
  assign Muxn_io_config = cfgOut[45:43]; // @[PE.scala 127:23]
  assign Muxn_io_in_0 = io_in_0; // @[PE.scala 64:12]
  assign Muxn_io_in_1 = io_in_1; // @[PE.scala 64:12]
  assign Muxn_io_in_2 = io_in_2; // @[PE.scala 64:12]
  assign Muxn_io_in_3 = io_in_3; // @[PE.scala 64:12]
  assign Muxn_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign Muxn_1_io_config = cfgOut[48:46]; // @[PE.scala 127:23]
  assign Muxn_1_io_in_0 = io_in_4; // @[PE.scala 64:12]
  assign Muxn_1_io_in_1 = io_in_5; // @[PE.scala 64:12]
  assign Muxn_1_io_in_2 = io_in_6; // @[PE.scala 64:12]
  assign Muxn_1_io_in_3 = io_in_7; // @[PE.scala 64:12]
  assign Muxn_1_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_1_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_1; // @[PE.scala 93:17]
  assign cfg_io_en = io_en; // @[PE.scala 95:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[PE.scala 96:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[PE.scala 97:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[PE.scala 94:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[PE.scala 98:19]
endmodule
module GPE_13(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  output [31:0] io_out_0
);
  wire [4:0] alu_io_config; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_0; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_1; // @[PE.scala 52:19]
  wire [31:0] alu_io_out; // @[PE.scala 52:19]
  wire  rf_clock; // @[PE.scala 53:18]
  wire  rf_reset; // @[PE.scala 53:18]
  wire  rf_io_en; // @[PE.scala 53:18]
  wire [31:0] rf_io_in_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_1; // @[PE.scala 53:18]
  wire  DelayPipe_clock; // @[PE.scala 54:54]
  wire  DelayPipe_reset; // @[PE.scala 54:54]
  wire  DelayPipe_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_out; // @[PE.scala 54:54]
  wire  DelayPipe_1_clock; // @[PE.scala 54:54]
  wire  DelayPipe_1_reset; // @[PE.scala 54:54]
  wire  DelayPipe_1_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_1_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_out; // @[PE.scala 54:54]
  wire [2:0] Muxn_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_out; // @[PE.scala 57:49]
  wire [2:0] Muxn_1_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_out; // @[PE.scala 57:49]
  wire  cfg_clock; // @[PE.scala 92:19]
  wire  cfg_reset; // @[PE.scala 92:19]
  wire  cfg_io_cfg_en; // @[PE.scala 92:19]
  wire  cfg_io_en; // @[PE.scala 92:19]
  wire [2:0] cfg_io_cycle; // @[PE.scala 92:19]
  wire [2:0] cfg_io_II; // @[PE.scala 92:19]
  wire  cfg_io_cfg_addr; // @[PE.scala 92:19]
  wire [31:0] cfg_io_cfg_data; // @[PE.scala 92:19]
  wire [48:0] cfg_io_out_0; // @[PE.scala 92:19]
  wire  _T_1 = 10'h39 == io_cfg_addr[17:8]; // @[PE.scala 93:48]
  wire [48:0] cfgOut = cfg_io_out_0; // @[PE.scala 102:20 PE.scala 103:10]
  ALU alu ( // @[PE.scala 52:19]
    .io_config(alu_io_config),
    .io_in_0(alu_io_in_0),
    .io_in_1(alu_io_in_1),
    .io_out(alu_io_out)
  );
  RF rf ( // @[PE.scala 53:18]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_en(rf_io_en),
    .io_in_0(rf_io_in_0),
    .io_out_0(rf_io_out_0),
    .io_out_1(rf_io_out_1)
  );
  DelayPipe DelayPipe ( // @[PE.scala 54:54]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[PE.scala 54:54]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  Muxn_8 Muxn ( // @[PE.scala 57:49]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_in_4(Muxn_io_in_4),
    .io_in_5(Muxn_io_in_5),
    .io_out(Muxn_io_out)
  );
  Muxn_8 Muxn_1 ( // @[PE.scala 57:49]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_in_4(Muxn_1_io_in_4),
    .io_in_5(Muxn_1_io_in_5),
    .io_out(Muxn_1_io_out)
  );
  ConfigMem_8 cfg ( // @[PE.scala 92:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0)
  );
  assign io_out_0 = rf_io_out_0; // @[PE.scala 79:13]
  assign alu_io_config = cfgOut[36:32]; // @[PE.scala 106:19]
  assign alu_io_in_0 = DelayPipe_io_out; // @[PE.scala 73:18]
  assign alu_io_in_1 = DelayPipe_1_io_out; // @[PE.scala 73:18]
  assign rf_clock = clock;
  assign rf_reset = reset;
  assign rf_io_en = io_en; // @[PE.scala 77:12]
  assign rf_io_in_0 = alu_io_out; // @[PE.scala 78:15]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_io_config = cfgOut[39:37]; // @[PE.scala 119:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[PE.scala 72:23]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_1_io_config = cfgOut[42:40]; // @[PE.scala 119:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[PE.scala 72:23]
  assign Muxn_io_config = cfgOut[45:43]; // @[PE.scala 127:23]
  assign Muxn_io_in_0 = io_in_0; // @[PE.scala 64:12]
  assign Muxn_io_in_1 = io_in_1; // @[PE.scala 64:12]
  assign Muxn_io_in_2 = io_in_2; // @[PE.scala 64:12]
  assign Muxn_io_in_3 = io_in_3; // @[PE.scala 64:12]
  assign Muxn_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign Muxn_1_io_config = cfgOut[48:46]; // @[PE.scala 127:23]
  assign Muxn_1_io_in_0 = io_in_4; // @[PE.scala 64:12]
  assign Muxn_1_io_in_1 = io_in_5; // @[PE.scala 64:12]
  assign Muxn_1_io_in_2 = io_in_6; // @[PE.scala 64:12]
  assign Muxn_1_io_in_3 = io_in_7; // @[PE.scala 64:12]
  assign Muxn_1_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_1_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_1; // @[PE.scala 93:17]
  assign cfg_io_en = io_en; // @[PE.scala 95:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[PE.scala 96:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[PE.scala 97:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[PE.scala 94:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[PE.scala 98:19]
endmodule
module GPE_14(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  output [31:0] io_out_0
);
  wire [4:0] alu_io_config; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_0; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_1; // @[PE.scala 52:19]
  wire [31:0] alu_io_out; // @[PE.scala 52:19]
  wire  rf_clock; // @[PE.scala 53:18]
  wire  rf_reset; // @[PE.scala 53:18]
  wire  rf_io_en; // @[PE.scala 53:18]
  wire [31:0] rf_io_in_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_1; // @[PE.scala 53:18]
  wire  DelayPipe_clock; // @[PE.scala 54:54]
  wire  DelayPipe_reset; // @[PE.scala 54:54]
  wire  DelayPipe_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_out; // @[PE.scala 54:54]
  wire  DelayPipe_1_clock; // @[PE.scala 54:54]
  wire  DelayPipe_1_reset; // @[PE.scala 54:54]
  wire  DelayPipe_1_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_1_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_out; // @[PE.scala 54:54]
  wire [2:0] Muxn_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_out; // @[PE.scala 57:49]
  wire [2:0] Muxn_1_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_out; // @[PE.scala 57:49]
  wire  cfg_clock; // @[PE.scala 92:19]
  wire  cfg_reset; // @[PE.scala 92:19]
  wire  cfg_io_cfg_en; // @[PE.scala 92:19]
  wire  cfg_io_en; // @[PE.scala 92:19]
  wire [2:0] cfg_io_cycle; // @[PE.scala 92:19]
  wire [2:0] cfg_io_II; // @[PE.scala 92:19]
  wire  cfg_io_cfg_addr; // @[PE.scala 92:19]
  wire [31:0] cfg_io_cfg_data; // @[PE.scala 92:19]
  wire [48:0] cfg_io_out_0; // @[PE.scala 92:19]
  wire  _T_1 = 10'h3a == io_cfg_addr[17:8]; // @[PE.scala 93:48]
  wire [48:0] cfgOut = cfg_io_out_0; // @[PE.scala 102:20 PE.scala 103:10]
  ALU alu ( // @[PE.scala 52:19]
    .io_config(alu_io_config),
    .io_in_0(alu_io_in_0),
    .io_in_1(alu_io_in_1),
    .io_out(alu_io_out)
  );
  RF rf ( // @[PE.scala 53:18]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_en(rf_io_en),
    .io_in_0(rf_io_in_0),
    .io_out_0(rf_io_out_0),
    .io_out_1(rf_io_out_1)
  );
  DelayPipe DelayPipe ( // @[PE.scala 54:54]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[PE.scala 54:54]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  Muxn_8 Muxn ( // @[PE.scala 57:49]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_in_4(Muxn_io_in_4),
    .io_in_5(Muxn_io_in_5),
    .io_out(Muxn_io_out)
  );
  Muxn_8 Muxn_1 ( // @[PE.scala 57:49]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_in_4(Muxn_1_io_in_4),
    .io_in_5(Muxn_1_io_in_5),
    .io_out(Muxn_1_io_out)
  );
  ConfigMem_8 cfg ( // @[PE.scala 92:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0)
  );
  assign io_out_0 = rf_io_out_0; // @[PE.scala 79:13]
  assign alu_io_config = cfgOut[36:32]; // @[PE.scala 106:19]
  assign alu_io_in_0 = DelayPipe_io_out; // @[PE.scala 73:18]
  assign alu_io_in_1 = DelayPipe_1_io_out; // @[PE.scala 73:18]
  assign rf_clock = clock;
  assign rf_reset = reset;
  assign rf_io_en = io_en; // @[PE.scala 77:12]
  assign rf_io_in_0 = alu_io_out; // @[PE.scala 78:15]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_io_config = cfgOut[39:37]; // @[PE.scala 119:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[PE.scala 72:23]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_1_io_config = cfgOut[42:40]; // @[PE.scala 119:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[PE.scala 72:23]
  assign Muxn_io_config = cfgOut[45:43]; // @[PE.scala 127:23]
  assign Muxn_io_in_0 = io_in_0; // @[PE.scala 64:12]
  assign Muxn_io_in_1 = io_in_1; // @[PE.scala 64:12]
  assign Muxn_io_in_2 = io_in_2; // @[PE.scala 64:12]
  assign Muxn_io_in_3 = io_in_3; // @[PE.scala 64:12]
  assign Muxn_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign Muxn_1_io_config = cfgOut[48:46]; // @[PE.scala 127:23]
  assign Muxn_1_io_in_0 = io_in_4; // @[PE.scala 64:12]
  assign Muxn_1_io_in_1 = io_in_5; // @[PE.scala 64:12]
  assign Muxn_1_io_in_2 = io_in_6; // @[PE.scala 64:12]
  assign Muxn_1_io_in_3 = io_in_7; // @[PE.scala 64:12]
  assign Muxn_1_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_1_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_1; // @[PE.scala 93:17]
  assign cfg_io_en = io_en; // @[PE.scala 95:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[PE.scala 96:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[PE.scala 97:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[PE.scala 94:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[PE.scala 98:19]
endmodule
module GPE_15(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  output [31:0] io_out_0
);
  wire [4:0] alu_io_config; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_0; // @[PE.scala 52:19]
  wire [31:0] alu_io_in_1; // @[PE.scala 52:19]
  wire [31:0] alu_io_out; // @[PE.scala 52:19]
  wire  rf_clock; // @[PE.scala 53:18]
  wire  rf_reset; // @[PE.scala 53:18]
  wire  rf_io_en; // @[PE.scala 53:18]
  wire [31:0] rf_io_in_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_0; // @[PE.scala 53:18]
  wire [31:0] rf_io_out_1; // @[PE.scala 53:18]
  wire  DelayPipe_clock; // @[PE.scala 54:54]
  wire  DelayPipe_reset; // @[PE.scala 54:54]
  wire  DelayPipe_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_io_out; // @[PE.scala 54:54]
  wire  DelayPipe_1_clock; // @[PE.scala 54:54]
  wire  DelayPipe_1_reset; // @[PE.scala 54:54]
  wire  DelayPipe_1_io_en; // @[PE.scala 54:54]
  wire [2:0] DelayPipe_1_io_config; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_in; // @[PE.scala 54:54]
  wire [31:0] DelayPipe_1_io_out; // @[PE.scala 54:54]
  wire [2:0] Muxn_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_io_out; // @[PE.scala 57:49]
  wire [2:0] Muxn_1_io_config; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_0; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_1; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_2; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_3; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_4; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_in_5; // @[PE.scala 57:49]
  wire [31:0] Muxn_1_io_out; // @[PE.scala 57:49]
  wire  cfg_clock; // @[PE.scala 92:19]
  wire  cfg_reset; // @[PE.scala 92:19]
  wire  cfg_io_cfg_en; // @[PE.scala 92:19]
  wire  cfg_io_en; // @[PE.scala 92:19]
  wire [2:0] cfg_io_cycle; // @[PE.scala 92:19]
  wire [2:0] cfg_io_II; // @[PE.scala 92:19]
  wire  cfg_io_cfg_addr; // @[PE.scala 92:19]
  wire [31:0] cfg_io_cfg_data; // @[PE.scala 92:19]
  wire [48:0] cfg_io_out_0; // @[PE.scala 92:19]
  wire  _T_1 = 10'h3b == io_cfg_addr[17:8]; // @[PE.scala 93:48]
  wire [48:0] cfgOut = cfg_io_out_0; // @[PE.scala 102:20 PE.scala 103:10]
  ALU alu ( // @[PE.scala 52:19]
    .io_config(alu_io_config),
    .io_in_0(alu_io_in_0),
    .io_in_1(alu_io_in_1),
    .io_out(alu_io_out)
  );
  RF rf ( // @[PE.scala 53:18]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_en(rf_io_en),
    .io_in_0(rf_io_in_0),
    .io_out_0(rf_io_out_0),
    .io_out_1(rf_io_out_1)
  );
  DelayPipe DelayPipe ( // @[PE.scala 54:54]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[PE.scala 54:54]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  Muxn_8 Muxn ( // @[PE.scala 57:49]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_in_4(Muxn_io_in_4),
    .io_in_5(Muxn_io_in_5),
    .io_out(Muxn_io_out)
  );
  Muxn_8 Muxn_1 ( // @[PE.scala 57:49]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_in_4(Muxn_1_io_in_4),
    .io_in_5(Muxn_1_io_in_5),
    .io_out(Muxn_1_io_out)
  );
  ConfigMem_8 cfg ( // @[PE.scala 92:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0)
  );
  assign io_out_0 = rf_io_out_0; // @[PE.scala 79:13]
  assign alu_io_config = cfgOut[36:32]; // @[PE.scala 106:19]
  assign alu_io_in_0 = DelayPipe_io_out; // @[PE.scala 73:18]
  assign alu_io_in_1 = DelayPipe_1_io_out; // @[PE.scala 73:18]
  assign rf_clock = clock;
  assign rf_reset = reset;
  assign rf_io_en = io_en; // @[PE.scala 77:12]
  assign rf_io_in_0 = alu_io_out; // @[PE.scala 78:15]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_io_config = cfgOut[39:37]; // @[PE.scala 119:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[PE.scala 72:23]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[PE.scala 71:23]
  assign DelayPipe_1_io_config = cfgOut[42:40]; // @[PE.scala 119:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[PE.scala 72:23]
  assign Muxn_io_config = cfgOut[45:43]; // @[PE.scala 127:23]
  assign Muxn_io_in_0 = io_in_0; // @[PE.scala 64:12]
  assign Muxn_io_in_1 = io_in_1; // @[PE.scala 64:12]
  assign Muxn_io_in_2 = io_in_2; // @[PE.scala 64:12]
  assign Muxn_io_in_3 = io_in_3; // @[PE.scala 64:12]
  assign Muxn_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign Muxn_1_io_config = cfgOut[48:46]; // @[PE.scala 127:23]
  assign Muxn_1_io_in_0 = io_in_4; // @[PE.scala 64:12]
  assign Muxn_1_io_in_1 = io_in_5; // @[PE.scala 64:12]
  assign Muxn_1_io_in_2 = io_in_6; // @[PE.scala 64:12]
  assign Muxn_1_io_in_3 = io_in_7; // @[PE.scala 64:12]
  assign Muxn_1_io_in_4 = cfgOut[31:0]; // @[PE.scala 66:12]
  assign Muxn_1_io_in_5 = rf_io_out_1; // @[PE.scala 68:12]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_1; // @[PE.scala 93:17]
  assign cfg_io_en = io_en; // @[PE.scala 95:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[PE.scala 96:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[PE.scala 97:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[PE.scala 94:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[PE.scala 98:19]
endmodule
module ConfigMem_24(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input         io_en,
  input  [2:0]  io_cycle,
  input  [2:0]  io_II,
  input  [31:0] io_cfg_data,
  output [17:0] io_out_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [17:0] configmem_0_0; // @[ConfigMem.scala 81:26]
  reg [17:0] configmem_0_1; // @[ConfigMem.scala 81:26]
  reg [17:0] configmem_0_2; // @[ConfigMem.scala 81:26]
  reg [17:0] configmem_0_3; // @[ConfigMem.scala 81:26]
  reg [17:0] configmem_0_4; // @[ConfigMem.scala 81:26]
  reg [2:0] config_pointer_i; // @[ConfigMem.scala 95:32]
  reg [2:0] config_pointer; // @[ConfigMem.scala 96:30]
  wire [17:0] _GEN_5 = io_cfg_en ? io_cfg_data[17:0] : 18'h0; // @[ConfigMem.scala 102:54]
  wire  _T_5 = config_pointer_i == io_II; // @[ConfigMem.scala 124:46]
  wire [2:0] _T_7 = config_pointer_i + 3'h1; // @[ConfigMem.scala 124:77]
  wire [17:0] _GEN_13 = 3'h1 == config_pointer ? configmem_0_1 : configmem_0_0; // @[ConfigMem.scala 131:45]
  wire [17:0] _GEN_14 = 3'h2 == config_pointer ? configmem_0_2 : _GEN_13; // @[ConfigMem.scala 131:45]
  wire [17:0] _GEN_15 = 3'h3 == config_pointer ? configmem_0_3 : _GEN_14; // @[ConfigMem.scala 131:45]
  assign io_out_0 = 3'h4 == config_pointer ? configmem_0_4 : _GEN_15; // @[ConfigMem.scala 131:45]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  configmem_0_0 = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  configmem_0_1 = _RAND_1[17:0];
  _RAND_2 = {1{`RANDOM}};
  configmem_0_2 = _RAND_2[17:0];
  _RAND_3 = {1{`RANDOM}};
  configmem_0_3 = _RAND_3[17:0];
  _RAND_4 = {1{`RANDOM}};
  configmem_0_4 = _RAND_4[17:0];
  _RAND_5 = {1{`RANDOM}};
  config_pointer_i = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  config_pointer = _RAND_6[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      configmem_0_0 <= 18'h0;
    end else if (io_cfg_en) begin
      if (3'h0 == io_cycle) begin
        if (io_cfg_en) begin
          configmem_0_0 <= io_cfg_data[17:0];
        end else begin
          configmem_0_0 <= 18'h0;
        end
      end
    end
    if (reset) begin
      configmem_0_1 <= 18'h0;
    end else if (io_cfg_en) begin
      if (3'h1 == io_cycle) begin
        if (io_cfg_en) begin
          configmem_0_1 <= io_cfg_data[17:0];
        end else begin
          configmem_0_1 <= 18'h0;
        end
      end
    end
    if (reset) begin
      configmem_0_2 <= 18'h0;
    end else if (io_cfg_en) begin
      if (3'h2 == io_cycle) begin
        if (io_cfg_en) begin
          configmem_0_2 <= io_cfg_data[17:0];
        end else begin
          configmem_0_2 <= 18'h0;
        end
      end
    end
    if (reset) begin
      configmem_0_3 <= 18'h0;
    end else if (io_cfg_en) begin
      if (3'h3 == io_cycle) begin
        if (io_cfg_en) begin
          configmem_0_3 <= io_cfg_data[17:0];
        end else begin
          configmem_0_3 <= 18'h0;
        end
      end
    end
    if (reset) begin
      configmem_0_4 <= 18'h0;
    end else if (io_cfg_en) begin
      if (3'h4 == io_cycle) begin
        configmem_0_4 <= _GEN_5;
      end
    end
    if (reset) begin
      config_pointer_i <= 3'h0;
    end else if (io_en) begin
      if (_T_5) begin
        config_pointer_i <= 3'h0;
      end else begin
        config_pointer_i <= _T_7;
      end
    end else begin
      config_pointer_i <= 3'h0;
    end
    config_pointer <= config_pointer_i;
  end
endmodule
module Muxn_40(
  input  [1:0]  io_config,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  output [31:0] io_out
);
  wire  _T_2 = 2'h1 == io_config; // @[Mux.scala 80:60]
  wire [31:0] _T_3 = _T_2 ? io_in_1 : io_in_0; // @[Mux.scala 80:57]
  wire  _T_4 = 2'h2 == io_config; // @[Mux.scala 80:60]
  assign io_out = _T_4 ? io_in_2 : _T_3; // @[Multiplexer.scala 20:10]
endmodule
module Muxn_44(
  input  [2:0]  io_config,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  output [31:0] io_out
);
  wire  _T_2 = 3'h1 == io_config; // @[Mux.scala 80:60]
  wire [31:0] _T_3 = _T_2 ? io_in_1 : io_in_0; // @[Mux.scala 80:57]
  wire  _T_4 = 3'h2 == io_config; // @[Mux.scala 80:60]
  wire [31:0] _T_5 = _T_4 ? io_in_2 : _T_3; // @[Mux.scala 80:57]
  wire  _T_6 = 3'h3 == io_config; // @[Mux.scala 80:60]
  wire [31:0] _T_7 = _T_6 ? io_in_3 : _T_5; // @[Mux.scala 80:57]
  wire  _T_8 = 3'h4 == io_config; // @[Mux.scala 80:60]
  assign io_out = _T_8 ? io_in_4 : _T_7; // @[Multiplexer.scala 20:10]
endmodule
module Muxn_46(
  input  [1:0]  io_config,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  output [31:0] io_out
);
  wire  _T = 2'h1 == io_config; // @[Mux.scala 80:60]
  wire [31:0] _T_1 = _T ? io_in_1 : io_in_0; // @[Mux.scala 80:57]
  wire  _T_2 = 2'h2 == io_config; // @[Mux.scala 80:60]
  wire [31:0] _T_3 = _T_2 ? io_in_2 : _T_1; // @[Mux.scala 80:57]
  wire  _T_4 = 2'h3 == io_config; // @[Mux.scala 80:60]
  assign io_out = _T_4 ? io_in_3 : _T_3; // @[Multiplexer.scala 20:10]
endmodule
module GIB(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNE_0,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  output [31:0] io_ipinSE_1,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [17:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'hd == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  ConfigMem_24 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_44 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_in_3(Muxn_4_io_in_3),
    .io_in_4(Muxn_4_io_in_4),
    .io_out(Muxn_4_io_out)
  );
  Muxn_44 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_in_3(Muxn_5_io_in_3),
    .io_in_4(Muxn_5_io_in_4),
    .io_out(Muxn_5_io_out)
  );
  Muxn_46 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_in_3(Muxn_6_io_in_3),
    .io_out(Muxn_6_io_out)
  );
  Muxn_46 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_in_3(Muxn_7_io_in_3),
    .io_out(Muxn_7_io_out)
  );
  assign io_ipinNE_0 = Muxn_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_1_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSE_1 = Muxn_2_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_3_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackE_0 = Muxn_6_io_out; // @[Interconnect.scala 563:21 Interconnect.scala 613:45]
  assign io_otrackS_0 = Muxn_7_io_out; // @[Interconnect.scala 564:21 Interconnect.scala 613:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[10:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[13:11]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[15:14]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_3 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[17:16]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
endmodule
module ConfigMem_25(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input         io_en,
  input  [2:0]  io_cycle,
  input  [2:0]  io_II,
  input  [31:0] io_cfg_data,
  output [23:0] io_out_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [23:0] configmem_0_0; // @[ConfigMem.scala 81:26]
  reg [23:0] configmem_0_1; // @[ConfigMem.scala 81:26]
  reg [23:0] configmem_0_2; // @[ConfigMem.scala 81:26]
  reg [23:0] configmem_0_3; // @[ConfigMem.scala 81:26]
  reg [23:0] configmem_0_4; // @[ConfigMem.scala 81:26]
  reg [2:0] config_pointer_i; // @[ConfigMem.scala 95:32]
  reg [2:0] config_pointer; // @[ConfigMem.scala 96:30]
  wire [23:0] _GEN_5 = io_cfg_en ? io_cfg_data[23:0] : 24'h0; // @[ConfigMem.scala 102:54]
  wire  _T_5 = config_pointer_i == io_II; // @[ConfigMem.scala 124:46]
  wire [2:0] _T_7 = config_pointer_i + 3'h1; // @[ConfigMem.scala 124:77]
  wire [23:0] _GEN_13 = 3'h1 == config_pointer ? configmem_0_1 : configmem_0_0; // @[ConfigMem.scala 131:45]
  wire [23:0] _GEN_14 = 3'h2 == config_pointer ? configmem_0_2 : _GEN_13; // @[ConfigMem.scala 131:45]
  wire [23:0] _GEN_15 = 3'h3 == config_pointer ? configmem_0_3 : _GEN_14; // @[ConfigMem.scala 131:45]
  assign io_out_0 = 3'h4 == config_pointer ? configmem_0_4 : _GEN_15; // @[ConfigMem.scala 131:45]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  configmem_0_0 = _RAND_0[23:0];
  _RAND_1 = {1{`RANDOM}};
  configmem_0_1 = _RAND_1[23:0];
  _RAND_2 = {1{`RANDOM}};
  configmem_0_2 = _RAND_2[23:0];
  _RAND_3 = {1{`RANDOM}};
  configmem_0_3 = _RAND_3[23:0];
  _RAND_4 = {1{`RANDOM}};
  configmem_0_4 = _RAND_4[23:0];
  _RAND_5 = {1{`RANDOM}};
  config_pointer_i = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  config_pointer = _RAND_6[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      configmem_0_0 <= 24'h0;
    end else if (io_cfg_en) begin
      if (3'h0 == io_cycle) begin
        if (io_cfg_en) begin
          configmem_0_0 <= io_cfg_data[23:0];
        end else begin
          configmem_0_0 <= 24'h0;
        end
      end
    end
    if (reset) begin
      configmem_0_1 <= 24'h0;
    end else if (io_cfg_en) begin
      if (3'h1 == io_cycle) begin
        if (io_cfg_en) begin
          configmem_0_1 <= io_cfg_data[23:0];
        end else begin
          configmem_0_1 <= 24'h0;
        end
      end
    end
    if (reset) begin
      configmem_0_2 <= 24'h0;
    end else if (io_cfg_en) begin
      if (3'h2 == io_cycle) begin
        if (io_cfg_en) begin
          configmem_0_2 <= io_cfg_data[23:0];
        end else begin
          configmem_0_2 <= 24'h0;
        end
      end
    end
    if (reset) begin
      configmem_0_3 <= 24'h0;
    end else if (io_cfg_en) begin
      if (3'h3 == io_cycle) begin
        if (io_cfg_en) begin
          configmem_0_3 <= io_cfg_data[23:0];
        end else begin
          configmem_0_3 <= 24'h0;
        end
      end
    end
    if (reset) begin
      configmem_0_4 <= 24'h0;
    end else if (io_cfg_en) begin
      if (3'h4 == io_cycle) begin
        configmem_0_4 <= _GEN_5;
      end
    end
    if (reset) begin
      config_pointer_i <= 3'h0;
    end else if (io_en) begin
      if (_T_5) begin
        config_pointer_i <= 3'h0;
      end else begin
        config_pointer_i <= _T_7;
      end
    end else begin
      config_pointer_i <= 3'h0;
    end
    config_pointer <= config_pointer_i;
  end
endmodule
module GIB_1(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  output [31:0] io_ipinSE_1,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  output [31:0] io_ipinSW_1,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [23:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'he == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  reg [31:0] _T_12; // @[Interconnect.scala 611:55]
  reg [31:0] _T_16; // @[Interconnect.scala 611:55]
  reg [31:0] _T_18; // @[Interconnect.scala 611:55]
  ConfigMem_25 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_46 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_out(Muxn_io_out)
  );
  Muxn_46 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_40 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_out(Muxn_4_io_out)
  );
  Muxn_40 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_out(Muxn_5_io_out)
  );
  Muxn_44 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_in_3(Muxn_6_io_in_3),
    .io_in_4(Muxn_6_io_in_4),
    .io_out(Muxn_6_io_out)
  );
  Muxn_44 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_in_3(Muxn_7_io_in_3),
    .io_in_4(Muxn_7_io_in_4),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_1_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_2_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSE_1 = Muxn_3_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_4_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_ipinSW_1 = Muxn_5_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = _T_12; // @[Interconnect.scala 561:21 Interconnect.scala 611:45]
  assign io_otrackE_0 = _T_16; // @[Interconnect.scala 563:21 Interconnect.scala 611:45]
  assign io_otrackS_0 = _T_18; // @[Interconnect.scala 564:21 Interconnect.scala 611:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_3 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_3 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[14:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[17:15]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[20:18]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[23:21]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_12 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  _T_16 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  _T_18 = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    _T_12 <= Muxn_6_io_out;
    _T_16 <= Muxn_8_io_out;
    _T_18 <= Muxn_9_io_out;
  end
endmodule
module GIB_2(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  output [31:0] io_ipinSE_1,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  output [31:0] io_ipinSW_1,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [23:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'hf == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  ConfigMem_25 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_46 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_out(Muxn_io_out)
  );
  Muxn_46 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_40 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_out(Muxn_4_io_out)
  );
  Muxn_40 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_out(Muxn_5_io_out)
  );
  Muxn_44 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_in_3(Muxn_6_io_in_3),
    .io_in_4(Muxn_6_io_in_4),
    .io_out(Muxn_6_io_out)
  );
  Muxn_44 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_in_3(Muxn_7_io_in_3),
    .io_in_4(Muxn_7_io_in_4),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_1_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_2_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSE_1 = Muxn_3_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_4_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_ipinSW_1 = Muxn_5_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = Muxn_6_io_out; // @[Interconnect.scala 561:21 Interconnect.scala 613:45]
  assign io_otrackE_0 = Muxn_8_io_out; // @[Interconnect.scala 563:21 Interconnect.scala 613:45]
  assign io_otrackS_0 = Muxn_9_io_out; // @[Interconnect.scala 564:21 Interconnect.scala 613:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_3 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_3 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[14:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[17:15]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[20:18]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[23:21]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
endmodule
module GIB_3(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  output [31:0] io_ipinSE_1,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  output [31:0] io_ipinSW_1,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [23:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h10 == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  reg [31:0] _T_12; // @[Interconnect.scala 611:55]
  reg [31:0] _T_16; // @[Interconnect.scala 611:55]
  reg [31:0] _T_18; // @[Interconnect.scala 611:55]
  ConfigMem_25 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_46 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_out(Muxn_io_out)
  );
  Muxn_46 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_in_3(Muxn_1_io_in_3),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_40 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_out(Muxn_4_io_out)
  );
  Muxn_40 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_out(Muxn_5_io_out)
  );
  Muxn_44 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_in_3(Muxn_6_io_in_3),
    .io_in_4(Muxn_6_io_in_4),
    .io_out(Muxn_6_io_out)
  );
  Muxn_44 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_in_3(Muxn_7_io_in_3),
    .io_in_4(Muxn_7_io_in_4),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_1_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_2_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSE_1 = Muxn_3_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_4_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_ipinSW_1 = Muxn_5_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = _T_12; // @[Interconnect.scala 561:21 Interconnect.scala 611:45]
  assign io_otrackE_0 = _T_16; // @[Interconnect.scala 563:21 Interconnect.scala 611:45]
  assign io_otrackS_0 = _T_18; // @[Interconnect.scala 564:21 Interconnect.scala 611:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_3 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_3 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[14:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[17:15]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[20:18]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[23:21]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_12 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  _T_16 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  _T_18 = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    _T_12 <= Muxn_6_io_out;
    _T_16 <= Muxn_8_io_out;
    _T_18 <= Muxn_9_io_out;
  end
endmodule
module GIB_4(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinSE_0,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  output [31:0] io_ipinSW_1,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [17:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h11 == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  ConfigMem_24 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_46 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_in_3(Muxn_4_io_in_3),
    .io_out(Muxn_4_io_out)
  );
  Muxn_44 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_in_3(Muxn_5_io_in_3),
    .io_in_4(Muxn_5_io_in_4),
    .io_out(Muxn_5_io_out)
  );
  Muxn_44 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_in_3(Muxn_6_io_in_3),
    .io_in_4(Muxn_6_io_in_4),
    .io_out(Muxn_6_io_out)
  );
  Muxn_46 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_in_3(Muxn_7_io_in_3),
    .io_out(Muxn_7_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_1_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_2_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_ipinSW_1 = Muxn_3_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = Muxn_4_io_out; // @[Interconnect.scala 561:21 Interconnect.scala 613:45]
  assign io_otrackS_0 = Muxn_7_io_out; // @[Interconnect.scala 564:21 Interconnect.scala 613:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_3 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[12:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[15:13]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[17:16]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
endmodule
module GIB_5(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  output [31:0] io_ipinNE_1,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  output [31:0] io_ipinSE_1,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [23:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h19 == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  reg [31:0] _T_14; // @[Interconnect.scala 611:55]
  reg [31:0] _T_16; // @[Interconnect.scala 611:55]
  reg [31:0] _T_18; // @[Interconnect.scala 611:55]
  ConfigMem_25 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_46 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_40 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_out(Muxn_4_io_out)
  );
  Muxn_46 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_in_3(Muxn_5_io_in_3),
    .io_out(Muxn_5_io_out)
  );
  Muxn_44 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_in_3(Muxn_6_io_in_3),
    .io_in_4(Muxn_6_io_in_4),
    .io_out(Muxn_6_io_out)
  );
  Muxn_44 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_in_3(Muxn_7_io_in_3),
    .io_in_4(Muxn_7_io_in_4),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_1_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinNE_1 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_3_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSE_1 = Muxn_4_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_5_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackN_0 = _T_14; // @[Interconnect.scala 562:21 Interconnect.scala 611:45]
  assign io_otrackE_0 = _T_16; // @[Interconnect.scala 563:21 Interconnect.scala 611:45]
  assign io_otrackS_0 = _T_18; // @[Interconnect.scala 564:21 Interconnect.scala 611:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_3 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[14:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[17:15]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[20:18]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[23:21]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_14 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  _T_16 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  _T_18 = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    _T_14 <= Muxn_7_io_out;
    _T_16 <= Muxn_8_io_out;
    _T_18 <= Muxn_9_io_out;
  end
endmodule
module ConfigMem_30(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input         io_en,
  input  [2:0]  io_cycle,
  input  [2:0]  io_II,
  input  [31:0] io_cfg_data,
  output [27:0] io_out_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [27:0] configmem_0_0; // @[ConfigMem.scala 81:26]
  reg [27:0] configmem_0_1; // @[ConfigMem.scala 81:26]
  reg [27:0] configmem_0_2; // @[ConfigMem.scala 81:26]
  reg [27:0] configmem_0_3; // @[ConfigMem.scala 81:26]
  reg [27:0] configmem_0_4; // @[ConfigMem.scala 81:26]
  reg [2:0] config_pointer_i; // @[ConfigMem.scala 95:32]
  reg [2:0] config_pointer; // @[ConfigMem.scala 96:30]
  wire [27:0] _GEN_5 = io_cfg_en ? io_cfg_data[27:0] : 28'h0; // @[ConfigMem.scala 102:54]
  wire  _T_5 = config_pointer_i == io_II; // @[ConfigMem.scala 124:46]
  wire [2:0] _T_7 = config_pointer_i + 3'h1; // @[ConfigMem.scala 124:77]
  wire [27:0] _GEN_13 = 3'h1 == config_pointer ? configmem_0_1 : configmem_0_0; // @[ConfigMem.scala 131:45]
  wire [27:0] _GEN_14 = 3'h2 == config_pointer ? configmem_0_2 : _GEN_13; // @[ConfigMem.scala 131:45]
  wire [27:0] _GEN_15 = 3'h3 == config_pointer ? configmem_0_3 : _GEN_14; // @[ConfigMem.scala 131:45]
  assign io_out_0 = 3'h4 == config_pointer ? configmem_0_4 : _GEN_15; // @[ConfigMem.scala 131:45]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  configmem_0_0 = _RAND_0[27:0];
  _RAND_1 = {1{`RANDOM}};
  configmem_0_1 = _RAND_1[27:0];
  _RAND_2 = {1{`RANDOM}};
  configmem_0_2 = _RAND_2[27:0];
  _RAND_3 = {1{`RANDOM}};
  configmem_0_3 = _RAND_3[27:0];
  _RAND_4 = {1{`RANDOM}};
  configmem_0_4 = _RAND_4[27:0];
  _RAND_5 = {1{`RANDOM}};
  config_pointer_i = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  config_pointer = _RAND_6[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      configmem_0_0 <= 28'h0;
    end else if (io_cfg_en) begin
      if (3'h0 == io_cycle) begin
        if (io_cfg_en) begin
          configmem_0_0 <= io_cfg_data[27:0];
        end else begin
          configmem_0_0 <= 28'h0;
        end
      end
    end
    if (reset) begin
      configmem_0_1 <= 28'h0;
    end else if (io_cfg_en) begin
      if (3'h1 == io_cycle) begin
        if (io_cfg_en) begin
          configmem_0_1 <= io_cfg_data[27:0];
        end else begin
          configmem_0_1 <= 28'h0;
        end
      end
    end
    if (reset) begin
      configmem_0_2 <= 28'h0;
    end else if (io_cfg_en) begin
      if (3'h2 == io_cycle) begin
        if (io_cfg_en) begin
          configmem_0_2 <= io_cfg_data[27:0];
        end else begin
          configmem_0_2 <= 28'h0;
        end
      end
    end
    if (reset) begin
      configmem_0_3 <= 28'h0;
    end else if (io_cfg_en) begin
      if (3'h3 == io_cycle) begin
        if (io_cfg_en) begin
          configmem_0_3 <= io_cfg_data[27:0];
        end else begin
          configmem_0_3 <= 28'h0;
        end
      end
    end
    if (reset) begin
      configmem_0_4 <= 28'h0;
    end else if (io_cfg_en) begin
      if (3'h4 == io_cycle) begin
        configmem_0_4 <= _GEN_5;
      end
    end
    if (reset) begin
      config_pointer_i <= 3'h0;
    end else if (io_en) begin
      if (_T_5) begin
        config_pointer_i <= 3'h0;
      end else begin
        config_pointer_i <= _T_7;
      end
    end else begin
      config_pointer_i <= 3'h0;
    end
    config_pointer <= config_pointer_i;
  end
endmodule
module GIB_6(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  output [31:0] io_ipinNW_1,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  output [31:0] io_ipinNE_1,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  output [31:0] io_ipinSE_1,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  output [31:0] io_ipinSW_1,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [27:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_10_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_11_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h1a == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  ConfigMem_30 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_40 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_out(Muxn_4_io_out)
  );
  Muxn_40 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_out(Muxn_5_io_out)
  );
  Muxn_40 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_out(Muxn_6_io_out)
  );
  Muxn_40 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  Muxn_44 Muxn_10 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_10_io_config),
    .io_in_0(Muxn_10_io_in_0),
    .io_in_1(Muxn_10_io_in_1),
    .io_in_2(Muxn_10_io_in_2),
    .io_in_3(Muxn_10_io_in_3),
    .io_in_4(Muxn_10_io_in_4),
    .io_out(Muxn_10_io_out)
  );
  Muxn_44 Muxn_11 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_11_io_config),
    .io_in_0(Muxn_11_io_in_0),
    .io_in_1(Muxn_11_io_in_1),
    .io_in_2(Muxn_11_io_in_2),
    .io_in_3(Muxn_11_io_in_3),
    .io_in_4(Muxn_11_io_in_4),
    .io_out(Muxn_11_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNW_1 = Muxn_1_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinNE_1 = Muxn_3_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_4_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSE_1 = Muxn_5_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_6_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_ipinSW_1 = Muxn_7_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = Muxn_8_io_out; // @[Interconnect.scala 561:21 Interconnect.scala 613:45]
  assign io_otrackN_0 = Muxn_9_io_out; // @[Interconnect.scala 562:21 Interconnect.scala 613:45]
  assign io_otrackE_0 = Muxn_10_io_out; // @[Interconnect.scala 563:21 Interconnect.scala 613:45]
  assign io_otrackS_0 = Muxn_11_io_out; // @[Interconnect.scala 564:21 Interconnect.scala 613:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[13:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[15:14]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[18:16]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[21:19]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_config = ConfigMem_io_out_0[24:22]; // @[Interconnect.scala 617:23]
  assign Muxn_10_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_config = ConfigMem_io_out_0[27:25]; // @[Interconnect.scala 617:23]
  assign Muxn_11_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
endmodule
module GIB_7(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  output [31:0] io_ipinNW_1,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  output [31:0] io_ipinNE_1,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  output [31:0] io_ipinSE_1,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  output [31:0] io_ipinSW_1,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [27:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_10_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_11_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h1b == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  reg [31:0] _T_14; // @[Interconnect.scala 611:55]
  reg [31:0] _T_16; // @[Interconnect.scala 611:55]
  reg [31:0] _T_18; // @[Interconnect.scala 611:55]
  reg [31:0] _T_20; // @[Interconnect.scala 611:55]
  ConfigMem_30 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_40 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_out(Muxn_4_io_out)
  );
  Muxn_40 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_out(Muxn_5_io_out)
  );
  Muxn_40 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_out(Muxn_6_io_out)
  );
  Muxn_40 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  Muxn_44 Muxn_10 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_10_io_config),
    .io_in_0(Muxn_10_io_in_0),
    .io_in_1(Muxn_10_io_in_1),
    .io_in_2(Muxn_10_io_in_2),
    .io_in_3(Muxn_10_io_in_3),
    .io_in_4(Muxn_10_io_in_4),
    .io_out(Muxn_10_io_out)
  );
  Muxn_44 Muxn_11 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_11_io_config),
    .io_in_0(Muxn_11_io_in_0),
    .io_in_1(Muxn_11_io_in_1),
    .io_in_2(Muxn_11_io_in_2),
    .io_in_3(Muxn_11_io_in_3),
    .io_in_4(Muxn_11_io_in_4),
    .io_out(Muxn_11_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNW_1 = Muxn_1_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinNE_1 = Muxn_3_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_4_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSE_1 = Muxn_5_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_6_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_ipinSW_1 = Muxn_7_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = _T_14; // @[Interconnect.scala 561:21 Interconnect.scala 611:45]
  assign io_otrackN_0 = _T_16; // @[Interconnect.scala 562:21 Interconnect.scala 611:45]
  assign io_otrackE_0 = _T_18; // @[Interconnect.scala 563:21 Interconnect.scala 611:45]
  assign io_otrackS_0 = _T_20; // @[Interconnect.scala 564:21 Interconnect.scala 611:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[13:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[15:14]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[18:16]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[21:19]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_config = ConfigMem_io_out_0[24:22]; // @[Interconnect.scala 617:23]
  assign Muxn_10_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_config = ConfigMem_io_out_0[27:25]; // @[Interconnect.scala 617:23]
  assign Muxn_11_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_14 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  _T_16 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  _T_18 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  _T_20 = _RAND_3[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    _T_14 <= Muxn_8_io_out;
    _T_16 <= Muxn_9_io_out;
    _T_18 <= Muxn_10_io_out;
    _T_20 <= Muxn_11_io_out;
  end
endmodule
module GIB_8(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  output [31:0] io_ipinNW_1,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  output [31:0] io_ipinNE_1,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  output [31:0] io_ipinSE_1,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  output [31:0] io_ipinSW_1,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [27:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_10_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_11_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h1c == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  ConfigMem_30 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_40 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_out(Muxn_4_io_out)
  );
  Muxn_40 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_out(Muxn_5_io_out)
  );
  Muxn_40 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_out(Muxn_6_io_out)
  );
  Muxn_40 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  Muxn_44 Muxn_10 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_10_io_config),
    .io_in_0(Muxn_10_io_in_0),
    .io_in_1(Muxn_10_io_in_1),
    .io_in_2(Muxn_10_io_in_2),
    .io_in_3(Muxn_10_io_in_3),
    .io_in_4(Muxn_10_io_in_4),
    .io_out(Muxn_10_io_out)
  );
  Muxn_44 Muxn_11 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_11_io_config),
    .io_in_0(Muxn_11_io_in_0),
    .io_in_1(Muxn_11_io_in_1),
    .io_in_2(Muxn_11_io_in_2),
    .io_in_3(Muxn_11_io_in_3),
    .io_in_4(Muxn_11_io_in_4),
    .io_out(Muxn_11_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNW_1 = Muxn_1_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinNE_1 = Muxn_3_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_4_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSE_1 = Muxn_5_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_6_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_ipinSW_1 = Muxn_7_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = Muxn_8_io_out; // @[Interconnect.scala 561:21 Interconnect.scala 613:45]
  assign io_otrackN_0 = Muxn_9_io_out; // @[Interconnect.scala 562:21 Interconnect.scala 613:45]
  assign io_otrackE_0 = Muxn_10_io_out; // @[Interconnect.scala 563:21 Interconnect.scala 613:45]
  assign io_otrackS_0 = Muxn_11_io_out; // @[Interconnect.scala 564:21 Interconnect.scala 613:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[13:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[15:14]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[18:16]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[21:19]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_config = ConfigMem_io_out_0[24:22]; // @[Interconnect.scala 617:23]
  assign Muxn_10_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_config = ConfigMem_io_out_0[27:25]; // @[Interconnect.scala 617:23]
  assign Muxn_11_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
endmodule
module GIB_9(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  output [31:0] io_ipinNW_1,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  output [31:0] io_ipinSW_1,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [23:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h1d == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  reg [31:0] _T_12; // @[Interconnect.scala 611:55]
  reg [31:0] _T_14; // @[Interconnect.scala 611:55]
  reg [31:0] _T_18; // @[Interconnect.scala 611:55]
  ConfigMem_25 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_46 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_in_3(Muxn_2_io_in_3),
    .io_out(Muxn_2_io_out)
  );
  Muxn_46 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_in_3(Muxn_3_io_in_3),
    .io_out(Muxn_3_io_out)
  );
  Muxn_40 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_out(Muxn_4_io_out)
  );
  Muxn_40 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_out(Muxn_5_io_out)
  );
  Muxn_44 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_in_3(Muxn_6_io_in_3),
    .io_in_4(Muxn_6_io_in_4),
    .io_out(Muxn_6_io_out)
  );
  Muxn_44 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_in_3(Muxn_7_io_in_3),
    .io_in_4(Muxn_7_io_in_4),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNW_1 = Muxn_1_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_3_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_4_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_ipinSW_1 = Muxn_5_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = _T_12; // @[Interconnect.scala 561:21 Interconnect.scala 611:45]
  assign io_otrackN_0 = _T_14; // @[Interconnect.scala 562:21 Interconnect.scala 611:45]
  assign io_otrackS_0 = _T_18; // @[Interconnect.scala 564:21 Interconnect.scala 611:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_3 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[14:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[17:15]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[20:18]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[23:21]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = 32'h0; // @[Interconnect.scala 609:63]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_12 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  _T_14 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  _T_18 = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    _T_12 <= Muxn_6_io_out;
    _T_14 <= Muxn_7_io_out;
    _T_18 <= Muxn_9_io_out;
  end
endmodule
module GIB_10(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  output [31:0] io_ipinNE_1,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  output [31:0] io_ipinSE_1,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [23:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h25 == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  ConfigMem_25 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_46 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_40 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_out(Muxn_4_io_out)
  );
  Muxn_46 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_in_3(Muxn_5_io_in_3),
    .io_out(Muxn_5_io_out)
  );
  Muxn_44 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_in_3(Muxn_6_io_in_3),
    .io_in_4(Muxn_6_io_in_4),
    .io_out(Muxn_6_io_out)
  );
  Muxn_44 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_in_3(Muxn_7_io_in_3),
    .io_in_4(Muxn_7_io_in_4),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_1_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinNE_1 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_3_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSE_1 = Muxn_4_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_5_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackN_0 = Muxn_7_io_out; // @[Interconnect.scala 562:21 Interconnect.scala 613:45]
  assign io_otrackE_0 = Muxn_8_io_out; // @[Interconnect.scala 563:21 Interconnect.scala 613:45]
  assign io_otrackS_0 = Muxn_9_io_out; // @[Interconnect.scala 564:21 Interconnect.scala 613:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_3 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[14:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[17:15]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[20:18]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[23:21]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
endmodule
module GIB_11(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  output [31:0] io_ipinNW_1,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  output [31:0] io_ipinNE_1,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  output [31:0] io_ipinSE_1,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  output [31:0] io_ipinSW_1,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [27:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_10_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_11_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h26 == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  reg [31:0] _T_14; // @[Interconnect.scala 611:55]
  reg [31:0] _T_16; // @[Interconnect.scala 611:55]
  reg [31:0] _T_18; // @[Interconnect.scala 611:55]
  reg [31:0] _T_20; // @[Interconnect.scala 611:55]
  ConfigMem_30 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_40 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_out(Muxn_4_io_out)
  );
  Muxn_40 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_out(Muxn_5_io_out)
  );
  Muxn_40 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_out(Muxn_6_io_out)
  );
  Muxn_40 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  Muxn_44 Muxn_10 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_10_io_config),
    .io_in_0(Muxn_10_io_in_0),
    .io_in_1(Muxn_10_io_in_1),
    .io_in_2(Muxn_10_io_in_2),
    .io_in_3(Muxn_10_io_in_3),
    .io_in_4(Muxn_10_io_in_4),
    .io_out(Muxn_10_io_out)
  );
  Muxn_44 Muxn_11 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_11_io_config),
    .io_in_0(Muxn_11_io_in_0),
    .io_in_1(Muxn_11_io_in_1),
    .io_in_2(Muxn_11_io_in_2),
    .io_in_3(Muxn_11_io_in_3),
    .io_in_4(Muxn_11_io_in_4),
    .io_out(Muxn_11_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNW_1 = Muxn_1_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinNE_1 = Muxn_3_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_4_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSE_1 = Muxn_5_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_6_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_ipinSW_1 = Muxn_7_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = _T_14; // @[Interconnect.scala 561:21 Interconnect.scala 611:45]
  assign io_otrackN_0 = _T_16; // @[Interconnect.scala 562:21 Interconnect.scala 611:45]
  assign io_otrackE_0 = _T_18; // @[Interconnect.scala 563:21 Interconnect.scala 611:45]
  assign io_otrackS_0 = _T_20; // @[Interconnect.scala 564:21 Interconnect.scala 611:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[13:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[15:14]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[18:16]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[21:19]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_config = ConfigMem_io_out_0[24:22]; // @[Interconnect.scala 617:23]
  assign Muxn_10_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_config = ConfigMem_io_out_0[27:25]; // @[Interconnect.scala 617:23]
  assign Muxn_11_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_14 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  _T_16 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  _T_18 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  _T_20 = _RAND_3[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    _T_14 <= Muxn_8_io_out;
    _T_16 <= Muxn_9_io_out;
    _T_18 <= Muxn_10_io_out;
    _T_20 <= Muxn_11_io_out;
  end
endmodule
module GIB_12(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  output [31:0] io_ipinNW_1,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  output [31:0] io_ipinNE_1,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  output [31:0] io_ipinSE_1,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  output [31:0] io_ipinSW_1,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [27:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_10_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_11_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h27 == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  ConfigMem_30 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_40 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_out(Muxn_4_io_out)
  );
  Muxn_40 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_out(Muxn_5_io_out)
  );
  Muxn_40 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_out(Muxn_6_io_out)
  );
  Muxn_40 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  Muxn_44 Muxn_10 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_10_io_config),
    .io_in_0(Muxn_10_io_in_0),
    .io_in_1(Muxn_10_io_in_1),
    .io_in_2(Muxn_10_io_in_2),
    .io_in_3(Muxn_10_io_in_3),
    .io_in_4(Muxn_10_io_in_4),
    .io_out(Muxn_10_io_out)
  );
  Muxn_44 Muxn_11 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_11_io_config),
    .io_in_0(Muxn_11_io_in_0),
    .io_in_1(Muxn_11_io_in_1),
    .io_in_2(Muxn_11_io_in_2),
    .io_in_3(Muxn_11_io_in_3),
    .io_in_4(Muxn_11_io_in_4),
    .io_out(Muxn_11_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNW_1 = Muxn_1_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinNE_1 = Muxn_3_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_4_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSE_1 = Muxn_5_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_6_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_ipinSW_1 = Muxn_7_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = Muxn_8_io_out; // @[Interconnect.scala 561:21 Interconnect.scala 613:45]
  assign io_otrackN_0 = Muxn_9_io_out; // @[Interconnect.scala 562:21 Interconnect.scala 613:45]
  assign io_otrackE_0 = Muxn_10_io_out; // @[Interconnect.scala 563:21 Interconnect.scala 613:45]
  assign io_otrackS_0 = Muxn_11_io_out; // @[Interconnect.scala 564:21 Interconnect.scala 613:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[13:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[15:14]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[18:16]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[21:19]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_config = ConfigMem_io_out_0[24:22]; // @[Interconnect.scala 617:23]
  assign Muxn_10_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_config = ConfigMem_io_out_0[27:25]; // @[Interconnect.scala 617:23]
  assign Muxn_11_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
endmodule
module GIB_13(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  output [31:0] io_ipinNW_1,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  output [31:0] io_ipinNE_1,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  output [31:0] io_ipinSE_1,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  output [31:0] io_ipinSW_1,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [27:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_10_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_11_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h28 == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  reg [31:0] _T_14; // @[Interconnect.scala 611:55]
  reg [31:0] _T_16; // @[Interconnect.scala 611:55]
  reg [31:0] _T_18; // @[Interconnect.scala 611:55]
  reg [31:0] _T_20; // @[Interconnect.scala 611:55]
  ConfigMem_30 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_40 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_out(Muxn_4_io_out)
  );
  Muxn_40 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_out(Muxn_5_io_out)
  );
  Muxn_40 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_out(Muxn_6_io_out)
  );
  Muxn_40 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  Muxn_44 Muxn_10 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_10_io_config),
    .io_in_0(Muxn_10_io_in_0),
    .io_in_1(Muxn_10_io_in_1),
    .io_in_2(Muxn_10_io_in_2),
    .io_in_3(Muxn_10_io_in_3),
    .io_in_4(Muxn_10_io_in_4),
    .io_out(Muxn_10_io_out)
  );
  Muxn_44 Muxn_11 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_11_io_config),
    .io_in_0(Muxn_11_io_in_0),
    .io_in_1(Muxn_11_io_in_1),
    .io_in_2(Muxn_11_io_in_2),
    .io_in_3(Muxn_11_io_in_3),
    .io_in_4(Muxn_11_io_in_4),
    .io_out(Muxn_11_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNW_1 = Muxn_1_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinNE_1 = Muxn_3_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_4_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSE_1 = Muxn_5_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_6_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_ipinSW_1 = Muxn_7_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = _T_14; // @[Interconnect.scala 561:21 Interconnect.scala 611:45]
  assign io_otrackN_0 = _T_16; // @[Interconnect.scala 562:21 Interconnect.scala 611:45]
  assign io_otrackE_0 = _T_18; // @[Interconnect.scala 563:21 Interconnect.scala 611:45]
  assign io_otrackS_0 = _T_20; // @[Interconnect.scala 564:21 Interconnect.scala 611:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[13:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[15:14]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[18:16]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[21:19]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_config = ConfigMem_io_out_0[24:22]; // @[Interconnect.scala 617:23]
  assign Muxn_10_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_config = ConfigMem_io_out_0[27:25]; // @[Interconnect.scala 617:23]
  assign Muxn_11_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_14 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  _T_16 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  _T_18 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  _T_20 = _RAND_3[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    _T_14 <= Muxn_8_io_out;
    _T_16 <= Muxn_9_io_out;
    _T_18 <= Muxn_10_io_out;
    _T_20 <= Muxn_11_io_out;
  end
endmodule
module GIB_14(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  output [31:0] io_ipinNW_1,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  output [31:0] io_ipinSW_1,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [23:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h29 == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  ConfigMem_25 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_46 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_in_3(Muxn_2_io_in_3),
    .io_out(Muxn_2_io_out)
  );
  Muxn_46 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_in_3(Muxn_3_io_in_3),
    .io_out(Muxn_3_io_out)
  );
  Muxn_40 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_out(Muxn_4_io_out)
  );
  Muxn_40 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_out(Muxn_5_io_out)
  );
  Muxn_44 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_in_3(Muxn_6_io_in_3),
    .io_in_4(Muxn_6_io_in_4),
    .io_out(Muxn_6_io_out)
  );
  Muxn_44 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_in_3(Muxn_7_io_in_3),
    .io_in_4(Muxn_7_io_in_4),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNW_1 = Muxn_1_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_3_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_4_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_ipinSW_1 = Muxn_5_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = Muxn_6_io_out; // @[Interconnect.scala 561:21 Interconnect.scala 613:45]
  assign io_otrackN_0 = Muxn_7_io_out; // @[Interconnect.scala 562:21 Interconnect.scala 613:45]
  assign io_otrackS_0 = Muxn_9_io_out; // @[Interconnect.scala 564:21 Interconnect.scala 613:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_3 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[14:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[17:15]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[20:18]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[23:21]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = 32'h0; // @[Interconnect.scala 609:63]
endmodule
module GIB_15(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  output [31:0] io_ipinNE_1,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  output [31:0] io_ipinSE_1,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [23:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h31 == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  reg [31:0] _T_14; // @[Interconnect.scala 611:55]
  reg [31:0] _T_16; // @[Interconnect.scala 611:55]
  reg [31:0] _T_18; // @[Interconnect.scala 611:55]
  ConfigMem_25 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_46 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_in_3(Muxn_io_in_3),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_40 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_out(Muxn_4_io_out)
  );
  Muxn_46 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_in_3(Muxn_5_io_in_3),
    .io_out(Muxn_5_io_out)
  );
  Muxn_44 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_in_3(Muxn_6_io_in_3),
    .io_in_4(Muxn_6_io_in_4),
    .io_out(Muxn_6_io_out)
  );
  Muxn_44 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_in_3(Muxn_7_io_in_3),
    .io_in_4(Muxn_7_io_in_4),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_1_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinNE_1 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_3_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSE_1 = Muxn_4_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_5_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackN_0 = _T_14; // @[Interconnect.scala 562:21 Interconnect.scala 611:45]
  assign io_otrackE_0 = _T_16; // @[Interconnect.scala 563:21 Interconnect.scala 611:45]
  assign io_otrackS_0 = _T_18; // @[Interconnect.scala 564:21 Interconnect.scala 611:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_3 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[14:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[17:15]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[20:18]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[23:21]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_14 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  _T_16 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  _T_18 = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    _T_14 <= Muxn_7_io_out;
    _T_16 <= Muxn_8_io_out;
    _T_18 <= Muxn_9_io_out;
  end
endmodule
module GIB_16(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  output [31:0] io_ipinNW_1,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  output [31:0] io_ipinNE_1,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  output [31:0] io_ipinSE_1,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  output [31:0] io_ipinSW_1,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [27:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_10_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_11_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h32 == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  ConfigMem_30 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_40 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_out(Muxn_4_io_out)
  );
  Muxn_40 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_out(Muxn_5_io_out)
  );
  Muxn_40 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_out(Muxn_6_io_out)
  );
  Muxn_40 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  Muxn_44 Muxn_10 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_10_io_config),
    .io_in_0(Muxn_10_io_in_0),
    .io_in_1(Muxn_10_io_in_1),
    .io_in_2(Muxn_10_io_in_2),
    .io_in_3(Muxn_10_io_in_3),
    .io_in_4(Muxn_10_io_in_4),
    .io_out(Muxn_10_io_out)
  );
  Muxn_44 Muxn_11 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_11_io_config),
    .io_in_0(Muxn_11_io_in_0),
    .io_in_1(Muxn_11_io_in_1),
    .io_in_2(Muxn_11_io_in_2),
    .io_in_3(Muxn_11_io_in_3),
    .io_in_4(Muxn_11_io_in_4),
    .io_out(Muxn_11_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNW_1 = Muxn_1_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinNE_1 = Muxn_3_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_4_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSE_1 = Muxn_5_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_6_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_ipinSW_1 = Muxn_7_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = Muxn_8_io_out; // @[Interconnect.scala 561:21 Interconnect.scala 613:45]
  assign io_otrackN_0 = Muxn_9_io_out; // @[Interconnect.scala 562:21 Interconnect.scala 613:45]
  assign io_otrackE_0 = Muxn_10_io_out; // @[Interconnect.scala 563:21 Interconnect.scala 613:45]
  assign io_otrackS_0 = Muxn_11_io_out; // @[Interconnect.scala 564:21 Interconnect.scala 613:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[13:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[15:14]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[18:16]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[21:19]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_config = ConfigMem_io_out_0[24:22]; // @[Interconnect.scala 617:23]
  assign Muxn_10_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_config = ConfigMem_io_out_0[27:25]; // @[Interconnect.scala 617:23]
  assign Muxn_11_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
endmodule
module GIB_17(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  output [31:0] io_ipinNW_1,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  output [31:0] io_ipinNE_1,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  output [31:0] io_ipinSE_1,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  output [31:0] io_ipinSW_1,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [27:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_10_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_11_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h33 == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  reg [31:0] _T_14; // @[Interconnect.scala 611:55]
  reg [31:0] _T_16; // @[Interconnect.scala 611:55]
  reg [31:0] _T_18; // @[Interconnect.scala 611:55]
  reg [31:0] _T_20; // @[Interconnect.scala 611:55]
  ConfigMem_30 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_40 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_out(Muxn_4_io_out)
  );
  Muxn_40 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_out(Muxn_5_io_out)
  );
  Muxn_40 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_out(Muxn_6_io_out)
  );
  Muxn_40 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  Muxn_44 Muxn_10 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_10_io_config),
    .io_in_0(Muxn_10_io_in_0),
    .io_in_1(Muxn_10_io_in_1),
    .io_in_2(Muxn_10_io_in_2),
    .io_in_3(Muxn_10_io_in_3),
    .io_in_4(Muxn_10_io_in_4),
    .io_out(Muxn_10_io_out)
  );
  Muxn_44 Muxn_11 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_11_io_config),
    .io_in_0(Muxn_11_io_in_0),
    .io_in_1(Muxn_11_io_in_1),
    .io_in_2(Muxn_11_io_in_2),
    .io_in_3(Muxn_11_io_in_3),
    .io_in_4(Muxn_11_io_in_4),
    .io_out(Muxn_11_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNW_1 = Muxn_1_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinNE_1 = Muxn_3_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_4_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSE_1 = Muxn_5_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_6_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_ipinSW_1 = Muxn_7_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = _T_14; // @[Interconnect.scala 561:21 Interconnect.scala 611:45]
  assign io_otrackN_0 = _T_16; // @[Interconnect.scala 562:21 Interconnect.scala 611:45]
  assign io_otrackE_0 = _T_18; // @[Interconnect.scala 563:21 Interconnect.scala 611:45]
  assign io_otrackS_0 = _T_20; // @[Interconnect.scala 564:21 Interconnect.scala 611:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[13:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[15:14]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[18:16]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[21:19]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_config = ConfigMem_io_out_0[24:22]; // @[Interconnect.scala 617:23]
  assign Muxn_10_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_config = ConfigMem_io_out_0[27:25]; // @[Interconnect.scala 617:23]
  assign Muxn_11_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_14 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  _T_16 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  _T_18 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  _T_20 = _RAND_3[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    _T_14 <= Muxn_8_io_out;
    _T_16 <= Muxn_9_io_out;
    _T_18 <= Muxn_10_io_out;
    _T_20 <= Muxn_11_io_out;
  end
endmodule
module GIB_18(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  output [31:0] io_ipinNW_1,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  output [31:0] io_ipinNE_1,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  output [31:0] io_ipinSE_1,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  output [31:0] io_ipinSW_1,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [27:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_10_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_10_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_11_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_11_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h34 == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  ConfigMem_30 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_40 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_out(Muxn_4_io_out)
  );
  Muxn_40 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_out(Muxn_5_io_out)
  );
  Muxn_40 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_out(Muxn_6_io_out)
  );
  Muxn_40 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  Muxn_44 Muxn_10 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_10_io_config),
    .io_in_0(Muxn_10_io_in_0),
    .io_in_1(Muxn_10_io_in_1),
    .io_in_2(Muxn_10_io_in_2),
    .io_in_3(Muxn_10_io_in_3),
    .io_in_4(Muxn_10_io_in_4),
    .io_out(Muxn_10_io_out)
  );
  Muxn_44 Muxn_11 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_11_io_config),
    .io_in_0(Muxn_11_io_in_0),
    .io_in_1(Muxn_11_io_in_1),
    .io_in_2(Muxn_11_io_in_2),
    .io_in_3(Muxn_11_io_in_3),
    .io_in_4(Muxn_11_io_in_4),
    .io_out(Muxn_11_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNW_1 = Muxn_1_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinNE_1 = Muxn_3_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_4_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSE_1 = Muxn_5_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_6_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_ipinSW_1 = Muxn_7_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = Muxn_8_io_out; // @[Interconnect.scala 561:21 Interconnect.scala 613:45]
  assign io_otrackN_0 = Muxn_9_io_out; // @[Interconnect.scala 562:21 Interconnect.scala 613:45]
  assign io_otrackE_0 = Muxn_10_io_out; // @[Interconnect.scala 563:21 Interconnect.scala 613:45]
  assign io_otrackS_0 = Muxn_11_io_out; // @[Interconnect.scala 564:21 Interconnect.scala 613:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[13:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[15:14]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[18:16]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[21:19]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_config = ConfigMem_io_out_0[24:22]; // @[Interconnect.scala 617:23]
  assign Muxn_10_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_10_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_config = ConfigMem_io_out_0[27:25]; // @[Interconnect.scala 617:23]
  assign Muxn_11_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_11_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
endmodule
module GIB_19(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  output [31:0] io_ipinNW_1,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  output [31:0] io_ipinSW_1,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackS_0,
  output [31:0] io_otrackS_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [23:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h35 == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  reg [31:0] _T_12; // @[Interconnect.scala 611:55]
  reg [31:0] _T_14; // @[Interconnect.scala 611:55]
  reg [31:0] _T_18; // @[Interconnect.scala 611:55]
  ConfigMem_25 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_46 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_in_3(Muxn_2_io_in_3),
    .io_out(Muxn_2_io_out)
  );
  Muxn_46 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_in_3(Muxn_3_io_in_3),
    .io_out(Muxn_3_io_out)
  );
  Muxn_40 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_out(Muxn_4_io_out)
  );
  Muxn_40 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_out(Muxn_5_io_out)
  );
  Muxn_44 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_in_3(Muxn_6_io_in_3),
    .io_in_4(Muxn_6_io_in_4),
    .io_out(Muxn_6_io_out)
  );
  Muxn_44 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_in_3(Muxn_7_io_in_3),
    .io_in_4(Muxn_7_io_in_4),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNW_1 = Muxn_1_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_3_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_4_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_ipinSW_1 = Muxn_5_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = _T_12; // @[Interconnect.scala 561:21 Interconnect.scala 611:45]
  assign io_otrackN_0 = _T_14; // @[Interconnect.scala 562:21 Interconnect.scala 611:45]
  assign io_otrackS_0 = _T_18; // @[Interconnect.scala 564:21 Interconnect.scala 611:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_3 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[14:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[17:15]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[20:18]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = io_itrackS_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[23:21]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = 32'h0; // @[Interconnect.scala 609:63]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_12 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  _T_14 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  _T_18 = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    _T_12 <= Muxn_6_io_out;
    _T_14 <= Muxn_7_io_out;
    _T_18 <= Muxn_9_io_out;
  end
endmodule
module GIB_20(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  output [31:0] io_ipinNE_1,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  input  [31:0] io_opinSE_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0
);
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [17:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h3d == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  ConfigMem_24 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_44 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_in_3(Muxn_4_io_in_3),
    .io_in_4(Muxn_4_io_in_4),
    .io_out(Muxn_4_io_out)
  );
  Muxn_46 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_in_3(Muxn_5_io_in_3),
    .io_out(Muxn_5_io_out)
  );
  Muxn_46 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_in_3(Muxn_6_io_in_3),
    .io_out(Muxn_6_io_out)
  );
  Muxn_44 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_in_3(Muxn_7_io_in_3),
    .io_in_4(Muxn_7_io_in_4),
    .io_out(Muxn_7_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_1_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinNE_1 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_3_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_otrackN_0 = Muxn_5_io_out; // @[Interconnect.scala 562:21 Interconnect.scala 613:45]
  assign io_otrackE_0 = Muxn_6_io_out; // @[Interconnect.scala 563:21 Interconnect.scala 613:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[10:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_4 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[12:11]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[14:13]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[17:15]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
endmodule
module GIB_21(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  output [31:0] io_ipinNW_1,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  output [31:0] io_ipinNE_1,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [23:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h3e == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  reg [31:0] _T_12; // @[Interconnect.scala 611:55]
  reg [31:0] _T_14; // @[Interconnect.scala 611:55]
  reg [31:0] _T_16; // @[Interconnect.scala 611:55]
  ConfigMem_25 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_46 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_in_3(Muxn_4_io_in_3),
    .io_out(Muxn_4_io_out)
  );
  Muxn_46 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_in_3(Muxn_5_io_in_3),
    .io_out(Muxn_5_io_out)
  );
  Muxn_44 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_in_3(Muxn_6_io_in_3),
    .io_in_4(Muxn_6_io_in_4),
    .io_out(Muxn_6_io_out)
  );
  Muxn_44 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_in_3(Muxn_7_io_in_3),
    .io_in_4(Muxn_7_io_in_4),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNW_1 = Muxn_1_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinNE_1 = Muxn_3_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_4_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_5_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = _T_12; // @[Interconnect.scala 561:21 Interconnect.scala 611:45]
  assign io_otrackN_0 = _T_14; // @[Interconnect.scala 562:21 Interconnect.scala 611:45]
  assign io_otrackE_0 = _T_16; // @[Interconnect.scala 563:21 Interconnect.scala 611:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[14:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_4 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[17:15]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_4 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[20:18]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[23:21]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_12 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  _T_14 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  _T_16 = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    _T_12 <= Muxn_6_io_out;
    _T_14 <= Muxn_7_io_out;
    _T_16 <= Muxn_8_io_out;
  end
endmodule
module GIB_22(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  output [31:0] io_ipinNW_1,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  output [31:0] io_ipinNE_1,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0
);
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [23:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h3f == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  ConfigMem_25 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_46 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_in_3(Muxn_4_io_in_3),
    .io_out(Muxn_4_io_out)
  );
  Muxn_46 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_in_3(Muxn_5_io_in_3),
    .io_out(Muxn_5_io_out)
  );
  Muxn_44 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_in_3(Muxn_6_io_in_3),
    .io_in_4(Muxn_6_io_in_4),
    .io_out(Muxn_6_io_out)
  );
  Muxn_44 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_in_3(Muxn_7_io_in_3),
    .io_in_4(Muxn_7_io_in_4),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNW_1 = Muxn_1_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinNE_1 = Muxn_3_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_4_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_5_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = Muxn_6_io_out; // @[Interconnect.scala 561:21 Interconnect.scala 613:45]
  assign io_otrackN_0 = Muxn_7_io_out; // @[Interconnect.scala 562:21 Interconnect.scala 613:45]
  assign io_otrackE_0 = Muxn_8_io_out; // @[Interconnect.scala 563:21 Interconnect.scala 613:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[14:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_4 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[17:15]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_4 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[20:18]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[23:21]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
endmodule
module GIB_23(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  output [31:0] io_ipinNW_1,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  output [31:0] io_ipinNE_1,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSE_0,
  input  [31:0] io_opinSE_0,
  output [31:0] io_ipinSW_0,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0,
  input  [31:0] io_itrackE_0,
  output [31:0] io_otrackE_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [23:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_8_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_8_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_9_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_9_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h40 == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  reg [31:0] _T_12; // @[Interconnect.scala 611:55]
  reg [31:0] _T_14; // @[Interconnect.scala 611:55]
  reg [31:0] _T_16; // @[Interconnect.scala 611:55]
  ConfigMem_25 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_46 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_in_3(Muxn_4_io_in_3),
    .io_out(Muxn_4_io_out)
  );
  Muxn_46 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_in_3(Muxn_5_io_in_3),
    .io_out(Muxn_5_io_out)
  );
  Muxn_44 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_in_3(Muxn_6_io_in_3),
    .io_in_4(Muxn_6_io_in_4),
    .io_out(Muxn_6_io_out)
  );
  Muxn_44 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_in_3(Muxn_7_io_in_3),
    .io_in_4(Muxn_7_io_in_4),
    .io_out(Muxn_7_io_out)
  );
  Muxn_44 Muxn_8 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_8_io_config),
    .io_in_0(Muxn_8_io_in_0),
    .io_in_1(Muxn_8_io_in_1),
    .io_in_2(Muxn_8_io_in_2),
    .io_in_3(Muxn_8_io_in_3),
    .io_in_4(Muxn_8_io_in_4),
    .io_out(Muxn_8_io_out)
  );
  Muxn_44 Muxn_9 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_9_io_config),
    .io_in_0(Muxn_9_io_in_0),
    .io_in_1(Muxn_9_io_in_1),
    .io_in_2(Muxn_9_io_in_2),
    .io_in_3(Muxn_9_io_in_3),
    .io_in_4(Muxn_9_io_in_4),
    .io_out(Muxn_9_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNW_1 = Muxn_1_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinNE_1 = Muxn_3_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSE_0 = Muxn_4_io_out; // @[Interconnect.scala 560:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_5_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = _T_12; // @[Interconnect.scala 561:21 Interconnect.scala 611:45]
  assign io_otrackN_0 = _T_14; // @[Interconnect.scala 562:21 Interconnect.scala 611:45]
  assign io_otrackE_0 = _T_16; // @[Interconnect.scala 563:21 Interconnect.scala 611:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[14:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_4 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[17:15]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinSE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_3 = io_itrackE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_4 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_config = ConfigMem_io_out_0[20:18]; // @[Interconnect.scala 617:23]
  assign Muxn_8_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_8_io_in_4 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_config = ConfigMem_io_out_0[23:21]; // @[Interconnect.scala 617:23]
  assign Muxn_9_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_9_io_in_4 = io_itrackE_0; // @[Interconnect.scala 609:63]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_12 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  _T_14 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  _T_16 = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    _T_12 <= Muxn_6_io_out;
    _T_14 <= Muxn_7_io_out;
    _T_16 <= Muxn_8_io_out;
  end
endmodule
module GIB_24(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input         io_en,
  output [31:0] io_ipinNW_0,
  output [31:0] io_ipinNW_1,
  input  [31:0] io_opinNW_0,
  output [31:0] io_ipinNE_0,
  input  [31:0] io_opinNE_0,
  output [31:0] io_ipinSW_0,
  input  [31:0] io_opinSW_0,
  input  [31:0] io_itrackW_0,
  output [31:0] io_otrackW_0,
  input  [31:0] io_itrackN_0,
  output [31:0] io_otrackN_0
);
  wire  ConfigMem_clock; // @[Interconnect.scala 595:21]
  wire  ConfigMem_reset; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_cfg_en; // @[Interconnect.scala 595:21]
  wire  ConfigMem_io_en; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_cycle; // @[Interconnect.scala 595:21]
  wire [2:0] ConfigMem_io_II; // @[Interconnect.scala 595:21]
  wire [31:0] ConfigMem_io_cfg_data; // @[Interconnect.scala 595:21]
  wire [17:0] ConfigMem_io_out_0; // @[Interconnect.scala 595:21]
  wire [1:0] Muxn_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_1_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_1_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_2_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_2_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_3_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_3_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_4_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_4_io_out; // @[Interconnect.scala 607:25]
  wire [1:0] Muxn_5_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_5_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_6_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_6_io_out; // @[Interconnect.scala 607:25]
  wire [2:0] Muxn_7_io_config; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_0; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_1; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_2; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_3; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_in_4; // @[Interconnect.scala 607:25]
  wire [31:0] Muxn_7_io_out; // @[Interconnect.scala 607:25]
  wire  _T_1 = 10'h41 == io_cfg_addr[17:8]; // @[Interconnect.scala 596:50]
  ConfigMem_24 ConfigMem ( // @[Interconnect.scala 595:21]
    .clock(ConfigMem_clock),
    .reset(ConfigMem_reset),
    .io_cfg_en(ConfigMem_io_cfg_en),
    .io_en(ConfigMem_io_en),
    .io_cycle(ConfigMem_io_cycle),
    .io_II(ConfigMem_io_II),
    .io_cfg_data(ConfigMem_io_cfg_data),
    .io_out_0(ConfigMem_io_out_0)
  );
  Muxn_40 Muxn ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_in_2(Muxn_io_in_2),
    .io_out(Muxn_io_out)
  );
  Muxn_40 Muxn_1 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_in_2(Muxn_1_io_in_2),
    .io_out(Muxn_1_io_out)
  );
  Muxn_40 Muxn_2 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_2_io_config),
    .io_in_0(Muxn_2_io_in_0),
    .io_in_1(Muxn_2_io_in_1),
    .io_in_2(Muxn_2_io_in_2),
    .io_out(Muxn_2_io_out)
  );
  Muxn_40 Muxn_3 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_3_io_config),
    .io_in_0(Muxn_3_io_in_0),
    .io_in_1(Muxn_3_io_in_1),
    .io_in_2(Muxn_3_io_in_2),
    .io_out(Muxn_3_io_out)
  );
  Muxn_46 Muxn_4 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_4_io_config),
    .io_in_0(Muxn_4_io_in_0),
    .io_in_1(Muxn_4_io_in_1),
    .io_in_2(Muxn_4_io_in_2),
    .io_in_3(Muxn_4_io_in_3),
    .io_out(Muxn_4_io_out)
  );
  Muxn_46 Muxn_5 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_5_io_config),
    .io_in_0(Muxn_5_io_in_0),
    .io_in_1(Muxn_5_io_in_1),
    .io_in_2(Muxn_5_io_in_2),
    .io_in_3(Muxn_5_io_in_3),
    .io_out(Muxn_5_io_out)
  );
  Muxn_44 Muxn_6 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_6_io_config),
    .io_in_0(Muxn_6_io_in_0),
    .io_in_1(Muxn_6_io_in_1),
    .io_in_2(Muxn_6_io_in_2),
    .io_in_3(Muxn_6_io_in_3),
    .io_in_4(Muxn_6_io_in_4),
    .io_out(Muxn_6_io_out)
  );
  Muxn_44 Muxn_7 ( // @[Interconnect.scala 607:25]
    .io_config(Muxn_7_io_config),
    .io_in_0(Muxn_7_io_in_0),
    .io_in_1(Muxn_7_io_in_1),
    .io_in_2(Muxn_7_io_in_2),
    .io_in_3(Muxn_7_io_in_3),
    .io_in_4(Muxn_7_io_in_4),
    .io_out(Muxn_7_io_out)
  );
  assign io_ipinNW_0 = Muxn_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNW_1 = Muxn_1_io_out; // @[Interconnect.scala 557:20 Interconnect.scala 613:45]
  assign io_ipinNE_0 = Muxn_2_io_out; // @[Interconnect.scala 558:20 Interconnect.scala 613:45]
  assign io_ipinSW_0 = Muxn_3_io_out; // @[Interconnect.scala 559:20 Interconnect.scala 613:45]
  assign io_otrackW_0 = Muxn_4_io_out; // @[Interconnect.scala 561:21 Interconnect.scala 613:45]
  assign io_otrackN_0 = Muxn_5_io_out; // @[Interconnect.scala 562:21 Interconnect.scala 613:45]
  assign ConfigMem_clock = clock;
  assign ConfigMem_reset = reset;
  assign ConfigMem_io_cfg_en = io_cfg_en & _T_1; // @[Interconnect.scala 596:19]
  assign ConfigMem_io_en = io_en; // @[Interconnect.scala 598:15]
  assign ConfigMem_io_cycle = io_cfg_addr[5:3]; // @[Interconnect.scala 599:18]
  assign ConfigMem_io_II = io_cfg_addr[2:0]; // @[Interconnect.scala 600:15]
  assign ConfigMem_io_cfg_data = io_cfg_data; // @[Interconnect.scala 601:21]
  assign Muxn_io_config = ConfigMem_io_out_0[1:0]; // @[Interconnect.scala 617:23]
  assign Muxn_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_config = ConfigMem_io_out_0[3:2]; // @[Interconnect.scala 617:23]
  assign Muxn_1_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_1 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_1_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_config = ConfigMem_io_out_0[5:4]; // @[Interconnect.scala 617:23]
  assign Muxn_2_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_2_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_config = ConfigMem_io_out_0[7:6]; // @[Interconnect.scala 617:23]
  assign Muxn_3_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_3_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_config = ConfigMem_io_out_0[9:8]; // @[Interconnect.scala 617:23]
  assign Muxn_4_io_in_0 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_1 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_4_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_config = ConfigMem_io_out_0[11:10]; // @[Interconnect.scala 617:23]
  assign Muxn_5_io_in_0 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_1 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_2 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_5_io_in_3 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_config = ConfigMem_io_out_0[14:12]; // @[Interconnect.scala 617:23]
  assign Muxn_6_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_1 = io_opinSW_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_6_io_in_4 = 32'h0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_config = ConfigMem_io_out_0[17:15]; // @[Interconnect.scala 617:23]
  assign Muxn_7_io_in_0 = io_opinNW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_1 = io_opinNE_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_2 = io_itrackW_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_3 = io_itrackN_0; // @[Interconnect.scala 609:63]
  assign Muxn_7_io_in_4 = 32'h0; // @[Interconnect.scala 609:63]
endmodule
module single_port_ram(
  input         clock,
  input         io_enable,
  input         io_write_enable,
  input  [6:0]  io_addr,
  input  [31:0] io_dataIn,
  output [31:0] io_dataOut
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] mem [0:64]; // @[SRAM.scala 125:24]
  wire [31:0] mem__T_r_data; // @[SRAM.scala 125:24]
  wire [6:0] mem__T_r_addr; // @[SRAM.scala 125:24]
  wire [31:0] mem__T_w_data; // @[SRAM.scala 125:24]
  wire [6:0] mem__T_w_addr; // @[SRAM.scala 125:24]
  wire  mem__T_w_mask; // @[SRAM.scala 125:24]
  wire  mem__T_w_en; // @[SRAM.scala 125:24]
  reg  mem__T_r_en_pipe_0;
  reg [6:0] mem__T_r_addr_pipe_0;
  wire  _GEN_8 = io_enable & io_write_enable; // @[SRAM.scala 127:19]
  wire  _GEN_11 = ~_GEN_8;
  assign mem__T_r_addr = mem__T_r_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem__T_r_data = mem[mem__T_r_addr]; // @[SRAM.scala 125:24]
  `else
  assign mem__T_r_data = mem__T_r_addr >= 7'h41 ? _RAND_1[31:0] : mem[mem__T_r_addr]; // @[SRAM.scala 125:24]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem__T_w_data = io_dataIn;
  assign mem__T_w_addr = io_addr;
  assign mem__T_w_mask = io_write_enable;
  assign mem__T_w_en = io_enable & _GEN_8;
  assign io_dataOut = mem__T_r_data; // @[SRAM.scala 130:34]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_1 = {1{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 65; initvar = initvar+1)
    mem[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  mem__T_r_en_pipe_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  mem__T_r_addr_pipe_0 = _RAND_3[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(mem__T_w_en & mem__T_w_mask) begin
      mem[mem__T_w_addr] <= mem__T_w_data; // @[SRAM.scala 125:24]
    end
    mem__T_r_en_pipe_0 <= io_enable & _GEN_11;
    if (io_enable & _GEN_11) begin
      mem__T_r_addr_pipe_0 <= io_addr;
    end
  end
endmodule
module ConfigMem_49(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input         io_en,
  input  [2:0]  io_cycle,
  input  [2:0]  io_II,
  input         io_cfg_addr,
  input  [31:0] io_cfg_data,
  output [40:0] io_out_0,
  output [2:0]  io_current_t
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [40:0] configmem_0_0; // @[ConfigMem.scala 81:26]
  reg [40:0] configmem_0_1; // @[ConfigMem.scala 81:26]
  reg [40:0] configmem_0_2; // @[ConfigMem.scala 81:26]
  reg [40:0] configmem_0_3; // @[ConfigMem.scala 81:26]
  reg [40:0] configmem_0_4; // @[ConfigMem.scala 81:26]
  reg [2:0] config_pointer_i; // @[ConfigMem.scala 95:32]
  reg [2:0] config_pointer; // @[ConfigMem.scala 96:30]
  wire  _T_1 = ~io_cfg_addr; // @[ConfigMem.scala 111:38]
  wire  _T_2 = io_cfg_en & _T_1; // @[ConfigMem.scala 111:22]
  wire [40:0] _GEN_1 = 3'h1 == io_cycle ? configmem_0_1 : configmem_0_0; // @[ConfigMem.scala 113:64]
  wire [40:0] _GEN_2 = 3'h2 == io_cycle ? configmem_0_2 : _GEN_1; // @[ConfigMem.scala 113:64]
  wire [40:0] _GEN_3 = 3'h3 == io_cycle ? configmem_0_3 : _GEN_2; // @[ConfigMem.scala 113:64]
  wire [40:0] _GEN_4 = 3'h4 == io_cycle ? configmem_0_4 : _GEN_3; // @[ConfigMem.scala 113:64]
  wire [40:0] _T_4 = {_GEN_4[40:32],io_cfg_data}; // @[Cat.scala 29:58]
  wire  _T_6 = io_cfg_en & io_cfg_addr; // @[ConfigMem.scala 111:22]
  wire [63:0] _T_8 = {io_cfg_data,_GEN_4[31:0]}; // @[Cat.scala 29:58]
  wire  _T_9 = config_pointer_i == io_II; // @[ConfigMem.scala 124:46]
  wire [2:0] _T_11 = config_pointer_i + 3'h1; // @[ConfigMem.scala 124:77]
  wire [40:0] _GEN_27 = 3'h1 == config_pointer ? configmem_0_1 : configmem_0_0; // @[ConfigMem.scala 131:45]
  wire [40:0] _GEN_28 = 3'h2 == config_pointer ? configmem_0_2 : _GEN_27; // @[ConfigMem.scala 131:45]
  wire [40:0] _GEN_29 = 3'h3 == config_pointer ? configmem_0_3 : _GEN_28; // @[ConfigMem.scala 131:45]
  assign io_out_0 = 3'h4 == config_pointer ? configmem_0_4 : _GEN_29; // @[ConfigMem.scala 131:45]
  assign io_current_t = config_pointer; // @[ConfigMem.scala 129:16]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  configmem_0_0 = _RAND_0[40:0];
  _RAND_1 = {2{`RANDOM}};
  configmem_0_1 = _RAND_1[40:0];
  _RAND_2 = {2{`RANDOM}};
  configmem_0_2 = _RAND_2[40:0];
  _RAND_3 = {2{`RANDOM}};
  configmem_0_3 = _RAND_3[40:0];
  _RAND_4 = {2{`RANDOM}};
  configmem_0_4 = _RAND_4[40:0];
  _RAND_5 = {1{`RANDOM}};
  config_pointer_i = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  config_pointer = _RAND_6[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      configmem_0_0 <= 41'h0;
    end else if (_T_6) begin
      if (3'h0 == io_cycle) begin
        configmem_0_0 <= _T_8[40:0];
      end else if (_T_2) begin
        if (3'h0 == io_cycle) begin
          configmem_0_0 <= _T_4;
        end
      end
    end else if (_T_2) begin
      if (3'h0 == io_cycle) begin
        configmem_0_0 <= _T_4;
      end
    end
    if (reset) begin
      configmem_0_1 <= 41'h0;
    end else if (_T_6) begin
      if (3'h1 == io_cycle) begin
        configmem_0_1 <= _T_8[40:0];
      end else if (_T_2) begin
        if (3'h1 == io_cycle) begin
          configmem_0_1 <= _T_4;
        end
      end
    end else if (_T_2) begin
      if (3'h1 == io_cycle) begin
        configmem_0_1 <= _T_4;
      end
    end
    if (reset) begin
      configmem_0_2 <= 41'h0;
    end else if (_T_6) begin
      if (3'h2 == io_cycle) begin
        configmem_0_2 <= _T_8[40:0];
      end else if (_T_2) begin
        if (3'h2 == io_cycle) begin
          configmem_0_2 <= _T_4;
        end
      end
    end else if (_T_2) begin
      if (3'h2 == io_cycle) begin
        configmem_0_2 <= _T_4;
      end
    end
    if (reset) begin
      configmem_0_3 <= 41'h0;
    end else if (_T_6) begin
      if (3'h3 == io_cycle) begin
        configmem_0_3 <= _T_8[40:0];
      end else if (_T_2) begin
        if (3'h3 == io_cycle) begin
          configmem_0_3 <= _T_4;
        end
      end
    end else if (_T_2) begin
      if (3'h3 == io_cycle) begin
        configmem_0_3 <= _T_4;
      end
    end
    if (reset) begin
      configmem_0_4 <= 41'h0;
    end else if (_T_6) begin
      if (3'h4 == io_cycle) begin
        configmem_0_4 <= _T_8[40:0];
      end else if (_T_2) begin
        if (3'h4 == io_cycle) begin
          configmem_0_4 <= _T_4;
        end
      end
    end else if (_T_2) begin
      if (3'h4 == io_cycle) begin
        configmem_0_4 <= _T_4;
      end
    end
    if (reset) begin
      config_pointer_i <= 3'h0;
    end else if (io_en) begin
      if (_T_9) begin
        config_pointer_i <= 3'h0;
      end else begin
        config_pointer_i <= _T_11;
      end
    end else begin
      config_pointer_i <= 3'h0;
    end
    config_pointer <= config_pointer_i;
  end
endmodule
module LSU(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input  [6:0]  io_hostInterface_read_addr,
  input         io_hostInterface_read_data_ready,
  output        io_hostInterface_read_data_valid,
  output [31:0] io_hostInterface_read_data_bits,
  input  [6:0]  io_hostInterface_write_addr,
  output        io_hostInterface_write_data_ready,
  input         io_hostInterface_write_data_valid,
  input  [31:0] io_hostInterface_write_data_bits,
  input  [2:0]  io_hostInterface_cycle,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  output [31:0] io_out_0
);
  wire  Muxn_io_config; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_in_0; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_in_1; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_out; // @[LSU.scala 53:34]
  wire  Muxn_1_io_config; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_in_0; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_in_1; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_out; // @[LSU.scala 53:34]
  wire  DelayPipe_clock; // @[LSU.scala 54:42]
  wire  DelayPipe_reset; // @[LSU.scala 54:42]
  wire  DelayPipe_io_en; // @[LSU.scala 54:42]
  wire [2:0] DelayPipe_io_config; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_io_in; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_io_out; // @[LSU.scala 54:42]
  wire  DelayPipe_1_clock; // @[LSU.scala 54:42]
  wire  DelayPipe_1_reset; // @[LSU.scala 54:42]
  wire  DelayPipe_1_io_en; // @[LSU.scala 54:42]
  wire [2:0] DelayPipe_1_io_config; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_1_io_in; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_1_io_out; // @[LSU.scala 54:42]
  wire  mem_clock; // @[LSU.scala 75:19]
  wire  mem_io_enable; // @[LSU.scala 75:19]
  wire  mem_io_write_enable; // @[LSU.scala 75:19]
  wire [6:0] mem_io_addr; // @[LSU.scala 75:19]
  wire [31:0] mem_io_dataIn; // @[LSU.scala 75:19]
  wire [31:0] mem_io_dataOut; // @[LSU.scala 75:19]
  wire  cfg_clock; // @[LSU.scala 126:19]
  wire  cfg_reset; // @[LSU.scala 126:19]
  wire  cfg_io_cfg_en; // @[LSU.scala 126:19]
  wire  cfg_io_en; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_cycle; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_II; // @[LSU.scala 126:19]
  wire  cfg_io_cfg_addr; // @[LSU.scala 126:19]
  wire [31:0] cfg_io_cfg_data; // @[LSU.scala 126:19]
  wire [40:0] cfg_io_out_0; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_current_t; // @[LSU.scala 126:19]
  wire [2:0] current_t = cfg_io_current_t; // @[LSU.scala 51:23 LSU.scala 137:13]
  wire [3:0] _GEN_11 = {{1'd0}, current_t}; // @[LSU.scala 66:33]
  wire [6:0] cfg_base_addr = _GEN_11 * 4'hd; // @[LSU.scala 66:33]
  wire [3:0] _GEN_12 = {{1'd0}, io_hostInterface_cycle}; // @[LSU.scala 71:47]
  wire [6:0] host_base_addr = _GEN_12 * 4'hd; // @[LSU.scala 71:47]
  wire [31:0] Oprand_0 = DelayPipe_io_out; // @[LSU.scala 47:20 LSU.scala 63:17]
  wire [6:0] _T_3 = io_hostInterface_read_addr + host_base_addr; // @[LSU.scala 96:72]
  wire [6:0] _T_6 = io_hostInterface_write_addr + host_base_addr; // @[LSU.scala 100:73]
  wire [31:0] opmode = {{31'd0}, cfg_io_out_0[40]}; // @[LSU.scala 48:20 LSU.scala 159:9]
  wire  _T_7 = opmode == 32'h0; // @[LSU.scala 102:17]
  wire  _T_8 = ~io_en; // @[LSU.scala 104:23]
  wire [6:0] _T_11 = Oprand_0[6:0] + cfg_base_addr; // @[LSU.scala 105:57]
  wire  _T_12 = opmode == 32'h1; // @[LSU.scala 106:23]
  wire [31:0] Oprand_1 = DelayPipe_1_io_out; // @[LSU.scala 47:20 LSU.scala 63:17]
  wire [6:0] _T_15 = Oprand_1[6:0] + cfg_base_addr; // @[LSU.scala 109:57]
  wire  _GEN_0 = _T_12 & io_en; // @[LSU.scala 106:32]
  wire [6:0] _GEN_1 = _T_12 ? _T_15 : 7'h0; // @[LSU.scala 106:32]
  wire  _GEN_2 = _T_7 ? io_en : _GEN_0; // @[LSU.scala 102:26]
  wire  _GEN_3 = _T_7 ? _T_8 : _GEN_0; // @[LSU.scala 102:26]
  wire [6:0] _GEN_4 = _T_7 ? _T_11 : _GEN_1; // @[LSU.scala 102:26]
  wire  _GEN_5 = io_hostInterface_write_data_valid | _GEN_2; // @[LSU.scala 97:49]
  wire  _GEN_6 = io_hostInterface_write_data_valid | _GEN_3; // @[LSU.scala 97:49]
  wire [6:0] _GEN_7 = io_hostInterface_write_data_valid ? _T_6 : _GEN_4; // @[LSU.scala 97:49]
  wire  _T_17 = 10'h13 == io_cfg_addr[17:8]; // @[LSU.scala 127:48]
  wire [40:0] cfgOut = cfg_io_out_0; // @[LSU.scala 140:20 LSU.scala 141:10]
  Muxn Muxn ( // @[LSU.scala 53:34]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_out(Muxn_io_out)
  );
  Muxn Muxn_1 ( // @[LSU.scala 53:34]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_out(Muxn_1_io_out)
  );
  DelayPipe DelayPipe ( // @[LSU.scala 54:42]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[LSU.scala 54:42]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  single_port_ram mem ( // @[LSU.scala 75:19]
    .clock(mem_clock),
    .io_enable(mem_io_enable),
    .io_write_enable(mem_io_write_enable),
    .io_addr(mem_io_addr),
    .io_dataIn(mem_io_dataIn),
    .io_dataOut(mem_io_dataOut)
  );
  ConfigMem_49 cfg ( // @[LSU.scala 126:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0),
    .io_current_t(cfg_io_current_t)
  );
  assign io_hostInterface_read_data_valid = io_hostInterface_read_data_ready; // @[LSU.scala 85:36]
  assign io_hostInterface_read_data_bits = mem_io_dataOut; // @[LSU.scala 83:35]
  assign io_hostInterface_write_data_ready = io_hostInterface_write_data_valid; // @[LSU.scala 88:37]
  assign io_out_0 = mem_io_dataOut; // @[LSU.scala 79:13]
  assign Muxn_io_config = cfgOut[32]; // @[LSU.scala 146:20]
  assign Muxn_io_in_0 = io_in_0; // @[LSU.scala 58:23]
  assign Muxn_io_in_1 = cfgOut[31:0]; // @[LSU.scala 60:29]
  assign Muxn_1_io_config = cfgOut[33]; // @[LSU.scala 146:20]
  assign Muxn_1_io_in_0 = io_in_1; // @[LSU.scala 58:23]
  assign Muxn_1_io_in_1 = cfgOut[31:0]; // @[LSU.scala 60:29]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[LSU.scala 61:25]
  assign DelayPipe_io_config = cfgOut[36:34]; // @[LSU.scala 152:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[LSU.scala 62:25]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[LSU.scala 61:25]
  assign DelayPipe_1_io_config = cfgOut[39:37]; // @[LSU.scala 152:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[LSU.scala 62:25]
  assign mem_clock = clock;
  assign mem_io_enable = io_hostInterface_read_data_ready | _GEN_5; // @[LSU.scala 76:17]
  assign mem_io_write_enable = io_hostInterface_read_data_ready ? 1'h0 : _GEN_6; // @[LSU.scala 77:23]
  assign mem_io_addr = io_hostInterface_read_data_ready ? _T_3 : _GEN_7; // @[LSU.scala 78:15]
  assign mem_io_dataIn = io_hostInterface_write_data_valid ? io_hostInterface_write_data_bits : Oprand_0; // @[LSU.scala 80:17]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_17; // @[LSU.scala 127:17]
  assign cfg_io_en = io_en; // @[LSU.scala 129:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[LSU.scala 130:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[LSU.scala 131:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[LSU.scala 128:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[LSU.scala 132:19]
endmodule
module LSU_1(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input  [6:0]  io_hostInterface_read_addr,
  input         io_hostInterface_read_data_ready,
  output        io_hostInterface_read_data_valid,
  output [31:0] io_hostInterface_read_data_bits,
  input  [6:0]  io_hostInterface_write_addr,
  output        io_hostInterface_write_data_ready,
  input         io_hostInterface_write_data_valid,
  input  [31:0] io_hostInterface_write_data_bits,
  input  [2:0]  io_hostInterface_cycle,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  output [31:0] io_out_0
);
  wire  Muxn_io_config; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_in_0; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_in_1; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_out; // @[LSU.scala 53:34]
  wire  Muxn_1_io_config; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_in_0; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_in_1; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_out; // @[LSU.scala 53:34]
  wire  DelayPipe_clock; // @[LSU.scala 54:42]
  wire  DelayPipe_reset; // @[LSU.scala 54:42]
  wire  DelayPipe_io_en; // @[LSU.scala 54:42]
  wire [2:0] DelayPipe_io_config; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_io_in; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_io_out; // @[LSU.scala 54:42]
  wire  DelayPipe_1_clock; // @[LSU.scala 54:42]
  wire  DelayPipe_1_reset; // @[LSU.scala 54:42]
  wire  DelayPipe_1_io_en; // @[LSU.scala 54:42]
  wire [2:0] DelayPipe_1_io_config; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_1_io_in; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_1_io_out; // @[LSU.scala 54:42]
  wire  mem_clock; // @[LSU.scala 75:19]
  wire  mem_io_enable; // @[LSU.scala 75:19]
  wire  mem_io_write_enable; // @[LSU.scala 75:19]
  wire [6:0] mem_io_addr; // @[LSU.scala 75:19]
  wire [31:0] mem_io_dataIn; // @[LSU.scala 75:19]
  wire [31:0] mem_io_dataOut; // @[LSU.scala 75:19]
  wire  cfg_clock; // @[LSU.scala 126:19]
  wire  cfg_reset; // @[LSU.scala 126:19]
  wire  cfg_io_cfg_en; // @[LSU.scala 126:19]
  wire  cfg_io_en; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_cycle; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_II; // @[LSU.scala 126:19]
  wire  cfg_io_cfg_addr; // @[LSU.scala 126:19]
  wire [31:0] cfg_io_cfg_data; // @[LSU.scala 126:19]
  wire [40:0] cfg_io_out_0; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_current_t; // @[LSU.scala 126:19]
  wire [2:0] current_t = cfg_io_current_t; // @[LSU.scala 51:23 LSU.scala 137:13]
  wire [3:0] _GEN_11 = {{1'd0}, current_t}; // @[LSU.scala 66:33]
  wire [6:0] cfg_base_addr = _GEN_11 * 4'hd; // @[LSU.scala 66:33]
  wire [3:0] _GEN_12 = {{1'd0}, io_hostInterface_cycle}; // @[LSU.scala 71:47]
  wire [6:0] host_base_addr = _GEN_12 * 4'hd; // @[LSU.scala 71:47]
  wire [31:0] Oprand_0 = DelayPipe_io_out; // @[LSU.scala 47:20 LSU.scala 63:17]
  wire [6:0] _T_3 = io_hostInterface_read_addr + host_base_addr; // @[LSU.scala 96:72]
  wire [6:0] _T_6 = io_hostInterface_write_addr + host_base_addr; // @[LSU.scala 100:73]
  wire [31:0] opmode = {{31'd0}, cfg_io_out_0[40]}; // @[LSU.scala 48:20 LSU.scala 159:9]
  wire  _T_7 = opmode == 32'h0; // @[LSU.scala 102:17]
  wire  _T_8 = ~io_en; // @[LSU.scala 104:23]
  wire [6:0] _T_11 = Oprand_0[6:0] + cfg_base_addr; // @[LSU.scala 105:57]
  wire  _T_12 = opmode == 32'h1; // @[LSU.scala 106:23]
  wire [31:0] Oprand_1 = DelayPipe_1_io_out; // @[LSU.scala 47:20 LSU.scala 63:17]
  wire [6:0] _T_15 = Oprand_1[6:0] + cfg_base_addr; // @[LSU.scala 109:57]
  wire  _GEN_0 = _T_12 & io_en; // @[LSU.scala 106:32]
  wire [6:0] _GEN_1 = _T_12 ? _T_15 : 7'h0; // @[LSU.scala 106:32]
  wire  _GEN_2 = _T_7 ? io_en : _GEN_0; // @[LSU.scala 102:26]
  wire  _GEN_3 = _T_7 ? _T_8 : _GEN_0; // @[LSU.scala 102:26]
  wire [6:0] _GEN_4 = _T_7 ? _T_11 : _GEN_1; // @[LSU.scala 102:26]
  wire  _GEN_5 = io_hostInterface_write_data_valid | _GEN_2; // @[LSU.scala 97:49]
  wire  _GEN_6 = io_hostInterface_write_data_valid | _GEN_3; // @[LSU.scala 97:49]
  wire [6:0] _GEN_7 = io_hostInterface_write_data_valid ? _T_6 : _GEN_4; // @[LSU.scala 97:49]
  wire  _T_17 = 10'h18 == io_cfg_addr[17:8]; // @[LSU.scala 127:48]
  wire [40:0] cfgOut = cfg_io_out_0; // @[LSU.scala 140:20 LSU.scala 141:10]
  Muxn Muxn ( // @[LSU.scala 53:34]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_out(Muxn_io_out)
  );
  Muxn Muxn_1 ( // @[LSU.scala 53:34]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_out(Muxn_1_io_out)
  );
  DelayPipe DelayPipe ( // @[LSU.scala 54:42]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[LSU.scala 54:42]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  single_port_ram mem ( // @[LSU.scala 75:19]
    .clock(mem_clock),
    .io_enable(mem_io_enable),
    .io_write_enable(mem_io_write_enable),
    .io_addr(mem_io_addr),
    .io_dataIn(mem_io_dataIn),
    .io_dataOut(mem_io_dataOut)
  );
  ConfigMem_49 cfg ( // @[LSU.scala 126:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0),
    .io_current_t(cfg_io_current_t)
  );
  assign io_hostInterface_read_data_valid = io_hostInterface_read_data_ready; // @[LSU.scala 85:36]
  assign io_hostInterface_read_data_bits = mem_io_dataOut; // @[LSU.scala 83:35]
  assign io_hostInterface_write_data_ready = io_hostInterface_write_data_valid; // @[LSU.scala 88:37]
  assign io_out_0 = mem_io_dataOut; // @[LSU.scala 79:13]
  assign Muxn_io_config = cfgOut[32]; // @[LSU.scala 146:20]
  assign Muxn_io_in_0 = io_in_0; // @[LSU.scala 58:23]
  assign Muxn_io_in_1 = cfgOut[31:0]; // @[LSU.scala 60:29]
  assign Muxn_1_io_config = cfgOut[33]; // @[LSU.scala 146:20]
  assign Muxn_1_io_in_0 = io_in_1; // @[LSU.scala 58:23]
  assign Muxn_1_io_in_1 = cfgOut[31:0]; // @[LSU.scala 60:29]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[LSU.scala 61:25]
  assign DelayPipe_io_config = cfgOut[36:34]; // @[LSU.scala 152:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[LSU.scala 62:25]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[LSU.scala 61:25]
  assign DelayPipe_1_io_config = cfgOut[39:37]; // @[LSU.scala 152:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[LSU.scala 62:25]
  assign mem_clock = clock;
  assign mem_io_enable = io_hostInterface_read_data_ready | _GEN_5; // @[LSU.scala 76:17]
  assign mem_io_write_enable = io_hostInterface_read_data_ready ? 1'h0 : _GEN_6; // @[LSU.scala 77:23]
  assign mem_io_addr = io_hostInterface_read_data_ready ? _T_3 : _GEN_7; // @[LSU.scala 78:15]
  assign mem_io_dataIn = io_hostInterface_write_data_valid ? io_hostInterface_write_data_bits : Oprand_0; // @[LSU.scala 80:17]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_17; // @[LSU.scala 127:17]
  assign cfg_io_en = io_en; // @[LSU.scala 129:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[LSU.scala 130:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[LSU.scala 131:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[LSU.scala 128:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[LSU.scala 132:19]
endmodule
module LSU_2(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input  [6:0]  io_hostInterface_read_addr,
  input         io_hostInterface_read_data_ready,
  output        io_hostInterface_read_data_valid,
  output [31:0] io_hostInterface_read_data_bits,
  input  [6:0]  io_hostInterface_write_addr,
  output        io_hostInterface_write_data_ready,
  input         io_hostInterface_write_data_valid,
  input  [31:0] io_hostInterface_write_data_bits,
  input  [2:0]  io_hostInterface_cycle,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  output [31:0] io_out_0
);
  wire  Muxn_io_config; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_in_0; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_in_1; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_out; // @[LSU.scala 53:34]
  wire  Muxn_1_io_config; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_in_0; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_in_1; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_out; // @[LSU.scala 53:34]
  wire  DelayPipe_clock; // @[LSU.scala 54:42]
  wire  DelayPipe_reset; // @[LSU.scala 54:42]
  wire  DelayPipe_io_en; // @[LSU.scala 54:42]
  wire [2:0] DelayPipe_io_config; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_io_in; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_io_out; // @[LSU.scala 54:42]
  wire  DelayPipe_1_clock; // @[LSU.scala 54:42]
  wire  DelayPipe_1_reset; // @[LSU.scala 54:42]
  wire  DelayPipe_1_io_en; // @[LSU.scala 54:42]
  wire [2:0] DelayPipe_1_io_config; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_1_io_in; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_1_io_out; // @[LSU.scala 54:42]
  wire  mem_clock; // @[LSU.scala 75:19]
  wire  mem_io_enable; // @[LSU.scala 75:19]
  wire  mem_io_write_enable; // @[LSU.scala 75:19]
  wire [6:0] mem_io_addr; // @[LSU.scala 75:19]
  wire [31:0] mem_io_dataIn; // @[LSU.scala 75:19]
  wire [31:0] mem_io_dataOut; // @[LSU.scala 75:19]
  wire  cfg_clock; // @[LSU.scala 126:19]
  wire  cfg_reset; // @[LSU.scala 126:19]
  wire  cfg_io_cfg_en; // @[LSU.scala 126:19]
  wire  cfg_io_en; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_cycle; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_II; // @[LSU.scala 126:19]
  wire  cfg_io_cfg_addr; // @[LSU.scala 126:19]
  wire [31:0] cfg_io_cfg_data; // @[LSU.scala 126:19]
  wire [40:0] cfg_io_out_0; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_current_t; // @[LSU.scala 126:19]
  wire [2:0] current_t = cfg_io_current_t; // @[LSU.scala 51:23 LSU.scala 137:13]
  wire [3:0] _GEN_11 = {{1'd0}, current_t}; // @[LSU.scala 66:33]
  wire [6:0] cfg_base_addr = _GEN_11 * 4'hd; // @[LSU.scala 66:33]
  wire [3:0] _GEN_12 = {{1'd0}, io_hostInterface_cycle}; // @[LSU.scala 71:47]
  wire [6:0] host_base_addr = _GEN_12 * 4'hd; // @[LSU.scala 71:47]
  wire [31:0] Oprand_0 = DelayPipe_io_out; // @[LSU.scala 47:20 LSU.scala 63:17]
  wire [6:0] _T_3 = io_hostInterface_read_addr + host_base_addr; // @[LSU.scala 96:72]
  wire [6:0] _T_6 = io_hostInterface_write_addr + host_base_addr; // @[LSU.scala 100:73]
  wire [31:0] opmode = {{31'd0}, cfg_io_out_0[40]}; // @[LSU.scala 48:20 LSU.scala 159:9]
  wire  _T_7 = opmode == 32'h0; // @[LSU.scala 102:17]
  wire  _T_8 = ~io_en; // @[LSU.scala 104:23]
  wire [6:0] _T_11 = Oprand_0[6:0] + cfg_base_addr; // @[LSU.scala 105:57]
  wire  _T_12 = opmode == 32'h1; // @[LSU.scala 106:23]
  wire [31:0] Oprand_1 = DelayPipe_1_io_out; // @[LSU.scala 47:20 LSU.scala 63:17]
  wire [6:0] _T_15 = Oprand_1[6:0] + cfg_base_addr; // @[LSU.scala 109:57]
  wire  _GEN_0 = _T_12 & io_en; // @[LSU.scala 106:32]
  wire [6:0] _GEN_1 = _T_12 ? _T_15 : 7'h0; // @[LSU.scala 106:32]
  wire  _GEN_2 = _T_7 ? io_en : _GEN_0; // @[LSU.scala 102:26]
  wire  _GEN_3 = _T_7 ? _T_8 : _GEN_0; // @[LSU.scala 102:26]
  wire [6:0] _GEN_4 = _T_7 ? _T_11 : _GEN_1; // @[LSU.scala 102:26]
  wire  _GEN_5 = io_hostInterface_write_data_valid | _GEN_2; // @[LSU.scala 97:49]
  wire  _GEN_6 = io_hostInterface_write_data_valid | _GEN_3; // @[LSU.scala 97:49]
  wire [6:0] _GEN_7 = io_hostInterface_write_data_valid ? _T_6 : _GEN_4; // @[LSU.scala 97:49]
  wire  _T_17 = 10'h1f == io_cfg_addr[17:8]; // @[LSU.scala 127:48]
  wire [40:0] cfgOut = cfg_io_out_0; // @[LSU.scala 140:20 LSU.scala 141:10]
  Muxn Muxn ( // @[LSU.scala 53:34]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_out(Muxn_io_out)
  );
  Muxn Muxn_1 ( // @[LSU.scala 53:34]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_out(Muxn_1_io_out)
  );
  DelayPipe DelayPipe ( // @[LSU.scala 54:42]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[LSU.scala 54:42]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  single_port_ram mem ( // @[LSU.scala 75:19]
    .clock(mem_clock),
    .io_enable(mem_io_enable),
    .io_write_enable(mem_io_write_enable),
    .io_addr(mem_io_addr),
    .io_dataIn(mem_io_dataIn),
    .io_dataOut(mem_io_dataOut)
  );
  ConfigMem_49 cfg ( // @[LSU.scala 126:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0),
    .io_current_t(cfg_io_current_t)
  );
  assign io_hostInterface_read_data_valid = io_hostInterface_read_data_ready; // @[LSU.scala 85:36]
  assign io_hostInterface_read_data_bits = mem_io_dataOut; // @[LSU.scala 83:35]
  assign io_hostInterface_write_data_ready = io_hostInterface_write_data_valid; // @[LSU.scala 88:37]
  assign io_out_0 = mem_io_dataOut; // @[LSU.scala 79:13]
  assign Muxn_io_config = cfgOut[32]; // @[LSU.scala 146:20]
  assign Muxn_io_in_0 = io_in_0; // @[LSU.scala 58:23]
  assign Muxn_io_in_1 = cfgOut[31:0]; // @[LSU.scala 60:29]
  assign Muxn_1_io_config = cfgOut[33]; // @[LSU.scala 146:20]
  assign Muxn_1_io_in_0 = io_in_1; // @[LSU.scala 58:23]
  assign Muxn_1_io_in_1 = cfgOut[31:0]; // @[LSU.scala 60:29]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[LSU.scala 61:25]
  assign DelayPipe_io_config = cfgOut[36:34]; // @[LSU.scala 152:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[LSU.scala 62:25]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[LSU.scala 61:25]
  assign DelayPipe_1_io_config = cfgOut[39:37]; // @[LSU.scala 152:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[LSU.scala 62:25]
  assign mem_clock = clock;
  assign mem_io_enable = io_hostInterface_read_data_ready | _GEN_5; // @[LSU.scala 76:17]
  assign mem_io_write_enable = io_hostInterface_read_data_ready ? 1'h0 : _GEN_6; // @[LSU.scala 77:23]
  assign mem_io_addr = io_hostInterface_read_data_ready ? _T_3 : _GEN_7; // @[LSU.scala 78:15]
  assign mem_io_dataIn = io_hostInterface_write_data_valid ? io_hostInterface_write_data_bits : Oprand_0; // @[LSU.scala 80:17]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_17; // @[LSU.scala 127:17]
  assign cfg_io_en = io_en; // @[LSU.scala 129:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[LSU.scala 130:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[LSU.scala 131:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[LSU.scala 128:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[LSU.scala 132:19]
endmodule
module LSU_3(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input  [6:0]  io_hostInterface_read_addr,
  input         io_hostInterface_read_data_ready,
  output        io_hostInterface_read_data_valid,
  output [31:0] io_hostInterface_read_data_bits,
  input  [6:0]  io_hostInterface_write_addr,
  output        io_hostInterface_write_data_ready,
  input         io_hostInterface_write_data_valid,
  input  [31:0] io_hostInterface_write_data_bits,
  input  [2:0]  io_hostInterface_cycle,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  output [31:0] io_out_0
);
  wire  Muxn_io_config; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_in_0; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_in_1; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_out; // @[LSU.scala 53:34]
  wire  Muxn_1_io_config; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_in_0; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_in_1; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_out; // @[LSU.scala 53:34]
  wire  DelayPipe_clock; // @[LSU.scala 54:42]
  wire  DelayPipe_reset; // @[LSU.scala 54:42]
  wire  DelayPipe_io_en; // @[LSU.scala 54:42]
  wire [2:0] DelayPipe_io_config; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_io_in; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_io_out; // @[LSU.scala 54:42]
  wire  DelayPipe_1_clock; // @[LSU.scala 54:42]
  wire  DelayPipe_1_reset; // @[LSU.scala 54:42]
  wire  DelayPipe_1_io_en; // @[LSU.scala 54:42]
  wire [2:0] DelayPipe_1_io_config; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_1_io_in; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_1_io_out; // @[LSU.scala 54:42]
  wire  mem_clock; // @[LSU.scala 75:19]
  wire  mem_io_enable; // @[LSU.scala 75:19]
  wire  mem_io_write_enable; // @[LSU.scala 75:19]
  wire [6:0] mem_io_addr; // @[LSU.scala 75:19]
  wire [31:0] mem_io_dataIn; // @[LSU.scala 75:19]
  wire [31:0] mem_io_dataOut; // @[LSU.scala 75:19]
  wire  cfg_clock; // @[LSU.scala 126:19]
  wire  cfg_reset; // @[LSU.scala 126:19]
  wire  cfg_io_cfg_en; // @[LSU.scala 126:19]
  wire  cfg_io_en; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_cycle; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_II; // @[LSU.scala 126:19]
  wire  cfg_io_cfg_addr; // @[LSU.scala 126:19]
  wire [31:0] cfg_io_cfg_data; // @[LSU.scala 126:19]
  wire [40:0] cfg_io_out_0; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_current_t; // @[LSU.scala 126:19]
  wire [2:0] current_t = cfg_io_current_t; // @[LSU.scala 51:23 LSU.scala 137:13]
  wire [3:0] _GEN_11 = {{1'd0}, current_t}; // @[LSU.scala 66:33]
  wire [6:0] cfg_base_addr = _GEN_11 * 4'hd; // @[LSU.scala 66:33]
  wire [3:0] _GEN_12 = {{1'd0}, io_hostInterface_cycle}; // @[LSU.scala 71:47]
  wire [6:0] host_base_addr = _GEN_12 * 4'hd; // @[LSU.scala 71:47]
  wire [31:0] Oprand_0 = DelayPipe_io_out; // @[LSU.scala 47:20 LSU.scala 63:17]
  wire [6:0] _T_3 = io_hostInterface_read_addr + host_base_addr; // @[LSU.scala 96:72]
  wire [6:0] _T_6 = io_hostInterface_write_addr + host_base_addr; // @[LSU.scala 100:73]
  wire [31:0] opmode = {{31'd0}, cfg_io_out_0[40]}; // @[LSU.scala 48:20 LSU.scala 159:9]
  wire  _T_7 = opmode == 32'h0; // @[LSU.scala 102:17]
  wire  _T_8 = ~io_en; // @[LSU.scala 104:23]
  wire [6:0] _T_11 = Oprand_0[6:0] + cfg_base_addr; // @[LSU.scala 105:57]
  wire  _T_12 = opmode == 32'h1; // @[LSU.scala 106:23]
  wire [31:0] Oprand_1 = DelayPipe_1_io_out; // @[LSU.scala 47:20 LSU.scala 63:17]
  wire [6:0] _T_15 = Oprand_1[6:0] + cfg_base_addr; // @[LSU.scala 109:57]
  wire  _GEN_0 = _T_12 & io_en; // @[LSU.scala 106:32]
  wire [6:0] _GEN_1 = _T_12 ? _T_15 : 7'h0; // @[LSU.scala 106:32]
  wire  _GEN_2 = _T_7 ? io_en : _GEN_0; // @[LSU.scala 102:26]
  wire  _GEN_3 = _T_7 ? _T_8 : _GEN_0; // @[LSU.scala 102:26]
  wire [6:0] _GEN_4 = _T_7 ? _T_11 : _GEN_1; // @[LSU.scala 102:26]
  wire  _GEN_5 = io_hostInterface_write_data_valid | _GEN_2; // @[LSU.scala 97:49]
  wire  _GEN_6 = io_hostInterface_write_data_valid | _GEN_3; // @[LSU.scala 97:49]
  wire [6:0] _GEN_7 = io_hostInterface_write_data_valid ? _T_6 : _GEN_4; // @[LSU.scala 97:49]
  wire  _T_17 = 10'h24 == io_cfg_addr[17:8]; // @[LSU.scala 127:48]
  wire [40:0] cfgOut = cfg_io_out_0; // @[LSU.scala 140:20 LSU.scala 141:10]
  Muxn Muxn ( // @[LSU.scala 53:34]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_out(Muxn_io_out)
  );
  Muxn Muxn_1 ( // @[LSU.scala 53:34]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_out(Muxn_1_io_out)
  );
  DelayPipe DelayPipe ( // @[LSU.scala 54:42]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[LSU.scala 54:42]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  single_port_ram mem ( // @[LSU.scala 75:19]
    .clock(mem_clock),
    .io_enable(mem_io_enable),
    .io_write_enable(mem_io_write_enable),
    .io_addr(mem_io_addr),
    .io_dataIn(mem_io_dataIn),
    .io_dataOut(mem_io_dataOut)
  );
  ConfigMem_49 cfg ( // @[LSU.scala 126:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0),
    .io_current_t(cfg_io_current_t)
  );
  assign io_hostInterface_read_data_valid = io_hostInterface_read_data_ready; // @[LSU.scala 85:36]
  assign io_hostInterface_read_data_bits = mem_io_dataOut; // @[LSU.scala 83:35]
  assign io_hostInterface_write_data_ready = io_hostInterface_write_data_valid; // @[LSU.scala 88:37]
  assign io_out_0 = mem_io_dataOut; // @[LSU.scala 79:13]
  assign Muxn_io_config = cfgOut[32]; // @[LSU.scala 146:20]
  assign Muxn_io_in_0 = io_in_0; // @[LSU.scala 58:23]
  assign Muxn_io_in_1 = cfgOut[31:0]; // @[LSU.scala 60:29]
  assign Muxn_1_io_config = cfgOut[33]; // @[LSU.scala 146:20]
  assign Muxn_1_io_in_0 = io_in_1; // @[LSU.scala 58:23]
  assign Muxn_1_io_in_1 = cfgOut[31:0]; // @[LSU.scala 60:29]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[LSU.scala 61:25]
  assign DelayPipe_io_config = cfgOut[36:34]; // @[LSU.scala 152:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[LSU.scala 62:25]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[LSU.scala 61:25]
  assign DelayPipe_1_io_config = cfgOut[39:37]; // @[LSU.scala 152:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[LSU.scala 62:25]
  assign mem_clock = clock;
  assign mem_io_enable = io_hostInterface_read_data_ready | _GEN_5; // @[LSU.scala 76:17]
  assign mem_io_write_enable = io_hostInterface_read_data_ready ? 1'h0 : _GEN_6; // @[LSU.scala 77:23]
  assign mem_io_addr = io_hostInterface_read_data_ready ? _T_3 : _GEN_7; // @[LSU.scala 78:15]
  assign mem_io_dataIn = io_hostInterface_write_data_valid ? io_hostInterface_write_data_bits : Oprand_0; // @[LSU.scala 80:17]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_17; // @[LSU.scala 127:17]
  assign cfg_io_en = io_en; // @[LSU.scala 129:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[LSU.scala 130:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[LSU.scala 131:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[LSU.scala 128:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[LSU.scala 132:19]
endmodule
module LSU_4(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input  [6:0]  io_hostInterface_read_addr,
  input         io_hostInterface_read_data_ready,
  output        io_hostInterface_read_data_valid,
  output [31:0] io_hostInterface_read_data_bits,
  input  [6:0]  io_hostInterface_write_addr,
  output        io_hostInterface_write_data_ready,
  input         io_hostInterface_write_data_valid,
  input  [31:0] io_hostInterface_write_data_bits,
  input  [2:0]  io_hostInterface_cycle,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  output [31:0] io_out_0
);
  wire  Muxn_io_config; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_in_0; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_in_1; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_out; // @[LSU.scala 53:34]
  wire  Muxn_1_io_config; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_in_0; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_in_1; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_out; // @[LSU.scala 53:34]
  wire  DelayPipe_clock; // @[LSU.scala 54:42]
  wire  DelayPipe_reset; // @[LSU.scala 54:42]
  wire  DelayPipe_io_en; // @[LSU.scala 54:42]
  wire [2:0] DelayPipe_io_config; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_io_in; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_io_out; // @[LSU.scala 54:42]
  wire  DelayPipe_1_clock; // @[LSU.scala 54:42]
  wire  DelayPipe_1_reset; // @[LSU.scala 54:42]
  wire  DelayPipe_1_io_en; // @[LSU.scala 54:42]
  wire [2:0] DelayPipe_1_io_config; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_1_io_in; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_1_io_out; // @[LSU.scala 54:42]
  wire  mem_clock; // @[LSU.scala 75:19]
  wire  mem_io_enable; // @[LSU.scala 75:19]
  wire  mem_io_write_enable; // @[LSU.scala 75:19]
  wire [6:0] mem_io_addr; // @[LSU.scala 75:19]
  wire [31:0] mem_io_dataIn; // @[LSU.scala 75:19]
  wire [31:0] mem_io_dataOut; // @[LSU.scala 75:19]
  wire  cfg_clock; // @[LSU.scala 126:19]
  wire  cfg_reset; // @[LSU.scala 126:19]
  wire  cfg_io_cfg_en; // @[LSU.scala 126:19]
  wire  cfg_io_en; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_cycle; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_II; // @[LSU.scala 126:19]
  wire  cfg_io_cfg_addr; // @[LSU.scala 126:19]
  wire [31:0] cfg_io_cfg_data; // @[LSU.scala 126:19]
  wire [40:0] cfg_io_out_0; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_current_t; // @[LSU.scala 126:19]
  wire [2:0] current_t = cfg_io_current_t; // @[LSU.scala 51:23 LSU.scala 137:13]
  wire [3:0] _GEN_11 = {{1'd0}, current_t}; // @[LSU.scala 66:33]
  wire [6:0] cfg_base_addr = _GEN_11 * 4'hd; // @[LSU.scala 66:33]
  wire [3:0] _GEN_12 = {{1'd0}, io_hostInterface_cycle}; // @[LSU.scala 71:47]
  wire [6:0] host_base_addr = _GEN_12 * 4'hd; // @[LSU.scala 71:47]
  wire [31:0] Oprand_0 = DelayPipe_io_out; // @[LSU.scala 47:20 LSU.scala 63:17]
  wire [6:0] _T_3 = io_hostInterface_read_addr + host_base_addr; // @[LSU.scala 96:72]
  wire [6:0] _T_6 = io_hostInterface_write_addr + host_base_addr; // @[LSU.scala 100:73]
  wire [31:0] opmode = {{31'd0}, cfg_io_out_0[40]}; // @[LSU.scala 48:20 LSU.scala 159:9]
  wire  _T_7 = opmode == 32'h0; // @[LSU.scala 102:17]
  wire  _T_8 = ~io_en; // @[LSU.scala 104:23]
  wire [6:0] _T_11 = Oprand_0[6:0] + cfg_base_addr; // @[LSU.scala 105:57]
  wire  _T_12 = opmode == 32'h1; // @[LSU.scala 106:23]
  wire [31:0] Oprand_1 = DelayPipe_1_io_out; // @[LSU.scala 47:20 LSU.scala 63:17]
  wire [6:0] _T_15 = Oprand_1[6:0] + cfg_base_addr; // @[LSU.scala 109:57]
  wire  _GEN_0 = _T_12 & io_en; // @[LSU.scala 106:32]
  wire [6:0] _GEN_1 = _T_12 ? _T_15 : 7'h0; // @[LSU.scala 106:32]
  wire  _GEN_2 = _T_7 ? io_en : _GEN_0; // @[LSU.scala 102:26]
  wire  _GEN_3 = _T_7 ? _T_8 : _GEN_0; // @[LSU.scala 102:26]
  wire [6:0] _GEN_4 = _T_7 ? _T_11 : _GEN_1; // @[LSU.scala 102:26]
  wire  _GEN_5 = io_hostInterface_write_data_valid | _GEN_2; // @[LSU.scala 97:49]
  wire  _GEN_6 = io_hostInterface_write_data_valid | _GEN_3; // @[LSU.scala 97:49]
  wire [6:0] _GEN_7 = io_hostInterface_write_data_valid ? _T_6 : _GEN_4; // @[LSU.scala 97:49]
  wire  _T_17 = 10'h2b == io_cfg_addr[17:8]; // @[LSU.scala 127:48]
  wire [40:0] cfgOut = cfg_io_out_0; // @[LSU.scala 140:20 LSU.scala 141:10]
  Muxn Muxn ( // @[LSU.scala 53:34]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_out(Muxn_io_out)
  );
  Muxn Muxn_1 ( // @[LSU.scala 53:34]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_out(Muxn_1_io_out)
  );
  DelayPipe DelayPipe ( // @[LSU.scala 54:42]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[LSU.scala 54:42]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  single_port_ram mem ( // @[LSU.scala 75:19]
    .clock(mem_clock),
    .io_enable(mem_io_enable),
    .io_write_enable(mem_io_write_enable),
    .io_addr(mem_io_addr),
    .io_dataIn(mem_io_dataIn),
    .io_dataOut(mem_io_dataOut)
  );
  ConfigMem_49 cfg ( // @[LSU.scala 126:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0),
    .io_current_t(cfg_io_current_t)
  );
  assign io_hostInterface_read_data_valid = io_hostInterface_read_data_ready; // @[LSU.scala 85:36]
  assign io_hostInterface_read_data_bits = mem_io_dataOut; // @[LSU.scala 83:35]
  assign io_hostInterface_write_data_ready = io_hostInterface_write_data_valid; // @[LSU.scala 88:37]
  assign io_out_0 = mem_io_dataOut; // @[LSU.scala 79:13]
  assign Muxn_io_config = cfgOut[32]; // @[LSU.scala 146:20]
  assign Muxn_io_in_0 = io_in_0; // @[LSU.scala 58:23]
  assign Muxn_io_in_1 = cfgOut[31:0]; // @[LSU.scala 60:29]
  assign Muxn_1_io_config = cfgOut[33]; // @[LSU.scala 146:20]
  assign Muxn_1_io_in_0 = io_in_1; // @[LSU.scala 58:23]
  assign Muxn_1_io_in_1 = cfgOut[31:0]; // @[LSU.scala 60:29]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[LSU.scala 61:25]
  assign DelayPipe_io_config = cfgOut[36:34]; // @[LSU.scala 152:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[LSU.scala 62:25]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[LSU.scala 61:25]
  assign DelayPipe_1_io_config = cfgOut[39:37]; // @[LSU.scala 152:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[LSU.scala 62:25]
  assign mem_clock = clock;
  assign mem_io_enable = io_hostInterface_read_data_ready | _GEN_5; // @[LSU.scala 76:17]
  assign mem_io_write_enable = io_hostInterface_read_data_ready ? 1'h0 : _GEN_6; // @[LSU.scala 77:23]
  assign mem_io_addr = io_hostInterface_read_data_ready ? _T_3 : _GEN_7; // @[LSU.scala 78:15]
  assign mem_io_dataIn = io_hostInterface_write_data_valid ? io_hostInterface_write_data_bits : Oprand_0; // @[LSU.scala 80:17]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_17; // @[LSU.scala 127:17]
  assign cfg_io_en = io_en; // @[LSU.scala 129:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[LSU.scala 130:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[LSU.scala 131:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[LSU.scala 128:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[LSU.scala 132:19]
endmodule
module LSU_5(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input  [6:0]  io_hostInterface_read_addr,
  input         io_hostInterface_read_data_ready,
  output        io_hostInterface_read_data_valid,
  output [31:0] io_hostInterface_read_data_bits,
  input  [6:0]  io_hostInterface_write_addr,
  output        io_hostInterface_write_data_ready,
  input         io_hostInterface_write_data_valid,
  input  [31:0] io_hostInterface_write_data_bits,
  input  [2:0]  io_hostInterface_cycle,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  output [31:0] io_out_0
);
  wire  Muxn_io_config; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_in_0; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_in_1; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_out; // @[LSU.scala 53:34]
  wire  Muxn_1_io_config; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_in_0; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_in_1; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_out; // @[LSU.scala 53:34]
  wire  DelayPipe_clock; // @[LSU.scala 54:42]
  wire  DelayPipe_reset; // @[LSU.scala 54:42]
  wire  DelayPipe_io_en; // @[LSU.scala 54:42]
  wire [2:0] DelayPipe_io_config; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_io_in; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_io_out; // @[LSU.scala 54:42]
  wire  DelayPipe_1_clock; // @[LSU.scala 54:42]
  wire  DelayPipe_1_reset; // @[LSU.scala 54:42]
  wire  DelayPipe_1_io_en; // @[LSU.scala 54:42]
  wire [2:0] DelayPipe_1_io_config; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_1_io_in; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_1_io_out; // @[LSU.scala 54:42]
  wire  mem_clock; // @[LSU.scala 75:19]
  wire  mem_io_enable; // @[LSU.scala 75:19]
  wire  mem_io_write_enable; // @[LSU.scala 75:19]
  wire [6:0] mem_io_addr; // @[LSU.scala 75:19]
  wire [31:0] mem_io_dataIn; // @[LSU.scala 75:19]
  wire [31:0] mem_io_dataOut; // @[LSU.scala 75:19]
  wire  cfg_clock; // @[LSU.scala 126:19]
  wire  cfg_reset; // @[LSU.scala 126:19]
  wire  cfg_io_cfg_en; // @[LSU.scala 126:19]
  wire  cfg_io_en; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_cycle; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_II; // @[LSU.scala 126:19]
  wire  cfg_io_cfg_addr; // @[LSU.scala 126:19]
  wire [31:0] cfg_io_cfg_data; // @[LSU.scala 126:19]
  wire [40:0] cfg_io_out_0; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_current_t; // @[LSU.scala 126:19]
  wire [2:0] current_t = cfg_io_current_t; // @[LSU.scala 51:23 LSU.scala 137:13]
  wire [3:0] _GEN_11 = {{1'd0}, current_t}; // @[LSU.scala 66:33]
  wire [6:0] cfg_base_addr = _GEN_11 * 4'hd; // @[LSU.scala 66:33]
  wire [3:0] _GEN_12 = {{1'd0}, io_hostInterface_cycle}; // @[LSU.scala 71:47]
  wire [6:0] host_base_addr = _GEN_12 * 4'hd; // @[LSU.scala 71:47]
  wire [31:0] Oprand_0 = DelayPipe_io_out; // @[LSU.scala 47:20 LSU.scala 63:17]
  wire [6:0] _T_3 = io_hostInterface_read_addr + host_base_addr; // @[LSU.scala 96:72]
  wire [6:0] _T_6 = io_hostInterface_write_addr + host_base_addr; // @[LSU.scala 100:73]
  wire [31:0] opmode = {{31'd0}, cfg_io_out_0[40]}; // @[LSU.scala 48:20 LSU.scala 159:9]
  wire  _T_7 = opmode == 32'h0; // @[LSU.scala 102:17]
  wire  _T_8 = ~io_en; // @[LSU.scala 104:23]
  wire [6:0] _T_11 = Oprand_0[6:0] + cfg_base_addr; // @[LSU.scala 105:57]
  wire  _T_12 = opmode == 32'h1; // @[LSU.scala 106:23]
  wire [31:0] Oprand_1 = DelayPipe_1_io_out; // @[LSU.scala 47:20 LSU.scala 63:17]
  wire [6:0] _T_15 = Oprand_1[6:0] + cfg_base_addr; // @[LSU.scala 109:57]
  wire  _GEN_0 = _T_12 & io_en; // @[LSU.scala 106:32]
  wire [6:0] _GEN_1 = _T_12 ? _T_15 : 7'h0; // @[LSU.scala 106:32]
  wire  _GEN_2 = _T_7 ? io_en : _GEN_0; // @[LSU.scala 102:26]
  wire  _GEN_3 = _T_7 ? _T_8 : _GEN_0; // @[LSU.scala 102:26]
  wire [6:0] _GEN_4 = _T_7 ? _T_11 : _GEN_1; // @[LSU.scala 102:26]
  wire  _GEN_5 = io_hostInterface_write_data_valid | _GEN_2; // @[LSU.scala 97:49]
  wire  _GEN_6 = io_hostInterface_write_data_valid | _GEN_3; // @[LSU.scala 97:49]
  wire [6:0] _GEN_7 = io_hostInterface_write_data_valid ? _T_6 : _GEN_4; // @[LSU.scala 97:49]
  wire  _T_17 = 10'h30 == io_cfg_addr[17:8]; // @[LSU.scala 127:48]
  wire [40:0] cfgOut = cfg_io_out_0; // @[LSU.scala 140:20 LSU.scala 141:10]
  Muxn Muxn ( // @[LSU.scala 53:34]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_out(Muxn_io_out)
  );
  Muxn Muxn_1 ( // @[LSU.scala 53:34]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_out(Muxn_1_io_out)
  );
  DelayPipe DelayPipe ( // @[LSU.scala 54:42]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[LSU.scala 54:42]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  single_port_ram mem ( // @[LSU.scala 75:19]
    .clock(mem_clock),
    .io_enable(mem_io_enable),
    .io_write_enable(mem_io_write_enable),
    .io_addr(mem_io_addr),
    .io_dataIn(mem_io_dataIn),
    .io_dataOut(mem_io_dataOut)
  );
  ConfigMem_49 cfg ( // @[LSU.scala 126:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0),
    .io_current_t(cfg_io_current_t)
  );
  assign io_hostInterface_read_data_valid = io_hostInterface_read_data_ready; // @[LSU.scala 85:36]
  assign io_hostInterface_read_data_bits = mem_io_dataOut; // @[LSU.scala 83:35]
  assign io_hostInterface_write_data_ready = io_hostInterface_write_data_valid; // @[LSU.scala 88:37]
  assign io_out_0 = mem_io_dataOut; // @[LSU.scala 79:13]
  assign Muxn_io_config = cfgOut[32]; // @[LSU.scala 146:20]
  assign Muxn_io_in_0 = io_in_0; // @[LSU.scala 58:23]
  assign Muxn_io_in_1 = cfgOut[31:0]; // @[LSU.scala 60:29]
  assign Muxn_1_io_config = cfgOut[33]; // @[LSU.scala 146:20]
  assign Muxn_1_io_in_0 = io_in_1; // @[LSU.scala 58:23]
  assign Muxn_1_io_in_1 = cfgOut[31:0]; // @[LSU.scala 60:29]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[LSU.scala 61:25]
  assign DelayPipe_io_config = cfgOut[36:34]; // @[LSU.scala 152:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[LSU.scala 62:25]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[LSU.scala 61:25]
  assign DelayPipe_1_io_config = cfgOut[39:37]; // @[LSU.scala 152:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[LSU.scala 62:25]
  assign mem_clock = clock;
  assign mem_io_enable = io_hostInterface_read_data_ready | _GEN_5; // @[LSU.scala 76:17]
  assign mem_io_write_enable = io_hostInterface_read_data_ready ? 1'h0 : _GEN_6; // @[LSU.scala 77:23]
  assign mem_io_addr = io_hostInterface_read_data_ready ? _T_3 : _GEN_7; // @[LSU.scala 78:15]
  assign mem_io_dataIn = io_hostInterface_write_data_valid ? io_hostInterface_write_data_bits : Oprand_0; // @[LSU.scala 80:17]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_17; // @[LSU.scala 127:17]
  assign cfg_io_en = io_en; // @[LSU.scala 129:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[LSU.scala 130:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[LSU.scala 131:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[LSU.scala 128:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[LSU.scala 132:19]
endmodule
module LSU_6(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input  [6:0]  io_hostInterface_read_addr,
  input         io_hostInterface_read_data_ready,
  output        io_hostInterface_read_data_valid,
  output [31:0] io_hostInterface_read_data_bits,
  input  [6:0]  io_hostInterface_write_addr,
  output        io_hostInterface_write_data_ready,
  input         io_hostInterface_write_data_valid,
  input  [31:0] io_hostInterface_write_data_bits,
  input  [2:0]  io_hostInterface_cycle,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  output [31:0] io_out_0
);
  wire  Muxn_io_config; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_in_0; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_in_1; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_out; // @[LSU.scala 53:34]
  wire  Muxn_1_io_config; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_in_0; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_in_1; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_out; // @[LSU.scala 53:34]
  wire  DelayPipe_clock; // @[LSU.scala 54:42]
  wire  DelayPipe_reset; // @[LSU.scala 54:42]
  wire  DelayPipe_io_en; // @[LSU.scala 54:42]
  wire [2:0] DelayPipe_io_config; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_io_in; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_io_out; // @[LSU.scala 54:42]
  wire  DelayPipe_1_clock; // @[LSU.scala 54:42]
  wire  DelayPipe_1_reset; // @[LSU.scala 54:42]
  wire  DelayPipe_1_io_en; // @[LSU.scala 54:42]
  wire [2:0] DelayPipe_1_io_config; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_1_io_in; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_1_io_out; // @[LSU.scala 54:42]
  wire  mem_clock; // @[LSU.scala 75:19]
  wire  mem_io_enable; // @[LSU.scala 75:19]
  wire  mem_io_write_enable; // @[LSU.scala 75:19]
  wire [6:0] mem_io_addr; // @[LSU.scala 75:19]
  wire [31:0] mem_io_dataIn; // @[LSU.scala 75:19]
  wire [31:0] mem_io_dataOut; // @[LSU.scala 75:19]
  wire  cfg_clock; // @[LSU.scala 126:19]
  wire  cfg_reset; // @[LSU.scala 126:19]
  wire  cfg_io_cfg_en; // @[LSU.scala 126:19]
  wire  cfg_io_en; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_cycle; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_II; // @[LSU.scala 126:19]
  wire  cfg_io_cfg_addr; // @[LSU.scala 126:19]
  wire [31:0] cfg_io_cfg_data; // @[LSU.scala 126:19]
  wire [40:0] cfg_io_out_0; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_current_t; // @[LSU.scala 126:19]
  wire [2:0] current_t = cfg_io_current_t; // @[LSU.scala 51:23 LSU.scala 137:13]
  wire [3:0] _GEN_11 = {{1'd0}, current_t}; // @[LSU.scala 66:33]
  wire [6:0] cfg_base_addr = _GEN_11 * 4'hd; // @[LSU.scala 66:33]
  wire [3:0] _GEN_12 = {{1'd0}, io_hostInterface_cycle}; // @[LSU.scala 71:47]
  wire [6:0] host_base_addr = _GEN_12 * 4'hd; // @[LSU.scala 71:47]
  wire [31:0] Oprand_0 = DelayPipe_io_out; // @[LSU.scala 47:20 LSU.scala 63:17]
  wire [6:0] _T_3 = io_hostInterface_read_addr + host_base_addr; // @[LSU.scala 96:72]
  wire [6:0] _T_6 = io_hostInterface_write_addr + host_base_addr; // @[LSU.scala 100:73]
  wire [31:0] opmode = {{31'd0}, cfg_io_out_0[40]}; // @[LSU.scala 48:20 LSU.scala 159:9]
  wire  _T_7 = opmode == 32'h0; // @[LSU.scala 102:17]
  wire  _T_8 = ~io_en; // @[LSU.scala 104:23]
  wire [6:0] _T_11 = Oprand_0[6:0] + cfg_base_addr; // @[LSU.scala 105:57]
  wire  _T_12 = opmode == 32'h1; // @[LSU.scala 106:23]
  wire [31:0] Oprand_1 = DelayPipe_1_io_out; // @[LSU.scala 47:20 LSU.scala 63:17]
  wire [6:0] _T_15 = Oprand_1[6:0] + cfg_base_addr; // @[LSU.scala 109:57]
  wire  _GEN_0 = _T_12 & io_en; // @[LSU.scala 106:32]
  wire [6:0] _GEN_1 = _T_12 ? _T_15 : 7'h0; // @[LSU.scala 106:32]
  wire  _GEN_2 = _T_7 ? io_en : _GEN_0; // @[LSU.scala 102:26]
  wire  _GEN_3 = _T_7 ? _T_8 : _GEN_0; // @[LSU.scala 102:26]
  wire [6:0] _GEN_4 = _T_7 ? _T_11 : _GEN_1; // @[LSU.scala 102:26]
  wire  _GEN_5 = io_hostInterface_write_data_valid | _GEN_2; // @[LSU.scala 97:49]
  wire  _GEN_6 = io_hostInterface_write_data_valid | _GEN_3; // @[LSU.scala 97:49]
  wire [6:0] _GEN_7 = io_hostInterface_write_data_valid ? _T_6 : _GEN_4; // @[LSU.scala 97:49]
  wire  _T_17 = 10'h37 == io_cfg_addr[17:8]; // @[LSU.scala 127:48]
  wire [40:0] cfgOut = cfg_io_out_0; // @[LSU.scala 140:20 LSU.scala 141:10]
  Muxn Muxn ( // @[LSU.scala 53:34]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_out(Muxn_io_out)
  );
  Muxn Muxn_1 ( // @[LSU.scala 53:34]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_out(Muxn_1_io_out)
  );
  DelayPipe DelayPipe ( // @[LSU.scala 54:42]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[LSU.scala 54:42]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  single_port_ram mem ( // @[LSU.scala 75:19]
    .clock(mem_clock),
    .io_enable(mem_io_enable),
    .io_write_enable(mem_io_write_enable),
    .io_addr(mem_io_addr),
    .io_dataIn(mem_io_dataIn),
    .io_dataOut(mem_io_dataOut)
  );
  ConfigMem_49 cfg ( // @[LSU.scala 126:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0),
    .io_current_t(cfg_io_current_t)
  );
  assign io_hostInterface_read_data_valid = io_hostInterface_read_data_ready; // @[LSU.scala 85:36]
  assign io_hostInterface_read_data_bits = mem_io_dataOut; // @[LSU.scala 83:35]
  assign io_hostInterface_write_data_ready = io_hostInterface_write_data_valid; // @[LSU.scala 88:37]
  assign io_out_0 = mem_io_dataOut; // @[LSU.scala 79:13]
  assign Muxn_io_config = cfgOut[32]; // @[LSU.scala 146:20]
  assign Muxn_io_in_0 = io_in_0; // @[LSU.scala 58:23]
  assign Muxn_io_in_1 = cfgOut[31:0]; // @[LSU.scala 60:29]
  assign Muxn_1_io_config = cfgOut[33]; // @[LSU.scala 146:20]
  assign Muxn_1_io_in_0 = io_in_1; // @[LSU.scala 58:23]
  assign Muxn_1_io_in_1 = cfgOut[31:0]; // @[LSU.scala 60:29]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[LSU.scala 61:25]
  assign DelayPipe_io_config = cfgOut[36:34]; // @[LSU.scala 152:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[LSU.scala 62:25]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[LSU.scala 61:25]
  assign DelayPipe_1_io_config = cfgOut[39:37]; // @[LSU.scala 152:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[LSU.scala 62:25]
  assign mem_clock = clock;
  assign mem_io_enable = io_hostInterface_read_data_ready | _GEN_5; // @[LSU.scala 76:17]
  assign mem_io_write_enable = io_hostInterface_read_data_ready ? 1'h0 : _GEN_6; // @[LSU.scala 77:23]
  assign mem_io_addr = io_hostInterface_read_data_ready ? _T_3 : _GEN_7; // @[LSU.scala 78:15]
  assign mem_io_dataIn = io_hostInterface_write_data_valid ? io_hostInterface_write_data_bits : Oprand_0; // @[LSU.scala 80:17]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_17; // @[LSU.scala 127:17]
  assign cfg_io_en = io_en; // @[LSU.scala 129:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[LSU.scala 130:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[LSU.scala 131:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[LSU.scala 128:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[LSU.scala 132:19]
endmodule
module LSU_7(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input  [6:0]  io_hostInterface_read_addr,
  input         io_hostInterface_read_data_ready,
  output        io_hostInterface_read_data_valid,
  output [31:0] io_hostInterface_read_data_bits,
  input  [6:0]  io_hostInterface_write_addr,
  output        io_hostInterface_write_data_ready,
  input         io_hostInterface_write_data_valid,
  input  [31:0] io_hostInterface_write_data_bits,
  input  [2:0]  io_hostInterface_cycle,
  input         io_en,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  output [31:0] io_out_0
);
  wire  Muxn_io_config; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_in_0; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_in_1; // @[LSU.scala 53:34]
  wire [31:0] Muxn_io_out; // @[LSU.scala 53:34]
  wire  Muxn_1_io_config; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_in_0; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_in_1; // @[LSU.scala 53:34]
  wire [31:0] Muxn_1_io_out; // @[LSU.scala 53:34]
  wire  DelayPipe_clock; // @[LSU.scala 54:42]
  wire  DelayPipe_reset; // @[LSU.scala 54:42]
  wire  DelayPipe_io_en; // @[LSU.scala 54:42]
  wire [2:0] DelayPipe_io_config; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_io_in; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_io_out; // @[LSU.scala 54:42]
  wire  DelayPipe_1_clock; // @[LSU.scala 54:42]
  wire  DelayPipe_1_reset; // @[LSU.scala 54:42]
  wire  DelayPipe_1_io_en; // @[LSU.scala 54:42]
  wire [2:0] DelayPipe_1_io_config; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_1_io_in; // @[LSU.scala 54:42]
  wire [31:0] DelayPipe_1_io_out; // @[LSU.scala 54:42]
  wire  mem_clock; // @[LSU.scala 75:19]
  wire  mem_io_enable; // @[LSU.scala 75:19]
  wire  mem_io_write_enable; // @[LSU.scala 75:19]
  wire [6:0] mem_io_addr; // @[LSU.scala 75:19]
  wire [31:0] mem_io_dataIn; // @[LSU.scala 75:19]
  wire [31:0] mem_io_dataOut; // @[LSU.scala 75:19]
  wire  cfg_clock; // @[LSU.scala 126:19]
  wire  cfg_reset; // @[LSU.scala 126:19]
  wire  cfg_io_cfg_en; // @[LSU.scala 126:19]
  wire  cfg_io_en; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_cycle; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_II; // @[LSU.scala 126:19]
  wire  cfg_io_cfg_addr; // @[LSU.scala 126:19]
  wire [31:0] cfg_io_cfg_data; // @[LSU.scala 126:19]
  wire [40:0] cfg_io_out_0; // @[LSU.scala 126:19]
  wire [2:0] cfg_io_current_t; // @[LSU.scala 126:19]
  wire [2:0] current_t = cfg_io_current_t; // @[LSU.scala 51:23 LSU.scala 137:13]
  wire [3:0] _GEN_11 = {{1'd0}, current_t}; // @[LSU.scala 66:33]
  wire [6:0] cfg_base_addr = _GEN_11 * 4'hd; // @[LSU.scala 66:33]
  wire [3:0] _GEN_12 = {{1'd0}, io_hostInterface_cycle}; // @[LSU.scala 71:47]
  wire [6:0] host_base_addr = _GEN_12 * 4'hd; // @[LSU.scala 71:47]
  wire [31:0] Oprand_0 = DelayPipe_io_out; // @[LSU.scala 47:20 LSU.scala 63:17]
  wire [6:0] _T_3 = io_hostInterface_read_addr + host_base_addr; // @[LSU.scala 96:72]
  wire [6:0] _T_6 = io_hostInterface_write_addr + host_base_addr; // @[LSU.scala 100:73]
  wire [31:0] opmode = {{31'd0}, cfg_io_out_0[40]}; // @[LSU.scala 48:20 LSU.scala 159:9]
  wire  _T_7 = opmode == 32'h0; // @[LSU.scala 102:17]
  wire  _T_8 = ~io_en; // @[LSU.scala 104:23]
  wire [6:0] _T_11 = Oprand_0[6:0] + cfg_base_addr; // @[LSU.scala 105:57]
  wire  _T_12 = opmode == 32'h1; // @[LSU.scala 106:23]
  wire [31:0] Oprand_1 = DelayPipe_1_io_out; // @[LSU.scala 47:20 LSU.scala 63:17]
  wire [6:0] _T_15 = Oprand_1[6:0] + cfg_base_addr; // @[LSU.scala 109:57]
  wire  _GEN_0 = _T_12 & io_en; // @[LSU.scala 106:32]
  wire [6:0] _GEN_1 = _T_12 ? _T_15 : 7'h0; // @[LSU.scala 106:32]
  wire  _GEN_2 = _T_7 ? io_en : _GEN_0; // @[LSU.scala 102:26]
  wire  _GEN_3 = _T_7 ? _T_8 : _GEN_0; // @[LSU.scala 102:26]
  wire [6:0] _GEN_4 = _T_7 ? _T_11 : _GEN_1; // @[LSU.scala 102:26]
  wire  _GEN_5 = io_hostInterface_write_data_valid | _GEN_2; // @[LSU.scala 97:49]
  wire  _GEN_6 = io_hostInterface_write_data_valid | _GEN_3; // @[LSU.scala 97:49]
  wire [6:0] _GEN_7 = io_hostInterface_write_data_valid ? _T_6 : _GEN_4; // @[LSU.scala 97:49]
  wire  _T_17 = 10'h3c == io_cfg_addr[17:8]; // @[LSU.scala 127:48]
  wire [40:0] cfgOut = cfg_io_out_0; // @[LSU.scala 140:20 LSU.scala 141:10]
  Muxn Muxn ( // @[LSU.scala 53:34]
    .io_config(Muxn_io_config),
    .io_in_0(Muxn_io_in_0),
    .io_in_1(Muxn_io_in_1),
    .io_out(Muxn_io_out)
  );
  Muxn Muxn_1 ( // @[LSU.scala 53:34]
    .io_config(Muxn_1_io_config),
    .io_in_0(Muxn_1_io_in_0),
    .io_in_1(Muxn_1_io_in_1),
    .io_out(Muxn_1_io_out)
  );
  DelayPipe DelayPipe ( // @[LSU.scala 54:42]
    .clock(DelayPipe_clock),
    .reset(DelayPipe_reset),
    .io_en(DelayPipe_io_en),
    .io_config(DelayPipe_io_config),
    .io_in(DelayPipe_io_in),
    .io_out(DelayPipe_io_out)
  );
  DelayPipe DelayPipe_1 ( // @[LSU.scala 54:42]
    .clock(DelayPipe_1_clock),
    .reset(DelayPipe_1_reset),
    .io_en(DelayPipe_1_io_en),
    .io_config(DelayPipe_1_io_config),
    .io_in(DelayPipe_1_io_in),
    .io_out(DelayPipe_1_io_out)
  );
  single_port_ram mem ( // @[LSU.scala 75:19]
    .clock(mem_clock),
    .io_enable(mem_io_enable),
    .io_write_enable(mem_io_write_enable),
    .io_addr(mem_io_addr),
    .io_dataIn(mem_io_dataIn),
    .io_dataOut(mem_io_dataOut)
  );
  ConfigMem_49 cfg ( // @[LSU.scala 126:19]
    .clock(cfg_clock),
    .reset(cfg_reset),
    .io_cfg_en(cfg_io_cfg_en),
    .io_en(cfg_io_en),
    .io_cycle(cfg_io_cycle),
    .io_II(cfg_io_II),
    .io_cfg_addr(cfg_io_cfg_addr),
    .io_cfg_data(cfg_io_cfg_data),
    .io_out_0(cfg_io_out_0),
    .io_current_t(cfg_io_current_t)
  );
  assign io_hostInterface_read_data_valid = io_hostInterface_read_data_ready; // @[LSU.scala 85:36]
  assign io_hostInterface_read_data_bits = mem_io_dataOut; // @[LSU.scala 83:35]
  assign io_hostInterface_write_data_ready = io_hostInterface_write_data_valid; // @[LSU.scala 88:37]
  assign io_out_0 = mem_io_dataOut; // @[LSU.scala 79:13]
  assign Muxn_io_config = cfgOut[32]; // @[LSU.scala 146:20]
  assign Muxn_io_in_0 = io_in_0; // @[LSU.scala 58:23]
  assign Muxn_io_in_1 = cfgOut[31:0]; // @[LSU.scala 60:29]
  assign Muxn_1_io_config = cfgOut[33]; // @[LSU.scala 146:20]
  assign Muxn_1_io_in_0 = io_in_1; // @[LSU.scala 58:23]
  assign Muxn_1_io_in_1 = cfgOut[31:0]; // @[LSU.scala 60:29]
  assign DelayPipe_clock = clock;
  assign DelayPipe_reset = reset;
  assign DelayPipe_io_en = io_en; // @[LSU.scala 61:25]
  assign DelayPipe_io_config = cfgOut[36:34]; // @[LSU.scala 152:29]
  assign DelayPipe_io_in = Muxn_io_out; // @[LSU.scala 62:25]
  assign DelayPipe_1_clock = clock;
  assign DelayPipe_1_reset = reset;
  assign DelayPipe_1_io_en = io_en; // @[LSU.scala 61:25]
  assign DelayPipe_1_io_config = cfgOut[39:37]; // @[LSU.scala 152:29]
  assign DelayPipe_1_io_in = Muxn_1_io_out; // @[LSU.scala 62:25]
  assign mem_clock = clock;
  assign mem_io_enable = io_hostInterface_read_data_ready | _GEN_5; // @[LSU.scala 76:17]
  assign mem_io_write_enable = io_hostInterface_read_data_ready ? 1'h0 : _GEN_6; // @[LSU.scala 77:23]
  assign mem_io_addr = io_hostInterface_read_data_ready ? _T_3 : _GEN_7; // @[LSU.scala 78:15]
  assign mem_io_dataIn = io_hostInterface_write_data_valid ? io_hostInterface_write_data_bits : Oprand_0; // @[LSU.scala 80:17]
  assign cfg_clock = clock;
  assign cfg_reset = reset;
  assign cfg_io_cfg_en = io_cfg_en & _T_17; // @[LSU.scala 127:17]
  assign cfg_io_en = io_en; // @[LSU.scala 129:13]
  assign cfg_io_cycle = io_cfg_addr[5:3]; // @[LSU.scala 130:16]
  assign cfg_io_II = io_cfg_addr[2:0]; // @[LSU.scala 131:13]
  assign cfg_io_cfg_addr = io_cfg_addr[6]; // @[LSU.scala 128:19]
  assign cfg_io_cfg_data = io_cfg_data; // @[LSU.scala 132:19]
endmodule
module CGRA(
  input         clock,
  input         reset,
  input         io_cfg_en,
  input  [17:0] io_cfg_addr,
  input  [31:0] io_cfg_data,
  input  [6:0]  io_hostInterface_0_read_addr,
  input         io_hostInterface_0_read_data_ready,
  output        io_hostInterface_0_read_data_valid,
  output [31:0] io_hostInterface_0_read_data_bits,
  input  [6:0]  io_hostInterface_0_write_addr,
  output        io_hostInterface_0_write_data_ready,
  input         io_hostInterface_0_write_data_valid,
  input  [31:0] io_hostInterface_0_write_data_bits,
  input  [2:0]  io_hostInterface_0_cycle,
  input  [6:0]  io_hostInterface_1_read_addr,
  input         io_hostInterface_1_read_data_ready,
  output        io_hostInterface_1_read_data_valid,
  output [31:0] io_hostInterface_1_read_data_bits,
  input  [6:0]  io_hostInterface_1_write_addr,
  output        io_hostInterface_1_write_data_ready,
  input         io_hostInterface_1_write_data_valid,
  input  [31:0] io_hostInterface_1_write_data_bits,
  input  [2:0]  io_hostInterface_1_cycle,
  input  [6:0]  io_hostInterface_2_read_addr,
  input         io_hostInterface_2_read_data_ready,
  output        io_hostInterface_2_read_data_valid,
  output [31:0] io_hostInterface_2_read_data_bits,
  input  [6:0]  io_hostInterface_2_write_addr,
  output        io_hostInterface_2_write_data_ready,
  input         io_hostInterface_2_write_data_valid,
  input  [31:0] io_hostInterface_2_write_data_bits,
  input  [2:0]  io_hostInterface_2_cycle,
  input  [6:0]  io_hostInterface_3_read_addr,
  input         io_hostInterface_3_read_data_ready,
  output        io_hostInterface_3_read_data_valid,
  output [31:0] io_hostInterface_3_read_data_bits,
  input  [6:0]  io_hostInterface_3_write_addr,
  output        io_hostInterface_3_write_data_ready,
  input         io_hostInterface_3_write_data_valid,
  input  [31:0] io_hostInterface_3_write_data_bits,
  input  [2:0]  io_hostInterface_3_cycle,
  input  [6:0]  io_hostInterface_4_read_addr,
  input         io_hostInterface_4_read_data_ready,
  output        io_hostInterface_4_read_data_valid,
  output [31:0] io_hostInterface_4_read_data_bits,
  input  [6:0]  io_hostInterface_4_write_addr,
  output        io_hostInterface_4_write_data_ready,
  input         io_hostInterface_4_write_data_valid,
  input  [31:0] io_hostInterface_4_write_data_bits,
  input  [2:0]  io_hostInterface_4_cycle,
  input  [6:0]  io_hostInterface_5_read_addr,
  input         io_hostInterface_5_read_data_ready,
  output        io_hostInterface_5_read_data_valid,
  output [31:0] io_hostInterface_5_read_data_bits,
  input  [6:0]  io_hostInterface_5_write_addr,
  output        io_hostInterface_5_write_data_ready,
  input         io_hostInterface_5_write_data_valid,
  input  [31:0] io_hostInterface_5_write_data_bits,
  input  [2:0]  io_hostInterface_5_cycle,
  input  [6:0]  io_hostInterface_6_read_addr,
  input         io_hostInterface_6_read_data_ready,
  output        io_hostInterface_6_read_data_valid,
  output [31:0] io_hostInterface_6_read_data_bits,
  input  [6:0]  io_hostInterface_6_write_addr,
  output        io_hostInterface_6_write_data_ready,
  input         io_hostInterface_6_write_data_valid,
  input  [31:0] io_hostInterface_6_write_data_bits,
  input  [2:0]  io_hostInterface_6_cycle,
  input  [6:0]  io_hostInterface_7_read_addr,
  input         io_hostInterface_7_read_data_ready,
  output        io_hostInterface_7_read_data_valid,
  output [31:0] io_hostInterface_7_read_data_bits,
  input  [6:0]  io_hostInterface_7_write_addr,
  output        io_hostInterface_7_write_data_ready,
  input         io_hostInterface_7_write_data_valid,
  input  [31:0] io_hostInterface_7_write_data_bits,
  input  [2:0]  io_hostInterface_7_cycle,
  input         io_en_0,
  input         io_en_1,
  input         io_en_2,
  input         io_en_3,
  input         io_en_4,
  input         io_en_5,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  output [31:0] io_out_0,
  output [31:0] io_out_1,
  output [31:0] io_out_2,
  output [31:0] io_out_3,
  output [31:0] io_out_4,
  output [31:0] io_out_5,
  output [31:0] io_out_6,
  output [31:0] io_out_7
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] ibs_0_io_in_0; // @[CGRA.scala 189:20]
  wire [31:0] ibs_0_io_out_0; // @[CGRA.scala 189:20]
  wire [31:0] ibs_1_io_in_0; // @[CGRA.scala 189:20]
  wire [31:0] ibs_1_io_out_0; // @[CGRA.scala 189:20]
  wire [31:0] ibs_2_io_in_0; // @[CGRA.scala 189:20]
  wire [31:0] ibs_2_io_out_0; // @[CGRA.scala 189:20]
  wire [31:0] ibs_3_io_in_0; // @[CGRA.scala 189:20]
  wire [31:0] ibs_3_io_out_0; // @[CGRA.scala 189:20]
  wire [31:0] ibs_4_io_in_0; // @[CGRA.scala 189:20]
  wire [31:0] ibs_4_io_out_0; // @[CGRA.scala 189:20]
  wire [31:0] ibs_5_io_in_0; // @[CGRA.scala 189:20]
  wire [31:0] ibs_5_io_out_0; // @[CGRA.scala 189:20]
  wire [31:0] ibs_6_io_in_0; // @[CGRA.scala 189:20]
  wire [31:0] ibs_6_io_out_0; // @[CGRA.scala 189:20]
  wire [31:0] ibs_7_io_in_0; // @[CGRA.scala 189:20]
  wire [31:0] ibs_7_io_out_0; // @[CGRA.scala 189:20]
  wire  obs_0_clock; // @[CGRA.scala 217:20]
  wire  obs_0_reset; // @[CGRA.scala 217:20]
  wire  obs_0_io_cfg_en; // @[CGRA.scala 217:20]
  wire [17:0] obs_0_io_cfg_addr; // @[CGRA.scala 217:20]
  wire [31:0] obs_0_io_cfg_data; // @[CGRA.scala 217:20]
  wire [31:0] obs_0_io_in_0; // @[CGRA.scala 217:20]
  wire [31:0] obs_0_io_in_1; // @[CGRA.scala 217:20]
  wire  obs_0_io_en; // @[CGRA.scala 217:20]
  wire [31:0] obs_0_io_out_0; // @[CGRA.scala 217:20]
  wire  obs_1_clock; // @[CGRA.scala 217:20]
  wire  obs_1_reset; // @[CGRA.scala 217:20]
  wire  obs_1_io_cfg_en; // @[CGRA.scala 217:20]
  wire [17:0] obs_1_io_cfg_addr; // @[CGRA.scala 217:20]
  wire [31:0] obs_1_io_cfg_data; // @[CGRA.scala 217:20]
  wire [31:0] obs_1_io_in_0; // @[CGRA.scala 217:20]
  wire [31:0] obs_1_io_in_1; // @[CGRA.scala 217:20]
  wire  obs_1_io_en; // @[CGRA.scala 217:20]
  wire [31:0] obs_1_io_out_0; // @[CGRA.scala 217:20]
  wire  obs_2_clock; // @[CGRA.scala 217:20]
  wire  obs_2_reset; // @[CGRA.scala 217:20]
  wire  obs_2_io_cfg_en; // @[CGRA.scala 217:20]
  wire [17:0] obs_2_io_cfg_addr; // @[CGRA.scala 217:20]
  wire [31:0] obs_2_io_cfg_data; // @[CGRA.scala 217:20]
  wire [31:0] obs_2_io_in_0; // @[CGRA.scala 217:20]
  wire [31:0] obs_2_io_in_1; // @[CGRA.scala 217:20]
  wire  obs_2_io_en; // @[CGRA.scala 217:20]
  wire [31:0] obs_2_io_out_0; // @[CGRA.scala 217:20]
  wire  obs_3_clock; // @[CGRA.scala 217:20]
  wire  obs_3_reset; // @[CGRA.scala 217:20]
  wire  obs_3_io_cfg_en; // @[CGRA.scala 217:20]
  wire [17:0] obs_3_io_cfg_addr; // @[CGRA.scala 217:20]
  wire [31:0] obs_3_io_cfg_data; // @[CGRA.scala 217:20]
  wire [31:0] obs_3_io_in_0; // @[CGRA.scala 217:20]
  wire [31:0] obs_3_io_in_1; // @[CGRA.scala 217:20]
  wire  obs_3_io_en; // @[CGRA.scala 217:20]
  wire [31:0] obs_3_io_out_0; // @[CGRA.scala 217:20]
  wire  obs_4_clock; // @[CGRA.scala 217:20]
  wire  obs_4_reset; // @[CGRA.scala 217:20]
  wire  obs_4_io_cfg_en; // @[CGRA.scala 217:20]
  wire [17:0] obs_4_io_cfg_addr; // @[CGRA.scala 217:20]
  wire [31:0] obs_4_io_cfg_data; // @[CGRA.scala 217:20]
  wire [31:0] obs_4_io_in_0; // @[CGRA.scala 217:20]
  wire [31:0] obs_4_io_in_1; // @[CGRA.scala 217:20]
  wire  obs_4_io_en; // @[CGRA.scala 217:20]
  wire [31:0] obs_4_io_out_0; // @[CGRA.scala 217:20]
  wire  obs_5_clock; // @[CGRA.scala 217:20]
  wire  obs_5_reset; // @[CGRA.scala 217:20]
  wire  obs_5_io_cfg_en; // @[CGRA.scala 217:20]
  wire [17:0] obs_5_io_cfg_addr; // @[CGRA.scala 217:20]
  wire [31:0] obs_5_io_cfg_data; // @[CGRA.scala 217:20]
  wire [31:0] obs_5_io_in_0; // @[CGRA.scala 217:20]
  wire [31:0] obs_5_io_in_1; // @[CGRA.scala 217:20]
  wire  obs_5_io_en; // @[CGRA.scala 217:20]
  wire [31:0] obs_5_io_out_0; // @[CGRA.scala 217:20]
  wire  obs_6_clock; // @[CGRA.scala 217:20]
  wire  obs_6_reset; // @[CGRA.scala 217:20]
  wire  obs_6_io_cfg_en; // @[CGRA.scala 217:20]
  wire [17:0] obs_6_io_cfg_addr; // @[CGRA.scala 217:20]
  wire [31:0] obs_6_io_cfg_data; // @[CGRA.scala 217:20]
  wire [31:0] obs_6_io_in_0; // @[CGRA.scala 217:20]
  wire [31:0] obs_6_io_in_1; // @[CGRA.scala 217:20]
  wire  obs_6_io_en; // @[CGRA.scala 217:20]
  wire [31:0] obs_6_io_out_0; // @[CGRA.scala 217:20]
  wire  obs_7_clock; // @[CGRA.scala 217:20]
  wire  obs_7_reset; // @[CGRA.scala 217:20]
  wire  obs_7_io_cfg_en; // @[CGRA.scala 217:20]
  wire [17:0] obs_7_io_cfg_addr; // @[CGRA.scala 217:20]
  wire [31:0] obs_7_io_cfg_data; // @[CGRA.scala 217:20]
  wire [31:0] obs_7_io_in_0; // @[CGRA.scala 217:20]
  wire [31:0] obs_7_io_in_1; // @[CGRA.scala 217:20]
  wire  obs_7_io_en; // @[CGRA.scala 217:20]
  wire [31:0] obs_7_io_out_0; // @[CGRA.scala 217:20]
  wire  pes_0_clock; // @[CGRA.scala 242:20]
  wire  pes_0_reset; // @[CGRA.scala 242:20]
  wire  pes_0_io_cfg_en; // @[CGRA.scala 242:20]
  wire [17:0] pes_0_io_cfg_addr; // @[CGRA.scala 242:20]
  wire [31:0] pes_0_io_cfg_data; // @[CGRA.scala 242:20]
  wire  pes_0_io_en; // @[CGRA.scala 242:20]
  wire [31:0] pes_0_io_in_0; // @[CGRA.scala 242:20]
  wire [31:0] pes_0_io_in_1; // @[CGRA.scala 242:20]
  wire [31:0] pes_0_io_in_2; // @[CGRA.scala 242:20]
  wire [31:0] pes_0_io_in_3; // @[CGRA.scala 242:20]
  wire [31:0] pes_0_io_in_4; // @[CGRA.scala 242:20]
  wire [31:0] pes_0_io_in_5; // @[CGRA.scala 242:20]
  wire [31:0] pes_0_io_in_6; // @[CGRA.scala 242:20]
  wire [31:0] pes_0_io_in_7; // @[CGRA.scala 242:20]
  wire [31:0] pes_0_io_out_0; // @[CGRA.scala 242:20]
  wire  pes_1_clock; // @[CGRA.scala 242:20]
  wire  pes_1_reset; // @[CGRA.scala 242:20]
  wire  pes_1_io_cfg_en; // @[CGRA.scala 242:20]
  wire [17:0] pes_1_io_cfg_addr; // @[CGRA.scala 242:20]
  wire [31:0] pes_1_io_cfg_data; // @[CGRA.scala 242:20]
  wire  pes_1_io_en; // @[CGRA.scala 242:20]
  wire [31:0] pes_1_io_in_0; // @[CGRA.scala 242:20]
  wire [31:0] pes_1_io_in_1; // @[CGRA.scala 242:20]
  wire [31:0] pes_1_io_in_2; // @[CGRA.scala 242:20]
  wire [31:0] pes_1_io_in_3; // @[CGRA.scala 242:20]
  wire [31:0] pes_1_io_in_4; // @[CGRA.scala 242:20]
  wire [31:0] pes_1_io_in_5; // @[CGRA.scala 242:20]
  wire [31:0] pes_1_io_in_6; // @[CGRA.scala 242:20]
  wire [31:0] pes_1_io_in_7; // @[CGRA.scala 242:20]
  wire [31:0] pes_1_io_out_0; // @[CGRA.scala 242:20]
  wire  pes_2_clock; // @[CGRA.scala 242:20]
  wire  pes_2_reset; // @[CGRA.scala 242:20]
  wire  pes_2_io_cfg_en; // @[CGRA.scala 242:20]
  wire [17:0] pes_2_io_cfg_addr; // @[CGRA.scala 242:20]
  wire [31:0] pes_2_io_cfg_data; // @[CGRA.scala 242:20]
  wire  pes_2_io_en; // @[CGRA.scala 242:20]
  wire [31:0] pes_2_io_in_0; // @[CGRA.scala 242:20]
  wire [31:0] pes_2_io_in_1; // @[CGRA.scala 242:20]
  wire [31:0] pes_2_io_in_2; // @[CGRA.scala 242:20]
  wire [31:0] pes_2_io_in_3; // @[CGRA.scala 242:20]
  wire [31:0] pes_2_io_in_4; // @[CGRA.scala 242:20]
  wire [31:0] pes_2_io_in_5; // @[CGRA.scala 242:20]
  wire [31:0] pes_2_io_in_6; // @[CGRA.scala 242:20]
  wire [31:0] pes_2_io_in_7; // @[CGRA.scala 242:20]
  wire [31:0] pes_2_io_out_0; // @[CGRA.scala 242:20]
  wire  pes_3_clock; // @[CGRA.scala 242:20]
  wire  pes_3_reset; // @[CGRA.scala 242:20]
  wire  pes_3_io_cfg_en; // @[CGRA.scala 242:20]
  wire [17:0] pes_3_io_cfg_addr; // @[CGRA.scala 242:20]
  wire [31:0] pes_3_io_cfg_data; // @[CGRA.scala 242:20]
  wire  pes_3_io_en; // @[CGRA.scala 242:20]
  wire [31:0] pes_3_io_in_0; // @[CGRA.scala 242:20]
  wire [31:0] pes_3_io_in_1; // @[CGRA.scala 242:20]
  wire [31:0] pes_3_io_in_2; // @[CGRA.scala 242:20]
  wire [31:0] pes_3_io_in_3; // @[CGRA.scala 242:20]
  wire [31:0] pes_3_io_in_4; // @[CGRA.scala 242:20]
  wire [31:0] pes_3_io_in_5; // @[CGRA.scala 242:20]
  wire [31:0] pes_3_io_in_6; // @[CGRA.scala 242:20]
  wire [31:0] pes_3_io_in_7; // @[CGRA.scala 242:20]
  wire [31:0] pes_3_io_out_0; // @[CGRA.scala 242:20]
  wire  pes_4_clock; // @[CGRA.scala 242:20]
  wire  pes_4_reset; // @[CGRA.scala 242:20]
  wire  pes_4_io_cfg_en; // @[CGRA.scala 242:20]
  wire [17:0] pes_4_io_cfg_addr; // @[CGRA.scala 242:20]
  wire [31:0] pes_4_io_cfg_data; // @[CGRA.scala 242:20]
  wire  pes_4_io_en; // @[CGRA.scala 242:20]
  wire [31:0] pes_4_io_in_0; // @[CGRA.scala 242:20]
  wire [31:0] pes_4_io_in_1; // @[CGRA.scala 242:20]
  wire [31:0] pes_4_io_in_2; // @[CGRA.scala 242:20]
  wire [31:0] pes_4_io_in_3; // @[CGRA.scala 242:20]
  wire [31:0] pes_4_io_in_4; // @[CGRA.scala 242:20]
  wire [31:0] pes_4_io_in_5; // @[CGRA.scala 242:20]
  wire [31:0] pes_4_io_in_6; // @[CGRA.scala 242:20]
  wire [31:0] pes_4_io_in_7; // @[CGRA.scala 242:20]
  wire [31:0] pes_4_io_out_0; // @[CGRA.scala 242:20]
  wire  pes_5_clock; // @[CGRA.scala 242:20]
  wire  pes_5_reset; // @[CGRA.scala 242:20]
  wire  pes_5_io_cfg_en; // @[CGRA.scala 242:20]
  wire [17:0] pes_5_io_cfg_addr; // @[CGRA.scala 242:20]
  wire [31:0] pes_5_io_cfg_data; // @[CGRA.scala 242:20]
  wire  pes_5_io_en; // @[CGRA.scala 242:20]
  wire [31:0] pes_5_io_in_0; // @[CGRA.scala 242:20]
  wire [31:0] pes_5_io_in_1; // @[CGRA.scala 242:20]
  wire [31:0] pes_5_io_in_2; // @[CGRA.scala 242:20]
  wire [31:0] pes_5_io_in_3; // @[CGRA.scala 242:20]
  wire [31:0] pes_5_io_in_4; // @[CGRA.scala 242:20]
  wire [31:0] pes_5_io_in_5; // @[CGRA.scala 242:20]
  wire [31:0] pes_5_io_in_6; // @[CGRA.scala 242:20]
  wire [31:0] pes_5_io_in_7; // @[CGRA.scala 242:20]
  wire [31:0] pes_5_io_out_0; // @[CGRA.scala 242:20]
  wire  pes_6_clock; // @[CGRA.scala 242:20]
  wire  pes_6_reset; // @[CGRA.scala 242:20]
  wire  pes_6_io_cfg_en; // @[CGRA.scala 242:20]
  wire [17:0] pes_6_io_cfg_addr; // @[CGRA.scala 242:20]
  wire [31:0] pes_6_io_cfg_data; // @[CGRA.scala 242:20]
  wire  pes_6_io_en; // @[CGRA.scala 242:20]
  wire [31:0] pes_6_io_in_0; // @[CGRA.scala 242:20]
  wire [31:0] pes_6_io_in_1; // @[CGRA.scala 242:20]
  wire [31:0] pes_6_io_in_2; // @[CGRA.scala 242:20]
  wire [31:0] pes_6_io_in_3; // @[CGRA.scala 242:20]
  wire [31:0] pes_6_io_in_4; // @[CGRA.scala 242:20]
  wire [31:0] pes_6_io_in_5; // @[CGRA.scala 242:20]
  wire [31:0] pes_6_io_in_6; // @[CGRA.scala 242:20]
  wire [31:0] pes_6_io_in_7; // @[CGRA.scala 242:20]
  wire [31:0] pes_6_io_out_0; // @[CGRA.scala 242:20]
  wire  pes_7_clock; // @[CGRA.scala 242:20]
  wire  pes_7_reset; // @[CGRA.scala 242:20]
  wire  pes_7_io_cfg_en; // @[CGRA.scala 242:20]
  wire [17:0] pes_7_io_cfg_addr; // @[CGRA.scala 242:20]
  wire [31:0] pes_7_io_cfg_data; // @[CGRA.scala 242:20]
  wire  pes_7_io_en; // @[CGRA.scala 242:20]
  wire [31:0] pes_7_io_in_0; // @[CGRA.scala 242:20]
  wire [31:0] pes_7_io_in_1; // @[CGRA.scala 242:20]
  wire [31:0] pes_7_io_in_2; // @[CGRA.scala 242:20]
  wire [31:0] pes_7_io_in_3; // @[CGRA.scala 242:20]
  wire [31:0] pes_7_io_in_4; // @[CGRA.scala 242:20]
  wire [31:0] pes_7_io_in_5; // @[CGRA.scala 242:20]
  wire [31:0] pes_7_io_in_6; // @[CGRA.scala 242:20]
  wire [31:0] pes_7_io_in_7; // @[CGRA.scala 242:20]
  wire [31:0] pes_7_io_out_0; // @[CGRA.scala 242:20]
  wire  pes_8_clock; // @[CGRA.scala 242:20]
  wire  pes_8_reset; // @[CGRA.scala 242:20]
  wire  pes_8_io_cfg_en; // @[CGRA.scala 242:20]
  wire [17:0] pes_8_io_cfg_addr; // @[CGRA.scala 242:20]
  wire [31:0] pes_8_io_cfg_data; // @[CGRA.scala 242:20]
  wire  pes_8_io_en; // @[CGRA.scala 242:20]
  wire [31:0] pes_8_io_in_0; // @[CGRA.scala 242:20]
  wire [31:0] pes_8_io_in_1; // @[CGRA.scala 242:20]
  wire [31:0] pes_8_io_in_2; // @[CGRA.scala 242:20]
  wire [31:0] pes_8_io_in_3; // @[CGRA.scala 242:20]
  wire [31:0] pes_8_io_in_4; // @[CGRA.scala 242:20]
  wire [31:0] pes_8_io_in_5; // @[CGRA.scala 242:20]
  wire [31:0] pes_8_io_in_6; // @[CGRA.scala 242:20]
  wire [31:0] pes_8_io_in_7; // @[CGRA.scala 242:20]
  wire [31:0] pes_8_io_out_0; // @[CGRA.scala 242:20]
  wire  pes_9_clock; // @[CGRA.scala 242:20]
  wire  pes_9_reset; // @[CGRA.scala 242:20]
  wire  pes_9_io_cfg_en; // @[CGRA.scala 242:20]
  wire [17:0] pes_9_io_cfg_addr; // @[CGRA.scala 242:20]
  wire [31:0] pes_9_io_cfg_data; // @[CGRA.scala 242:20]
  wire  pes_9_io_en; // @[CGRA.scala 242:20]
  wire [31:0] pes_9_io_in_0; // @[CGRA.scala 242:20]
  wire [31:0] pes_9_io_in_1; // @[CGRA.scala 242:20]
  wire [31:0] pes_9_io_in_2; // @[CGRA.scala 242:20]
  wire [31:0] pes_9_io_in_3; // @[CGRA.scala 242:20]
  wire [31:0] pes_9_io_in_4; // @[CGRA.scala 242:20]
  wire [31:0] pes_9_io_in_5; // @[CGRA.scala 242:20]
  wire [31:0] pes_9_io_in_6; // @[CGRA.scala 242:20]
  wire [31:0] pes_9_io_in_7; // @[CGRA.scala 242:20]
  wire [31:0] pes_9_io_out_0; // @[CGRA.scala 242:20]
  wire  pes_10_clock; // @[CGRA.scala 242:20]
  wire  pes_10_reset; // @[CGRA.scala 242:20]
  wire  pes_10_io_cfg_en; // @[CGRA.scala 242:20]
  wire [17:0] pes_10_io_cfg_addr; // @[CGRA.scala 242:20]
  wire [31:0] pes_10_io_cfg_data; // @[CGRA.scala 242:20]
  wire  pes_10_io_en; // @[CGRA.scala 242:20]
  wire [31:0] pes_10_io_in_0; // @[CGRA.scala 242:20]
  wire [31:0] pes_10_io_in_1; // @[CGRA.scala 242:20]
  wire [31:0] pes_10_io_in_2; // @[CGRA.scala 242:20]
  wire [31:0] pes_10_io_in_3; // @[CGRA.scala 242:20]
  wire [31:0] pes_10_io_in_4; // @[CGRA.scala 242:20]
  wire [31:0] pes_10_io_in_5; // @[CGRA.scala 242:20]
  wire [31:0] pes_10_io_in_6; // @[CGRA.scala 242:20]
  wire [31:0] pes_10_io_in_7; // @[CGRA.scala 242:20]
  wire [31:0] pes_10_io_out_0; // @[CGRA.scala 242:20]
  wire  pes_11_clock; // @[CGRA.scala 242:20]
  wire  pes_11_reset; // @[CGRA.scala 242:20]
  wire  pes_11_io_cfg_en; // @[CGRA.scala 242:20]
  wire [17:0] pes_11_io_cfg_addr; // @[CGRA.scala 242:20]
  wire [31:0] pes_11_io_cfg_data; // @[CGRA.scala 242:20]
  wire  pes_11_io_en; // @[CGRA.scala 242:20]
  wire [31:0] pes_11_io_in_0; // @[CGRA.scala 242:20]
  wire [31:0] pes_11_io_in_1; // @[CGRA.scala 242:20]
  wire [31:0] pes_11_io_in_2; // @[CGRA.scala 242:20]
  wire [31:0] pes_11_io_in_3; // @[CGRA.scala 242:20]
  wire [31:0] pes_11_io_in_4; // @[CGRA.scala 242:20]
  wire [31:0] pes_11_io_in_5; // @[CGRA.scala 242:20]
  wire [31:0] pes_11_io_in_6; // @[CGRA.scala 242:20]
  wire [31:0] pes_11_io_in_7; // @[CGRA.scala 242:20]
  wire [31:0] pes_11_io_out_0; // @[CGRA.scala 242:20]
  wire  pes_12_clock; // @[CGRA.scala 242:20]
  wire  pes_12_reset; // @[CGRA.scala 242:20]
  wire  pes_12_io_cfg_en; // @[CGRA.scala 242:20]
  wire [17:0] pes_12_io_cfg_addr; // @[CGRA.scala 242:20]
  wire [31:0] pes_12_io_cfg_data; // @[CGRA.scala 242:20]
  wire  pes_12_io_en; // @[CGRA.scala 242:20]
  wire [31:0] pes_12_io_in_0; // @[CGRA.scala 242:20]
  wire [31:0] pes_12_io_in_1; // @[CGRA.scala 242:20]
  wire [31:0] pes_12_io_in_2; // @[CGRA.scala 242:20]
  wire [31:0] pes_12_io_in_3; // @[CGRA.scala 242:20]
  wire [31:0] pes_12_io_in_4; // @[CGRA.scala 242:20]
  wire [31:0] pes_12_io_in_5; // @[CGRA.scala 242:20]
  wire [31:0] pes_12_io_in_6; // @[CGRA.scala 242:20]
  wire [31:0] pes_12_io_in_7; // @[CGRA.scala 242:20]
  wire [31:0] pes_12_io_out_0; // @[CGRA.scala 242:20]
  wire  pes_13_clock; // @[CGRA.scala 242:20]
  wire  pes_13_reset; // @[CGRA.scala 242:20]
  wire  pes_13_io_cfg_en; // @[CGRA.scala 242:20]
  wire [17:0] pes_13_io_cfg_addr; // @[CGRA.scala 242:20]
  wire [31:0] pes_13_io_cfg_data; // @[CGRA.scala 242:20]
  wire  pes_13_io_en; // @[CGRA.scala 242:20]
  wire [31:0] pes_13_io_in_0; // @[CGRA.scala 242:20]
  wire [31:0] pes_13_io_in_1; // @[CGRA.scala 242:20]
  wire [31:0] pes_13_io_in_2; // @[CGRA.scala 242:20]
  wire [31:0] pes_13_io_in_3; // @[CGRA.scala 242:20]
  wire [31:0] pes_13_io_in_4; // @[CGRA.scala 242:20]
  wire [31:0] pes_13_io_in_5; // @[CGRA.scala 242:20]
  wire [31:0] pes_13_io_in_6; // @[CGRA.scala 242:20]
  wire [31:0] pes_13_io_in_7; // @[CGRA.scala 242:20]
  wire [31:0] pes_13_io_out_0; // @[CGRA.scala 242:20]
  wire  pes_14_clock; // @[CGRA.scala 242:20]
  wire  pes_14_reset; // @[CGRA.scala 242:20]
  wire  pes_14_io_cfg_en; // @[CGRA.scala 242:20]
  wire [17:0] pes_14_io_cfg_addr; // @[CGRA.scala 242:20]
  wire [31:0] pes_14_io_cfg_data; // @[CGRA.scala 242:20]
  wire  pes_14_io_en; // @[CGRA.scala 242:20]
  wire [31:0] pes_14_io_in_0; // @[CGRA.scala 242:20]
  wire [31:0] pes_14_io_in_1; // @[CGRA.scala 242:20]
  wire [31:0] pes_14_io_in_2; // @[CGRA.scala 242:20]
  wire [31:0] pes_14_io_in_3; // @[CGRA.scala 242:20]
  wire [31:0] pes_14_io_in_4; // @[CGRA.scala 242:20]
  wire [31:0] pes_14_io_in_5; // @[CGRA.scala 242:20]
  wire [31:0] pes_14_io_in_6; // @[CGRA.scala 242:20]
  wire [31:0] pes_14_io_in_7; // @[CGRA.scala 242:20]
  wire [31:0] pes_14_io_out_0; // @[CGRA.scala 242:20]
  wire  pes_15_clock; // @[CGRA.scala 242:20]
  wire  pes_15_reset; // @[CGRA.scala 242:20]
  wire  pes_15_io_cfg_en; // @[CGRA.scala 242:20]
  wire [17:0] pes_15_io_cfg_addr; // @[CGRA.scala 242:20]
  wire [31:0] pes_15_io_cfg_data; // @[CGRA.scala 242:20]
  wire  pes_15_io_en; // @[CGRA.scala 242:20]
  wire [31:0] pes_15_io_in_0; // @[CGRA.scala 242:20]
  wire [31:0] pes_15_io_in_1; // @[CGRA.scala 242:20]
  wire [31:0] pes_15_io_in_2; // @[CGRA.scala 242:20]
  wire [31:0] pes_15_io_in_3; // @[CGRA.scala 242:20]
  wire [31:0] pes_15_io_in_4; // @[CGRA.scala 242:20]
  wire [31:0] pes_15_io_in_5; // @[CGRA.scala 242:20]
  wire [31:0] pes_15_io_in_6; // @[CGRA.scala 242:20]
  wire [31:0] pes_15_io_in_7; // @[CGRA.scala 242:20]
  wire [31:0] pes_15_io_out_0; // @[CGRA.scala 242:20]
  wire  gibs_0_clock; // @[CGRA.scala 333:21]
  wire  gibs_0_reset; // @[CGRA.scala 333:21]
  wire  gibs_0_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_0_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_0_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_0_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_0_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_0_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_0_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_0_io_ipinSE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_0_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_0_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_0_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_0_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_0_io_otrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_0_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_0_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_1_clock; // @[CGRA.scala 333:21]
  wire  gibs_1_reset; // @[CGRA.scala 333:21]
  wire  gibs_1_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_1_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_1_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_1_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_1_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_1_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_1_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_1_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_1_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_1_io_ipinSE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_1_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_1_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_1_io_ipinSW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_1_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_1_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_1_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_1_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_1_io_otrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_1_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_1_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_2_clock; // @[CGRA.scala 333:21]
  wire  gibs_2_reset; // @[CGRA.scala 333:21]
  wire  gibs_2_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_2_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_2_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_2_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_2_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_2_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_2_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_2_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_2_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_2_io_ipinSE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_2_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_2_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_2_io_ipinSW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_2_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_2_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_2_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_2_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_2_io_otrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_2_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_2_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_3_clock; // @[CGRA.scala 333:21]
  wire  gibs_3_reset; // @[CGRA.scala 333:21]
  wire  gibs_3_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_3_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_3_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_3_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_3_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_3_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_3_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_3_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_3_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_3_io_ipinSE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_3_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_3_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_3_io_ipinSW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_3_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_3_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_3_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_3_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_3_io_otrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_3_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_3_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_4_clock; // @[CGRA.scala 333:21]
  wire  gibs_4_reset; // @[CGRA.scala 333:21]
  wire  gibs_4_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_4_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_4_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_4_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_4_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_4_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_4_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_4_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_4_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_4_io_ipinSW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_4_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_4_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_4_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_4_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_4_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_5_clock; // @[CGRA.scala 333:21]
  wire  gibs_5_reset; // @[CGRA.scala 333:21]
  wire  gibs_5_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_5_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_5_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_5_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_5_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_5_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_5_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_5_io_ipinNE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_5_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_5_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_5_io_ipinSE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_5_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_5_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_5_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_5_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_5_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_5_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_5_io_otrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_5_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_5_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_6_clock; // @[CGRA.scala 333:21]
  wire  gibs_6_reset; // @[CGRA.scala 333:21]
  wire  gibs_6_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_6_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_6_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_ipinNW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_ipinNE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_ipinSE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_ipinSW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_otrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_6_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_7_clock; // @[CGRA.scala 333:21]
  wire  gibs_7_reset; // @[CGRA.scala 333:21]
  wire  gibs_7_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_7_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_7_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_ipinNW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_ipinNE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_ipinSE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_ipinSW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_otrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_7_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_8_clock; // @[CGRA.scala 333:21]
  wire  gibs_8_reset; // @[CGRA.scala 333:21]
  wire  gibs_8_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_8_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_8_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_ipinNW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_ipinNE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_ipinSE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_ipinSW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_otrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_8_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_9_clock; // @[CGRA.scala 333:21]
  wire  gibs_9_reset; // @[CGRA.scala 333:21]
  wire  gibs_9_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_9_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_9_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_9_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_9_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_9_io_ipinNW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_9_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_9_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_9_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_9_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_9_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_9_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_9_io_ipinSW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_9_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_9_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_9_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_9_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_9_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_9_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_9_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_10_clock; // @[CGRA.scala 333:21]
  wire  gibs_10_reset; // @[CGRA.scala 333:21]
  wire  gibs_10_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_10_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_10_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_10_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_10_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_10_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_10_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_10_io_ipinNE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_10_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_10_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_10_io_ipinSE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_10_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_10_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_10_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_10_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_10_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_10_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_10_io_otrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_10_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_10_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_11_clock; // @[CGRA.scala 333:21]
  wire  gibs_11_reset; // @[CGRA.scala 333:21]
  wire  gibs_11_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_11_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_11_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_ipinNW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_ipinNE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_ipinSE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_ipinSW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_otrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_11_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_12_clock; // @[CGRA.scala 333:21]
  wire  gibs_12_reset; // @[CGRA.scala 333:21]
  wire  gibs_12_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_12_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_12_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_ipinNW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_ipinNE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_ipinSE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_ipinSW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_otrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_12_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_13_clock; // @[CGRA.scala 333:21]
  wire  gibs_13_reset; // @[CGRA.scala 333:21]
  wire  gibs_13_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_13_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_13_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_ipinNW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_ipinNE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_ipinSE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_ipinSW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_otrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_13_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_14_clock; // @[CGRA.scala 333:21]
  wire  gibs_14_reset; // @[CGRA.scala 333:21]
  wire  gibs_14_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_14_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_14_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_14_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_14_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_14_io_ipinNW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_14_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_14_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_14_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_14_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_14_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_14_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_14_io_ipinSW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_14_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_14_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_14_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_14_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_14_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_14_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_14_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_15_clock; // @[CGRA.scala 333:21]
  wire  gibs_15_reset; // @[CGRA.scala 333:21]
  wire  gibs_15_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_15_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_15_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_15_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_15_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_15_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_15_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_15_io_ipinNE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_15_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_15_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_15_io_ipinSE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_15_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_15_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_15_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_15_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_15_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_15_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_15_io_otrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_15_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_15_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_16_clock; // @[CGRA.scala 333:21]
  wire  gibs_16_reset; // @[CGRA.scala 333:21]
  wire  gibs_16_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_16_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_16_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_ipinNW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_ipinNE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_ipinSE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_ipinSW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_otrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_16_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_17_clock; // @[CGRA.scala 333:21]
  wire  gibs_17_reset; // @[CGRA.scala 333:21]
  wire  gibs_17_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_17_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_17_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_ipinNW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_ipinNE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_ipinSE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_ipinSW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_otrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_17_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_18_clock; // @[CGRA.scala 333:21]
  wire  gibs_18_reset; // @[CGRA.scala 333:21]
  wire  gibs_18_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_18_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_18_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_ipinNW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_ipinNE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_ipinSE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_ipinSW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_otrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_18_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_19_clock; // @[CGRA.scala 333:21]
  wire  gibs_19_reset; // @[CGRA.scala 333:21]
  wire  gibs_19_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_19_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_19_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_19_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_19_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_19_io_ipinNW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_19_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_19_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_19_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_19_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_19_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_19_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_19_io_ipinSW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_19_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_19_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_19_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_19_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_19_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_19_io_itrackS_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_19_io_otrackS_0; // @[CGRA.scala 333:21]
  wire  gibs_20_clock; // @[CGRA.scala 333:21]
  wire  gibs_20_reset; // @[CGRA.scala 333:21]
  wire  gibs_20_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_20_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_20_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_20_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_20_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_20_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_20_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_20_io_ipinNE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_20_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_20_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_20_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_20_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_20_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_20_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_20_io_otrackE_0; // @[CGRA.scala 333:21]
  wire  gibs_21_clock; // @[CGRA.scala 333:21]
  wire  gibs_21_reset; // @[CGRA.scala 333:21]
  wire  gibs_21_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_21_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_21_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_21_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_21_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_21_io_ipinNW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_21_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_21_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_21_io_ipinNE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_21_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_21_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_21_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_21_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_21_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_21_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_21_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_21_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_21_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_21_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_21_io_otrackE_0; // @[CGRA.scala 333:21]
  wire  gibs_22_clock; // @[CGRA.scala 333:21]
  wire  gibs_22_reset; // @[CGRA.scala 333:21]
  wire  gibs_22_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_22_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_22_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_22_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_22_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_22_io_ipinNW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_22_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_22_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_22_io_ipinNE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_22_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_22_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_22_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_22_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_22_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_22_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_22_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_22_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_22_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_22_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_22_io_otrackE_0; // @[CGRA.scala 333:21]
  wire  gibs_23_clock; // @[CGRA.scala 333:21]
  wire  gibs_23_reset; // @[CGRA.scala 333:21]
  wire  gibs_23_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_23_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_23_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_23_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_23_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_23_io_ipinNW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_23_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_23_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_23_io_ipinNE_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_23_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_23_io_ipinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_23_io_opinSE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_23_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_23_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_23_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_23_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_23_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_23_io_otrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_23_io_itrackE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_23_io_otrackE_0; // @[CGRA.scala 333:21]
  wire  gibs_24_clock; // @[CGRA.scala 333:21]
  wire  gibs_24_reset; // @[CGRA.scala 333:21]
  wire  gibs_24_io_cfg_en; // @[CGRA.scala 333:21]
  wire [17:0] gibs_24_io_cfg_addr; // @[CGRA.scala 333:21]
  wire [31:0] gibs_24_io_cfg_data; // @[CGRA.scala 333:21]
  wire  gibs_24_io_en; // @[CGRA.scala 333:21]
  wire [31:0] gibs_24_io_ipinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_24_io_ipinNW_1; // @[CGRA.scala 333:21]
  wire [31:0] gibs_24_io_opinNW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_24_io_ipinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_24_io_opinNE_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_24_io_ipinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_24_io_opinSW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_24_io_itrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_24_io_otrackW_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_24_io_itrackN_0; // @[CGRA.scala 333:21]
  wire [31:0] gibs_24_io_otrackN_0; // @[CGRA.scala 333:21]
  wire  lsus_0_clock; // @[CGRA.scala 364:21]
  wire  lsus_0_reset; // @[CGRA.scala 364:21]
  wire  lsus_0_io_cfg_en; // @[CGRA.scala 364:21]
  wire [17:0] lsus_0_io_cfg_addr; // @[CGRA.scala 364:21]
  wire [31:0] lsus_0_io_cfg_data; // @[CGRA.scala 364:21]
  wire [6:0] lsus_0_io_hostInterface_read_addr; // @[CGRA.scala 364:21]
  wire  lsus_0_io_hostInterface_read_data_ready; // @[CGRA.scala 364:21]
  wire  lsus_0_io_hostInterface_read_data_valid; // @[CGRA.scala 364:21]
  wire [31:0] lsus_0_io_hostInterface_read_data_bits; // @[CGRA.scala 364:21]
  wire [6:0] lsus_0_io_hostInterface_write_addr; // @[CGRA.scala 364:21]
  wire  lsus_0_io_hostInterface_write_data_ready; // @[CGRA.scala 364:21]
  wire  lsus_0_io_hostInterface_write_data_valid; // @[CGRA.scala 364:21]
  wire [31:0] lsus_0_io_hostInterface_write_data_bits; // @[CGRA.scala 364:21]
  wire [2:0] lsus_0_io_hostInterface_cycle; // @[CGRA.scala 364:21]
  wire  lsus_0_io_en; // @[CGRA.scala 364:21]
  wire [31:0] lsus_0_io_in_0; // @[CGRA.scala 364:21]
  wire [31:0] lsus_0_io_in_1; // @[CGRA.scala 364:21]
  wire [31:0] lsus_0_io_out_0; // @[CGRA.scala 364:21]
  wire  lsus_1_clock; // @[CGRA.scala 364:21]
  wire  lsus_1_reset; // @[CGRA.scala 364:21]
  wire  lsus_1_io_cfg_en; // @[CGRA.scala 364:21]
  wire [17:0] lsus_1_io_cfg_addr; // @[CGRA.scala 364:21]
  wire [31:0] lsus_1_io_cfg_data; // @[CGRA.scala 364:21]
  wire [6:0] lsus_1_io_hostInterface_read_addr; // @[CGRA.scala 364:21]
  wire  lsus_1_io_hostInterface_read_data_ready; // @[CGRA.scala 364:21]
  wire  lsus_1_io_hostInterface_read_data_valid; // @[CGRA.scala 364:21]
  wire [31:0] lsus_1_io_hostInterface_read_data_bits; // @[CGRA.scala 364:21]
  wire [6:0] lsus_1_io_hostInterface_write_addr; // @[CGRA.scala 364:21]
  wire  lsus_1_io_hostInterface_write_data_ready; // @[CGRA.scala 364:21]
  wire  lsus_1_io_hostInterface_write_data_valid; // @[CGRA.scala 364:21]
  wire [31:0] lsus_1_io_hostInterface_write_data_bits; // @[CGRA.scala 364:21]
  wire [2:0] lsus_1_io_hostInterface_cycle; // @[CGRA.scala 364:21]
  wire  lsus_1_io_en; // @[CGRA.scala 364:21]
  wire [31:0] lsus_1_io_in_0; // @[CGRA.scala 364:21]
  wire [31:0] lsus_1_io_in_1; // @[CGRA.scala 364:21]
  wire [31:0] lsus_1_io_out_0; // @[CGRA.scala 364:21]
  wire  lsus_2_clock; // @[CGRA.scala 364:21]
  wire  lsus_2_reset; // @[CGRA.scala 364:21]
  wire  lsus_2_io_cfg_en; // @[CGRA.scala 364:21]
  wire [17:0] lsus_2_io_cfg_addr; // @[CGRA.scala 364:21]
  wire [31:0] lsus_2_io_cfg_data; // @[CGRA.scala 364:21]
  wire [6:0] lsus_2_io_hostInterface_read_addr; // @[CGRA.scala 364:21]
  wire  lsus_2_io_hostInterface_read_data_ready; // @[CGRA.scala 364:21]
  wire  lsus_2_io_hostInterface_read_data_valid; // @[CGRA.scala 364:21]
  wire [31:0] lsus_2_io_hostInterface_read_data_bits; // @[CGRA.scala 364:21]
  wire [6:0] lsus_2_io_hostInterface_write_addr; // @[CGRA.scala 364:21]
  wire  lsus_2_io_hostInterface_write_data_ready; // @[CGRA.scala 364:21]
  wire  lsus_2_io_hostInterface_write_data_valid; // @[CGRA.scala 364:21]
  wire [31:0] lsus_2_io_hostInterface_write_data_bits; // @[CGRA.scala 364:21]
  wire [2:0] lsus_2_io_hostInterface_cycle; // @[CGRA.scala 364:21]
  wire  lsus_2_io_en; // @[CGRA.scala 364:21]
  wire [31:0] lsus_2_io_in_0; // @[CGRA.scala 364:21]
  wire [31:0] lsus_2_io_in_1; // @[CGRA.scala 364:21]
  wire [31:0] lsus_2_io_out_0; // @[CGRA.scala 364:21]
  wire  lsus_3_clock; // @[CGRA.scala 364:21]
  wire  lsus_3_reset; // @[CGRA.scala 364:21]
  wire  lsus_3_io_cfg_en; // @[CGRA.scala 364:21]
  wire [17:0] lsus_3_io_cfg_addr; // @[CGRA.scala 364:21]
  wire [31:0] lsus_3_io_cfg_data; // @[CGRA.scala 364:21]
  wire [6:0] lsus_3_io_hostInterface_read_addr; // @[CGRA.scala 364:21]
  wire  lsus_3_io_hostInterface_read_data_ready; // @[CGRA.scala 364:21]
  wire  lsus_3_io_hostInterface_read_data_valid; // @[CGRA.scala 364:21]
  wire [31:0] lsus_3_io_hostInterface_read_data_bits; // @[CGRA.scala 364:21]
  wire [6:0] lsus_3_io_hostInterface_write_addr; // @[CGRA.scala 364:21]
  wire  lsus_3_io_hostInterface_write_data_ready; // @[CGRA.scala 364:21]
  wire  lsus_3_io_hostInterface_write_data_valid; // @[CGRA.scala 364:21]
  wire [31:0] lsus_3_io_hostInterface_write_data_bits; // @[CGRA.scala 364:21]
  wire [2:0] lsus_3_io_hostInterface_cycle; // @[CGRA.scala 364:21]
  wire  lsus_3_io_en; // @[CGRA.scala 364:21]
  wire [31:0] lsus_3_io_in_0; // @[CGRA.scala 364:21]
  wire [31:0] lsus_3_io_in_1; // @[CGRA.scala 364:21]
  wire [31:0] lsus_3_io_out_0; // @[CGRA.scala 364:21]
  wire  lsus_4_clock; // @[CGRA.scala 364:21]
  wire  lsus_4_reset; // @[CGRA.scala 364:21]
  wire  lsus_4_io_cfg_en; // @[CGRA.scala 364:21]
  wire [17:0] lsus_4_io_cfg_addr; // @[CGRA.scala 364:21]
  wire [31:0] lsus_4_io_cfg_data; // @[CGRA.scala 364:21]
  wire [6:0] lsus_4_io_hostInterface_read_addr; // @[CGRA.scala 364:21]
  wire  lsus_4_io_hostInterface_read_data_ready; // @[CGRA.scala 364:21]
  wire  lsus_4_io_hostInterface_read_data_valid; // @[CGRA.scala 364:21]
  wire [31:0] lsus_4_io_hostInterface_read_data_bits; // @[CGRA.scala 364:21]
  wire [6:0] lsus_4_io_hostInterface_write_addr; // @[CGRA.scala 364:21]
  wire  lsus_4_io_hostInterface_write_data_ready; // @[CGRA.scala 364:21]
  wire  lsus_4_io_hostInterface_write_data_valid; // @[CGRA.scala 364:21]
  wire [31:0] lsus_4_io_hostInterface_write_data_bits; // @[CGRA.scala 364:21]
  wire [2:0] lsus_4_io_hostInterface_cycle; // @[CGRA.scala 364:21]
  wire  lsus_4_io_en; // @[CGRA.scala 364:21]
  wire [31:0] lsus_4_io_in_0; // @[CGRA.scala 364:21]
  wire [31:0] lsus_4_io_in_1; // @[CGRA.scala 364:21]
  wire [31:0] lsus_4_io_out_0; // @[CGRA.scala 364:21]
  wire  lsus_5_clock; // @[CGRA.scala 364:21]
  wire  lsus_5_reset; // @[CGRA.scala 364:21]
  wire  lsus_5_io_cfg_en; // @[CGRA.scala 364:21]
  wire [17:0] lsus_5_io_cfg_addr; // @[CGRA.scala 364:21]
  wire [31:0] lsus_5_io_cfg_data; // @[CGRA.scala 364:21]
  wire [6:0] lsus_5_io_hostInterface_read_addr; // @[CGRA.scala 364:21]
  wire  lsus_5_io_hostInterface_read_data_ready; // @[CGRA.scala 364:21]
  wire  lsus_5_io_hostInterface_read_data_valid; // @[CGRA.scala 364:21]
  wire [31:0] lsus_5_io_hostInterface_read_data_bits; // @[CGRA.scala 364:21]
  wire [6:0] lsus_5_io_hostInterface_write_addr; // @[CGRA.scala 364:21]
  wire  lsus_5_io_hostInterface_write_data_ready; // @[CGRA.scala 364:21]
  wire  lsus_5_io_hostInterface_write_data_valid; // @[CGRA.scala 364:21]
  wire [31:0] lsus_5_io_hostInterface_write_data_bits; // @[CGRA.scala 364:21]
  wire [2:0] lsus_5_io_hostInterface_cycle; // @[CGRA.scala 364:21]
  wire  lsus_5_io_en; // @[CGRA.scala 364:21]
  wire [31:0] lsus_5_io_in_0; // @[CGRA.scala 364:21]
  wire [31:0] lsus_5_io_in_1; // @[CGRA.scala 364:21]
  wire [31:0] lsus_5_io_out_0; // @[CGRA.scala 364:21]
  wire  lsus_6_clock; // @[CGRA.scala 364:21]
  wire  lsus_6_reset; // @[CGRA.scala 364:21]
  wire  lsus_6_io_cfg_en; // @[CGRA.scala 364:21]
  wire [17:0] lsus_6_io_cfg_addr; // @[CGRA.scala 364:21]
  wire [31:0] lsus_6_io_cfg_data; // @[CGRA.scala 364:21]
  wire [6:0] lsus_6_io_hostInterface_read_addr; // @[CGRA.scala 364:21]
  wire  lsus_6_io_hostInterface_read_data_ready; // @[CGRA.scala 364:21]
  wire  lsus_6_io_hostInterface_read_data_valid; // @[CGRA.scala 364:21]
  wire [31:0] lsus_6_io_hostInterface_read_data_bits; // @[CGRA.scala 364:21]
  wire [6:0] lsus_6_io_hostInterface_write_addr; // @[CGRA.scala 364:21]
  wire  lsus_6_io_hostInterface_write_data_ready; // @[CGRA.scala 364:21]
  wire  lsus_6_io_hostInterface_write_data_valid; // @[CGRA.scala 364:21]
  wire [31:0] lsus_6_io_hostInterface_write_data_bits; // @[CGRA.scala 364:21]
  wire [2:0] lsus_6_io_hostInterface_cycle; // @[CGRA.scala 364:21]
  wire  lsus_6_io_en; // @[CGRA.scala 364:21]
  wire [31:0] lsus_6_io_in_0; // @[CGRA.scala 364:21]
  wire [31:0] lsus_6_io_in_1; // @[CGRA.scala 364:21]
  wire [31:0] lsus_6_io_out_0; // @[CGRA.scala 364:21]
  wire  lsus_7_clock; // @[CGRA.scala 364:21]
  wire  lsus_7_reset; // @[CGRA.scala 364:21]
  wire  lsus_7_io_cfg_en; // @[CGRA.scala 364:21]
  wire [17:0] lsus_7_io_cfg_addr; // @[CGRA.scala 364:21]
  wire [31:0] lsus_7_io_cfg_data; // @[CGRA.scala 364:21]
  wire [6:0] lsus_7_io_hostInterface_read_addr; // @[CGRA.scala 364:21]
  wire  lsus_7_io_hostInterface_read_data_ready; // @[CGRA.scala 364:21]
  wire  lsus_7_io_hostInterface_read_data_valid; // @[CGRA.scala 364:21]
  wire [31:0] lsus_7_io_hostInterface_read_data_bits; // @[CGRA.scala 364:21]
  wire [6:0] lsus_7_io_hostInterface_write_addr; // @[CGRA.scala 364:21]
  wire  lsus_7_io_hostInterface_write_data_ready; // @[CGRA.scala 364:21]
  wire  lsus_7_io_hostInterface_write_data_valid; // @[CGRA.scala 364:21]
  wire [31:0] lsus_7_io_hostInterface_write_data_bits; // @[CGRA.scala 364:21]
  wire [2:0] lsus_7_io_hostInterface_cycle; // @[CGRA.scala 364:21]
  wire  lsus_7_io_en; // @[CGRA.scala 364:21]
  wire [31:0] lsus_7_io_in_0; // @[CGRA.scala 364:21]
  wire [31:0] lsus_7_io_in_1; // @[CGRA.scala 364:21]
  wire [31:0] lsus_7_io_out_0; // @[CGRA.scala 364:21]
  reg [50:0] cfgRegs_0; // @[CGRA.scala 645:24]
  reg [50:0] cfgRegs_1; // @[CGRA.scala 645:24]
  reg [50:0] cfgRegs_2; // @[CGRA.scala 645:24]
  reg [50:0] cfgRegs_3; // @[CGRA.scala 645:24]
  reg [50:0] cfgRegs_4; // @[CGRA.scala 645:24]
  reg [50:0] cfgRegs_5; // @[CGRA.scala 645:24]
  reg [50:0] cfgRegs_6; // @[CGRA.scala 645:24]
  reg [50:0] cfgRegs_7; // @[CGRA.scala 645:24]
  reg [50:0] cfgRegs_8; // @[CGRA.scala 645:24]
  reg [50:0] cfgRegs_9; // @[CGRA.scala 645:24]
  reg [50:0] cfgRegs_10; // @[CGRA.scala 645:24]
  reg [50:0] cfgRegs_11; // @[CGRA.scala 645:24]
  wire [50:0] _T_2 = {io_cfg_en,io_cfg_addr,io_cfg_data}; // @[Cat.scala 29:58]
  IOB ibs_0 ( // @[CGRA.scala 189:20]
    .io_in_0(ibs_0_io_in_0),
    .io_out_0(ibs_0_io_out_0)
  );
  IOB ibs_1 ( // @[CGRA.scala 189:20]
    .io_in_0(ibs_1_io_in_0),
    .io_out_0(ibs_1_io_out_0)
  );
  IOB ibs_2 ( // @[CGRA.scala 189:20]
    .io_in_0(ibs_2_io_in_0),
    .io_out_0(ibs_2_io_out_0)
  );
  IOB ibs_3 ( // @[CGRA.scala 189:20]
    .io_in_0(ibs_3_io_in_0),
    .io_out_0(ibs_3_io_out_0)
  );
  IOB ibs_4 ( // @[CGRA.scala 189:20]
    .io_in_0(ibs_4_io_in_0),
    .io_out_0(ibs_4_io_out_0)
  );
  IOB ibs_5 ( // @[CGRA.scala 189:20]
    .io_in_0(ibs_5_io_in_0),
    .io_out_0(ibs_5_io_out_0)
  );
  IOB ibs_6 ( // @[CGRA.scala 189:20]
    .io_in_0(ibs_6_io_in_0),
    .io_out_0(ibs_6_io_out_0)
  );
  IOB ibs_7 ( // @[CGRA.scala 189:20]
    .io_in_0(ibs_7_io_in_0),
    .io_out_0(ibs_7_io_out_0)
  );
  IOB_8 obs_0 ( // @[CGRA.scala 217:20]
    .clock(obs_0_clock),
    .reset(obs_0_reset),
    .io_cfg_en(obs_0_io_cfg_en),
    .io_cfg_addr(obs_0_io_cfg_addr),
    .io_cfg_data(obs_0_io_cfg_data),
    .io_in_0(obs_0_io_in_0),
    .io_in_1(obs_0_io_in_1),
    .io_en(obs_0_io_en),
    .io_out_0(obs_0_io_out_0)
  );
  IOB_9 obs_1 ( // @[CGRA.scala 217:20]
    .clock(obs_1_clock),
    .reset(obs_1_reset),
    .io_cfg_en(obs_1_io_cfg_en),
    .io_cfg_addr(obs_1_io_cfg_addr),
    .io_cfg_data(obs_1_io_cfg_data),
    .io_in_0(obs_1_io_in_0),
    .io_in_1(obs_1_io_in_1),
    .io_en(obs_1_io_en),
    .io_out_0(obs_1_io_out_0)
  );
  IOB_10 obs_2 ( // @[CGRA.scala 217:20]
    .clock(obs_2_clock),
    .reset(obs_2_reset),
    .io_cfg_en(obs_2_io_cfg_en),
    .io_cfg_addr(obs_2_io_cfg_addr),
    .io_cfg_data(obs_2_io_cfg_data),
    .io_in_0(obs_2_io_in_0),
    .io_in_1(obs_2_io_in_1),
    .io_en(obs_2_io_en),
    .io_out_0(obs_2_io_out_0)
  );
  IOB_11 obs_3 ( // @[CGRA.scala 217:20]
    .clock(obs_3_clock),
    .reset(obs_3_reset),
    .io_cfg_en(obs_3_io_cfg_en),
    .io_cfg_addr(obs_3_io_cfg_addr),
    .io_cfg_data(obs_3_io_cfg_data),
    .io_in_0(obs_3_io_in_0),
    .io_in_1(obs_3_io_in_1),
    .io_en(obs_3_io_en),
    .io_out_0(obs_3_io_out_0)
  );
  IOB_12 obs_4 ( // @[CGRA.scala 217:20]
    .clock(obs_4_clock),
    .reset(obs_4_reset),
    .io_cfg_en(obs_4_io_cfg_en),
    .io_cfg_addr(obs_4_io_cfg_addr),
    .io_cfg_data(obs_4_io_cfg_data),
    .io_in_0(obs_4_io_in_0),
    .io_in_1(obs_4_io_in_1),
    .io_en(obs_4_io_en),
    .io_out_0(obs_4_io_out_0)
  );
  IOB_13 obs_5 ( // @[CGRA.scala 217:20]
    .clock(obs_5_clock),
    .reset(obs_5_reset),
    .io_cfg_en(obs_5_io_cfg_en),
    .io_cfg_addr(obs_5_io_cfg_addr),
    .io_cfg_data(obs_5_io_cfg_data),
    .io_in_0(obs_5_io_in_0),
    .io_in_1(obs_5_io_in_1),
    .io_en(obs_5_io_en),
    .io_out_0(obs_5_io_out_0)
  );
  IOB_14 obs_6 ( // @[CGRA.scala 217:20]
    .clock(obs_6_clock),
    .reset(obs_6_reset),
    .io_cfg_en(obs_6_io_cfg_en),
    .io_cfg_addr(obs_6_io_cfg_addr),
    .io_cfg_data(obs_6_io_cfg_data),
    .io_in_0(obs_6_io_in_0),
    .io_in_1(obs_6_io_in_1),
    .io_en(obs_6_io_en),
    .io_out_0(obs_6_io_out_0)
  );
  IOB_15 obs_7 ( // @[CGRA.scala 217:20]
    .clock(obs_7_clock),
    .reset(obs_7_reset),
    .io_cfg_en(obs_7_io_cfg_en),
    .io_cfg_addr(obs_7_io_cfg_addr),
    .io_cfg_data(obs_7_io_cfg_data),
    .io_in_0(obs_7_io_in_0),
    .io_in_1(obs_7_io_in_1),
    .io_en(obs_7_io_en),
    .io_out_0(obs_7_io_out_0)
  );
  GPE pes_0 ( // @[CGRA.scala 242:20]
    .clock(pes_0_clock),
    .reset(pes_0_reset),
    .io_cfg_en(pes_0_io_cfg_en),
    .io_cfg_addr(pes_0_io_cfg_addr),
    .io_cfg_data(pes_0_io_cfg_data),
    .io_en(pes_0_io_en),
    .io_in_0(pes_0_io_in_0),
    .io_in_1(pes_0_io_in_1),
    .io_in_2(pes_0_io_in_2),
    .io_in_3(pes_0_io_in_3),
    .io_in_4(pes_0_io_in_4),
    .io_in_5(pes_0_io_in_5),
    .io_in_6(pes_0_io_in_6),
    .io_in_7(pes_0_io_in_7),
    .io_out_0(pes_0_io_out_0)
  );
  GPE_1 pes_1 ( // @[CGRA.scala 242:20]
    .clock(pes_1_clock),
    .reset(pes_1_reset),
    .io_cfg_en(pes_1_io_cfg_en),
    .io_cfg_addr(pes_1_io_cfg_addr),
    .io_cfg_data(pes_1_io_cfg_data),
    .io_en(pes_1_io_en),
    .io_in_0(pes_1_io_in_0),
    .io_in_1(pes_1_io_in_1),
    .io_in_2(pes_1_io_in_2),
    .io_in_3(pes_1_io_in_3),
    .io_in_4(pes_1_io_in_4),
    .io_in_5(pes_1_io_in_5),
    .io_in_6(pes_1_io_in_6),
    .io_in_7(pes_1_io_in_7),
    .io_out_0(pes_1_io_out_0)
  );
  GPE_2 pes_2 ( // @[CGRA.scala 242:20]
    .clock(pes_2_clock),
    .reset(pes_2_reset),
    .io_cfg_en(pes_2_io_cfg_en),
    .io_cfg_addr(pes_2_io_cfg_addr),
    .io_cfg_data(pes_2_io_cfg_data),
    .io_en(pes_2_io_en),
    .io_in_0(pes_2_io_in_0),
    .io_in_1(pes_2_io_in_1),
    .io_in_2(pes_2_io_in_2),
    .io_in_3(pes_2_io_in_3),
    .io_in_4(pes_2_io_in_4),
    .io_in_5(pes_2_io_in_5),
    .io_in_6(pes_2_io_in_6),
    .io_in_7(pes_2_io_in_7),
    .io_out_0(pes_2_io_out_0)
  );
  GPE_3 pes_3 ( // @[CGRA.scala 242:20]
    .clock(pes_3_clock),
    .reset(pes_3_reset),
    .io_cfg_en(pes_3_io_cfg_en),
    .io_cfg_addr(pes_3_io_cfg_addr),
    .io_cfg_data(pes_3_io_cfg_data),
    .io_en(pes_3_io_en),
    .io_in_0(pes_3_io_in_0),
    .io_in_1(pes_3_io_in_1),
    .io_in_2(pes_3_io_in_2),
    .io_in_3(pes_3_io_in_3),
    .io_in_4(pes_3_io_in_4),
    .io_in_5(pes_3_io_in_5),
    .io_in_6(pes_3_io_in_6),
    .io_in_7(pes_3_io_in_7),
    .io_out_0(pes_3_io_out_0)
  );
  GPE_4 pes_4 ( // @[CGRA.scala 242:20]
    .clock(pes_4_clock),
    .reset(pes_4_reset),
    .io_cfg_en(pes_4_io_cfg_en),
    .io_cfg_addr(pes_4_io_cfg_addr),
    .io_cfg_data(pes_4_io_cfg_data),
    .io_en(pes_4_io_en),
    .io_in_0(pes_4_io_in_0),
    .io_in_1(pes_4_io_in_1),
    .io_in_2(pes_4_io_in_2),
    .io_in_3(pes_4_io_in_3),
    .io_in_4(pes_4_io_in_4),
    .io_in_5(pes_4_io_in_5),
    .io_in_6(pes_4_io_in_6),
    .io_in_7(pes_4_io_in_7),
    .io_out_0(pes_4_io_out_0)
  );
  GPE_5 pes_5 ( // @[CGRA.scala 242:20]
    .clock(pes_5_clock),
    .reset(pes_5_reset),
    .io_cfg_en(pes_5_io_cfg_en),
    .io_cfg_addr(pes_5_io_cfg_addr),
    .io_cfg_data(pes_5_io_cfg_data),
    .io_en(pes_5_io_en),
    .io_in_0(pes_5_io_in_0),
    .io_in_1(pes_5_io_in_1),
    .io_in_2(pes_5_io_in_2),
    .io_in_3(pes_5_io_in_3),
    .io_in_4(pes_5_io_in_4),
    .io_in_5(pes_5_io_in_5),
    .io_in_6(pes_5_io_in_6),
    .io_in_7(pes_5_io_in_7),
    .io_out_0(pes_5_io_out_0)
  );
  GPE_6 pes_6 ( // @[CGRA.scala 242:20]
    .clock(pes_6_clock),
    .reset(pes_6_reset),
    .io_cfg_en(pes_6_io_cfg_en),
    .io_cfg_addr(pes_6_io_cfg_addr),
    .io_cfg_data(pes_6_io_cfg_data),
    .io_en(pes_6_io_en),
    .io_in_0(pes_6_io_in_0),
    .io_in_1(pes_6_io_in_1),
    .io_in_2(pes_6_io_in_2),
    .io_in_3(pes_6_io_in_3),
    .io_in_4(pes_6_io_in_4),
    .io_in_5(pes_6_io_in_5),
    .io_in_6(pes_6_io_in_6),
    .io_in_7(pes_6_io_in_7),
    .io_out_0(pes_6_io_out_0)
  );
  GPE_7 pes_7 ( // @[CGRA.scala 242:20]
    .clock(pes_7_clock),
    .reset(pes_7_reset),
    .io_cfg_en(pes_7_io_cfg_en),
    .io_cfg_addr(pes_7_io_cfg_addr),
    .io_cfg_data(pes_7_io_cfg_data),
    .io_en(pes_7_io_en),
    .io_in_0(pes_7_io_in_0),
    .io_in_1(pes_7_io_in_1),
    .io_in_2(pes_7_io_in_2),
    .io_in_3(pes_7_io_in_3),
    .io_in_4(pes_7_io_in_4),
    .io_in_5(pes_7_io_in_5),
    .io_in_6(pes_7_io_in_6),
    .io_in_7(pes_7_io_in_7),
    .io_out_0(pes_7_io_out_0)
  );
  GPE_8 pes_8 ( // @[CGRA.scala 242:20]
    .clock(pes_8_clock),
    .reset(pes_8_reset),
    .io_cfg_en(pes_8_io_cfg_en),
    .io_cfg_addr(pes_8_io_cfg_addr),
    .io_cfg_data(pes_8_io_cfg_data),
    .io_en(pes_8_io_en),
    .io_in_0(pes_8_io_in_0),
    .io_in_1(pes_8_io_in_1),
    .io_in_2(pes_8_io_in_2),
    .io_in_3(pes_8_io_in_3),
    .io_in_4(pes_8_io_in_4),
    .io_in_5(pes_8_io_in_5),
    .io_in_6(pes_8_io_in_6),
    .io_in_7(pes_8_io_in_7),
    .io_out_0(pes_8_io_out_0)
  );
  GPE_9 pes_9 ( // @[CGRA.scala 242:20]
    .clock(pes_9_clock),
    .reset(pes_9_reset),
    .io_cfg_en(pes_9_io_cfg_en),
    .io_cfg_addr(pes_9_io_cfg_addr),
    .io_cfg_data(pes_9_io_cfg_data),
    .io_en(pes_9_io_en),
    .io_in_0(pes_9_io_in_0),
    .io_in_1(pes_9_io_in_1),
    .io_in_2(pes_9_io_in_2),
    .io_in_3(pes_9_io_in_3),
    .io_in_4(pes_9_io_in_4),
    .io_in_5(pes_9_io_in_5),
    .io_in_6(pes_9_io_in_6),
    .io_in_7(pes_9_io_in_7),
    .io_out_0(pes_9_io_out_0)
  );
  GPE_10 pes_10 ( // @[CGRA.scala 242:20]
    .clock(pes_10_clock),
    .reset(pes_10_reset),
    .io_cfg_en(pes_10_io_cfg_en),
    .io_cfg_addr(pes_10_io_cfg_addr),
    .io_cfg_data(pes_10_io_cfg_data),
    .io_en(pes_10_io_en),
    .io_in_0(pes_10_io_in_0),
    .io_in_1(pes_10_io_in_1),
    .io_in_2(pes_10_io_in_2),
    .io_in_3(pes_10_io_in_3),
    .io_in_4(pes_10_io_in_4),
    .io_in_5(pes_10_io_in_5),
    .io_in_6(pes_10_io_in_6),
    .io_in_7(pes_10_io_in_7),
    .io_out_0(pes_10_io_out_0)
  );
  GPE_11 pes_11 ( // @[CGRA.scala 242:20]
    .clock(pes_11_clock),
    .reset(pes_11_reset),
    .io_cfg_en(pes_11_io_cfg_en),
    .io_cfg_addr(pes_11_io_cfg_addr),
    .io_cfg_data(pes_11_io_cfg_data),
    .io_en(pes_11_io_en),
    .io_in_0(pes_11_io_in_0),
    .io_in_1(pes_11_io_in_1),
    .io_in_2(pes_11_io_in_2),
    .io_in_3(pes_11_io_in_3),
    .io_in_4(pes_11_io_in_4),
    .io_in_5(pes_11_io_in_5),
    .io_in_6(pes_11_io_in_6),
    .io_in_7(pes_11_io_in_7),
    .io_out_0(pes_11_io_out_0)
  );
  GPE_12 pes_12 ( // @[CGRA.scala 242:20]
    .clock(pes_12_clock),
    .reset(pes_12_reset),
    .io_cfg_en(pes_12_io_cfg_en),
    .io_cfg_addr(pes_12_io_cfg_addr),
    .io_cfg_data(pes_12_io_cfg_data),
    .io_en(pes_12_io_en),
    .io_in_0(pes_12_io_in_0),
    .io_in_1(pes_12_io_in_1),
    .io_in_2(pes_12_io_in_2),
    .io_in_3(pes_12_io_in_3),
    .io_in_4(pes_12_io_in_4),
    .io_in_5(pes_12_io_in_5),
    .io_in_6(pes_12_io_in_6),
    .io_in_7(pes_12_io_in_7),
    .io_out_0(pes_12_io_out_0)
  );
  GPE_13 pes_13 ( // @[CGRA.scala 242:20]
    .clock(pes_13_clock),
    .reset(pes_13_reset),
    .io_cfg_en(pes_13_io_cfg_en),
    .io_cfg_addr(pes_13_io_cfg_addr),
    .io_cfg_data(pes_13_io_cfg_data),
    .io_en(pes_13_io_en),
    .io_in_0(pes_13_io_in_0),
    .io_in_1(pes_13_io_in_1),
    .io_in_2(pes_13_io_in_2),
    .io_in_3(pes_13_io_in_3),
    .io_in_4(pes_13_io_in_4),
    .io_in_5(pes_13_io_in_5),
    .io_in_6(pes_13_io_in_6),
    .io_in_7(pes_13_io_in_7),
    .io_out_0(pes_13_io_out_0)
  );
  GPE_14 pes_14 ( // @[CGRA.scala 242:20]
    .clock(pes_14_clock),
    .reset(pes_14_reset),
    .io_cfg_en(pes_14_io_cfg_en),
    .io_cfg_addr(pes_14_io_cfg_addr),
    .io_cfg_data(pes_14_io_cfg_data),
    .io_en(pes_14_io_en),
    .io_in_0(pes_14_io_in_0),
    .io_in_1(pes_14_io_in_1),
    .io_in_2(pes_14_io_in_2),
    .io_in_3(pes_14_io_in_3),
    .io_in_4(pes_14_io_in_4),
    .io_in_5(pes_14_io_in_5),
    .io_in_6(pes_14_io_in_6),
    .io_in_7(pes_14_io_in_7),
    .io_out_0(pes_14_io_out_0)
  );
  GPE_15 pes_15 ( // @[CGRA.scala 242:20]
    .clock(pes_15_clock),
    .reset(pes_15_reset),
    .io_cfg_en(pes_15_io_cfg_en),
    .io_cfg_addr(pes_15_io_cfg_addr),
    .io_cfg_data(pes_15_io_cfg_data),
    .io_en(pes_15_io_en),
    .io_in_0(pes_15_io_in_0),
    .io_in_1(pes_15_io_in_1),
    .io_in_2(pes_15_io_in_2),
    .io_in_3(pes_15_io_in_3),
    .io_in_4(pes_15_io_in_4),
    .io_in_5(pes_15_io_in_5),
    .io_in_6(pes_15_io_in_6),
    .io_in_7(pes_15_io_in_7),
    .io_out_0(pes_15_io_out_0)
  );
  GIB gibs_0 ( // @[CGRA.scala 333:21]
    .clock(gibs_0_clock),
    .reset(gibs_0_reset),
    .io_cfg_en(gibs_0_io_cfg_en),
    .io_cfg_addr(gibs_0_io_cfg_addr),
    .io_cfg_data(gibs_0_io_cfg_data),
    .io_en(gibs_0_io_en),
    .io_ipinNE_0(gibs_0_io_ipinNE_0),
    .io_opinNE_0(gibs_0_io_opinNE_0),
    .io_ipinSE_0(gibs_0_io_ipinSE_0),
    .io_ipinSE_1(gibs_0_io_ipinSE_1),
    .io_opinSE_0(gibs_0_io_opinSE_0),
    .io_ipinSW_0(gibs_0_io_ipinSW_0),
    .io_opinSW_0(gibs_0_io_opinSW_0),
    .io_itrackE_0(gibs_0_io_itrackE_0),
    .io_otrackE_0(gibs_0_io_otrackE_0),
    .io_itrackS_0(gibs_0_io_itrackS_0),
    .io_otrackS_0(gibs_0_io_otrackS_0)
  );
  GIB_1 gibs_1 ( // @[CGRA.scala 333:21]
    .clock(gibs_1_clock),
    .reset(gibs_1_reset),
    .io_cfg_en(gibs_1_io_cfg_en),
    .io_cfg_addr(gibs_1_io_cfg_addr),
    .io_cfg_data(gibs_1_io_cfg_data),
    .io_en(gibs_1_io_en),
    .io_ipinNW_0(gibs_1_io_ipinNW_0),
    .io_opinNW_0(gibs_1_io_opinNW_0),
    .io_ipinNE_0(gibs_1_io_ipinNE_0),
    .io_opinNE_0(gibs_1_io_opinNE_0),
    .io_ipinSE_0(gibs_1_io_ipinSE_0),
    .io_ipinSE_1(gibs_1_io_ipinSE_1),
    .io_opinSE_0(gibs_1_io_opinSE_0),
    .io_ipinSW_0(gibs_1_io_ipinSW_0),
    .io_ipinSW_1(gibs_1_io_ipinSW_1),
    .io_opinSW_0(gibs_1_io_opinSW_0),
    .io_itrackW_0(gibs_1_io_itrackW_0),
    .io_otrackW_0(gibs_1_io_otrackW_0),
    .io_itrackE_0(gibs_1_io_itrackE_0),
    .io_otrackE_0(gibs_1_io_otrackE_0),
    .io_itrackS_0(gibs_1_io_itrackS_0),
    .io_otrackS_0(gibs_1_io_otrackS_0)
  );
  GIB_2 gibs_2 ( // @[CGRA.scala 333:21]
    .clock(gibs_2_clock),
    .reset(gibs_2_reset),
    .io_cfg_en(gibs_2_io_cfg_en),
    .io_cfg_addr(gibs_2_io_cfg_addr),
    .io_cfg_data(gibs_2_io_cfg_data),
    .io_en(gibs_2_io_en),
    .io_ipinNW_0(gibs_2_io_ipinNW_0),
    .io_opinNW_0(gibs_2_io_opinNW_0),
    .io_ipinNE_0(gibs_2_io_ipinNE_0),
    .io_opinNE_0(gibs_2_io_opinNE_0),
    .io_ipinSE_0(gibs_2_io_ipinSE_0),
    .io_ipinSE_1(gibs_2_io_ipinSE_1),
    .io_opinSE_0(gibs_2_io_opinSE_0),
    .io_ipinSW_0(gibs_2_io_ipinSW_0),
    .io_ipinSW_1(gibs_2_io_ipinSW_1),
    .io_opinSW_0(gibs_2_io_opinSW_0),
    .io_itrackW_0(gibs_2_io_itrackW_0),
    .io_otrackW_0(gibs_2_io_otrackW_0),
    .io_itrackE_0(gibs_2_io_itrackE_0),
    .io_otrackE_0(gibs_2_io_otrackE_0),
    .io_itrackS_0(gibs_2_io_itrackS_0),
    .io_otrackS_0(gibs_2_io_otrackS_0)
  );
  GIB_3 gibs_3 ( // @[CGRA.scala 333:21]
    .clock(gibs_3_clock),
    .reset(gibs_3_reset),
    .io_cfg_en(gibs_3_io_cfg_en),
    .io_cfg_addr(gibs_3_io_cfg_addr),
    .io_cfg_data(gibs_3_io_cfg_data),
    .io_en(gibs_3_io_en),
    .io_ipinNW_0(gibs_3_io_ipinNW_0),
    .io_opinNW_0(gibs_3_io_opinNW_0),
    .io_ipinNE_0(gibs_3_io_ipinNE_0),
    .io_opinNE_0(gibs_3_io_opinNE_0),
    .io_ipinSE_0(gibs_3_io_ipinSE_0),
    .io_ipinSE_1(gibs_3_io_ipinSE_1),
    .io_opinSE_0(gibs_3_io_opinSE_0),
    .io_ipinSW_0(gibs_3_io_ipinSW_0),
    .io_ipinSW_1(gibs_3_io_ipinSW_1),
    .io_opinSW_0(gibs_3_io_opinSW_0),
    .io_itrackW_0(gibs_3_io_itrackW_0),
    .io_otrackW_0(gibs_3_io_otrackW_0),
    .io_itrackE_0(gibs_3_io_itrackE_0),
    .io_otrackE_0(gibs_3_io_otrackE_0),
    .io_itrackS_0(gibs_3_io_itrackS_0),
    .io_otrackS_0(gibs_3_io_otrackS_0)
  );
  GIB_4 gibs_4 ( // @[CGRA.scala 333:21]
    .clock(gibs_4_clock),
    .reset(gibs_4_reset),
    .io_cfg_en(gibs_4_io_cfg_en),
    .io_cfg_addr(gibs_4_io_cfg_addr),
    .io_cfg_data(gibs_4_io_cfg_data),
    .io_en(gibs_4_io_en),
    .io_ipinNW_0(gibs_4_io_ipinNW_0),
    .io_opinNW_0(gibs_4_io_opinNW_0),
    .io_ipinSE_0(gibs_4_io_ipinSE_0),
    .io_opinSE_0(gibs_4_io_opinSE_0),
    .io_ipinSW_0(gibs_4_io_ipinSW_0),
    .io_ipinSW_1(gibs_4_io_ipinSW_1),
    .io_opinSW_0(gibs_4_io_opinSW_0),
    .io_itrackW_0(gibs_4_io_itrackW_0),
    .io_otrackW_0(gibs_4_io_otrackW_0),
    .io_itrackS_0(gibs_4_io_itrackS_0),
    .io_otrackS_0(gibs_4_io_otrackS_0)
  );
  GIB_5 gibs_5 ( // @[CGRA.scala 333:21]
    .clock(gibs_5_clock),
    .reset(gibs_5_reset),
    .io_cfg_en(gibs_5_io_cfg_en),
    .io_cfg_addr(gibs_5_io_cfg_addr),
    .io_cfg_data(gibs_5_io_cfg_data),
    .io_en(gibs_5_io_en),
    .io_ipinNW_0(gibs_5_io_ipinNW_0),
    .io_opinNW_0(gibs_5_io_opinNW_0),
    .io_ipinNE_0(gibs_5_io_ipinNE_0),
    .io_ipinNE_1(gibs_5_io_ipinNE_1),
    .io_opinNE_0(gibs_5_io_opinNE_0),
    .io_ipinSE_0(gibs_5_io_ipinSE_0),
    .io_ipinSE_1(gibs_5_io_ipinSE_1),
    .io_opinSE_0(gibs_5_io_opinSE_0),
    .io_ipinSW_0(gibs_5_io_ipinSW_0),
    .io_opinSW_0(gibs_5_io_opinSW_0),
    .io_itrackN_0(gibs_5_io_itrackN_0),
    .io_otrackN_0(gibs_5_io_otrackN_0),
    .io_itrackE_0(gibs_5_io_itrackE_0),
    .io_otrackE_0(gibs_5_io_otrackE_0),
    .io_itrackS_0(gibs_5_io_itrackS_0),
    .io_otrackS_0(gibs_5_io_otrackS_0)
  );
  GIB_6 gibs_6 ( // @[CGRA.scala 333:21]
    .clock(gibs_6_clock),
    .reset(gibs_6_reset),
    .io_cfg_en(gibs_6_io_cfg_en),
    .io_cfg_addr(gibs_6_io_cfg_addr),
    .io_cfg_data(gibs_6_io_cfg_data),
    .io_en(gibs_6_io_en),
    .io_ipinNW_0(gibs_6_io_ipinNW_0),
    .io_ipinNW_1(gibs_6_io_ipinNW_1),
    .io_opinNW_0(gibs_6_io_opinNW_0),
    .io_ipinNE_0(gibs_6_io_ipinNE_0),
    .io_ipinNE_1(gibs_6_io_ipinNE_1),
    .io_opinNE_0(gibs_6_io_opinNE_0),
    .io_ipinSE_0(gibs_6_io_ipinSE_0),
    .io_ipinSE_1(gibs_6_io_ipinSE_1),
    .io_opinSE_0(gibs_6_io_opinSE_0),
    .io_ipinSW_0(gibs_6_io_ipinSW_0),
    .io_ipinSW_1(gibs_6_io_ipinSW_1),
    .io_opinSW_0(gibs_6_io_opinSW_0),
    .io_itrackW_0(gibs_6_io_itrackW_0),
    .io_otrackW_0(gibs_6_io_otrackW_0),
    .io_itrackN_0(gibs_6_io_itrackN_0),
    .io_otrackN_0(gibs_6_io_otrackN_0),
    .io_itrackE_0(gibs_6_io_itrackE_0),
    .io_otrackE_0(gibs_6_io_otrackE_0),
    .io_itrackS_0(gibs_6_io_itrackS_0),
    .io_otrackS_0(gibs_6_io_otrackS_0)
  );
  GIB_7 gibs_7 ( // @[CGRA.scala 333:21]
    .clock(gibs_7_clock),
    .reset(gibs_7_reset),
    .io_cfg_en(gibs_7_io_cfg_en),
    .io_cfg_addr(gibs_7_io_cfg_addr),
    .io_cfg_data(gibs_7_io_cfg_data),
    .io_en(gibs_7_io_en),
    .io_ipinNW_0(gibs_7_io_ipinNW_0),
    .io_ipinNW_1(gibs_7_io_ipinNW_1),
    .io_opinNW_0(gibs_7_io_opinNW_0),
    .io_ipinNE_0(gibs_7_io_ipinNE_0),
    .io_ipinNE_1(gibs_7_io_ipinNE_1),
    .io_opinNE_0(gibs_7_io_opinNE_0),
    .io_ipinSE_0(gibs_7_io_ipinSE_0),
    .io_ipinSE_1(gibs_7_io_ipinSE_1),
    .io_opinSE_0(gibs_7_io_opinSE_0),
    .io_ipinSW_0(gibs_7_io_ipinSW_0),
    .io_ipinSW_1(gibs_7_io_ipinSW_1),
    .io_opinSW_0(gibs_7_io_opinSW_0),
    .io_itrackW_0(gibs_7_io_itrackW_0),
    .io_otrackW_0(gibs_7_io_otrackW_0),
    .io_itrackN_0(gibs_7_io_itrackN_0),
    .io_otrackN_0(gibs_7_io_otrackN_0),
    .io_itrackE_0(gibs_7_io_itrackE_0),
    .io_otrackE_0(gibs_7_io_otrackE_0),
    .io_itrackS_0(gibs_7_io_itrackS_0),
    .io_otrackS_0(gibs_7_io_otrackS_0)
  );
  GIB_8 gibs_8 ( // @[CGRA.scala 333:21]
    .clock(gibs_8_clock),
    .reset(gibs_8_reset),
    .io_cfg_en(gibs_8_io_cfg_en),
    .io_cfg_addr(gibs_8_io_cfg_addr),
    .io_cfg_data(gibs_8_io_cfg_data),
    .io_en(gibs_8_io_en),
    .io_ipinNW_0(gibs_8_io_ipinNW_0),
    .io_ipinNW_1(gibs_8_io_ipinNW_1),
    .io_opinNW_0(gibs_8_io_opinNW_0),
    .io_ipinNE_0(gibs_8_io_ipinNE_0),
    .io_ipinNE_1(gibs_8_io_ipinNE_1),
    .io_opinNE_0(gibs_8_io_opinNE_0),
    .io_ipinSE_0(gibs_8_io_ipinSE_0),
    .io_ipinSE_1(gibs_8_io_ipinSE_1),
    .io_opinSE_0(gibs_8_io_opinSE_0),
    .io_ipinSW_0(gibs_8_io_ipinSW_0),
    .io_ipinSW_1(gibs_8_io_ipinSW_1),
    .io_opinSW_0(gibs_8_io_opinSW_0),
    .io_itrackW_0(gibs_8_io_itrackW_0),
    .io_otrackW_0(gibs_8_io_otrackW_0),
    .io_itrackN_0(gibs_8_io_itrackN_0),
    .io_otrackN_0(gibs_8_io_otrackN_0),
    .io_itrackE_0(gibs_8_io_itrackE_0),
    .io_otrackE_0(gibs_8_io_otrackE_0),
    .io_itrackS_0(gibs_8_io_itrackS_0),
    .io_otrackS_0(gibs_8_io_otrackS_0)
  );
  GIB_9 gibs_9 ( // @[CGRA.scala 333:21]
    .clock(gibs_9_clock),
    .reset(gibs_9_reset),
    .io_cfg_en(gibs_9_io_cfg_en),
    .io_cfg_addr(gibs_9_io_cfg_addr),
    .io_cfg_data(gibs_9_io_cfg_data),
    .io_en(gibs_9_io_en),
    .io_ipinNW_0(gibs_9_io_ipinNW_0),
    .io_ipinNW_1(gibs_9_io_ipinNW_1),
    .io_opinNW_0(gibs_9_io_opinNW_0),
    .io_ipinNE_0(gibs_9_io_ipinNE_0),
    .io_opinNE_0(gibs_9_io_opinNE_0),
    .io_ipinSE_0(gibs_9_io_ipinSE_0),
    .io_opinSE_0(gibs_9_io_opinSE_0),
    .io_ipinSW_0(gibs_9_io_ipinSW_0),
    .io_ipinSW_1(gibs_9_io_ipinSW_1),
    .io_opinSW_0(gibs_9_io_opinSW_0),
    .io_itrackW_0(gibs_9_io_itrackW_0),
    .io_otrackW_0(gibs_9_io_otrackW_0),
    .io_itrackN_0(gibs_9_io_itrackN_0),
    .io_otrackN_0(gibs_9_io_otrackN_0),
    .io_itrackS_0(gibs_9_io_itrackS_0),
    .io_otrackS_0(gibs_9_io_otrackS_0)
  );
  GIB_10 gibs_10 ( // @[CGRA.scala 333:21]
    .clock(gibs_10_clock),
    .reset(gibs_10_reset),
    .io_cfg_en(gibs_10_io_cfg_en),
    .io_cfg_addr(gibs_10_io_cfg_addr),
    .io_cfg_data(gibs_10_io_cfg_data),
    .io_en(gibs_10_io_en),
    .io_ipinNW_0(gibs_10_io_ipinNW_0),
    .io_opinNW_0(gibs_10_io_opinNW_0),
    .io_ipinNE_0(gibs_10_io_ipinNE_0),
    .io_ipinNE_1(gibs_10_io_ipinNE_1),
    .io_opinNE_0(gibs_10_io_opinNE_0),
    .io_ipinSE_0(gibs_10_io_ipinSE_0),
    .io_ipinSE_1(gibs_10_io_ipinSE_1),
    .io_opinSE_0(gibs_10_io_opinSE_0),
    .io_ipinSW_0(gibs_10_io_ipinSW_0),
    .io_opinSW_0(gibs_10_io_opinSW_0),
    .io_itrackN_0(gibs_10_io_itrackN_0),
    .io_otrackN_0(gibs_10_io_otrackN_0),
    .io_itrackE_0(gibs_10_io_itrackE_0),
    .io_otrackE_0(gibs_10_io_otrackE_0),
    .io_itrackS_0(gibs_10_io_itrackS_0),
    .io_otrackS_0(gibs_10_io_otrackS_0)
  );
  GIB_11 gibs_11 ( // @[CGRA.scala 333:21]
    .clock(gibs_11_clock),
    .reset(gibs_11_reset),
    .io_cfg_en(gibs_11_io_cfg_en),
    .io_cfg_addr(gibs_11_io_cfg_addr),
    .io_cfg_data(gibs_11_io_cfg_data),
    .io_en(gibs_11_io_en),
    .io_ipinNW_0(gibs_11_io_ipinNW_0),
    .io_ipinNW_1(gibs_11_io_ipinNW_1),
    .io_opinNW_0(gibs_11_io_opinNW_0),
    .io_ipinNE_0(gibs_11_io_ipinNE_0),
    .io_ipinNE_1(gibs_11_io_ipinNE_1),
    .io_opinNE_0(gibs_11_io_opinNE_0),
    .io_ipinSE_0(gibs_11_io_ipinSE_0),
    .io_ipinSE_1(gibs_11_io_ipinSE_1),
    .io_opinSE_0(gibs_11_io_opinSE_0),
    .io_ipinSW_0(gibs_11_io_ipinSW_0),
    .io_ipinSW_1(gibs_11_io_ipinSW_1),
    .io_opinSW_0(gibs_11_io_opinSW_0),
    .io_itrackW_0(gibs_11_io_itrackW_0),
    .io_otrackW_0(gibs_11_io_otrackW_0),
    .io_itrackN_0(gibs_11_io_itrackN_0),
    .io_otrackN_0(gibs_11_io_otrackN_0),
    .io_itrackE_0(gibs_11_io_itrackE_0),
    .io_otrackE_0(gibs_11_io_otrackE_0),
    .io_itrackS_0(gibs_11_io_itrackS_0),
    .io_otrackS_0(gibs_11_io_otrackS_0)
  );
  GIB_12 gibs_12 ( // @[CGRA.scala 333:21]
    .clock(gibs_12_clock),
    .reset(gibs_12_reset),
    .io_cfg_en(gibs_12_io_cfg_en),
    .io_cfg_addr(gibs_12_io_cfg_addr),
    .io_cfg_data(gibs_12_io_cfg_data),
    .io_en(gibs_12_io_en),
    .io_ipinNW_0(gibs_12_io_ipinNW_0),
    .io_ipinNW_1(gibs_12_io_ipinNW_1),
    .io_opinNW_0(gibs_12_io_opinNW_0),
    .io_ipinNE_0(gibs_12_io_ipinNE_0),
    .io_ipinNE_1(gibs_12_io_ipinNE_1),
    .io_opinNE_0(gibs_12_io_opinNE_0),
    .io_ipinSE_0(gibs_12_io_ipinSE_0),
    .io_ipinSE_1(gibs_12_io_ipinSE_1),
    .io_opinSE_0(gibs_12_io_opinSE_0),
    .io_ipinSW_0(gibs_12_io_ipinSW_0),
    .io_ipinSW_1(gibs_12_io_ipinSW_1),
    .io_opinSW_0(gibs_12_io_opinSW_0),
    .io_itrackW_0(gibs_12_io_itrackW_0),
    .io_otrackW_0(gibs_12_io_otrackW_0),
    .io_itrackN_0(gibs_12_io_itrackN_0),
    .io_otrackN_0(gibs_12_io_otrackN_0),
    .io_itrackE_0(gibs_12_io_itrackE_0),
    .io_otrackE_0(gibs_12_io_otrackE_0),
    .io_itrackS_0(gibs_12_io_itrackS_0),
    .io_otrackS_0(gibs_12_io_otrackS_0)
  );
  GIB_13 gibs_13 ( // @[CGRA.scala 333:21]
    .clock(gibs_13_clock),
    .reset(gibs_13_reset),
    .io_cfg_en(gibs_13_io_cfg_en),
    .io_cfg_addr(gibs_13_io_cfg_addr),
    .io_cfg_data(gibs_13_io_cfg_data),
    .io_en(gibs_13_io_en),
    .io_ipinNW_0(gibs_13_io_ipinNW_0),
    .io_ipinNW_1(gibs_13_io_ipinNW_1),
    .io_opinNW_0(gibs_13_io_opinNW_0),
    .io_ipinNE_0(gibs_13_io_ipinNE_0),
    .io_ipinNE_1(gibs_13_io_ipinNE_1),
    .io_opinNE_0(gibs_13_io_opinNE_0),
    .io_ipinSE_0(gibs_13_io_ipinSE_0),
    .io_ipinSE_1(gibs_13_io_ipinSE_1),
    .io_opinSE_0(gibs_13_io_opinSE_0),
    .io_ipinSW_0(gibs_13_io_ipinSW_0),
    .io_ipinSW_1(gibs_13_io_ipinSW_1),
    .io_opinSW_0(gibs_13_io_opinSW_0),
    .io_itrackW_0(gibs_13_io_itrackW_0),
    .io_otrackW_0(gibs_13_io_otrackW_0),
    .io_itrackN_0(gibs_13_io_itrackN_0),
    .io_otrackN_0(gibs_13_io_otrackN_0),
    .io_itrackE_0(gibs_13_io_itrackE_0),
    .io_otrackE_0(gibs_13_io_otrackE_0),
    .io_itrackS_0(gibs_13_io_itrackS_0),
    .io_otrackS_0(gibs_13_io_otrackS_0)
  );
  GIB_14 gibs_14 ( // @[CGRA.scala 333:21]
    .clock(gibs_14_clock),
    .reset(gibs_14_reset),
    .io_cfg_en(gibs_14_io_cfg_en),
    .io_cfg_addr(gibs_14_io_cfg_addr),
    .io_cfg_data(gibs_14_io_cfg_data),
    .io_en(gibs_14_io_en),
    .io_ipinNW_0(gibs_14_io_ipinNW_0),
    .io_ipinNW_1(gibs_14_io_ipinNW_1),
    .io_opinNW_0(gibs_14_io_opinNW_0),
    .io_ipinNE_0(gibs_14_io_ipinNE_0),
    .io_opinNE_0(gibs_14_io_opinNE_0),
    .io_ipinSE_0(gibs_14_io_ipinSE_0),
    .io_opinSE_0(gibs_14_io_opinSE_0),
    .io_ipinSW_0(gibs_14_io_ipinSW_0),
    .io_ipinSW_1(gibs_14_io_ipinSW_1),
    .io_opinSW_0(gibs_14_io_opinSW_0),
    .io_itrackW_0(gibs_14_io_itrackW_0),
    .io_otrackW_0(gibs_14_io_otrackW_0),
    .io_itrackN_0(gibs_14_io_itrackN_0),
    .io_otrackN_0(gibs_14_io_otrackN_0),
    .io_itrackS_0(gibs_14_io_itrackS_0),
    .io_otrackS_0(gibs_14_io_otrackS_0)
  );
  GIB_15 gibs_15 ( // @[CGRA.scala 333:21]
    .clock(gibs_15_clock),
    .reset(gibs_15_reset),
    .io_cfg_en(gibs_15_io_cfg_en),
    .io_cfg_addr(gibs_15_io_cfg_addr),
    .io_cfg_data(gibs_15_io_cfg_data),
    .io_en(gibs_15_io_en),
    .io_ipinNW_0(gibs_15_io_ipinNW_0),
    .io_opinNW_0(gibs_15_io_opinNW_0),
    .io_ipinNE_0(gibs_15_io_ipinNE_0),
    .io_ipinNE_1(gibs_15_io_ipinNE_1),
    .io_opinNE_0(gibs_15_io_opinNE_0),
    .io_ipinSE_0(gibs_15_io_ipinSE_0),
    .io_ipinSE_1(gibs_15_io_ipinSE_1),
    .io_opinSE_0(gibs_15_io_opinSE_0),
    .io_ipinSW_0(gibs_15_io_ipinSW_0),
    .io_opinSW_0(gibs_15_io_opinSW_0),
    .io_itrackN_0(gibs_15_io_itrackN_0),
    .io_otrackN_0(gibs_15_io_otrackN_0),
    .io_itrackE_0(gibs_15_io_itrackE_0),
    .io_otrackE_0(gibs_15_io_otrackE_0),
    .io_itrackS_0(gibs_15_io_itrackS_0),
    .io_otrackS_0(gibs_15_io_otrackS_0)
  );
  GIB_16 gibs_16 ( // @[CGRA.scala 333:21]
    .clock(gibs_16_clock),
    .reset(gibs_16_reset),
    .io_cfg_en(gibs_16_io_cfg_en),
    .io_cfg_addr(gibs_16_io_cfg_addr),
    .io_cfg_data(gibs_16_io_cfg_data),
    .io_en(gibs_16_io_en),
    .io_ipinNW_0(gibs_16_io_ipinNW_0),
    .io_ipinNW_1(gibs_16_io_ipinNW_1),
    .io_opinNW_0(gibs_16_io_opinNW_0),
    .io_ipinNE_0(gibs_16_io_ipinNE_0),
    .io_ipinNE_1(gibs_16_io_ipinNE_1),
    .io_opinNE_0(gibs_16_io_opinNE_0),
    .io_ipinSE_0(gibs_16_io_ipinSE_0),
    .io_ipinSE_1(gibs_16_io_ipinSE_1),
    .io_opinSE_0(gibs_16_io_opinSE_0),
    .io_ipinSW_0(gibs_16_io_ipinSW_0),
    .io_ipinSW_1(gibs_16_io_ipinSW_1),
    .io_opinSW_0(gibs_16_io_opinSW_0),
    .io_itrackW_0(gibs_16_io_itrackW_0),
    .io_otrackW_0(gibs_16_io_otrackW_0),
    .io_itrackN_0(gibs_16_io_itrackN_0),
    .io_otrackN_0(gibs_16_io_otrackN_0),
    .io_itrackE_0(gibs_16_io_itrackE_0),
    .io_otrackE_0(gibs_16_io_otrackE_0),
    .io_itrackS_0(gibs_16_io_itrackS_0),
    .io_otrackS_0(gibs_16_io_otrackS_0)
  );
  GIB_17 gibs_17 ( // @[CGRA.scala 333:21]
    .clock(gibs_17_clock),
    .reset(gibs_17_reset),
    .io_cfg_en(gibs_17_io_cfg_en),
    .io_cfg_addr(gibs_17_io_cfg_addr),
    .io_cfg_data(gibs_17_io_cfg_data),
    .io_en(gibs_17_io_en),
    .io_ipinNW_0(gibs_17_io_ipinNW_0),
    .io_ipinNW_1(gibs_17_io_ipinNW_1),
    .io_opinNW_0(gibs_17_io_opinNW_0),
    .io_ipinNE_0(gibs_17_io_ipinNE_0),
    .io_ipinNE_1(gibs_17_io_ipinNE_1),
    .io_opinNE_0(gibs_17_io_opinNE_0),
    .io_ipinSE_0(gibs_17_io_ipinSE_0),
    .io_ipinSE_1(gibs_17_io_ipinSE_1),
    .io_opinSE_0(gibs_17_io_opinSE_0),
    .io_ipinSW_0(gibs_17_io_ipinSW_0),
    .io_ipinSW_1(gibs_17_io_ipinSW_1),
    .io_opinSW_0(gibs_17_io_opinSW_0),
    .io_itrackW_0(gibs_17_io_itrackW_0),
    .io_otrackW_0(gibs_17_io_otrackW_0),
    .io_itrackN_0(gibs_17_io_itrackN_0),
    .io_otrackN_0(gibs_17_io_otrackN_0),
    .io_itrackE_0(gibs_17_io_itrackE_0),
    .io_otrackE_0(gibs_17_io_otrackE_0),
    .io_itrackS_0(gibs_17_io_itrackS_0),
    .io_otrackS_0(gibs_17_io_otrackS_0)
  );
  GIB_18 gibs_18 ( // @[CGRA.scala 333:21]
    .clock(gibs_18_clock),
    .reset(gibs_18_reset),
    .io_cfg_en(gibs_18_io_cfg_en),
    .io_cfg_addr(gibs_18_io_cfg_addr),
    .io_cfg_data(gibs_18_io_cfg_data),
    .io_en(gibs_18_io_en),
    .io_ipinNW_0(gibs_18_io_ipinNW_0),
    .io_ipinNW_1(gibs_18_io_ipinNW_1),
    .io_opinNW_0(gibs_18_io_opinNW_0),
    .io_ipinNE_0(gibs_18_io_ipinNE_0),
    .io_ipinNE_1(gibs_18_io_ipinNE_1),
    .io_opinNE_0(gibs_18_io_opinNE_0),
    .io_ipinSE_0(gibs_18_io_ipinSE_0),
    .io_ipinSE_1(gibs_18_io_ipinSE_1),
    .io_opinSE_0(gibs_18_io_opinSE_0),
    .io_ipinSW_0(gibs_18_io_ipinSW_0),
    .io_ipinSW_1(gibs_18_io_ipinSW_1),
    .io_opinSW_0(gibs_18_io_opinSW_0),
    .io_itrackW_0(gibs_18_io_itrackW_0),
    .io_otrackW_0(gibs_18_io_otrackW_0),
    .io_itrackN_0(gibs_18_io_itrackN_0),
    .io_otrackN_0(gibs_18_io_otrackN_0),
    .io_itrackE_0(gibs_18_io_itrackE_0),
    .io_otrackE_0(gibs_18_io_otrackE_0),
    .io_itrackS_0(gibs_18_io_itrackS_0),
    .io_otrackS_0(gibs_18_io_otrackS_0)
  );
  GIB_19 gibs_19 ( // @[CGRA.scala 333:21]
    .clock(gibs_19_clock),
    .reset(gibs_19_reset),
    .io_cfg_en(gibs_19_io_cfg_en),
    .io_cfg_addr(gibs_19_io_cfg_addr),
    .io_cfg_data(gibs_19_io_cfg_data),
    .io_en(gibs_19_io_en),
    .io_ipinNW_0(gibs_19_io_ipinNW_0),
    .io_ipinNW_1(gibs_19_io_ipinNW_1),
    .io_opinNW_0(gibs_19_io_opinNW_0),
    .io_ipinNE_0(gibs_19_io_ipinNE_0),
    .io_opinNE_0(gibs_19_io_opinNE_0),
    .io_ipinSE_0(gibs_19_io_ipinSE_0),
    .io_opinSE_0(gibs_19_io_opinSE_0),
    .io_ipinSW_0(gibs_19_io_ipinSW_0),
    .io_ipinSW_1(gibs_19_io_ipinSW_1),
    .io_opinSW_0(gibs_19_io_opinSW_0),
    .io_itrackW_0(gibs_19_io_itrackW_0),
    .io_otrackW_0(gibs_19_io_otrackW_0),
    .io_itrackN_0(gibs_19_io_itrackN_0),
    .io_otrackN_0(gibs_19_io_otrackN_0),
    .io_itrackS_0(gibs_19_io_itrackS_0),
    .io_otrackS_0(gibs_19_io_otrackS_0)
  );
  GIB_20 gibs_20 ( // @[CGRA.scala 333:21]
    .clock(gibs_20_clock),
    .reset(gibs_20_reset),
    .io_cfg_en(gibs_20_io_cfg_en),
    .io_cfg_addr(gibs_20_io_cfg_addr),
    .io_cfg_data(gibs_20_io_cfg_data),
    .io_en(gibs_20_io_en),
    .io_ipinNW_0(gibs_20_io_ipinNW_0),
    .io_opinNW_0(gibs_20_io_opinNW_0),
    .io_ipinNE_0(gibs_20_io_ipinNE_0),
    .io_ipinNE_1(gibs_20_io_ipinNE_1),
    .io_opinNE_0(gibs_20_io_opinNE_0),
    .io_ipinSE_0(gibs_20_io_ipinSE_0),
    .io_opinSE_0(gibs_20_io_opinSE_0),
    .io_itrackN_0(gibs_20_io_itrackN_0),
    .io_otrackN_0(gibs_20_io_otrackN_0),
    .io_itrackE_0(gibs_20_io_itrackE_0),
    .io_otrackE_0(gibs_20_io_otrackE_0)
  );
  GIB_21 gibs_21 ( // @[CGRA.scala 333:21]
    .clock(gibs_21_clock),
    .reset(gibs_21_reset),
    .io_cfg_en(gibs_21_io_cfg_en),
    .io_cfg_addr(gibs_21_io_cfg_addr),
    .io_cfg_data(gibs_21_io_cfg_data),
    .io_en(gibs_21_io_en),
    .io_ipinNW_0(gibs_21_io_ipinNW_0),
    .io_ipinNW_1(gibs_21_io_ipinNW_1),
    .io_opinNW_0(gibs_21_io_opinNW_0),
    .io_ipinNE_0(gibs_21_io_ipinNE_0),
    .io_ipinNE_1(gibs_21_io_ipinNE_1),
    .io_opinNE_0(gibs_21_io_opinNE_0),
    .io_ipinSE_0(gibs_21_io_ipinSE_0),
    .io_opinSE_0(gibs_21_io_opinSE_0),
    .io_ipinSW_0(gibs_21_io_ipinSW_0),
    .io_opinSW_0(gibs_21_io_opinSW_0),
    .io_itrackW_0(gibs_21_io_itrackW_0),
    .io_otrackW_0(gibs_21_io_otrackW_0),
    .io_itrackN_0(gibs_21_io_itrackN_0),
    .io_otrackN_0(gibs_21_io_otrackN_0),
    .io_itrackE_0(gibs_21_io_itrackE_0),
    .io_otrackE_0(gibs_21_io_otrackE_0)
  );
  GIB_22 gibs_22 ( // @[CGRA.scala 333:21]
    .clock(gibs_22_clock),
    .reset(gibs_22_reset),
    .io_cfg_en(gibs_22_io_cfg_en),
    .io_cfg_addr(gibs_22_io_cfg_addr),
    .io_cfg_data(gibs_22_io_cfg_data),
    .io_en(gibs_22_io_en),
    .io_ipinNW_0(gibs_22_io_ipinNW_0),
    .io_ipinNW_1(gibs_22_io_ipinNW_1),
    .io_opinNW_0(gibs_22_io_opinNW_0),
    .io_ipinNE_0(gibs_22_io_ipinNE_0),
    .io_ipinNE_1(gibs_22_io_ipinNE_1),
    .io_opinNE_0(gibs_22_io_opinNE_0),
    .io_ipinSE_0(gibs_22_io_ipinSE_0),
    .io_opinSE_0(gibs_22_io_opinSE_0),
    .io_ipinSW_0(gibs_22_io_ipinSW_0),
    .io_opinSW_0(gibs_22_io_opinSW_0),
    .io_itrackW_0(gibs_22_io_itrackW_0),
    .io_otrackW_0(gibs_22_io_otrackW_0),
    .io_itrackN_0(gibs_22_io_itrackN_0),
    .io_otrackN_0(gibs_22_io_otrackN_0),
    .io_itrackE_0(gibs_22_io_itrackE_0),
    .io_otrackE_0(gibs_22_io_otrackE_0)
  );
  GIB_23 gibs_23 ( // @[CGRA.scala 333:21]
    .clock(gibs_23_clock),
    .reset(gibs_23_reset),
    .io_cfg_en(gibs_23_io_cfg_en),
    .io_cfg_addr(gibs_23_io_cfg_addr),
    .io_cfg_data(gibs_23_io_cfg_data),
    .io_en(gibs_23_io_en),
    .io_ipinNW_0(gibs_23_io_ipinNW_0),
    .io_ipinNW_1(gibs_23_io_ipinNW_1),
    .io_opinNW_0(gibs_23_io_opinNW_0),
    .io_ipinNE_0(gibs_23_io_ipinNE_0),
    .io_ipinNE_1(gibs_23_io_ipinNE_1),
    .io_opinNE_0(gibs_23_io_opinNE_0),
    .io_ipinSE_0(gibs_23_io_ipinSE_0),
    .io_opinSE_0(gibs_23_io_opinSE_0),
    .io_ipinSW_0(gibs_23_io_ipinSW_0),
    .io_opinSW_0(gibs_23_io_opinSW_0),
    .io_itrackW_0(gibs_23_io_itrackW_0),
    .io_otrackW_0(gibs_23_io_otrackW_0),
    .io_itrackN_0(gibs_23_io_itrackN_0),
    .io_otrackN_0(gibs_23_io_otrackN_0),
    .io_itrackE_0(gibs_23_io_itrackE_0),
    .io_otrackE_0(gibs_23_io_otrackE_0)
  );
  GIB_24 gibs_24 ( // @[CGRA.scala 333:21]
    .clock(gibs_24_clock),
    .reset(gibs_24_reset),
    .io_cfg_en(gibs_24_io_cfg_en),
    .io_cfg_addr(gibs_24_io_cfg_addr),
    .io_cfg_data(gibs_24_io_cfg_data),
    .io_en(gibs_24_io_en),
    .io_ipinNW_0(gibs_24_io_ipinNW_0),
    .io_ipinNW_1(gibs_24_io_ipinNW_1),
    .io_opinNW_0(gibs_24_io_opinNW_0),
    .io_ipinNE_0(gibs_24_io_ipinNE_0),
    .io_opinNE_0(gibs_24_io_opinNE_0),
    .io_ipinSW_0(gibs_24_io_ipinSW_0),
    .io_opinSW_0(gibs_24_io_opinSW_0),
    .io_itrackW_0(gibs_24_io_itrackW_0),
    .io_otrackW_0(gibs_24_io_otrackW_0),
    .io_itrackN_0(gibs_24_io_itrackN_0),
    .io_otrackN_0(gibs_24_io_otrackN_0)
  );
  LSU lsus_0 ( // @[CGRA.scala 364:21]
    .clock(lsus_0_clock),
    .reset(lsus_0_reset),
    .io_cfg_en(lsus_0_io_cfg_en),
    .io_cfg_addr(lsus_0_io_cfg_addr),
    .io_cfg_data(lsus_0_io_cfg_data),
    .io_hostInterface_read_addr(lsus_0_io_hostInterface_read_addr),
    .io_hostInterface_read_data_ready(lsus_0_io_hostInterface_read_data_ready),
    .io_hostInterface_read_data_valid(lsus_0_io_hostInterface_read_data_valid),
    .io_hostInterface_read_data_bits(lsus_0_io_hostInterface_read_data_bits),
    .io_hostInterface_write_addr(lsus_0_io_hostInterface_write_addr),
    .io_hostInterface_write_data_ready(lsus_0_io_hostInterface_write_data_ready),
    .io_hostInterface_write_data_valid(lsus_0_io_hostInterface_write_data_valid),
    .io_hostInterface_write_data_bits(lsus_0_io_hostInterface_write_data_bits),
    .io_hostInterface_cycle(lsus_0_io_hostInterface_cycle),
    .io_en(lsus_0_io_en),
    .io_in_0(lsus_0_io_in_0),
    .io_in_1(lsus_0_io_in_1),
    .io_out_0(lsus_0_io_out_0)
  );
  LSU_1 lsus_1 ( // @[CGRA.scala 364:21]
    .clock(lsus_1_clock),
    .reset(lsus_1_reset),
    .io_cfg_en(lsus_1_io_cfg_en),
    .io_cfg_addr(lsus_1_io_cfg_addr),
    .io_cfg_data(lsus_1_io_cfg_data),
    .io_hostInterface_read_addr(lsus_1_io_hostInterface_read_addr),
    .io_hostInterface_read_data_ready(lsus_1_io_hostInterface_read_data_ready),
    .io_hostInterface_read_data_valid(lsus_1_io_hostInterface_read_data_valid),
    .io_hostInterface_read_data_bits(lsus_1_io_hostInterface_read_data_bits),
    .io_hostInterface_write_addr(lsus_1_io_hostInterface_write_addr),
    .io_hostInterface_write_data_ready(lsus_1_io_hostInterface_write_data_ready),
    .io_hostInterface_write_data_valid(lsus_1_io_hostInterface_write_data_valid),
    .io_hostInterface_write_data_bits(lsus_1_io_hostInterface_write_data_bits),
    .io_hostInterface_cycle(lsus_1_io_hostInterface_cycle),
    .io_en(lsus_1_io_en),
    .io_in_0(lsus_1_io_in_0),
    .io_in_1(lsus_1_io_in_1),
    .io_out_0(lsus_1_io_out_0)
  );
  LSU_2 lsus_2 ( // @[CGRA.scala 364:21]
    .clock(lsus_2_clock),
    .reset(lsus_2_reset),
    .io_cfg_en(lsus_2_io_cfg_en),
    .io_cfg_addr(lsus_2_io_cfg_addr),
    .io_cfg_data(lsus_2_io_cfg_data),
    .io_hostInterface_read_addr(lsus_2_io_hostInterface_read_addr),
    .io_hostInterface_read_data_ready(lsus_2_io_hostInterface_read_data_ready),
    .io_hostInterface_read_data_valid(lsus_2_io_hostInterface_read_data_valid),
    .io_hostInterface_read_data_bits(lsus_2_io_hostInterface_read_data_bits),
    .io_hostInterface_write_addr(lsus_2_io_hostInterface_write_addr),
    .io_hostInterface_write_data_ready(lsus_2_io_hostInterface_write_data_ready),
    .io_hostInterface_write_data_valid(lsus_2_io_hostInterface_write_data_valid),
    .io_hostInterface_write_data_bits(lsus_2_io_hostInterface_write_data_bits),
    .io_hostInterface_cycle(lsus_2_io_hostInterface_cycle),
    .io_en(lsus_2_io_en),
    .io_in_0(lsus_2_io_in_0),
    .io_in_1(lsus_2_io_in_1),
    .io_out_0(lsus_2_io_out_0)
  );
  LSU_3 lsus_3 ( // @[CGRA.scala 364:21]
    .clock(lsus_3_clock),
    .reset(lsus_3_reset),
    .io_cfg_en(lsus_3_io_cfg_en),
    .io_cfg_addr(lsus_3_io_cfg_addr),
    .io_cfg_data(lsus_3_io_cfg_data),
    .io_hostInterface_read_addr(lsus_3_io_hostInterface_read_addr),
    .io_hostInterface_read_data_ready(lsus_3_io_hostInterface_read_data_ready),
    .io_hostInterface_read_data_valid(lsus_3_io_hostInterface_read_data_valid),
    .io_hostInterface_read_data_bits(lsus_3_io_hostInterface_read_data_bits),
    .io_hostInterface_write_addr(lsus_3_io_hostInterface_write_addr),
    .io_hostInterface_write_data_ready(lsus_3_io_hostInterface_write_data_ready),
    .io_hostInterface_write_data_valid(lsus_3_io_hostInterface_write_data_valid),
    .io_hostInterface_write_data_bits(lsus_3_io_hostInterface_write_data_bits),
    .io_hostInterface_cycle(lsus_3_io_hostInterface_cycle),
    .io_en(lsus_3_io_en),
    .io_in_0(lsus_3_io_in_0),
    .io_in_1(lsus_3_io_in_1),
    .io_out_0(lsus_3_io_out_0)
  );
  LSU_4 lsus_4 ( // @[CGRA.scala 364:21]
    .clock(lsus_4_clock),
    .reset(lsus_4_reset),
    .io_cfg_en(lsus_4_io_cfg_en),
    .io_cfg_addr(lsus_4_io_cfg_addr),
    .io_cfg_data(lsus_4_io_cfg_data),
    .io_hostInterface_read_addr(lsus_4_io_hostInterface_read_addr),
    .io_hostInterface_read_data_ready(lsus_4_io_hostInterface_read_data_ready),
    .io_hostInterface_read_data_valid(lsus_4_io_hostInterface_read_data_valid),
    .io_hostInterface_read_data_bits(lsus_4_io_hostInterface_read_data_bits),
    .io_hostInterface_write_addr(lsus_4_io_hostInterface_write_addr),
    .io_hostInterface_write_data_ready(lsus_4_io_hostInterface_write_data_ready),
    .io_hostInterface_write_data_valid(lsus_4_io_hostInterface_write_data_valid),
    .io_hostInterface_write_data_bits(lsus_4_io_hostInterface_write_data_bits),
    .io_hostInterface_cycle(lsus_4_io_hostInterface_cycle),
    .io_en(lsus_4_io_en),
    .io_in_0(lsus_4_io_in_0),
    .io_in_1(lsus_4_io_in_1),
    .io_out_0(lsus_4_io_out_0)
  );
  LSU_5 lsus_5 ( // @[CGRA.scala 364:21]
    .clock(lsus_5_clock),
    .reset(lsus_5_reset),
    .io_cfg_en(lsus_5_io_cfg_en),
    .io_cfg_addr(lsus_5_io_cfg_addr),
    .io_cfg_data(lsus_5_io_cfg_data),
    .io_hostInterface_read_addr(lsus_5_io_hostInterface_read_addr),
    .io_hostInterface_read_data_ready(lsus_5_io_hostInterface_read_data_ready),
    .io_hostInterface_read_data_valid(lsus_5_io_hostInterface_read_data_valid),
    .io_hostInterface_read_data_bits(lsus_5_io_hostInterface_read_data_bits),
    .io_hostInterface_write_addr(lsus_5_io_hostInterface_write_addr),
    .io_hostInterface_write_data_ready(lsus_5_io_hostInterface_write_data_ready),
    .io_hostInterface_write_data_valid(lsus_5_io_hostInterface_write_data_valid),
    .io_hostInterface_write_data_bits(lsus_5_io_hostInterface_write_data_bits),
    .io_hostInterface_cycle(lsus_5_io_hostInterface_cycle),
    .io_en(lsus_5_io_en),
    .io_in_0(lsus_5_io_in_0),
    .io_in_1(lsus_5_io_in_1),
    .io_out_0(lsus_5_io_out_0)
  );
  LSU_6 lsus_6 ( // @[CGRA.scala 364:21]
    .clock(lsus_6_clock),
    .reset(lsus_6_reset),
    .io_cfg_en(lsus_6_io_cfg_en),
    .io_cfg_addr(lsus_6_io_cfg_addr),
    .io_cfg_data(lsus_6_io_cfg_data),
    .io_hostInterface_read_addr(lsus_6_io_hostInterface_read_addr),
    .io_hostInterface_read_data_ready(lsus_6_io_hostInterface_read_data_ready),
    .io_hostInterface_read_data_valid(lsus_6_io_hostInterface_read_data_valid),
    .io_hostInterface_read_data_bits(lsus_6_io_hostInterface_read_data_bits),
    .io_hostInterface_write_addr(lsus_6_io_hostInterface_write_addr),
    .io_hostInterface_write_data_ready(lsus_6_io_hostInterface_write_data_ready),
    .io_hostInterface_write_data_valid(lsus_6_io_hostInterface_write_data_valid),
    .io_hostInterface_write_data_bits(lsus_6_io_hostInterface_write_data_bits),
    .io_hostInterface_cycle(lsus_6_io_hostInterface_cycle),
    .io_en(lsus_6_io_en),
    .io_in_0(lsus_6_io_in_0),
    .io_in_1(lsus_6_io_in_1),
    .io_out_0(lsus_6_io_out_0)
  );
  LSU_7 lsus_7 ( // @[CGRA.scala 364:21]
    .clock(lsus_7_clock),
    .reset(lsus_7_reset),
    .io_cfg_en(lsus_7_io_cfg_en),
    .io_cfg_addr(lsus_7_io_cfg_addr),
    .io_cfg_data(lsus_7_io_cfg_data),
    .io_hostInterface_read_addr(lsus_7_io_hostInterface_read_addr),
    .io_hostInterface_read_data_ready(lsus_7_io_hostInterface_read_data_ready),
    .io_hostInterface_read_data_valid(lsus_7_io_hostInterface_read_data_valid),
    .io_hostInterface_read_data_bits(lsus_7_io_hostInterface_read_data_bits),
    .io_hostInterface_write_addr(lsus_7_io_hostInterface_write_addr),
    .io_hostInterface_write_data_ready(lsus_7_io_hostInterface_write_data_ready),
    .io_hostInterface_write_data_valid(lsus_7_io_hostInterface_write_data_valid),
    .io_hostInterface_write_data_bits(lsus_7_io_hostInterface_write_data_bits),
    .io_hostInterface_cycle(lsus_7_io_hostInterface_cycle),
    .io_en(lsus_7_io_en),
    .io_in_0(lsus_7_io_in_0),
    .io_in_1(lsus_7_io_in_1),
    .io_out_0(lsus_7_io_out_0)
  );
  assign io_hostInterface_0_read_data_valid = lsus_0_io_hostInterface_read_data_valid; // @[CGRA.scala 595:36]
  assign io_hostInterface_0_read_data_bits = lsus_0_io_hostInterface_read_data_bits; // @[CGRA.scala 595:36]
  assign io_hostInterface_0_write_data_ready = lsus_0_io_hostInterface_write_data_ready; // @[CGRA.scala 595:36]
  assign io_hostInterface_1_read_data_valid = lsus_1_io_hostInterface_read_data_valid; // @[CGRA.scala 595:36]
  assign io_hostInterface_1_read_data_bits = lsus_1_io_hostInterface_read_data_bits; // @[CGRA.scala 595:36]
  assign io_hostInterface_1_write_data_ready = lsus_1_io_hostInterface_write_data_ready; // @[CGRA.scala 595:36]
  assign io_hostInterface_2_read_data_valid = lsus_2_io_hostInterface_read_data_valid; // @[CGRA.scala 595:36]
  assign io_hostInterface_2_read_data_bits = lsus_2_io_hostInterface_read_data_bits; // @[CGRA.scala 595:36]
  assign io_hostInterface_2_write_data_ready = lsus_2_io_hostInterface_write_data_ready; // @[CGRA.scala 595:36]
  assign io_hostInterface_3_read_data_valid = lsus_3_io_hostInterface_read_data_valid; // @[CGRA.scala 595:36]
  assign io_hostInterface_3_read_data_bits = lsus_3_io_hostInterface_read_data_bits; // @[CGRA.scala 595:36]
  assign io_hostInterface_3_write_data_ready = lsus_3_io_hostInterface_write_data_ready; // @[CGRA.scala 595:36]
  assign io_hostInterface_4_read_data_valid = lsus_4_io_hostInterface_read_data_valid; // @[CGRA.scala 595:36]
  assign io_hostInterface_4_read_data_bits = lsus_4_io_hostInterface_read_data_bits; // @[CGRA.scala 595:36]
  assign io_hostInterface_4_write_data_ready = lsus_4_io_hostInterface_write_data_ready; // @[CGRA.scala 595:36]
  assign io_hostInterface_5_read_data_valid = lsus_5_io_hostInterface_read_data_valid; // @[CGRA.scala 595:36]
  assign io_hostInterface_5_read_data_bits = lsus_5_io_hostInterface_read_data_bits; // @[CGRA.scala 595:36]
  assign io_hostInterface_5_write_data_ready = lsus_5_io_hostInterface_write_data_ready; // @[CGRA.scala 595:36]
  assign io_hostInterface_6_read_data_valid = lsus_6_io_hostInterface_read_data_valid; // @[CGRA.scala 595:36]
  assign io_hostInterface_6_read_data_bits = lsus_6_io_hostInterface_read_data_bits; // @[CGRA.scala 595:36]
  assign io_hostInterface_6_write_data_ready = lsus_6_io_hostInterface_write_data_ready; // @[CGRA.scala 595:36]
  assign io_hostInterface_7_read_data_valid = lsus_7_io_hostInterface_read_data_valid; // @[CGRA.scala 595:36]
  assign io_hostInterface_7_read_data_bits = lsus_7_io_hostInterface_read_data_bits; // @[CGRA.scala 595:36]
  assign io_hostInterface_7_write_data_ready = lsus_7_io_hostInterface_write_data_ready; // @[CGRA.scala 595:36]
  assign io_out_0 = obs_0_io_out_0; // @[CGRA.scala 443:26]
  assign io_out_1 = obs_1_io_out_0; // @[CGRA.scala 443:26]
  assign io_out_2 = obs_2_io_out_0; // @[CGRA.scala 443:26]
  assign io_out_3 = obs_3_io_out_0; // @[CGRA.scala 443:26]
  assign io_out_4 = obs_4_io_out_0; // @[CGRA.scala 443:26]
  assign io_out_5 = obs_5_io_out_0; // @[CGRA.scala 443:26]
  assign io_out_6 = obs_6_io_out_0; // @[CGRA.scala 443:26]
  assign io_out_7 = obs_7_io_out_0; // @[CGRA.scala 443:26]
  assign ibs_0_io_in_0 = io_in_0; // @[CGRA.scala 414:19]
  assign ibs_1_io_in_0 = io_in_1; // @[CGRA.scala 414:19]
  assign ibs_2_io_in_0 = io_in_2; // @[CGRA.scala 414:19]
  assign ibs_3_io_in_0 = io_in_3; // @[CGRA.scala 414:19]
  assign ibs_4_io_in_0 = io_in_4; // @[CGRA.scala 414:19]
  assign ibs_5_io_in_0 = io_in_5; // @[CGRA.scala 414:19]
  assign ibs_6_io_in_0 = io_in_6; // @[CGRA.scala 414:19]
  assign ibs_7_io_in_0 = io_in_7; // @[CGRA.scala 414:19]
  assign obs_0_clock = clock;
  assign obs_0_reset = reset;
  assign obs_0_io_cfg_en = cfgRegs_0[50]; // @[CGRA.scala 652:24]
  assign obs_0_io_cfg_addr = cfgRegs_0[49:32]; // @[CGRA.scala 653:24]
  assign obs_0_io_cfg_data = cfgRegs_0[31:0]; // @[CGRA.scala 654:24]
  assign obs_0_io_in_0 = gibs_0_io_ipinNE_0; // @[CGRA.scala 450:14]
  assign obs_0_io_in_1 = gibs_1_io_ipinNW_0; // @[CGRA.scala 454:14]
  assign obs_0_io_en = io_en_0; // @[CGRA.scala 438:14]
  assign obs_1_clock = clock;
  assign obs_1_reset = reset;
  assign obs_1_io_cfg_en = cfgRegs_0[50]; // @[CGRA.scala 652:24]
  assign obs_1_io_cfg_addr = cfgRegs_0[49:32]; // @[CGRA.scala 653:24]
  assign obs_1_io_cfg_data = cfgRegs_0[31:0]; // @[CGRA.scala 654:24]
  assign obs_1_io_in_0 = gibs_1_io_ipinNE_0; // @[CGRA.scala 450:14]
  assign obs_1_io_in_1 = gibs_2_io_ipinNW_0; // @[CGRA.scala 454:14]
  assign obs_1_io_en = io_en_1; // @[CGRA.scala 438:14]
  assign obs_2_clock = clock;
  assign obs_2_reset = reset;
  assign obs_2_io_cfg_en = cfgRegs_0[50]; // @[CGRA.scala 652:24]
  assign obs_2_io_cfg_addr = cfgRegs_0[49:32]; // @[CGRA.scala 653:24]
  assign obs_2_io_cfg_data = cfgRegs_0[31:0]; // @[CGRA.scala 654:24]
  assign obs_2_io_in_0 = gibs_2_io_ipinNE_0; // @[CGRA.scala 450:14]
  assign obs_2_io_in_1 = gibs_3_io_ipinNW_0; // @[CGRA.scala 454:14]
  assign obs_2_io_en = io_en_2; // @[CGRA.scala 438:14]
  assign obs_3_clock = clock;
  assign obs_3_reset = reset;
  assign obs_3_io_cfg_en = cfgRegs_0[50]; // @[CGRA.scala 652:24]
  assign obs_3_io_cfg_addr = cfgRegs_0[49:32]; // @[CGRA.scala 653:24]
  assign obs_3_io_cfg_data = cfgRegs_0[31:0]; // @[CGRA.scala 654:24]
  assign obs_3_io_in_0 = gibs_3_io_ipinNE_0; // @[CGRA.scala 450:14]
  assign obs_3_io_in_1 = gibs_4_io_ipinNW_0; // @[CGRA.scala 454:14]
  assign obs_3_io_en = io_en_3; // @[CGRA.scala 438:14]
  assign obs_4_clock = clock;
  assign obs_4_reset = reset;
  assign obs_4_io_cfg_en = cfgRegs_11[50]; // @[CGRA.scala 661:26]
  assign obs_4_io_cfg_addr = cfgRegs_11[49:32]; // @[CGRA.scala 662:26]
  assign obs_4_io_cfg_data = cfgRegs_11[31:0]; // @[CGRA.scala 663:26]
  assign obs_4_io_in_0 = gibs_20_io_ipinSE_0; // @[CGRA.scala 461:14]
  assign obs_4_io_in_1 = gibs_21_io_ipinSW_0; // @[CGRA.scala 465:14]
  assign obs_4_io_en = io_en_0; // @[CGRA.scala 438:14]
  assign obs_5_clock = clock;
  assign obs_5_reset = reset;
  assign obs_5_io_cfg_en = cfgRegs_11[50]; // @[CGRA.scala 661:26]
  assign obs_5_io_cfg_addr = cfgRegs_11[49:32]; // @[CGRA.scala 662:26]
  assign obs_5_io_cfg_data = cfgRegs_11[31:0]; // @[CGRA.scala 663:26]
  assign obs_5_io_in_0 = gibs_21_io_ipinSE_0; // @[CGRA.scala 461:14]
  assign obs_5_io_in_1 = gibs_22_io_ipinSW_0; // @[CGRA.scala 465:14]
  assign obs_5_io_en = io_en_1; // @[CGRA.scala 438:14]
  assign obs_6_clock = clock;
  assign obs_6_reset = reset;
  assign obs_6_io_cfg_en = cfgRegs_11[50]; // @[CGRA.scala 661:26]
  assign obs_6_io_cfg_addr = cfgRegs_11[49:32]; // @[CGRA.scala 662:26]
  assign obs_6_io_cfg_data = cfgRegs_11[31:0]; // @[CGRA.scala 663:26]
  assign obs_6_io_in_0 = gibs_22_io_ipinSE_0; // @[CGRA.scala 461:14]
  assign obs_6_io_in_1 = gibs_23_io_ipinSW_0; // @[CGRA.scala 465:14]
  assign obs_6_io_en = io_en_2; // @[CGRA.scala 438:14]
  assign obs_7_clock = clock;
  assign obs_7_reset = reset;
  assign obs_7_io_cfg_en = cfgRegs_11[50]; // @[CGRA.scala 661:26]
  assign obs_7_io_cfg_addr = cfgRegs_11[49:32]; // @[CGRA.scala 662:26]
  assign obs_7_io_cfg_data = cfgRegs_11[31:0]; // @[CGRA.scala 663:26]
  assign obs_7_io_in_0 = gibs_23_io_ipinSE_0; // @[CGRA.scala 461:14]
  assign obs_7_io_in_1 = gibs_24_io_ipinSW_0; // @[CGRA.scala 465:14]
  assign obs_7_io_en = io_en_3; // @[CGRA.scala 438:14]
  assign pes_0_clock = clock;
  assign pes_0_reset = reset;
  assign pes_0_io_cfg_en = cfgRegs_2[50]; // @[CGRA.scala 671:37]
  assign pes_0_io_cfg_addr = cfgRegs_2[49:32]; // @[CGRA.scala 672:39]
  assign pes_0_io_cfg_data = cfgRegs_2[31:0]; // @[CGRA.scala 673:39]
  assign pes_0_io_en = io_en_1; // @[CGRA.scala 476:27]
  assign pes_0_io_in_0 = gibs_0_io_ipinSE_0; // @[CGRA.scala 479:14]
  assign pes_0_io_in_1 = gibs_1_io_ipinSW_0; // @[CGRA.scala 483:14]
  assign pes_0_io_in_2 = gibs_5_io_ipinNE_0; // @[CGRA.scala 487:14]
  assign pes_0_io_in_3 = gibs_6_io_ipinNW_0; // @[CGRA.scala 491:14]
  assign pes_0_io_in_4 = gibs_0_io_ipinSE_1; // @[CGRA.scala 479:14]
  assign pes_0_io_in_5 = gibs_1_io_ipinSW_1; // @[CGRA.scala 483:14]
  assign pes_0_io_in_6 = gibs_5_io_ipinNE_1; // @[CGRA.scala 487:14]
  assign pes_0_io_in_7 = gibs_6_io_ipinNW_1; // @[CGRA.scala 491:14]
  assign pes_1_clock = clock;
  assign pes_1_reset = reset;
  assign pes_1_io_cfg_en = cfgRegs_2[50]; // @[CGRA.scala 671:37]
  assign pes_1_io_cfg_addr = cfgRegs_2[49:32]; // @[CGRA.scala 672:39]
  assign pes_1_io_cfg_data = cfgRegs_2[31:0]; // @[CGRA.scala 673:39]
  assign pes_1_io_en = io_en_2; // @[CGRA.scala 476:27]
  assign pes_1_io_in_0 = gibs_1_io_ipinSE_0; // @[CGRA.scala 479:14]
  assign pes_1_io_in_1 = gibs_2_io_ipinSW_0; // @[CGRA.scala 483:14]
  assign pes_1_io_in_2 = gibs_6_io_ipinNE_0; // @[CGRA.scala 487:14]
  assign pes_1_io_in_3 = gibs_7_io_ipinNW_0; // @[CGRA.scala 491:14]
  assign pes_1_io_in_4 = gibs_1_io_ipinSE_1; // @[CGRA.scala 479:14]
  assign pes_1_io_in_5 = gibs_2_io_ipinSW_1; // @[CGRA.scala 483:14]
  assign pes_1_io_in_6 = gibs_6_io_ipinNE_1; // @[CGRA.scala 487:14]
  assign pes_1_io_in_7 = gibs_7_io_ipinNW_1; // @[CGRA.scala 491:14]
  assign pes_2_clock = clock;
  assign pes_2_reset = reset;
  assign pes_2_io_cfg_en = cfgRegs_2[50]; // @[CGRA.scala 671:37]
  assign pes_2_io_cfg_addr = cfgRegs_2[49:32]; // @[CGRA.scala 672:39]
  assign pes_2_io_cfg_data = cfgRegs_2[31:0]; // @[CGRA.scala 673:39]
  assign pes_2_io_en = io_en_3; // @[CGRA.scala 476:27]
  assign pes_2_io_in_0 = gibs_2_io_ipinSE_0; // @[CGRA.scala 479:14]
  assign pes_2_io_in_1 = gibs_3_io_ipinSW_0; // @[CGRA.scala 483:14]
  assign pes_2_io_in_2 = gibs_7_io_ipinNE_0; // @[CGRA.scala 487:14]
  assign pes_2_io_in_3 = gibs_8_io_ipinNW_0; // @[CGRA.scala 491:14]
  assign pes_2_io_in_4 = gibs_2_io_ipinSE_1; // @[CGRA.scala 479:14]
  assign pes_2_io_in_5 = gibs_3_io_ipinSW_1; // @[CGRA.scala 483:14]
  assign pes_2_io_in_6 = gibs_7_io_ipinNE_1; // @[CGRA.scala 487:14]
  assign pes_2_io_in_7 = gibs_8_io_ipinNW_1; // @[CGRA.scala 491:14]
  assign pes_3_clock = clock;
  assign pes_3_reset = reset;
  assign pes_3_io_cfg_en = cfgRegs_2[50]; // @[CGRA.scala 671:37]
  assign pes_3_io_cfg_addr = cfgRegs_2[49:32]; // @[CGRA.scala 672:39]
  assign pes_3_io_cfg_data = cfgRegs_2[31:0]; // @[CGRA.scala 673:39]
  assign pes_3_io_en = io_en_4; // @[CGRA.scala 476:27]
  assign pes_3_io_in_0 = gibs_3_io_ipinSE_0; // @[CGRA.scala 479:14]
  assign pes_3_io_in_1 = gibs_4_io_ipinSW_0; // @[CGRA.scala 483:14]
  assign pes_3_io_in_2 = gibs_8_io_ipinNE_0; // @[CGRA.scala 487:14]
  assign pes_3_io_in_3 = gibs_9_io_ipinNW_0; // @[CGRA.scala 491:14]
  assign pes_3_io_in_4 = gibs_3_io_ipinSE_1; // @[CGRA.scala 479:14]
  assign pes_3_io_in_5 = gibs_4_io_ipinSW_1; // @[CGRA.scala 483:14]
  assign pes_3_io_in_6 = gibs_8_io_ipinNE_1; // @[CGRA.scala 487:14]
  assign pes_3_io_in_7 = gibs_9_io_ipinNW_1; // @[CGRA.scala 491:14]
  assign pes_4_clock = clock;
  assign pes_4_reset = reset;
  assign pes_4_io_cfg_en = cfgRegs_4[50]; // @[CGRA.scala 671:37]
  assign pes_4_io_cfg_addr = cfgRegs_4[49:32]; // @[CGRA.scala 672:39]
  assign pes_4_io_cfg_data = cfgRegs_4[31:0]; // @[CGRA.scala 673:39]
  assign pes_4_io_en = io_en_1; // @[CGRA.scala 476:27]
  assign pes_4_io_in_0 = gibs_5_io_ipinSE_0; // @[CGRA.scala 479:14]
  assign pes_4_io_in_1 = gibs_6_io_ipinSW_0; // @[CGRA.scala 483:14]
  assign pes_4_io_in_2 = gibs_10_io_ipinNE_0; // @[CGRA.scala 487:14]
  assign pes_4_io_in_3 = gibs_11_io_ipinNW_0; // @[CGRA.scala 491:14]
  assign pes_4_io_in_4 = gibs_5_io_ipinSE_1; // @[CGRA.scala 479:14]
  assign pes_4_io_in_5 = gibs_6_io_ipinSW_1; // @[CGRA.scala 483:14]
  assign pes_4_io_in_6 = gibs_10_io_ipinNE_1; // @[CGRA.scala 487:14]
  assign pes_4_io_in_7 = gibs_11_io_ipinNW_1; // @[CGRA.scala 491:14]
  assign pes_5_clock = clock;
  assign pes_5_reset = reset;
  assign pes_5_io_cfg_en = cfgRegs_4[50]; // @[CGRA.scala 671:37]
  assign pes_5_io_cfg_addr = cfgRegs_4[49:32]; // @[CGRA.scala 672:39]
  assign pes_5_io_cfg_data = cfgRegs_4[31:0]; // @[CGRA.scala 673:39]
  assign pes_5_io_en = io_en_2; // @[CGRA.scala 476:27]
  assign pes_5_io_in_0 = gibs_6_io_ipinSE_0; // @[CGRA.scala 479:14]
  assign pes_5_io_in_1 = gibs_7_io_ipinSW_0; // @[CGRA.scala 483:14]
  assign pes_5_io_in_2 = gibs_11_io_ipinNE_0; // @[CGRA.scala 487:14]
  assign pes_5_io_in_3 = gibs_12_io_ipinNW_0; // @[CGRA.scala 491:14]
  assign pes_5_io_in_4 = gibs_6_io_ipinSE_1; // @[CGRA.scala 479:14]
  assign pes_5_io_in_5 = gibs_7_io_ipinSW_1; // @[CGRA.scala 483:14]
  assign pes_5_io_in_6 = gibs_11_io_ipinNE_1; // @[CGRA.scala 487:14]
  assign pes_5_io_in_7 = gibs_12_io_ipinNW_1; // @[CGRA.scala 491:14]
  assign pes_6_clock = clock;
  assign pes_6_reset = reset;
  assign pes_6_io_cfg_en = cfgRegs_4[50]; // @[CGRA.scala 671:37]
  assign pes_6_io_cfg_addr = cfgRegs_4[49:32]; // @[CGRA.scala 672:39]
  assign pes_6_io_cfg_data = cfgRegs_4[31:0]; // @[CGRA.scala 673:39]
  assign pes_6_io_en = io_en_3; // @[CGRA.scala 476:27]
  assign pes_6_io_in_0 = gibs_7_io_ipinSE_0; // @[CGRA.scala 479:14]
  assign pes_6_io_in_1 = gibs_8_io_ipinSW_0; // @[CGRA.scala 483:14]
  assign pes_6_io_in_2 = gibs_12_io_ipinNE_0; // @[CGRA.scala 487:14]
  assign pes_6_io_in_3 = gibs_13_io_ipinNW_0; // @[CGRA.scala 491:14]
  assign pes_6_io_in_4 = gibs_7_io_ipinSE_1; // @[CGRA.scala 479:14]
  assign pes_6_io_in_5 = gibs_8_io_ipinSW_1; // @[CGRA.scala 483:14]
  assign pes_6_io_in_6 = gibs_12_io_ipinNE_1; // @[CGRA.scala 487:14]
  assign pes_6_io_in_7 = gibs_13_io_ipinNW_1; // @[CGRA.scala 491:14]
  assign pes_7_clock = clock;
  assign pes_7_reset = reset;
  assign pes_7_io_cfg_en = cfgRegs_4[50]; // @[CGRA.scala 671:37]
  assign pes_7_io_cfg_addr = cfgRegs_4[49:32]; // @[CGRA.scala 672:39]
  assign pes_7_io_cfg_data = cfgRegs_4[31:0]; // @[CGRA.scala 673:39]
  assign pes_7_io_en = io_en_4; // @[CGRA.scala 476:27]
  assign pes_7_io_in_0 = gibs_8_io_ipinSE_0; // @[CGRA.scala 479:14]
  assign pes_7_io_in_1 = gibs_9_io_ipinSW_0; // @[CGRA.scala 483:14]
  assign pes_7_io_in_2 = gibs_13_io_ipinNE_0; // @[CGRA.scala 487:14]
  assign pes_7_io_in_3 = gibs_14_io_ipinNW_0; // @[CGRA.scala 491:14]
  assign pes_7_io_in_4 = gibs_8_io_ipinSE_1; // @[CGRA.scala 479:14]
  assign pes_7_io_in_5 = gibs_9_io_ipinSW_1; // @[CGRA.scala 483:14]
  assign pes_7_io_in_6 = gibs_13_io_ipinNE_1; // @[CGRA.scala 487:14]
  assign pes_7_io_in_7 = gibs_14_io_ipinNW_1; // @[CGRA.scala 491:14]
  assign pes_8_clock = clock;
  assign pes_8_reset = reset;
  assign pes_8_io_cfg_en = cfgRegs_6[50]; // @[CGRA.scala 671:37]
  assign pes_8_io_cfg_addr = cfgRegs_6[49:32]; // @[CGRA.scala 672:39]
  assign pes_8_io_cfg_data = cfgRegs_6[31:0]; // @[CGRA.scala 673:39]
  assign pes_8_io_en = io_en_1; // @[CGRA.scala 476:27]
  assign pes_8_io_in_0 = gibs_10_io_ipinSE_0; // @[CGRA.scala 479:14]
  assign pes_8_io_in_1 = gibs_11_io_ipinSW_0; // @[CGRA.scala 483:14]
  assign pes_8_io_in_2 = gibs_15_io_ipinNE_0; // @[CGRA.scala 487:14]
  assign pes_8_io_in_3 = gibs_16_io_ipinNW_0; // @[CGRA.scala 491:14]
  assign pes_8_io_in_4 = gibs_10_io_ipinSE_1; // @[CGRA.scala 479:14]
  assign pes_8_io_in_5 = gibs_11_io_ipinSW_1; // @[CGRA.scala 483:14]
  assign pes_8_io_in_6 = gibs_15_io_ipinNE_1; // @[CGRA.scala 487:14]
  assign pes_8_io_in_7 = gibs_16_io_ipinNW_1; // @[CGRA.scala 491:14]
  assign pes_9_clock = clock;
  assign pes_9_reset = reset;
  assign pes_9_io_cfg_en = cfgRegs_6[50]; // @[CGRA.scala 671:37]
  assign pes_9_io_cfg_addr = cfgRegs_6[49:32]; // @[CGRA.scala 672:39]
  assign pes_9_io_cfg_data = cfgRegs_6[31:0]; // @[CGRA.scala 673:39]
  assign pes_9_io_en = io_en_2; // @[CGRA.scala 476:27]
  assign pes_9_io_in_0 = gibs_11_io_ipinSE_0; // @[CGRA.scala 479:14]
  assign pes_9_io_in_1 = gibs_12_io_ipinSW_0; // @[CGRA.scala 483:14]
  assign pes_9_io_in_2 = gibs_16_io_ipinNE_0; // @[CGRA.scala 487:14]
  assign pes_9_io_in_3 = gibs_17_io_ipinNW_0; // @[CGRA.scala 491:14]
  assign pes_9_io_in_4 = gibs_11_io_ipinSE_1; // @[CGRA.scala 479:14]
  assign pes_9_io_in_5 = gibs_12_io_ipinSW_1; // @[CGRA.scala 483:14]
  assign pes_9_io_in_6 = gibs_16_io_ipinNE_1; // @[CGRA.scala 487:14]
  assign pes_9_io_in_7 = gibs_17_io_ipinNW_1; // @[CGRA.scala 491:14]
  assign pes_10_clock = clock;
  assign pes_10_reset = reset;
  assign pes_10_io_cfg_en = cfgRegs_6[50]; // @[CGRA.scala 671:37]
  assign pes_10_io_cfg_addr = cfgRegs_6[49:32]; // @[CGRA.scala 672:39]
  assign pes_10_io_cfg_data = cfgRegs_6[31:0]; // @[CGRA.scala 673:39]
  assign pes_10_io_en = io_en_3; // @[CGRA.scala 476:27]
  assign pes_10_io_in_0 = gibs_12_io_ipinSE_0; // @[CGRA.scala 479:14]
  assign pes_10_io_in_1 = gibs_13_io_ipinSW_0; // @[CGRA.scala 483:14]
  assign pes_10_io_in_2 = gibs_17_io_ipinNE_0; // @[CGRA.scala 487:14]
  assign pes_10_io_in_3 = gibs_18_io_ipinNW_0; // @[CGRA.scala 491:14]
  assign pes_10_io_in_4 = gibs_12_io_ipinSE_1; // @[CGRA.scala 479:14]
  assign pes_10_io_in_5 = gibs_13_io_ipinSW_1; // @[CGRA.scala 483:14]
  assign pes_10_io_in_6 = gibs_17_io_ipinNE_1; // @[CGRA.scala 487:14]
  assign pes_10_io_in_7 = gibs_18_io_ipinNW_1; // @[CGRA.scala 491:14]
  assign pes_11_clock = clock;
  assign pes_11_reset = reset;
  assign pes_11_io_cfg_en = cfgRegs_6[50]; // @[CGRA.scala 671:37]
  assign pes_11_io_cfg_addr = cfgRegs_6[49:32]; // @[CGRA.scala 672:39]
  assign pes_11_io_cfg_data = cfgRegs_6[31:0]; // @[CGRA.scala 673:39]
  assign pes_11_io_en = io_en_4; // @[CGRA.scala 476:27]
  assign pes_11_io_in_0 = gibs_13_io_ipinSE_0; // @[CGRA.scala 479:14]
  assign pes_11_io_in_1 = gibs_14_io_ipinSW_0; // @[CGRA.scala 483:14]
  assign pes_11_io_in_2 = gibs_18_io_ipinNE_0; // @[CGRA.scala 487:14]
  assign pes_11_io_in_3 = gibs_19_io_ipinNW_0; // @[CGRA.scala 491:14]
  assign pes_11_io_in_4 = gibs_13_io_ipinSE_1; // @[CGRA.scala 479:14]
  assign pes_11_io_in_5 = gibs_14_io_ipinSW_1; // @[CGRA.scala 483:14]
  assign pes_11_io_in_6 = gibs_18_io_ipinNE_1; // @[CGRA.scala 487:14]
  assign pes_11_io_in_7 = gibs_19_io_ipinNW_1; // @[CGRA.scala 491:14]
  assign pes_12_clock = clock;
  assign pes_12_reset = reset;
  assign pes_12_io_cfg_en = cfgRegs_8[50]; // @[CGRA.scala 671:37]
  assign pes_12_io_cfg_addr = cfgRegs_8[49:32]; // @[CGRA.scala 672:39]
  assign pes_12_io_cfg_data = cfgRegs_8[31:0]; // @[CGRA.scala 673:39]
  assign pes_12_io_en = io_en_1; // @[CGRA.scala 476:27]
  assign pes_12_io_in_0 = gibs_15_io_ipinSE_0; // @[CGRA.scala 479:14]
  assign pes_12_io_in_1 = gibs_16_io_ipinSW_0; // @[CGRA.scala 483:14]
  assign pes_12_io_in_2 = gibs_20_io_ipinNE_0; // @[CGRA.scala 487:14]
  assign pes_12_io_in_3 = gibs_21_io_ipinNW_0; // @[CGRA.scala 491:14]
  assign pes_12_io_in_4 = gibs_15_io_ipinSE_1; // @[CGRA.scala 479:14]
  assign pes_12_io_in_5 = gibs_16_io_ipinSW_1; // @[CGRA.scala 483:14]
  assign pes_12_io_in_6 = gibs_20_io_ipinNE_1; // @[CGRA.scala 487:14]
  assign pes_12_io_in_7 = gibs_21_io_ipinNW_1; // @[CGRA.scala 491:14]
  assign pes_13_clock = clock;
  assign pes_13_reset = reset;
  assign pes_13_io_cfg_en = cfgRegs_8[50]; // @[CGRA.scala 671:37]
  assign pes_13_io_cfg_addr = cfgRegs_8[49:32]; // @[CGRA.scala 672:39]
  assign pes_13_io_cfg_data = cfgRegs_8[31:0]; // @[CGRA.scala 673:39]
  assign pes_13_io_en = io_en_2; // @[CGRA.scala 476:27]
  assign pes_13_io_in_0 = gibs_16_io_ipinSE_0; // @[CGRA.scala 479:14]
  assign pes_13_io_in_1 = gibs_17_io_ipinSW_0; // @[CGRA.scala 483:14]
  assign pes_13_io_in_2 = gibs_21_io_ipinNE_0; // @[CGRA.scala 487:14]
  assign pes_13_io_in_3 = gibs_22_io_ipinNW_0; // @[CGRA.scala 491:14]
  assign pes_13_io_in_4 = gibs_16_io_ipinSE_1; // @[CGRA.scala 479:14]
  assign pes_13_io_in_5 = gibs_17_io_ipinSW_1; // @[CGRA.scala 483:14]
  assign pes_13_io_in_6 = gibs_21_io_ipinNE_1; // @[CGRA.scala 487:14]
  assign pes_13_io_in_7 = gibs_22_io_ipinNW_1; // @[CGRA.scala 491:14]
  assign pes_14_clock = clock;
  assign pes_14_reset = reset;
  assign pes_14_io_cfg_en = cfgRegs_8[50]; // @[CGRA.scala 671:37]
  assign pes_14_io_cfg_addr = cfgRegs_8[49:32]; // @[CGRA.scala 672:39]
  assign pes_14_io_cfg_data = cfgRegs_8[31:0]; // @[CGRA.scala 673:39]
  assign pes_14_io_en = io_en_3; // @[CGRA.scala 476:27]
  assign pes_14_io_in_0 = gibs_17_io_ipinSE_0; // @[CGRA.scala 479:14]
  assign pes_14_io_in_1 = gibs_18_io_ipinSW_0; // @[CGRA.scala 483:14]
  assign pes_14_io_in_2 = gibs_22_io_ipinNE_0; // @[CGRA.scala 487:14]
  assign pes_14_io_in_3 = gibs_23_io_ipinNW_0; // @[CGRA.scala 491:14]
  assign pes_14_io_in_4 = gibs_17_io_ipinSE_1; // @[CGRA.scala 479:14]
  assign pes_14_io_in_5 = gibs_18_io_ipinSW_1; // @[CGRA.scala 483:14]
  assign pes_14_io_in_6 = gibs_22_io_ipinNE_1; // @[CGRA.scala 487:14]
  assign pes_14_io_in_7 = gibs_23_io_ipinNW_1; // @[CGRA.scala 491:14]
  assign pes_15_clock = clock;
  assign pes_15_reset = reset;
  assign pes_15_io_cfg_en = cfgRegs_8[50]; // @[CGRA.scala 671:37]
  assign pes_15_io_cfg_addr = cfgRegs_8[49:32]; // @[CGRA.scala 672:39]
  assign pes_15_io_cfg_data = cfgRegs_8[31:0]; // @[CGRA.scala 673:39]
  assign pes_15_io_en = io_en_4; // @[CGRA.scala 476:27]
  assign pes_15_io_in_0 = gibs_18_io_ipinSE_0; // @[CGRA.scala 479:14]
  assign pes_15_io_in_1 = gibs_19_io_ipinSW_0; // @[CGRA.scala 483:14]
  assign pes_15_io_in_2 = gibs_23_io_ipinNE_0; // @[CGRA.scala 487:14]
  assign pes_15_io_in_3 = gibs_24_io_ipinNW_0; // @[CGRA.scala 491:14]
  assign pes_15_io_in_4 = gibs_18_io_ipinSE_1; // @[CGRA.scala 479:14]
  assign pes_15_io_in_5 = gibs_19_io_ipinSW_1; // @[CGRA.scala 483:14]
  assign pes_15_io_in_6 = gibs_23_io_ipinNE_1; // @[CGRA.scala 487:14]
  assign pes_15_io_in_7 = gibs_24_io_ipinNW_1; // @[CGRA.scala 491:14]
  assign gibs_0_clock = clock;
  assign gibs_0_reset = reset;
  assign gibs_0_io_cfg_en = cfgRegs_1[50]; // @[CGRA.scala 667:42]
  assign gibs_0_io_cfg_addr = cfgRegs_1[49:32]; // @[CGRA.scala 668:44]
  assign gibs_0_io_cfg_data = cfgRegs_1[31:0]; // @[CGRA.scala 669:44]
  assign gibs_0_io_en = io_en_0; // @[CGRA.scala 518:25 CGRA.scala 551:42]
  assign gibs_0_io_opinNE_0 = ibs_0_io_out_0; // @[CGRA.scala 420:35]
  assign gibs_0_io_opinSE_0 = pes_0_io_out_0; // @[CGRA.scala 497:41]
  assign gibs_0_io_opinSW_0 = lsus_0_io_out_0; // @[CGRA.scala 609:39]
  assign gibs_0_io_itrackE_0 = gibs_1_io_otrackW_0; // @[CGRA.scala 554:16]
  assign gibs_0_io_itrackS_0 = gibs_5_io_otrackN_0; // @[CGRA.scala 521:16]
  assign gibs_1_clock = clock;
  assign gibs_1_reset = reset;
  assign gibs_1_io_cfg_en = cfgRegs_1[50]; // @[CGRA.scala 667:42]
  assign gibs_1_io_cfg_addr = cfgRegs_1[49:32]; // @[CGRA.scala 668:44]
  assign gibs_1_io_cfg_data = cfgRegs_1[31:0]; // @[CGRA.scala 669:44]
  assign gibs_1_io_en = io_en_1; // @[CGRA.scala 518:25 CGRA.scala 569:42]
  assign gibs_1_io_opinNW_0 = ibs_0_io_out_0; // @[CGRA.scala 421:37]
  assign gibs_1_io_opinNE_0 = ibs_1_io_out_0; // @[CGRA.scala 420:35]
  assign gibs_1_io_opinSE_0 = pes_1_io_out_0; // @[CGRA.scala 497:41]
  assign gibs_1_io_opinSW_0 = pes_0_io_out_0; // @[CGRA.scala 498:43]
  assign gibs_1_io_itrackW_0 = gibs_0_io_otrackE_0; // @[CGRA.scala 571:16]
  assign gibs_1_io_itrackE_0 = gibs_2_io_otrackW_0; // @[CGRA.scala 577:16]
  assign gibs_1_io_itrackS_0 = gibs_6_io_otrackN_0; // @[CGRA.scala 521:16]
  assign gibs_2_clock = clock;
  assign gibs_2_reset = reset;
  assign gibs_2_io_cfg_en = cfgRegs_1[50]; // @[CGRA.scala 667:42]
  assign gibs_2_io_cfg_addr = cfgRegs_1[49:32]; // @[CGRA.scala 668:44]
  assign gibs_2_io_cfg_data = cfgRegs_1[31:0]; // @[CGRA.scala 669:44]
  assign gibs_2_io_en = io_en_2; // @[CGRA.scala 518:25 CGRA.scala 569:42]
  assign gibs_2_io_opinNW_0 = ibs_1_io_out_0; // @[CGRA.scala 421:37]
  assign gibs_2_io_opinNE_0 = ibs_2_io_out_0; // @[CGRA.scala 420:35]
  assign gibs_2_io_opinSE_0 = pes_2_io_out_0; // @[CGRA.scala 497:41]
  assign gibs_2_io_opinSW_0 = pes_1_io_out_0; // @[CGRA.scala 498:43]
  assign gibs_2_io_itrackW_0 = gibs_1_io_otrackE_0; // @[CGRA.scala 571:16]
  assign gibs_2_io_itrackE_0 = gibs_3_io_otrackW_0; // @[CGRA.scala 577:16]
  assign gibs_2_io_itrackS_0 = gibs_7_io_otrackN_0; // @[CGRA.scala 521:16]
  assign gibs_3_clock = clock;
  assign gibs_3_reset = reset;
  assign gibs_3_io_cfg_en = cfgRegs_1[50]; // @[CGRA.scala 667:42]
  assign gibs_3_io_cfg_addr = cfgRegs_1[49:32]; // @[CGRA.scala 668:44]
  assign gibs_3_io_cfg_data = cfgRegs_1[31:0]; // @[CGRA.scala 669:44]
  assign gibs_3_io_en = io_en_3; // @[CGRA.scala 518:25 CGRA.scala 569:42]
  assign gibs_3_io_opinNW_0 = ibs_2_io_out_0; // @[CGRA.scala 421:37]
  assign gibs_3_io_opinNE_0 = ibs_3_io_out_0; // @[CGRA.scala 420:35]
  assign gibs_3_io_opinSE_0 = pes_3_io_out_0; // @[CGRA.scala 497:41]
  assign gibs_3_io_opinSW_0 = pes_2_io_out_0; // @[CGRA.scala 498:43]
  assign gibs_3_io_itrackW_0 = gibs_2_io_otrackE_0; // @[CGRA.scala 571:16]
  assign gibs_3_io_itrackE_0 = gibs_4_io_otrackW_0; // @[CGRA.scala 577:16]
  assign gibs_3_io_itrackS_0 = gibs_8_io_otrackN_0; // @[CGRA.scala 521:16]
  assign gibs_4_clock = clock;
  assign gibs_4_reset = reset;
  assign gibs_4_io_cfg_en = cfgRegs_1[50]; // @[CGRA.scala 667:42]
  assign gibs_4_io_cfg_addr = cfgRegs_1[49:32]; // @[CGRA.scala 668:44]
  assign gibs_4_io_cfg_data = cfgRegs_1[31:0]; // @[CGRA.scala 669:44]
  assign gibs_4_io_en = io_en_4; // @[CGRA.scala 518:25 CGRA.scala 560:42]
  assign gibs_4_io_opinNW_0 = ibs_3_io_out_0; // @[CGRA.scala 421:37]
  assign gibs_4_io_opinSE_0 = lsus_1_io_out_0; // @[CGRA.scala 629:46]
  assign gibs_4_io_opinSW_0 = pes_3_io_out_0; // @[CGRA.scala 498:43]
  assign gibs_4_io_itrackW_0 = gibs_3_io_otrackE_0; // @[CGRA.scala 563:16]
  assign gibs_4_io_itrackS_0 = gibs_9_io_otrackN_0; // @[CGRA.scala 521:16]
  assign gibs_5_clock = clock;
  assign gibs_5_reset = reset;
  assign gibs_5_io_cfg_en = cfgRegs_3[50]; // @[CGRA.scala 667:42]
  assign gibs_5_io_cfg_addr = cfgRegs_3[49:32]; // @[CGRA.scala 668:44]
  assign gibs_5_io_cfg_data = cfgRegs_3[31:0]; // @[CGRA.scala 669:44]
  assign gibs_5_io_en = io_en_0; // @[CGRA.scala 536:42 CGRA.scala 551:42]
  assign gibs_5_io_opinNW_0 = lsus_0_io_out_0; // @[CGRA.scala 610:43]
  assign gibs_5_io_opinNE_0 = pes_0_io_out_0; // @[CGRA.scala 499:45]
  assign gibs_5_io_opinSE_0 = pes_4_io_out_0; // @[CGRA.scala 497:41]
  assign gibs_5_io_opinSW_0 = lsus_2_io_out_0; // @[CGRA.scala 609:39]
  assign gibs_5_io_itrackN_0 = gibs_0_io_otrackS_0; // @[CGRA.scala 538:16]
  assign gibs_5_io_itrackE_0 = gibs_6_io_otrackW_0; // @[CGRA.scala 554:16]
  assign gibs_5_io_itrackS_0 = gibs_10_io_otrackN_0; // @[CGRA.scala 544:16]
  assign gibs_6_clock = clock;
  assign gibs_6_reset = reset;
  assign gibs_6_io_cfg_en = cfgRegs_3[50]; // @[CGRA.scala 667:42]
  assign gibs_6_io_cfg_addr = cfgRegs_3[49:32]; // @[CGRA.scala 668:44]
  assign gibs_6_io_cfg_data = cfgRegs_3[31:0]; // @[CGRA.scala 669:44]
  assign gibs_6_io_en = io_en_1; // @[CGRA.scala 536:42 CGRA.scala 569:42]
  assign gibs_6_io_opinNW_0 = pes_0_io_out_0; // @[CGRA.scala 500:47]
  assign gibs_6_io_opinNE_0 = pes_1_io_out_0; // @[CGRA.scala 499:45]
  assign gibs_6_io_opinSE_0 = pes_5_io_out_0; // @[CGRA.scala 497:41]
  assign gibs_6_io_opinSW_0 = pes_4_io_out_0; // @[CGRA.scala 498:43]
  assign gibs_6_io_itrackW_0 = gibs_5_io_otrackE_0; // @[CGRA.scala 571:16]
  assign gibs_6_io_itrackN_0 = gibs_1_io_otrackS_0; // @[CGRA.scala 538:16]
  assign gibs_6_io_itrackE_0 = gibs_7_io_otrackW_0; // @[CGRA.scala 577:16]
  assign gibs_6_io_itrackS_0 = gibs_11_io_otrackN_0; // @[CGRA.scala 544:16]
  assign gibs_7_clock = clock;
  assign gibs_7_reset = reset;
  assign gibs_7_io_cfg_en = cfgRegs_3[50]; // @[CGRA.scala 667:42]
  assign gibs_7_io_cfg_addr = cfgRegs_3[49:32]; // @[CGRA.scala 668:44]
  assign gibs_7_io_cfg_data = cfgRegs_3[31:0]; // @[CGRA.scala 669:44]
  assign gibs_7_io_en = io_en_2; // @[CGRA.scala 536:42 CGRA.scala 569:42]
  assign gibs_7_io_opinNW_0 = pes_1_io_out_0; // @[CGRA.scala 500:47]
  assign gibs_7_io_opinNE_0 = pes_2_io_out_0; // @[CGRA.scala 499:45]
  assign gibs_7_io_opinSE_0 = pes_6_io_out_0; // @[CGRA.scala 497:41]
  assign gibs_7_io_opinSW_0 = pes_5_io_out_0; // @[CGRA.scala 498:43]
  assign gibs_7_io_itrackW_0 = gibs_6_io_otrackE_0; // @[CGRA.scala 571:16]
  assign gibs_7_io_itrackN_0 = gibs_2_io_otrackS_0; // @[CGRA.scala 538:16]
  assign gibs_7_io_itrackE_0 = gibs_8_io_otrackW_0; // @[CGRA.scala 577:16]
  assign gibs_7_io_itrackS_0 = gibs_12_io_otrackN_0; // @[CGRA.scala 544:16]
  assign gibs_8_clock = clock;
  assign gibs_8_reset = reset;
  assign gibs_8_io_cfg_en = cfgRegs_3[50]; // @[CGRA.scala 667:42]
  assign gibs_8_io_cfg_addr = cfgRegs_3[49:32]; // @[CGRA.scala 668:44]
  assign gibs_8_io_cfg_data = cfgRegs_3[31:0]; // @[CGRA.scala 669:44]
  assign gibs_8_io_en = io_en_3; // @[CGRA.scala 536:42 CGRA.scala 569:42]
  assign gibs_8_io_opinNW_0 = pes_2_io_out_0; // @[CGRA.scala 500:47]
  assign gibs_8_io_opinNE_0 = pes_3_io_out_0; // @[CGRA.scala 499:45]
  assign gibs_8_io_opinSE_0 = pes_7_io_out_0; // @[CGRA.scala 497:41]
  assign gibs_8_io_opinSW_0 = pes_6_io_out_0; // @[CGRA.scala 498:43]
  assign gibs_8_io_itrackW_0 = gibs_7_io_otrackE_0; // @[CGRA.scala 571:16]
  assign gibs_8_io_itrackN_0 = gibs_3_io_otrackS_0; // @[CGRA.scala 538:16]
  assign gibs_8_io_itrackE_0 = gibs_9_io_otrackW_0; // @[CGRA.scala 577:16]
  assign gibs_8_io_itrackS_0 = gibs_13_io_otrackN_0; // @[CGRA.scala 544:16]
  assign gibs_9_clock = clock;
  assign gibs_9_reset = reset;
  assign gibs_9_io_cfg_en = cfgRegs_3[50]; // @[CGRA.scala 667:42]
  assign gibs_9_io_cfg_addr = cfgRegs_3[49:32]; // @[CGRA.scala 668:44]
  assign gibs_9_io_cfg_data = cfgRegs_3[31:0]; // @[CGRA.scala 669:44]
  assign gibs_9_io_en = io_en_4; // @[CGRA.scala 536:42 CGRA.scala 560:42]
  assign gibs_9_io_opinNW_0 = pes_3_io_out_0; // @[CGRA.scala 500:47]
  assign gibs_9_io_opinNE_0 = lsus_1_io_out_0; // @[CGRA.scala 630:50]
  assign gibs_9_io_opinSE_0 = lsus_3_io_out_0; // @[CGRA.scala 629:46]
  assign gibs_9_io_opinSW_0 = pes_7_io_out_0; // @[CGRA.scala 498:43]
  assign gibs_9_io_itrackW_0 = gibs_8_io_otrackE_0; // @[CGRA.scala 563:16]
  assign gibs_9_io_itrackN_0 = gibs_4_io_otrackS_0; // @[CGRA.scala 538:16]
  assign gibs_9_io_itrackS_0 = gibs_14_io_otrackN_0; // @[CGRA.scala 544:16]
  assign gibs_10_clock = clock;
  assign gibs_10_reset = reset;
  assign gibs_10_io_cfg_en = cfgRegs_5[50]; // @[CGRA.scala 667:42]
  assign gibs_10_io_cfg_addr = cfgRegs_5[49:32]; // @[CGRA.scala 668:44]
  assign gibs_10_io_cfg_data = cfgRegs_5[31:0]; // @[CGRA.scala 669:44]
  assign gibs_10_io_en = io_en_0; // @[CGRA.scala 536:42 CGRA.scala 551:42]
  assign gibs_10_io_opinNW_0 = lsus_2_io_out_0; // @[CGRA.scala 610:43]
  assign gibs_10_io_opinNE_0 = pes_4_io_out_0; // @[CGRA.scala 499:45]
  assign gibs_10_io_opinSE_0 = pes_8_io_out_0; // @[CGRA.scala 497:41]
  assign gibs_10_io_opinSW_0 = lsus_4_io_out_0; // @[CGRA.scala 609:39]
  assign gibs_10_io_itrackN_0 = gibs_5_io_otrackS_0; // @[CGRA.scala 538:16]
  assign gibs_10_io_itrackE_0 = gibs_11_io_otrackW_0; // @[CGRA.scala 554:16]
  assign gibs_10_io_itrackS_0 = gibs_15_io_otrackN_0; // @[CGRA.scala 544:16]
  assign gibs_11_clock = clock;
  assign gibs_11_reset = reset;
  assign gibs_11_io_cfg_en = cfgRegs_5[50]; // @[CGRA.scala 667:42]
  assign gibs_11_io_cfg_addr = cfgRegs_5[49:32]; // @[CGRA.scala 668:44]
  assign gibs_11_io_cfg_data = cfgRegs_5[31:0]; // @[CGRA.scala 669:44]
  assign gibs_11_io_en = io_en_1; // @[CGRA.scala 536:42 CGRA.scala 569:42]
  assign gibs_11_io_opinNW_0 = pes_4_io_out_0; // @[CGRA.scala 500:47]
  assign gibs_11_io_opinNE_0 = pes_5_io_out_0; // @[CGRA.scala 499:45]
  assign gibs_11_io_opinSE_0 = pes_9_io_out_0; // @[CGRA.scala 497:41]
  assign gibs_11_io_opinSW_0 = pes_8_io_out_0; // @[CGRA.scala 498:43]
  assign gibs_11_io_itrackW_0 = gibs_10_io_otrackE_0; // @[CGRA.scala 571:16]
  assign gibs_11_io_itrackN_0 = gibs_6_io_otrackS_0; // @[CGRA.scala 538:16]
  assign gibs_11_io_itrackE_0 = gibs_12_io_otrackW_0; // @[CGRA.scala 577:16]
  assign gibs_11_io_itrackS_0 = gibs_16_io_otrackN_0; // @[CGRA.scala 544:16]
  assign gibs_12_clock = clock;
  assign gibs_12_reset = reset;
  assign gibs_12_io_cfg_en = cfgRegs_5[50]; // @[CGRA.scala 667:42]
  assign gibs_12_io_cfg_addr = cfgRegs_5[49:32]; // @[CGRA.scala 668:44]
  assign gibs_12_io_cfg_data = cfgRegs_5[31:0]; // @[CGRA.scala 669:44]
  assign gibs_12_io_en = io_en_2; // @[CGRA.scala 536:42 CGRA.scala 569:42]
  assign gibs_12_io_opinNW_0 = pes_5_io_out_0; // @[CGRA.scala 500:47]
  assign gibs_12_io_opinNE_0 = pes_6_io_out_0; // @[CGRA.scala 499:45]
  assign gibs_12_io_opinSE_0 = pes_10_io_out_0; // @[CGRA.scala 497:41]
  assign gibs_12_io_opinSW_0 = pes_9_io_out_0; // @[CGRA.scala 498:43]
  assign gibs_12_io_itrackW_0 = gibs_11_io_otrackE_0; // @[CGRA.scala 571:16]
  assign gibs_12_io_itrackN_0 = gibs_7_io_otrackS_0; // @[CGRA.scala 538:16]
  assign gibs_12_io_itrackE_0 = gibs_13_io_otrackW_0; // @[CGRA.scala 577:16]
  assign gibs_12_io_itrackS_0 = gibs_17_io_otrackN_0; // @[CGRA.scala 544:16]
  assign gibs_13_clock = clock;
  assign gibs_13_reset = reset;
  assign gibs_13_io_cfg_en = cfgRegs_5[50]; // @[CGRA.scala 667:42]
  assign gibs_13_io_cfg_addr = cfgRegs_5[49:32]; // @[CGRA.scala 668:44]
  assign gibs_13_io_cfg_data = cfgRegs_5[31:0]; // @[CGRA.scala 669:44]
  assign gibs_13_io_en = io_en_3; // @[CGRA.scala 536:42 CGRA.scala 569:42]
  assign gibs_13_io_opinNW_0 = pes_6_io_out_0; // @[CGRA.scala 500:47]
  assign gibs_13_io_opinNE_0 = pes_7_io_out_0; // @[CGRA.scala 499:45]
  assign gibs_13_io_opinSE_0 = pes_11_io_out_0; // @[CGRA.scala 497:41]
  assign gibs_13_io_opinSW_0 = pes_10_io_out_0; // @[CGRA.scala 498:43]
  assign gibs_13_io_itrackW_0 = gibs_12_io_otrackE_0; // @[CGRA.scala 571:16]
  assign gibs_13_io_itrackN_0 = gibs_8_io_otrackS_0; // @[CGRA.scala 538:16]
  assign gibs_13_io_itrackE_0 = gibs_14_io_otrackW_0; // @[CGRA.scala 577:16]
  assign gibs_13_io_itrackS_0 = gibs_18_io_otrackN_0; // @[CGRA.scala 544:16]
  assign gibs_14_clock = clock;
  assign gibs_14_reset = reset;
  assign gibs_14_io_cfg_en = cfgRegs_5[50]; // @[CGRA.scala 667:42]
  assign gibs_14_io_cfg_addr = cfgRegs_5[49:32]; // @[CGRA.scala 668:44]
  assign gibs_14_io_cfg_data = cfgRegs_5[31:0]; // @[CGRA.scala 669:44]
  assign gibs_14_io_en = io_en_4; // @[CGRA.scala 536:42 CGRA.scala 560:42]
  assign gibs_14_io_opinNW_0 = pes_7_io_out_0; // @[CGRA.scala 500:47]
  assign gibs_14_io_opinNE_0 = lsus_3_io_out_0; // @[CGRA.scala 630:50]
  assign gibs_14_io_opinSE_0 = lsus_5_io_out_0; // @[CGRA.scala 629:46]
  assign gibs_14_io_opinSW_0 = pes_11_io_out_0; // @[CGRA.scala 498:43]
  assign gibs_14_io_itrackW_0 = gibs_13_io_otrackE_0; // @[CGRA.scala 563:16]
  assign gibs_14_io_itrackN_0 = gibs_9_io_otrackS_0; // @[CGRA.scala 538:16]
  assign gibs_14_io_itrackS_0 = gibs_19_io_otrackN_0; // @[CGRA.scala 544:16]
  assign gibs_15_clock = clock;
  assign gibs_15_reset = reset;
  assign gibs_15_io_cfg_en = cfgRegs_7[50]; // @[CGRA.scala 667:42]
  assign gibs_15_io_cfg_addr = cfgRegs_7[49:32]; // @[CGRA.scala 668:44]
  assign gibs_15_io_cfg_data = cfgRegs_7[31:0]; // @[CGRA.scala 669:44]
  assign gibs_15_io_en = io_en_0; // @[CGRA.scala 536:42 CGRA.scala 551:42]
  assign gibs_15_io_opinNW_0 = lsus_4_io_out_0; // @[CGRA.scala 610:43]
  assign gibs_15_io_opinNE_0 = pes_8_io_out_0; // @[CGRA.scala 499:45]
  assign gibs_15_io_opinSE_0 = pes_12_io_out_0; // @[CGRA.scala 497:41]
  assign gibs_15_io_opinSW_0 = lsus_6_io_out_0; // @[CGRA.scala 609:39]
  assign gibs_15_io_itrackN_0 = gibs_10_io_otrackS_0; // @[CGRA.scala 538:16]
  assign gibs_15_io_itrackE_0 = gibs_16_io_otrackW_0; // @[CGRA.scala 554:16]
  assign gibs_15_io_itrackS_0 = gibs_20_io_otrackN_0; // @[CGRA.scala 544:16]
  assign gibs_16_clock = clock;
  assign gibs_16_reset = reset;
  assign gibs_16_io_cfg_en = cfgRegs_7[50]; // @[CGRA.scala 667:42]
  assign gibs_16_io_cfg_addr = cfgRegs_7[49:32]; // @[CGRA.scala 668:44]
  assign gibs_16_io_cfg_data = cfgRegs_7[31:0]; // @[CGRA.scala 669:44]
  assign gibs_16_io_en = io_en_1; // @[CGRA.scala 536:42 CGRA.scala 569:42]
  assign gibs_16_io_opinNW_0 = pes_8_io_out_0; // @[CGRA.scala 500:47]
  assign gibs_16_io_opinNE_0 = pes_9_io_out_0; // @[CGRA.scala 499:45]
  assign gibs_16_io_opinSE_0 = pes_13_io_out_0; // @[CGRA.scala 497:41]
  assign gibs_16_io_opinSW_0 = pes_12_io_out_0; // @[CGRA.scala 498:43]
  assign gibs_16_io_itrackW_0 = gibs_15_io_otrackE_0; // @[CGRA.scala 571:16]
  assign gibs_16_io_itrackN_0 = gibs_11_io_otrackS_0; // @[CGRA.scala 538:16]
  assign gibs_16_io_itrackE_0 = gibs_17_io_otrackW_0; // @[CGRA.scala 577:16]
  assign gibs_16_io_itrackS_0 = gibs_21_io_otrackN_0; // @[CGRA.scala 544:16]
  assign gibs_17_clock = clock;
  assign gibs_17_reset = reset;
  assign gibs_17_io_cfg_en = cfgRegs_7[50]; // @[CGRA.scala 667:42]
  assign gibs_17_io_cfg_addr = cfgRegs_7[49:32]; // @[CGRA.scala 668:44]
  assign gibs_17_io_cfg_data = cfgRegs_7[31:0]; // @[CGRA.scala 669:44]
  assign gibs_17_io_en = io_en_2; // @[CGRA.scala 536:42 CGRA.scala 569:42]
  assign gibs_17_io_opinNW_0 = pes_9_io_out_0; // @[CGRA.scala 500:47]
  assign gibs_17_io_opinNE_0 = pes_10_io_out_0; // @[CGRA.scala 499:45]
  assign gibs_17_io_opinSE_0 = pes_14_io_out_0; // @[CGRA.scala 497:41]
  assign gibs_17_io_opinSW_0 = pes_13_io_out_0; // @[CGRA.scala 498:43]
  assign gibs_17_io_itrackW_0 = gibs_16_io_otrackE_0; // @[CGRA.scala 571:16]
  assign gibs_17_io_itrackN_0 = gibs_12_io_otrackS_0; // @[CGRA.scala 538:16]
  assign gibs_17_io_itrackE_0 = gibs_18_io_otrackW_0; // @[CGRA.scala 577:16]
  assign gibs_17_io_itrackS_0 = gibs_22_io_otrackN_0; // @[CGRA.scala 544:16]
  assign gibs_18_clock = clock;
  assign gibs_18_reset = reset;
  assign gibs_18_io_cfg_en = cfgRegs_7[50]; // @[CGRA.scala 667:42]
  assign gibs_18_io_cfg_addr = cfgRegs_7[49:32]; // @[CGRA.scala 668:44]
  assign gibs_18_io_cfg_data = cfgRegs_7[31:0]; // @[CGRA.scala 669:44]
  assign gibs_18_io_en = io_en_3; // @[CGRA.scala 536:42 CGRA.scala 569:42]
  assign gibs_18_io_opinNW_0 = pes_10_io_out_0; // @[CGRA.scala 500:47]
  assign gibs_18_io_opinNE_0 = pes_11_io_out_0; // @[CGRA.scala 499:45]
  assign gibs_18_io_opinSE_0 = pes_15_io_out_0; // @[CGRA.scala 497:41]
  assign gibs_18_io_opinSW_0 = pes_14_io_out_0; // @[CGRA.scala 498:43]
  assign gibs_18_io_itrackW_0 = gibs_17_io_otrackE_0; // @[CGRA.scala 571:16]
  assign gibs_18_io_itrackN_0 = gibs_13_io_otrackS_0; // @[CGRA.scala 538:16]
  assign gibs_18_io_itrackE_0 = gibs_19_io_otrackW_0; // @[CGRA.scala 577:16]
  assign gibs_18_io_itrackS_0 = gibs_23_io_otrackN_0; // @[CGRA.scala 544:16]
  assign gibs_19_clock = clock;
  assign gibs_19_reset = reset;
  assign gibs_19_io_cfg_en = cfgRegs_7[50]; // @[CGRA.scala 667:42]
  assign gibs_19_io_cfg_addr = cfgRegs_7[49:32]; // @[CGRA.scala 668:44]
  assign gibs_19_io_cfg_data = cfgRegs_7[31:0]; // @[CGRA.scala 669:44]
  assign gibs_19_io_en = io_en_4; // @[CGRA.scala 536:42 CGRA.scala 560:42]
  assign gibs_19_io_opinNW_0 = pes_11_io_out_0; // @[CGRA.scala 500:47]
  assign gibs_19_io_opinNE_0 = lsus_5_io_out_0; // @[CGRA.scala 630:50]
  assign gibs_19_io_opinSE_0 = lsus_7_io_out_0; // @[CGRA.scala 629:46]
  assign gibs_19_io_opinSW_0 = pes_15_io_out_0; // @[CGRA.scala 498:43]
  assign gibs_19_io_itrackW_0 = gibs_18_io_otrackE_0; // @[CGRA.scala 563:16]
  assign gibs_19_io_itrackN_0 = gibs_14_io_otrackS_0; // @[CGRA.scala 538:16]
  assign gibs_19_io_itrackS_0 = gibs_24_io_otrackN_0; // @[CGRA.scala 544:16]
  assign gibs_20_clock = clock;
  assign gibs_20_reset = reset;
  assign gibs_20_io_cfg_en = cfgRegs_9[50]; // @[CGRA.scala 667:42]
  assign gibs_20_io_cfg_addr = cfgRegs_9[49:32]; // @[CGRA.scala 668:44]
  assign gibs_20_io_cfg_data = cfgRegs_9[31:0]; // @[CGRA.scala 669:44]
  assign gibs_20_io_en = io_en_0; // @[CGRA.scala 527:42 CGRA.scala 551:42]
  assign gibs_20_io_opinNW_0 = lsus_6_io_out_0; // @[CGRA.scala 610:43]
  assign gibs_20_io_opinNE_0 = pes_12_io_out_0; // @[CGRA.scala 499:45]
  assign gibs_20_io_opinSE_0 = ibs_4_io_out_0; // @[CGRA.scala 428:35]
  assign gibs_20_io_itrackN_0 = gibs_15_io_otrackS_0; // @[CGRA.scala 530:16]
  assign gibs_20_io_itrackE_0 = gibs_21_io_otrackW_0; // @[CGRA.scala 554:16]
  assign gibs_21_clock = clock;
  assign gibs_21_reset = reset;
  assign gibs_21_io_cfg_en = cfgRegs_9[50]; // @[CGRA.scala 667:42]
  assign gibs_21_io_cfg_addr = cfgRegs_9[49:32]; // @[CGRA.scala 668:44]
  assign gibs_21_io_cfg_data = cfgRegs_9[31:0]; // @[CGRA.scala 669:44]
  assign gibs_21_io_en = io_en_1; // @[CGRA.scala 527:42 CGRA.scala 569:42]
  assign gibs_21_io_opinNW_0 = pes_12_io_out_0; // @[CGRA.scala 500:47]
  assign gibs_21_io_opinNE_0 = pes_13_io_out_0; // @[CGRA.scala 499:45]
  assign gibs_21_io_opinSE_0 = ibs_5_io_out_0; // @[CGRA.scala 428:35]
  assign gibs_21_io_opinSW_0 = ibs_4_io_out_0; // @[CGRA.scala 429:37]
  assign gibs_21_io_itrackW_0 = gibs_20_io_otrackE_0; // @[CGRA.scala 571:16]
  assign gibs_21_io_itrackN_0 = gibs_16_io_otrackS_0; // @[CGRA.scala 530:16]
  assign gibs_21_io_itrackE_0 = gibs_22_io_otrackW_0; // @[CGRA.scala 577:16]
  assign gibs_22_clock = clock;
  assign gibs_22_reset = reset;
  assign gibs_22_io_cfg_en = cfgRegs_9[50]; // @[CGRA.scala 667:42]
  assign gibs_22_io_cfg_addr = cfgRegs_9[49:32]; // @[CGRA.scala 668:44]
  assign gibs_22_io_cfg_data = cfgRegs_9[31:0]; // @[CGRA.scala 669:44]
  assign gibs_22_io_en = io_en_2; // @[CGRA.scala 527:42 CGRA.scala 569:42]
  assign gibs_22_io_opinNW_0 = pes_13_io_out_0; // @[CGRA.scala 500:47]
  assign gibs_22_io_opinNE_0 = pes_14_io_out_0; // @[CGRA.scala 499:45]
  assign gibs_22_io_opinSE_0 = ibs_6_io_out_0; // @[CGRA.scala 428:35]
  assign gibs_22_io_opinSW_0 = ibs_5_io_out_0; // @[CGRA.scala 429:37]
  assign gibs_22_io_itrackW_0 = gibs_21_io_otrackE_0; // @[CGRA.scala 571:16]
  assign gibs_22_io_itrackN_0 = gibs_17_io_otrackS_0; // @[CGRA.scala 530:16]
  assign gibs_22_io_itrackE_0 = gibs_23_io_otrackW_0; // @[CGRA.scala 577:16]
  assign gibs_23_clock = clock;
  assign gibs_23_reset = reset;
  assign gibs_23_io_cfg_en = cfgRegs_9[50]; // @[CGRA.scala 667:42]
  assign gibs_23_io_cfg_addr = cfgRegs_9[49:32]; // @[CGRA.scala 668:44]
  assign gibs_23_io_cfg_data = cfgRegs_9[31:0]; // @[CGRA.scala 669:44]
  assign gibs_23_io_en = io_en_3; // @[CGRA.scala 527:42 CGRA.scala 569:42]
  assign gibs_23_io_opinNW_0 = pes_14_io_out_0; // @[CGRA.scala 500:47]
  assign gibs_23_io_opinNE_0 = pes_15_io_out_0; // @[CGRA.scala 499:45]
  assign gibs_23_io_opinSE_0 = ibs_7_io_out_0; // @[CGRA.scala 428:35]
  assign gibs_23_io_opinSW_0 = ibs_6_io_out_0; // @[CGRA.scala 429:37]
  assign gibs_23_io_itrackW_0 = gibs_22_io_otrackE_0; // @[CGRA.scala 571:16]
  assign gibs_23_io_itrackN_0 = gibs_18_io_otrackS_0; // @[CGRA.scala 530:16]
  assign gibs_23_io_itrackE_0 = gibs_24_io_otrackW_0; // @[CGRA.scala 577:16]
  assign gibs_24_clock = clock;
  assign gibs_24_reset = reset;
  assign gibs_24_io_cfg_en = cfgRegs_9[50]; // @[CGRA.scala 667:42]
  assign gibs_24_io_cfg_addr = cfgRegs_9[49:32]; // @[CGRA.scala 668:44]
  assign gibs_24_io_cfg_data = cfgRegs_9[31:0]; // @[CGRA.scala 669:44]
  assign gibs_24_io_en = io_en_4; // @[CGRA.scala 527:42 CGRA.scala 560:42]
  assign gibs_24_io_opinNW_0 = pes_15_io_out_0; // @[CGRA.scala 500:47]
  assign gibs_24_io_opinNE_0 = lsus_7_io_out_0; // @[CGRA.scala 630:50]
  assign gibs_24_io_opinSW_0 = ibs_7_io_out_0; // @[CGRA.scala 429:37]
  assign gibs_24_io_itrackW_0 = gibs_23_io_otrackE_0; // @[CGRA.scala 563:16]
  assign gibs_24_io_itrackN_0 = gibs_19_io_otrackS_0; // @[CGRA.scala 530:16]
  assign lsus_0_clock = clock;
  assign lsus_0_reset = reset;
  assign lsus_0_io_cfg_en = cfgRegs_2[50]; // @[CGRA.scala 678:35]
  assign lsus_0_io_cfg_addr = cfgRegs_2[49:32]; // @[CGRA.scala 679:37]
  assign lsus_0_io_cfg_data = cfgRegs_2[31:0]; // @[CGRA.scala 680:37]
  assign lsus_0_io_hostInterface_read_addr = io_hostInterface_0_read_addr; // @[CGRA.scala 595:36]
  assign lsus_0_io_hostInterface_read_data_ready = io_hostInterface_0_read_data_ready; // @[CGRA.scala 595:36]
  assign lsus_0_io_hostInterface_write_addr = io_hostInterface_0_write_addr; // @[CGRA.scala 595:36]
  assign lsus_0_io_hostInterface_write_data_valid = io_hostInterface_0_write_data_valid; // @[CGRA.scala 595:36]
  assign lsus_0_io_hostInterface_write_data_bits = io_hostInterface_0_write_data_bits; // @[CGRA.scala 595:36]
  assign lsus_0_io_hostInterface_cycle = io_hostInterface_0_cycle; // @[CGRA.scala 595:36]
  assign lsus_0_io_en = io_en_0; // @[CGRA.scala 594:25]
  assign lsus_0_io_in_0 = gibs_0_io_ipinSW_0; // @[CGRA.scala 599:14]
  assign lsus_0_io_in_1 = gibs_5_io_ipinNW_0; // @[CGRA.scala 603:14]
  assign lsus_1_clock = clock;
  assign lsus_1_reset = reset;
  assign lsus_1_io_cfg_en = cfgRegs_2[50]; // @[CGRA.scala 678:35]
  assign lsus_1_io_cfg_addr = cfgRegs_2[49:32]; // @[CGRA.scala 679:37]
  assign lsus_1_io_cfg_data = cfgRegs_2[31:0]; // @[CGRA.scala 680:37]
  assign lsus_1_io_hostInterface_read_addr = io_hostInterface_1_read_addr; // @[CGRA.scala 595:36]
  assign lsus_1_io_hostInterface_read_data_ready = io_hostInterface_1_read_data_ready; // @[CGRA.scala 595:36]
  assign lsus_1_io_hostInterface_write_addr = io_hostInterface_1_write_addr; // @[CGRA.scala 595:36]
  assign lsus_1_io_hostInterface_write_data_valid = io_hostInterface_1_write_data_valid; // @[CGRA.scala 595:36]
  assign lsus_1_io_hostInterface_write_data_bits = io_hostInterface_1_write_data_bits; // @[CGRA.scala 595:36]
  assign lsus_1_io_hostInterface_cycle = io_hostInterface_1_cycle; // @[CGRA.scala 595:36]
  assign lsus_1_io_en = io_en_5; // @[CGRA.scala 594:25]
  assign lsus_1_io_in_0 = gibs_4_io_ipinSE_0; // @[CGRA.scala 619:16]
  assign lsus_1_io_in_1 = gibs_9_io_ipinNE_0; // @[CGRA.scala 623:16]
  assign lsus_2_clock = clock;
  assign lsus_2_reset = reset;
  assign lsus_2_io_cfg_en = cfgRegs_4[50]; // @[CGRA.scala 678:35]
  assign lsus_2_io_cfg_addr = cfgRegs_4[49:32]; // @[CGRA.scala 679:37]
  assign lsus_2_io_cfg_data = cfgRegs_4[31:0]; // @[CGRA.scala 680:37]
  assign lsus_2_io_hostInterface_read_addr = io_hostInterface_2_read_addr; // @[CGRA.scala 595:36]
  assign lsus_2_io_hostInterface_read_data_ready = io_hostInterface_2_read_data_ready; // @[CGRA.scala 595:36]
  assign lsus_2_io_hostInterface_write_addr = io_hostInterface_2_write_addr; // @[CGRA.scala 595:36]
  assign lsus_2_io_hostInterface_write_data_valid = io_hostInterface_2_write_data_valid; // @[CGRA.scala 595:36]
  assign lsus_2_io_hostInterface_write_data_bits = io_hostInterface_2_write_data_bits; // @[CGRA.scala 595:36]
  assign lsus_2_io_hostInterface_cycle = io_hostInterface_2_cycle; // @[CGRA.scala 595:36]
  assign lsus_2_io_en = io_en_0; // @[CGRA.scala 594:25]
  assign lsus_2_io_in_0 = gibs_5_io_ipinSW_0; // @[CGRA.scala 599:14]
  assign lsus_2_io_in_1 = gibs_10_io_ipinNW_0; // @[CGRA.scala 603:14]
  assign lsus_3_clock = clock;
  assign lsus_3_reset = reset;
  assign lsus_3_io_cfg_en = cfgRegs_4[50]; // @[CGRA.scala 678:35]
  assign lsus_3_io_cfg_addr = cfgRegs_4[49:32]; // @[CGRA.scala 679:37]
  assign lsus_3_io_cfg_data = cfgRegs_4[31:0]; // @[CGRA.scala 680:37]
  assign lsus_3_io_hostInterface_read_addr = io_hostInterface_3_read_addr; // @[CGRA.scala 595:36]
  assign lsus_3_io_hostInterface_read_data_ready = io_hostInterface_3_read_data_ready; // @[CGRA.scala 595:36]
  assign lsus_3_io_hostInterface_write_addr = io_hostInterface_3_write_addr; // @[CGRA.scala 595:36]
  assign lsus_3_io_hostInterface_write_data_valid = io_hostInterface_3_write_data_valid; // @[CGRA.scala 595:36]
  assign lsus_3_io_hostInterface_write_data_bits = io_hostInterface_3_write_data_bits; // @[CGRA.scala 595:36]
  assign lsus_3_io_hostInterface_cycle = io_hostInterface_3_cycle; // @[CGRA.scala 595:36]
  assign lsus_3_io_en = io_en_5; // @[CGRA.scala 594:25]
  assign lsus_3_io_in_0 = gibs_9_io_ipinSE_0; // @[CGRA.scala 619:16]
  assign lsus_3_io_in_1 = gibs_14_io_ipinNE_0; // @[CGRA.scala 623:16]
  assign lsus_4_clock = clock;
  assign lsus_4_reset = reset;
  assign lsus_4_io_cfg_en = cfgRegs_6[50]; // @[CGRA.scala 678:35]
  assign lsus_4_io_cfg_addr = cfgRegs_6[49:32]; // @[CGRA.scala 679:37]
  assign lsus_4_io_cfg_data = cfgRegs_6[31:0]; // @[CGRA.scala 680:37]
  assign lsus_4_io_hostInterface_read_addr = io_hostInterface_4_read_addr; // @[CGRA.scala 595:36]
  assign lsus_4_io_hostInterface_read_data_ready = io_hostInterface_4_read_data_ready; // @[CGRA.scala 595:36]
  assign lsus_4_io_hostInterface_write_addr = io_hostInterface_4_write_addr; // @[CGRA.scala 595:36]
  assign lsus_4_io_hostInterface_write_data_valid = io_hostInterface_4_write_data_valid; // @[CGRA.scala 595:36]
  assign lsus_4_io_hostInterface_write_data_bits = io_hostInterface_4_write_data_bits; // @[CGRA.scala 595:36]
  assign lsus_4_io_hostInterface_cycle = io_hostInterface_4_cycle; // @[CGRA.scala 595:36]
  assign lsus_4_io_en = io_en_0; // @[CGRA.scala 594:25]
  assign lsus_4_io_in_0 = gibs_10_io_ipinSW_0; // @[CGRA.scala 599:14]
  assign lsus_4_io_in_1 = gibs_15_io_ipinNW_0; // @[CGRA.scala 603:14]
  assign lsus_5_clock = clock;
  assign lsus_5_reset = reset;
  assign lsus_5_io_cfg_en = cfgRegs_6[50]; // @[CGRA.scala 678:35]
  assign lsus_5_io_cfg_addr = cfgRegs_6[49:32]; // @[CGRA.scala 679:37]
  assign lsus_5_io_cfg_data = cfgRegs_6[31:0]; // @[CGRA.scala 680:37]
  assign lsus_5_io_hostInterface_read_addr = io_hostInterface_5_read_addr; // @[CGRA.scala 595:36]
  assign lsus_5_io_hostInterface_read_data_ready = io_hostInterface_5_read_data_ready; // @[CGRA.scala 595:36]
  assign lsus_5_io_hostInterface_write_addr = io_hostInterface_5_write_addr; // @[CGRA.scala 595:36]
  assign lsus_5_io_hostInterface_write_data_valid = io_hostInterface_5_write_data_valid; // @[CGRA.scala 595:36]
  assign lsus_5_io_hostInterface_write_data_bits = io_hostInterface_5_write_data_bits; // @[CGRA.scala 595:36]
  assign lsus_5_io_hostInterface_cycle = io_hostInterface_5_cycle; // @[CGRA.scala 595:36]
  assign lsus_5_io_en = io_en_5; // @[CGRA.scala 594:25]
  assign lsus_5_io_in_0 = gibs_14_io_ipinSE_0; // @[CGRA.scala 619:16]
  assign lsus_5_io_in_1 = gibs_19_io_ipinNE_0; // @[CGRA.scala 623:16]
  assign lsus_6_clock = clock;
  assign lsus_6_reset = reset;
  assign lsus_6_io_cfg_en = cfgRegs_8[50]; // @[CGRA.scala 678:35]
  assign lsus_6_io_cfg_addr = cfgRegs_8[49:32]; // @[CGRA.scala 679:37]
  assign lsus_6_io_cfg_data = cfgRegs_8[31:0]; // @[CGRA.scala 680:37]
  assign lsus_6_io_hostInterface_read_addr = io_hostInterface_6_read_addr; // @[CGRA.scala 595:36]
  assign lsus_6_io_hostInterface_read_data_ready = io_hostInterface_6_read_data_ready; // @[CGRA.scala 595:36]
  assign lsus_6_io_hostInterface_write_addr = io_hostInterface_6_write_addr; // @[CGRA.scala 595:36]
  assign lsus_6_io_hostInterface_write_data_valid = io_hostInterface_6_write_data_valid; // @[CGRA.scala 595:36]
  assign lsus_6_io_hostInterface_write_data_bits = io_hostInterface_6_write_data_bits; // @[CGRA.scala 595:36]
  assign lsus_6_io_hostInterface_cycle = io_hostInterface_6_cycle; // @[CGRA.scala 595:36]
  assign lsus_6_io_en = io_en_0; // @[CGRA.scala 594:25]
  assign lsus_6_io_in_0 = gibs_15_io_ipinSW_0; // @[CGRA.scala 599:14]
  assign lsus_6_io_in_1 = gibs_20_io_ipinNW_0; // @[CGRA.scala 603:14]
  assign lsus_7_clock = clock;
  assign lsus_7_reset = reset;
  assign lsus_7_io_cfg_en = cfgRegs_8[50]; // @[CGRA.scala 678:35]
  assign lsus_7_io_cfg_addr = cfgRegs_8[49:32]; // @[CGRA.scala 679:37]
  assign lsus_7_io_cfg_data = cfgRegs_8[31:0]; // @[CGRA.scala 680:37]
  assign lsus_7_io_hostInterface_read_addr = io_hostInterface_7_read_addr; // @[CGRA.scala 595:36]
  assign lsus_7_io_hostInterface_read_data_ready = io_hostInterface_7_read_data_ready; // @[CGRA.scala 595:36]
  assign lsus_7_io_hostInterface_write_addr = io_hostInterface_7_write_addr; // @[CGRA.scala 595:36]
  assign lsus_7_io_hostInterface_write_data_valid = io_hostInterface_7_write_data_valid; // @[CGRA.scala 595:36]
  assign lsus_7_io_hostInterface_write_data_bits = io_hostInterface_7_write_data_bits; // @[CGRA.scala 595:36]
  assign lsus_7_io_hostInterface_cycle = io_hostInterface_7_cycle; // @[CGRA.scala 595:36]
  assign lsus_7_io_en = io_en_5; // @[CGRA.scala 594:25]
  assign lsus_7_io_in_0 = gibs_19_io_ipinSE_0; // @[CGRA.scala 619:16]
  assign lsus_7_io_in_1 = gibs_24_io_ipinNE_0; // @[CGRA.scala 623:16]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  cfgRegs_0 = _RAND_0[50:0];
  _RAND_1 = {2{`RANDOM}};
  cfgRegs_1 = _RAND_1[50:0];
  _RAND_2 = {2{`RANDOM}};
  cfgRegs_2 = _RAND_2[50:0];
  _RAND_3 = {2{`RANDOM}};
  cfgRegs_3 = _RAND_3[50:0];
  _RAND_4 = {2{`RANDOM}};
  cfgRegs_4 = _RAND_4[50:0];
  _RAND_5 = {2{`RANDOM}};
  cfgRegs_5 = _RAND_5[50:0];
  _RAND_6 = {2{`RANDOM}};
  cfgRegs_6 = _RAND_6[50:0];
  _RAND_7 = {2{`RANDOM}};
  cfgRegs_7 = _RAND_7[50:0];
  _RAND_8 = {2{`RANDOM}};
  cfgRegs_8 = _RAND_8[50:0];
  _RAND_9 = {2{`RANDOM}};
  cfgRegs_9 = _RAND_9[50:0];
  _RAND_10 = {2{`RANDOM}};
  cfgRegs_10 = _RAND_10[50:0];
  _RAND_11 = {2{`RANDOM}};
  cfgRegs_11 = _RAND_11[50:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cfgRegs_0 <= 51'h0;
    end else begin
      cfgRegs_0 <= _T_2;
    end
    if (reset) begin
      cfgRegs_1 <= 51'h0;
    end else begin
      cfgRegs_1 <= cfgRegs_0;
    end
    if (reset) begin
      cfgRegs_2 <= 51'h0;
    end else begin
      cfgRegs_2 <= cfgRegs_1;
    end
    if (reset) begin
      cfgRegs_3 <= 51'h0;
    end else begin
      cfgRegs_3 <= cfgRegs_2;
    end
    if (reset) begin
      cfgRegs_4 <= 51'h0;
    end else begin
      cfgRegs_4 <= cfgRegs_3;
    end
    if (reset) begin
      cfgRegs_5 <= 51'h0;
    end else begin
      cfgRegs_5 <= cfgRegs_4;
    end
    if (reset) begin
      cfgRegs_6 <= 51'h0;
    end else begin
      cfgRegs_6 <= cfgRegs_5;
    end
    if (reset) begin
      cfgRegs_7 <= 51'h0;
    end else begin
      cfgRegs_7 <= cfgRegs_6;
    end
    if (reset) begin
      cfgRegs_8 <= 51'h0;
    end else begin
      cfgRegs_8 <= cfgRegs_7;
    end
    if (reset) begin
      cfgRegs_9 <= 51'h0;
    end else begin
      cfgRegs_9 <= cfgRegs_8;
    end
    if (reset) begin
      cfgRegs_10 <= 51'h0;
    end else begin
      cfgRegs_10 <= cfgRegs_9;
    end
    if (reset) begin
      cfgRegs_11 <= 51'h0;
    end else begin
      cfgRegs_11 <= cfgRegs_10;
    end
  end
endmodule
