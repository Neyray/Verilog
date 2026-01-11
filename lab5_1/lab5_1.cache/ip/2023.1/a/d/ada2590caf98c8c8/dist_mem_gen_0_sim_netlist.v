// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Nov 30 10:45:29 2025
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8224)
`pragma protect data_block
9zm1IVFB5/us1hyVFN5QWwCRAfM8jzCLv0OixKQSTh4sPN76BEyVQh6qqwP82Ghd07TIYo5vSyYL
eSGKdxlHEUYwqOMcacf8DiG5jSkdrCwU5aoHuJPXfW8WzLZKUPuzFxdcC5T9rLrZOTaft8v3hkXo
tkMIAtEHS/w/B/ZFNHDyhUBVKmauJt04Bezg0zta5Bq+KAPpR83s2RqTwfr3Zh+Z/6ZEZXUInoLE
4n78biGvoQaoWYT8M7gl3+95EDPv/jBw9ezPscmwZqmAbKohEAThB11daZF4m1lnxgQ2Q6XO+uje
Fg8NPOINV3l10nB47caXOjK+pEbFa+CdvE86/xXDwyJFuonRM0fWMxkUJ41VIcQb+3h7f+js9LpB
F3y00YUtUCFu7+RZTB7iepmdyJ673KBJcXmKdpU8YcAfcuxTEB2CNBOgyxl8GQ7HFJGH4X0H4U2F
xgnrqBBsp3kRA9L2aOM4L+iJBRB+/nCOeVLhLtWlgxr9XvdJ/6SZE2HUvh1tDplILqdAVFcyqmXn
SpcNKMqb7HUesOXRhQYHo7CPeu3RCVQhRxfi2A62wAbLfHsUcsau7Sd+Ed1TXa0+epUlSwFpqdBL
GSIriAao1LgTPy0NKnNPvzKacH3/I8vO/iP8R5dzDCfJaLgtohJR62CMPnUTGH4NOqeXGiHIjrB7
oBdRS79GBf1YcwPkeWwny0ejJGKN9r0r5txhJlov+A5L8IETf6bWH4I3YTrXBV9QlIMkiXgVjwZ8
Ji+9FG+yja8bco79FwowpYGNK2QIYC7PVmzcNmOLwIM3Im6J34Wah2cGemUrqw2GcbJ8ZQyWwbRT
XJAAIF+n1lLssjHNH6VbkC93VoP8gCOtjogM6wg3zPcNpimiPGoTkFB/GKXHwIONowG4CD7L8ixv
v/T8KqJU5OJGIxwlryF9l4TdD8EfBf+f7MOpbfgpQShyKt1hqa/ASCdzqD1RVasiIEtYH1j8dEzj
lsxHfVBqX6jxs0yX4cflXoHJ7TdBvCsPLC7q50A+1K47p+8qEPaDXX1dYWmO1jWDUzeG5szQEanG
5v260gMNNXy5j8PwCMhVbGWviCLPtbwOmrBTA+PWBz2cfae/xCP/bAEO0DzoPVp07sRuLAp2/Jwx
otWOfUOhrIuTa4LUhHi/1WinREEv4uCG+Jfl/WjOHXZfV6bmAXi1Uke3K66C1h28uQvubdy6uue/
IYum3WzaMmZKG/DHGdzIBh9ReDKB9NtjRKc0nLOggv5CKNYX7CuYknxsGWBif4hjem7b8XAQjV04
8m7eqjPZsSJptZH3b11gNFN1MYxXdwTD6+31f+S70oK01t9YtuQoiGArc6jsh9flX/dHVhAatt9V
/c2nM0cpMKErBBbZjxtCXnlASec3tX0DxRz2m3j8aVqS+YUSUvIGkVeVlg6hnSKa7gTia8APklQj
4l6+6NXi8PH307TCCtDqcCjZ3sIXqqyqJsOJV2naY7UUFO+AVYKbLkzBciWluEWZYbrGxTDBtkWz
RO/b1DAMwf0OEUFUeJbYMbEwXIiTOdTqsevlRdk/ZpKUcxbTnWUIngFDQ9VjDEmIa6GAsD/31AGs
GuMvNc074yU5DW79fpbVztdWeFDAYGjconaH0P95Q/9F7+Tgtx25OVjpoXhzic2GTR14pqQW4B1y
pJmMYBVp/xKHnu/v6MEmLsYkvLR/ZQFRppY7421vPM517ytZYL+ZyTXD5xBQxsoDG7tmtwyUocJQ
7ZHvr6DTl/eJRPmCy5vC/bRYtDTeSNnvRGF3TNedK3TKAUjn0glEXLVklE/wnLwOX97FeJti6mWJ
nOs9USa1Ci5UL2+tRbvIqBwlYp8Le2ClMuOGfGpHvcFlWnYV4ixiorpXfaqqhTAJxKWdyclULZzm
dmxi/A8SPv9XtobsJFCH6jOiTItoJ0ElTbthn1iaCKI5w1kaEzXwcDD6qpYJ5PqvJhkxA65RaXkW
jxt1z/ZGPXtSQUx8iCTlDoC/qD+bOb4wKJEL6EPCcwv9disgnPoHn1B2l7Hs4WDMrWsRcja0tKP6
hK7xzVxrt5gwb4UY0Xv0Vuejlq1GOodhcelJyG6SpjedBiQUPIrUxpZQ4hSnIHwDJ3dg7LJThFpk
pclMgbwVGpOYzZAN7Qmm0eOK5dJ9eekjW5+xN5QDiLeyO6aPNr8eVNBoWMZO0Yht02uqJgTTojZ4
AUn//y6pB3DKgOqWIK538Pz7BUr8d/mlH+QepFipTYEzMzXijqiY8JMYcqAtZl3KUdK1WjXitS1O
UJu3qDZUlnV99bmIWHVCl5dJPiBgj8MNJuOWSEBiArD7iGXTOL6FvrKurTB3BVQTjEFiqOtRrkCL
oMunLAq0hP6U84Zq3TY8jR7SJ4Is0qGvttuYT6cKIy0+Q5r37cfJ0O9IP7zXvUwgS8Trr1mXqSYE
6Hw3OcYRzZdStwKabEE4j1gZpXs8bBx42AofhDHu0cw8nQPpj5OEZkzqXnDK4+nUWCx8K80xhblo
iBX1Zl8dMeOgFbs7OJWw9SpcG3jze5q/EPR10y+GcyG9WxOYsZkXrOLvjVmolp0oRglUjIVY6uMp
+rhcLenx8bislotjpQkLvVtX0ts0NKHfHewJI7q10OrNpyv9MBGBAUpFH9I/vhrQbIIU2aECgWCQ
7kIS/vW6/+a8VbJboA1SxPJQLGUduxQ9mM1h0ZG0YS9w0aX9f791xA+w3f04BvtEtjKbvJ8NXmDh
Nb1jIscUQF9/diPoKqO3TXNxVNbQfaAa2Hkg7l0nWkdWbtYIEnylWck4hAWThWizPRyz4UA4xXXj
pFrp3O//aLCrRnQyvcyLn9MWGHi8IJxGH1agMWKiSuzA01QrzErl+E/sWiFOCR/7pGYXBOG9+iZL
vwwarBaqz9LrK3Dh/C31YXXExr8me1YmcOr1o/kZRCRFVpNZttHQaViFt0o2uzmF5Fj2k07bCcYo
qa9y6TeARb4AR5G+rBDZiWxSm7jtoZQAScX25LqfStVz1jvTxTaX4mvqL2fvK9TiG19j0lffh2Gr
CN42U2YXZEH5D8XraRPXKJEnVF7gDpVp1P7MjwfJ1kOMhBEHrbAB+bcMIT76tbkHAkoq7KpCZKi3
VNMZ7kzJi6LJUApCnJK+HFPe8erGKZFwR9BYu0lXYIbAihbXToP/4QByM01Ar2aLHKi8kWXSpDEu
IVKChbg7zh2hG9Z3pMT5VXJR4Ia9YCzueILzGnghJGFymVGDed/jYPLuDomurxG4/W5cN0RfqJdF
QkQ5yo8UGvwSbm+kz+HJwOozVxMjqJlqm5Ds9cieANGYxDMp8Bg5GtbDMFI6qy85LqsHbQXDy6eM
O3SfOumd6jZ97DAxnC3B8Koqktc3dIlX4OP3kDkVZ44IV3mSrLJ4f419F/RvQ9BUXvHNUHqxxy0P
EoyjsE3b9g3K5Mcj9520HeFmKvGB59XZ9eMZRQaajzgi8QPBsyUgbzW0K6bY6Ewe8vG9HGeIi+U/
QPpW332dmDbJSgWcqC76JDVatHtmx3ICvK+D4vj2yZJRNRpHcLL/R+payErp+5xG2+OuKIY3uanp
dP8XnU+3D2zAr/R8DwMg97B7qR2XURgZwJ9KCjat/+POk/ntGbSHq5+Z0If04BvoaAAU8QFns2Uf
YwoIJib+cvZtSYVvthLnEFCXNZcw3JWoF5MlD9hQefrgzK/xFnNHoXLDv8cdkHPbx8AiWI0dpqG7
doh5RZmBOFTsGzB3Cyd1eIdHDB1I5F/w0ZRaAcsizMwRXLpBYkseVwTB5ztF+Dx0dF5gq9XdghjL
uOtsGUFXeq+hFZFNQtaS8c7zh7QsVqojczXHeI/XyX1AqshySG+yaLhxmsujEDEmtixISfAo2g38
XbHeFioXsy67R+CyEoW3xLF637ZyYgA8dME/TxcZGFUx6P+oJBCYAgGtS5B9U/bj5BnY/YkhCvrI
blUx14il/LE5fWdhrVnf7I77Pz8AJgNHTKvMAArpT+eWjeuhDdBVH4qFTr+9w18U5tMdJa9VTlIY
c4/VtxL3p3kaw17MjzhIV9zyqd2trJlUIpnO+U9ILukkAqTWiqvHVFwWyBRJCqgeRmuVRjzu6UPp
W6FdQ7F2J0pvzfMuEqPsnKC+s+hyvmqQWH9qj4YnGsPaBPP+vpj30SlzlGpMbHBSEV2ekIkrmyVV
FYBTKr2zxVD784DFpszb92w+0C9SuKDj7aTZFthah2zNNp0Qs3wGY9VIO/Ni9e5Vo/yMxyRVsN0F
39gwjK49JXFeF5WTsVV4pbXynI5MNAIQzCuQb6UZtOxAW8oc1at/4ipEegdvi/xQiZjQ6dTjhdKi
Dy5Ri4uyE7yBEwj++3kjTYEqJdKUy3AoQKfI2mZGsbZ8V+HxG/xqSweUlyDxMPqOrGFjXWSDtqXh
otGV8rdCyriABogZRcg8zEI+eYVmUITN//10b6WRGCanw1MiWYpRswZHtgvy5QvSI34npjtF9NQa
cEQcAsFxs14hWZTtJKvEhYNm61P5xS75p1yG6fo2aieSX7LjdNIq1dPSIEHFhLRhKS0WzxL50HoT
52sV0uWc/Bzbo5nDllJnW3RY9YkVMB8i3ZNwIgpzs8L6mq83EKAkkfKD0j0Z5Y9qvudG7y0i31d9
i2LN3K+qvP8XJ15CpD8OMStqPOR8ouHYQEK8V69oAeV+18/GSZnkygFjTManv/Dfyssx2+SW0OlV
nI0qcRCS5Jsz/0opzgIhEvJCtAVgrZ6moTD2CP/1YSIzY9MO8BJO5dH3okYbSy2bs1sRMKhjx8v0
yFGIlonBMyYAGc5CNXeSodMhxl14FeS83uueoSWES8xLkImPf5Kkavjs/U70izcbPYnUDQGWHLK0
uvMMtFi6XhxDeYcA8MxgiAymZcvW2FaIhvAFW+QmaNISzYL4zW1w1cwV5E3FpFMAZBISsLPnp/hs
K3tGmB/5HD4rSBztershFc+Y6mojhOJ4u5HSMNq7/eYCeDsaAvdr5zXJUPdCPQlpBQbfn9Gkeu1Y
xcuq7e2WrJXi5bfRNCXZh5pjVlW/vbK7xQj1I9jJYJ6dMJJMm9CnD/Tyq8kLQOKRoSrKS9Qsn8kU
H6OvNQBm3Rxxaw3qPXaPYufl+4MQ+hQUx4JUz6zy3wd4i/Qm45j7uw7Atc9rwjMu3qyqofHQMMJK
N8Sai+PJ9jJw1+jLDH/xHq2eaarYipFxaccHZCH/PAW6jRoDSArOdWLRGysKi+ecExvu4nyNc9qA
stTIkELrbCbDIFZnOvETi0Rm6nZSNrOtQhHDo3M4gIvZSKgK2TEj8og/zMvnUT7gfJXnLp7eK8T+
6ErWc0JYoF5E9RfdFh0a6CfQGiN9f7A6C6Pv2y5+xtj/jJLS1/IL0TpkS0MkjzEX0mYN3Htr6YB/
cfpoNyVD7Q+RlO6KLc9NXY/E9UBX6Edm5plFB9NJtsUG6afBwixv3DvlrdiXpeBBGFdI1A+WIBSI
EEVb2wjqbNrqWeeS23DLjyC9RrYOglDHuRL++nazOeMAoxaMrhw+vtV9OAqkwhzmE2HVgCblcHfl
b78AlXFu4nLq4npn49NI39vCRu56zX6hMD9A2J+4e4z0nZOUkwUa2VTopug2GnDFDzaemQjOXttI
2eXYS4CT8OArv4X9xQErraKpUuNGybUELPywKuBJsPI6fAqba1nwU9hCG9fdL9TVuIl0LhgaTePQ
7sMT+jK0aoG5TdoKZwnMcGegGg1KivBV4LjSdhnUwUucThpA3pCH3E3aWxuJ0EinJ1/UAZpO6oNQ
4LbMRSOFhcgGXSNcAcjzZVKKtqZpjir3QWxrrbJ7TotLC47O+rjYDuvCC1yZOVE1WFJ7Abf0PFri
sFApJAHEG8iXFPhzHkRFgdQeCtNaEeIkcjwuvrZ8IIm9Zk6/QNaoQZfT4iCB3pPPjYKwVoyPqm4K
Cbaw3En3LRLn0IBpZuoBleFXb/HBFTJ9t9Efe7UlTKEqMy7Zu0wJAIvw8NVSra6aLuzUJePxjU3r
9oetNAbnfI4nhSl1np9xg69OAFMZfsWvHA43Id4h4z1RW3BzmbNDScSTA1c2i9CklQ+uy0e6qije
IF9tXwUAaizA+HvtDI04mqETOOEyZ8MhmnqCj+8igK2vgDd86so4Cr1ZZ3kUOOinlUxroA8wlMwe
xR3JKsivlHo3R/TysZ2x1wHEzsfUrIFnEdGo3o7/IAFRg7/2pBfGvOwbVj3r37ZlO/X2QYsvz/JO
llEgR5l4cB5aJ07uAGAh97LUjKwcjI+FX4LMibk8byheucsqwC6qqlNy0JxIrh6jGG65u9ROt7A8
JijQGM/V8VhgyV4RB0CpkXrYxbNNOHCZ/I4K7uvSidg7D76c04s5g9e2sK0cafwIybrEz2dh4hrD
7zqrC/ESSQZhxoVPDLHhEHP8wsTX4qwOGQoFjNbSFl64WFrmr/k6SbDQAWMA71ibUSQ99DinyVXz
qut67lcJLZQzWc1YfzCU97vaFlG57k61VpRo9LBW5YpTzqEKmeI3IjJYqVKXSiDmVhekoWrpqgKU
3lAVfssRggsOznXqs6Z+KkmwpyNOrEiaV4aeQDKd5gnKQcdzfwtepyaVZ7DvXsKZ9kc5MPfLdPRz
zoC8qibzzAux4LQGIKakcnmg2VqPX1gxmGNtYIpNfDIdC+GYF3YOiIce/xuUbIvXx4CDsIJAqa+P
rLHzJsm0mB1AFXNYozyROxbU+fiV3uJRfjX3P5JbE41t1hhBeMy0ZZ7Qr+r0Y51mrKY6TRYk6B8g
+sRkLSvN6TvUgmTjXRLlfqHXatg/HIOGU/4+LxgSJygrhc54ZZNesRlRW0KQ4WR93+okUYESeZ8N
zzWrRJzcgED8qUl49JBekPo8cbvykpkFatZegVxgGZp2jjzsMfKXnKcRCWEk4PQ5TxKO2O/eAGOA
7D3N9EZPEOwjfvV9I7TK4Ku4wH3uGz3oE7mb+aMepeVuvdOcOWTkOxMT34PIQArfzhIB3o68tsQh
Xy2lMeEBF305jpRqNsn0WIIpRkwO9Uc7M7lBZeV2UrGCptHZbfqCY8ypZj5Xs66HhA2w6u+I0r+S
cFQN4hZjb0qeA7Vfrree+YscLnvrCtWHqsEfjhNw7KlOKO/wHEPWMVdHNj3SMyeedC6DIukZXphm
YNn41F0GwDiw8wm904ML3AW+nz4hPmM65RrJ2xAN23UQwnq63bdf9tT0OYcopa2xH9ka3YSvTMVC
CGcWMWTs51YRHV+4/EI0lNf6BO3QfsIoLdN+5TfW7CbRlE/GUYMyFr2yMzT4s/ZmmQeDTaD7x/aj
JP/1CsE7EriUQS4Dve74HPI3WKAWgOOPnIc1TvLaTEPd60f+eH+Pz0ZrB2MHfEVMwJxSBr5r8hR4
WQJy7tYEu9qGIZRvdQYG5ECHwWkVNZKlW39Opoa3Ly4HrZiSeEjMp6bQ2jurT/2Nry45FnUVwlum
wYLPSQl2zvs2caHA2r2Ke8jDQu8zGEk9rWMkgZtl2Tql+B0785oqUNtXJf/WOIDIOrR7+fR+CGZN
jqci43KskbZPL040SHGBEG6+/8LDkq7ocFsiUDQFKAAMU/pFvWc5Mi+LGH9uRoes/CkDuiZCCO3R
NTLDURKAJO9zd9hoZLmHVohNwF0yuU2L55KydX61/9Ig2cfEHxs1Z+jgCf3b7vg96MMT2+fIvXEe
5Imo7VhJLb8PjInNp+zWUoWzkCcCpbljDpqOLbhxIyMpf3jyqRb95hJRT9GmdGzyEEdbkWtDiyRu
h8ClYZOgE37LaycnA5/bxM1tbNwEwUGMV+YmGxAI/QAx96JyLufjPA0IdauIWC45Rvug9zVh6mJg
ow9GHpDJnSXRuJCA6i0ovbYNGrOBBLwx6B/7PQTs5Xloc6Vsz1bHXdx2C3uy5T4yXp58LbB30DPn
nVHy3bLIJWJbWP/RubGueYUwfC9rSl9QXRqNiAQXGNVBo5Cdtb+1VMTai7rS31ptaYofsPDQUfgg
sPxMPNs6JsV+3sLkeyUBGH917wDyFz3HK2PGJAxiVk9DxvasXG+d68+BuZq90mM1VEmV2pZV9LUB
+3/EpheRhlbDqbe+nli0bECjXLkpv0QpPiNcIHZDqKYSzPMQ54jA63K6iTo0ChG+Hd8x1kR8Sxzz
eJf2ceT41p7zkaEvPibOagDgWBQ39WMGZ7eZx25AqyTz1EiNLlWNirmJpHEuzRvuciHhosr0Afz/
JO2wsuCxnYDRtktPm+5WyshJXMU1eGvO0BUSAq1dvktXfGezoU5rAakwHnTxQJUvdCLDiSYoL5Le
Vf+TCHV+8g5WFPN5umeNOOi4quFLpdYTnTCB5/uith9AdVMAKk1VkAmWddEEsDxkFJgRro9Dm4cx
ni3hvCTweKg5na+lLOWGR+8QVyjtErjALycLoLzZhTqeJ+//JcgL0bcMV0Z4TBlsGucaOcygxtgx
91YJA9LXQ9pdf2z9s0Q4wZss00PtLFhBdV5foCddGKi9zl9tFw802ZOxm8aPLgJMv6TFHuqarP/I
MrSnMq4tPai44fkAG1jbfqxMDN3l4e/fuhG4V8IHBZyCmmrTxrn8fyIKZqgGQKxEquvLw8l1+zy6
05iIq9XYHANv8JMySahUbZT//6DT+I2+vzJbPDQsNy+5X1+Rr7LAzZId8hrwEZX2WnTmOczoMJ4f
M1mbZvCKoK++2YOvC5T/BLvsSttz/F8ncFQKwCSXx4QS9xiTM/xny4KCkOug7+S4nsJlnRdkgqkm
9Hd/uIUR930eqW/Lx4qXgSkPx4QYH1yuWjnVR1QaC4f0YZB3JQU/G9aE7iWvBVX/4ITrfhPvXb5t
bJWYJ7ioiPRNgkods5yR3a5Y+u1OK7l0K/8T06Dg1ZY+4nVeHoa8f+ueMS3Wv3a45q4ZGaBPmQmt
v5NFYphIgZPN7iKaK2RlZaSe25cs1F07/yeGBZM9XRb4UducMCIdtnNyfwU2pZa1I7UbF64waC4K
FNL7TqsiNNuml2bfc48jayyjJJy6l0hDfdU75Jwk4WyOqUBKMXopZ9kzyAW752YncTJFjSevXd3W
VBUWuV83jcAeuL/Poe9eDkjdFVcYnOYiC9hC9cqsnfuX8U0KYdsQrDuOW41ztr688rI4WT0OKT/N
1FZZ/O10IJs4QSr1JSWa+FVd1zIXs2gCa7LUqXkjF+7QSsgQv5Xd1ZyAkxSq+bBhPwF5L90432vA
qnUHAnr56GhQIz1kAqRcCrNaGzZbeTU3AeNvxJjtNZSLRlb0cS6qxX6e6xtQz3+ep7c5RWtvUptX
d+jnWTR1tnoZGklJ2pPulFg9NXsGZUzIkJmIPeTTlnNx+uY6Qmeu6StNY9A7d9R6IxpBZG6S62FB
g0mB/eCCXOWnxW7nhH/VD661GovubVEsbciJ93ISga9jg3FCAmQWeqYweywT4THJdLiNdpj5l1H7
0Pl/K7KVjZhE6xsi4fx3x5rQKFvzeCGuiKmnN+ZDKXXZFe+km2aTsNnoIsse3FxRmxxpDfr6LF9o
thLVyivEemraG5isRYFuLsDTZAZvsk4BXjAA64XemJxxELhbKllpHepDjDC3w39bgq9g6ES0nFi0
C7UeJSFWwYxsZwRJ2EEdTPuQNgqHCWiYGXzsDXiLxdYHRz0p63adB86tC1TYFszpchZUIT5YGE+a
dYqmw18NrKHI1SMfcnK5UBVGkxKIvHOjTifDu18AVVY1fnNAAwQ5IM6QUai56MShisi1mXwXNP3x
j2N1oNPnyGzy+HGwqveWjrQB/l5IfopHVpfF6IXxHHrz83P3CrJwX1Swyix+QX9br8T4PAyUcRdu
30Y4pVmw5tPZa2j34410ke52SV+zd3N3tkqCfUk9iHDGhib+xBLu2c3Qc0mTS1IZDeccTjsIfOxL
uhvkVssHUK9iFpOeJjPFLtrDHcHZMn3fSQLTW3NUPWORb0e4mnFzBCNOJJ4jxvZlNRtvpMOr9SQO
11fa6LL2AKcbVlDAsgFdmJC2MoUxhSuJi4yKUBVygB6vLEjVZuulS/gl32DZB6l0HW+zsxarmFuE
vUHDGRo/zVKZQY5XD6H5OtOiClfM5v0HxcgHoqI9tcFdvKsDC4Cqj3Szbe6vowjZX6iR8xYL7xiX
0U6qYhv6pz+a8ee4jPcMVEIB8HaFdjMF7eNa66pGcpnNLpOVSacacST3X4Ifgf8WxgHdJSzCW4Qn
if/Qs1Dt8EoUPA8nVLWHZe//A3Xt31KgEESP6DdPHDS/DM6ouqpoYAf2Ms0LBKq0rXrPZKsGZCWd
WQr8gR2n6RXe7/MVFEq2zDzrC9+E3aITzbJznaT5k/r5x9xsbscd9UWydgn6WiZ729O5I9w2UsaT
iYhX/fZjzJsp0foxDwH/bpwBsb+HxNq3Og+94zr1ab9Y0jxaviKhk3VcWdy6bVAyOaxJbpkTfNiv
i2uX3R5ZqN+bSpK81PtjrB77S54nx/qFMDMK4zQPazQDcD/saRz6bDg7jE6f25ljQXuMefwJ65Qf
dBntWJsaC596OpOiTmMNlG1tXKSvKiFRsWEA/oRyzJ8EsDqib8/djh3QdrPn/IBSu724aei/ZRfl
LkxDSJg/OjASJtClnNezLSGb/+4hX0E6zQBlodO5LA6EklFTujs7cvT1ZF03rKGLSCTUAM1Q9Yrb
hx4BsRCzlbx4XaIEyfI9WhIQ9yi4hEon6bCtK4/18Djmd3TVD3aBJ2ZUV+9N+U3ZCdNwhKEYeqSL
Sd9lcjW7PoezUoFp88ZDEfAabACWMFDtx3MT8LTypfDNcW7WedMVtdwrTyhF18yL5Q+qsqCqcyB9
+GQI4qMP6YMtfi26fsU+g9b/OsUnrU317V+ZG8gVO8CXX4hW0EXlDra7U2iNCpvEXzNlVZMeUl35
szM1g7SjCqSr/z0kgFeV1zo7MOntdiIm1ueAmM3yCdZJHkfYKA5ug4EiNVEzxzAavuqe1/NxBA1V
S0XZ5Pj/8DYdA9f+vGiwEw==
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
