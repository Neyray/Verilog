// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Nov 16 09:40:02 2025
// Host        : BZA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [5:0]a;
  output [15:0]spo;

  wire \<const0> ;
  wire [5:0]a;
  wire [15:0]\^spo ;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;
  wire [14:2]NLW_U0_spo_UNCONNECTED;

  assign spo[15] = \^spo [15];
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
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(\^spo ),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5632)
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
