// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Nov 30 10:45:29 2025
// Host        : BZA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/32530/Desktop/fpga/lab5_1/lab5_1.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dist_mem_gen_0
   (a,
    spo);
  input [5:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [5:0]a;
  wire [21:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [31:2]NLW_U0_spo_UNCONNECTED;

  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29] = \<const0> ;
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26] = \<const0> ;
  assign spo[25] = \<const0> ;
  assign spo[24] = \<const0> ;
  assign spo[23] = \<const0> ;
  assign spo[22] = \<const0> ;
  assign spo[21:20] = \^spo [21:20];
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17] = \<const0> ;
  assign spo[16:15] = \^spo [16:15];
  assign spo[14] = \<const0> ;
  assign spo[13] = \^spo [13];
  assign spo[12] = \<const0> ;
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9:7] = \^spo [9:7];
  assign spo[6] = \<const0> ;
  assign spo[5:4] = \^spo [5:4];
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1:0] = \^spo [1:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  dist_mem_gen_0_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo({NLW_U0_spo_UNCONNECTED[31:22],\^spo }),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
bEktTo8XfP53J4LC9J1bzNOsr+DeYSQtsSeSeRwv1ROtu7MJT7BubpFM5B3JNITvmmXMIQ7cHCcM
BFy5Vu0fdwcQmgznzr1F4XAF5OH/PlBVKmCiA5IZpd+UQUMuy8l823afh4u8+Fg3bwZX7B36A3bn
Zez9yHjSKD7JGdQ9zA8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vAZQ8ZTe/MermX+omywGuwEzd7SLijiaDbuX0B9K4vjWUXvRoI6Em0qizreOX/qdo4JlybEpt70i
jJhVvWv69a9yKb8TMuvLagWbQydSwTJKTY6VSR/CtA2Uive8NvQyiQKFXLjR8k8OBlgOYmyzZEEM
vYgZLdnM3d2xSMMmeGF+dNh8tCJpM10LRaCrnj5w8L73RtOImlhI/zlR8cC5oo1TbyRV+JuHvvMZ
sYS3+4qn/f80Ugvao3cYMW0LtoTftK9oYpzhiyqg6hnJnbGsAENom2wqBpcRJf1vsI98WiJqDCuh
LIdMFI+M5KuqToM8D+FTQUOT2NniYpTmj5qTFg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VpwnevLJi/mNDesLbbdRntRX/1KkSUuxvcBO6/opCSkxKA2w7s8Eyh+CvZJvHhBMtWZquJPlWZsE
d3toYaeyczcrzAzfKryx5nnTvscAyYnKl8QyY0fWsE1UqWjg6tazMCtzxlfF3HfKx/GSm3D/0NEz
xzyxLBgRosbKCX4YRV0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MhGbYf5xy0E517prDNoCHbf/sVQ5JHlfzlh1Fz+rfDm8S3/Zt1g/AR2QuQPNwJUQO22hvTTB491a
xRG5ct3upD6ZdXgMesPA9KgwjRjoBp/uriYuT6Sb/yE2jugYl2qBGpqxN9n2OgAVfK3o9XZ/aIcR
St2PwrmKRzU/ZoYenWUMZ6ZRsVNlzFCEBcKop6f5TBy0bWAeebXRZ0Mot23DVX4pqVyFaQoXdmkm
56Vr2jGszkLic4M0JoKahUlQpnrZuHIWgFVd/RzXXP9HwYBRQTxaKnNX6eWTdksVvzAImMYoPa4G
PJJFf+gsNAKp5BIFXjwHfNC+Nerc6XzDmxe+pw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jfnJJlFHpbB8S3PjID3rEIRi4fzY1WUZaITx6CJ38mSZfYSA13DJislb1OQ17w4Hnv5eGM/0GVgA
2jPR4wYaMzC8v3iDfETrH4kyrFglo3a/NDlACuR1U65YoHUnUu0UmMMovxQEnd9ByAfOtabZPL4j
FTvCoVMpwI8rdT4YJQ5pYXryESdM3NUe29p9OWbY1EalisEVViKuSwS4LzwtaOmrPecCE56FGEp+
2iyBMICOFF2PpT8Bqp39Z2rx4xyIiudZKo3LNimTm/UYBCnPAJ7XBIS+JiCIOkHsPER+wNivbtUb
J02F8ZLbEtS0qmUdYDXO4qqhc1njU9O6Uk9yNA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uOK6pXmc+RsarhB5GcgUPkseiDLhaN7KZ4C18Aqea9NqSbvIERAENTml4U58cVlx6j599K+L2aW5
rVMZLtj8UE4yfEDhtivrSdBYh446mqbnToHhH5r4BmzYnr6BUuXVZ4NIUU29WnaJUZxwrvZeCln4
GQCdP1kUA1Ozy9B47ndTYgOzCcZSr9w36W7ZA1gm34lqVpXYuGsaRTvk1DhS96aFGCeiCTbs5HM3
e0JPkZ7YUsMgWuRzE+jHE1TEMVjbPkpPjFGCYOEeDf2bc/2s2fPLA3bxMs61xUFH5LAd7Qrs9D2v
Mx+Vcfvo7kmp3J5LW99NXfA9OvG1JgjJ7ykhmw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OS52LCfxYaApFxxvQUqjJD8DSzwhbsM5irqCX6E4R0iBINlXI3QVmtLKp8vhPICYZWjEuTIVzohU
28vwAOP2ECPWOkJjN+ny9RQeAKmQhPbxHYOysXg4IgtMbK+ZODUoMyLIsJzz2yIFl5qvQeLBnc44
NvqDk7nFLhtrN9De4XV14FKtDvQG0BdWr2mXiS7WiEAQxiww87A0M8yP82JlG6ykYSwQh5G8K6pv
YHoqI8mKAC+KGuDltBnyBrKGip5pRq7Kf+0okVAOwt0lJwDvS0JMNEUg1HK/mEIR6TKUdd8B/fms
4qcaCBYsptjoZVCq4ygSG56x8uaQXMVsEALe2w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Aew/RSoMZUIh8oIZPhChM37w+R5unp+7pprfqezjGFUVX16UeT1spPFU1DaqTQvQkXhBe4/aNxvo
Y2eUJsQd8zSC9wBoevCnvwaHEv/IBc+OKmBzOPxO1hHXDVPtDZWdRCx+1y0ZYhQa+NA6jLP2zOJx
/emAZW55AWgZKKJS4QgantVgmUSyKVe/LlIVstraTkF4EzV092mOj1iPH/UqFFno9IwE1aOXuYuT
XrZU9D1dkPLBMg3CDwOi+bXRSgjvuueWT7ostJSFraLwDkurP1pYHHG4NDxYiDxMFWarWeII+T6v
hMJKd/8ZRrh5aHvGV5O/Hdc4rPitxa/cdQPAc0r2e2XWAJIdic09atzXXyU9o2vV/urpMsjSVva4
B5a/PwS16c18IMm6vAeFSLMo0T/jor1Q5SoxEC5QEkxvEfIUjjw7k0b1Crv5EfWz/sJ1LHwqlG7t
az+h03yAqvqGfOHC+7YoilYImR1NiLTCLgxnUfIvxo6woY4SgD+hLki4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iZJ+xdyrZbhNc8zYurF70yKiutV2IBjRXDiOZ/7w25UL6rCpY4Pd5gJN3+SNIoQ66bzRxlhaXMNu
tzoCM2kFY4N5ZbCy/S4rtBK0PUHKEVd7c5Btr5gn8BgQWiIafJ8Qa/8xqo95ocakFzN6/V+DNvyN
7FPkXDwuiaD0cmHW8XyOxnHM2b/XKHOibr7UKTRAomXyt7y80BVKpE50ddxXAxw9wlMn+gpW5Kpz
Dp8z4VH3uZrVv8Yl5RWELOQ3Uh0Xizb20mvc6Lu+BNoz0Ys9zZUaqKU71Kuv4s8vgPzrZXXNifo2
pU0aNj0oqAGlSTcTCBF8Tl6/jFvUXQEzYoIfiQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8208)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
