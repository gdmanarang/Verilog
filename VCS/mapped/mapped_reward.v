
module reward ( clock, nrst, en, start, MY_NODE_ID, MY_CLUSTER_ID, action, 
        besthop, address, data_in, data_out, done );
  input [15:0] MY_NODE_ID;
  input [15:0] MY_CLUSTER_ID;
  input [15:0] action;
  input [15:0] besthop;
  output [10:0] address;
  input [15:0] data_in;
  output [15:0] data_out;
  input clock, nrst, en, start;
  output done;
  wire   N51, N52, N54, N55, N56, N57, N58, N59, N60, N64, N65, N66, N67, N68,
         N69, N70, N71, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N122,
         N123, N124, n13, n14, n15, n19, n20, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         \add_66/carry[10] , \add_66/carry[9] , \add_66/carry[8] ,
         \add_66/carry[7] , \add_66/carry[6] , \add_66/carry[5] ,
         \add_55/carry[10] , \add_55/carry[9] , \add_55/carry[8] ,
         \add_55/carry[7] , \add_55/carry[6] , \add_55/carry[5] ,
         \add_49/carry[10] , \add_49/carry[9] , \add_49/carry[8] ,
         \add_49/carry[7] , \add_49/carry[6] , \add_49/carry[5] , n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109;
  wire   [3:0] state;
  assign N51 = besthop[0];
  assign N52 = besthop[1];
  assign N73 = action[0];
  assign N74 = action[1];

  DFFX1 \state_reg[0]  ( .D(N122), .CLK(clock), .Q(state[0]), .QN(n15) );
  DFFX1 \state_reg[1]  ( .D(N123), .CLK(clock), .Q(state[1]), .QN(n14) );
  DFFX1 \state_reg[2]  ( .D(N124), .CLK(clock), .Q(state[2]), .QN(n13) );
  DFFX1 done_buf_reg ( .D(n99), .CLK(clock), .Q(done) );
  DFFX1 \data_out_buf_reg[15]  ( .D(n98), .CLK(clock), .Q(data_out[15]) );
  DFFX1 \data_out_buf_reg[14]  ( .D(n97), .CLK(clock), .Q(data_out[14]) );
  DFFX1 \data_out_buf_reg[13]  ( .D(n96), .CLK(clock), .Q(data_out[13]) );
  DFFX1 \data_out_buf_reg[12]  ( .D(n95), .CLK(clock), .Q(data_out[12]) );
  DFFX1 \data_out_buf_reg[11]  ( .D(n94), .CLK(clock), .Q(data_out[11]) );
  DFFX1 \data_out_buf_reg[10]  ( .D(n93), .CLK(clock), .Q(data_out[10]) );
  DFFX1 \data_out_buf_reg[9]  ( .D(n92), .CLK(clock), .Q(data_out[9]) );
  DFFX1 \data_out_buf_reg[8]  ( .D(n91), .CLK(clock), .Q(data_out[8]) );
  DFFX1 \data_out_buf_reg[7]  ( .D(n90), .CLK(clock), .Q(data_out[7]) );
  DFFX1 \data_out_buf_reg[6]  ( .D(n89), .CLK(clock), .Q(data_out[6]) );
  DFFX1 \data_out_buf_reg[5]  ( .D(n88), .CLK(clock), .Q(data_out[5]) );
  DFFX1 \data_out_buf_reg[4]  ( .D(n87), .CLK(clock), .Q(data_out[4]) );
  DFFX1 \data_out_buf_reg[3]  ( .D(n86), .CLK(clock), .Q(data_out[3]) );
  DFFX1 \data_out_buf_reg[2]  ( .D(n85), .CLK(clock), .Q(data_out[2]) );
  DFFX1 \data_out_buf_reg[1]  ( .D(n84), .CLK(clock), .Q(data_out[1]) );
  DFFX1 \data_out_buf_reg[0]  ( .D(n83), .CLK(clock), .Q(data_out[0]) );
  DFFX1 \address_count_reg[10]  ( .D(n82), .CLK(clock), .Q(address[10]) );
  DFFX1 \address_count_reg[9]  ( .D(n81), .CLK(clock), .Q(address[9]) );
  DFFX1 \address_count_reg[8]  ( .D(n80), .CLK(clock), .Q(address[8]) );
  DFFX1 \address_count_reg[7]  ( .D(n79), .CLK(clock), .Q(address[7]) );
  DFFX1 \address_count_reg[6]  ( .D(n78), .CLK(clock), .Q(address[6]) );
  DFFX1 \address_count_reg[5]  ( .D(n77), .CLK(clock), .Q(address[5]) );
  DFFX1 \address_count_reg[4]  ( .D(n76), .CLK(clock), .Q(address[4]) );
  DFFX1 \address_count_reg[3]  ( .D(n75), .CLK(clock), .Q(address[3]) );
  DFFX1 \address_count_reg[2]  ( .D(n74), .CLK(clock), .Q(address[2]) );
  DFFX1 \address_count_reg[1]  ( .D(n73), .CLK(clock), .Q(address[1]) );
  DFFX1 \address_count_reg[0]  ( .D(n101), .CLK(clock), .Q(address[0]) );
  AO22X1 U34 ( .IN1(address[1]), .IN2(n19), .IN3(n20), .IN4(n22), .Q(n73) );
  AO222X1 U35 ( .IN1(N73), .IN2(n109), .IN3(N51), .IN4(n107), .IN5(N51), .IN6(
        n108), .Q(n22) );
  AO22X1 U36 ( .IN1(address[2]), .IN2(n19), .IN3(n20), .IN4(n23), .Q(n74) );
  AO222X1 U37 ( .IN1(N74), .IN2(n109), .IN3(N52), .IN4(n107), .IN5(N52), .IN6(
        n108), .Q(n23) );
  AO22X1 U38 ( .IN1(address[3]), .IN2(n19), .IN3(n20), .IN4(n24), .Q(n75) );
  AO222X1 U39 ( .IN1(N75), .IN2(n109), .IN3(N64), .IN4(n107), .IN5(N64), .IN6(
        n108), .Q(n24) );
  AO22X1 U40 ( .IN1(address[4]), .IN2(n19), .IN3(n20), .IN4(n25), .Q(n76) );
  AO222X1 U41 ( .IN1(N76), .IN2(n109), .IN3(N54), .IN4(n107), .IN5(N65), .IN6(
        n108), .Q(n25) );
  AO22X1 U42 ( .IN1(address[5]), .IN2(n19), .IN3(n20), .IN4(n26), .Q(n77) );
  AO222X1 U43 ( .IN1(N77), .IN2(n109), .IN3(N55), .IN4(n107), .IN5(N66), .IN6(
        n108), .Q(n26) );
  AO22X1 U44 ( .IN1(address[6]), .IN2(n19), .IN3(n20), .IN4(n27), .Q(n78) );
  AO222X1 U45 ( .IN1(N78), .IN2(n109), .IN3(N56), .IN4(n107), .IN5(N67), .IN6(
        n108), .Q(n27) );
  AO22X1 U46 ( .IN1(address[7]), .IN2(n19), .IN3(n20), .IN4(n28), .Q(n79) );
  AO222X1 U47 ( .IN1(N79), .IN2(n109), .IN3(N57), .IN4(n107), .IN5(N68), .IN6(
        n108), .Q(n28) );
  AO22X1 U48 ( .IN1(address[8]), .IN2(n19), .IN3(n20), .IN4(n29), .Q(n80) );
  AO222X1 U49 ( .IN1(N80), .IN2(n109), .IN3(N58), .IN4(n107), .IN5(N69), .IN6(
        n108), .Q(n29) );
  AO22X1 U50 ( .IN1(address[9]), .IN2(n19), .IN3(n20), .IN4(n30), .Q(n81) );
  AO222X1 U51 ( .IN1(N81), .IN2(n109), .IN3(N59), .IN4(n107), .IN5(N70), .IN6(
        n108), .Q(n30) );
  AO22X1 U52 ( .IN1(address[10]), .IN2(n19), .IN3(n20), .IN4(n31), .Q(n82) );
  AO222X1 U53 ( .IN1(N82), .IN2(n109), .IN3(N60), .IN4(n107), .IN5(N71), .IN6(
        n108), .Q(n31) );
  AO221X1 U54 ( .IN1(data_in[0]), .IN2(n33), .IN3(MY_NODE_ID[0]), .IN4(n34), 
        .IN5(n35), .Q(n83) );
  AO22X1 U55 ( .IN1(data_out[0]), .IN2(n100), .IN3(MY_CLUSTER_ID[0]), .IN4(n37), .Q(n35) );
  AO221X1 U56 ( .IN1(data_in[1]), .IN2(n33), .IN3(MY_NODE_ID[1]), .IN4(n34), 
        .IN5(n38), .Q(n84) );
  AO22X1 U57 ( .IN1(data_out[1]), .IN2(n100), .IN3(MY_CLUSTER_ID[1]), .IN4(n37), .Q(n38) );
  AO221X1 U58 ( .IN1(data_in[2]), .IN2(n33), .IN3(MY_NODE_ID[2]), .IN4(n34), 
        .IN5(n39), .Q(n85) );
  AO22X1 U59 ( .IN1(data_out[2]), .IN2(n100), .IN3(MY_CLUSTER_ID[2]), .IN4(n37), .Q(n39) );
  AO221X1 U60 ( .IN1(data_in[3]), .IN2(n33), .IN3(MY_NODE_ID[3]), .IN4(n34), 
        .IN5(n40), .Q(n86) );
  AO22X1 U61 ( .IN1(data_out[3]), .IN2(n100), .IN3(MY_CLUSTER_ID[3]), .IN4(n37), .Q(n40) );
  AO221X1 U62 ( .IN1(data_in[4]), .IN2(n33), .IN3(MY_NODE_ID[4]), .IN4(n34), 
        .IN5(n41), .Q(n87) );
  AO22X1 U63 ( .IN1(data_out[4]), .IN2(n100), .IN3(MY_CLUSTER_ID[4]), .IN4(n37), .Q(n41) );
  AO221X1 U64 ( .IN1(data_in[5]), .IN2(n33), .IN3(MY_NODE_ID[5]), .IN4(n34), 
        .IN5(n42), .Q(n88) );
  AO22X1 U65 ( .IN1(data_out[5]), .IN2(n100), .IN3(MY_CLUSTER_ID[5]), .IN4(n37), .Q(n42) );
  AO221X1 U66 ( .IN1(data_in[6]), .IN2(n33), .IN3(MY_NODE_ID[6]), .IN4(n34), 
        .IN5(n43), .Q(n89) );
  AO22X1 U67 ( .IN1(data_out[6]), .IN2(n100), .IN3(MY_CLUSTER_ID[6]), .IN4(n37), .Q(n43) );
  AO221X1 U68 ( .IN1(data_in[7]), .IN2(n33), .IN3(MY_NODE_ID[7]), .IN4(n34), 
        .IN5(n44), .Q(n90) );
  AO22X1 U69 ( .IN1(data_out[7]), .IN2(n100), .IN3(MY_CLUSTER_ID[7]), .IN4(n37), .Q(n44) );
  AO221X1 U70 ( .IN1(data_in[8]), .IN2(n33), .IN3(MY_NODE_ID[8]), .IN4(n34), 
        .IN5(n45), .Q(n91) );
  AO22X1 U71 ( .IN1(data_out[8]), .IN2(n100), .IN3(MY_CLUSTER_ID[8]), .IN4(n37), .Q(n45) );
  AO221X1 U72 ( .IN1(data_in[9]), .IN2(n33), .IN3(MY_NODE_ID[9]), .IN4(n34), 
        .IN5(n46), .Q(n92) );
  AO22X1 U73 ( .IN1(data_out[9]), .IN2(n100), .IN3(MY_CLUSTER_ID[9]), .IN4(n37), .Q(n46) );
  AO221X1 U74 ( .IN1(data_in[10]), .IN2(n33), .IN3(MY_NODE_ID[10]), .IN4(n34), 
        .IN5(n47), .Q(n93) );
  AO22X1 U75 ( .IN1(data_out[10]), .IN2(n100), .IN3(MY_CLUSTER_ID[10]), .IN4(
        n37), .Q(n47) );
  AO221X1 U76 ( .IN1(data_in[11]), .IN2(n33), .IN3(MY_NODE_ID[11]), .IN4(n34), 
        .IN5(n48), .Q(n94) );
  AO22X1 U77 ( .IN1(data_out[11]), .IN2(n100), .IN3(MY_CLUSTER_ID[11]), .IN4(
        n37), .Q(n48) );
  AO221X1 U78 ( .IN1(data_in[12]), .IN2(n33), .IN3(MY_NODE_ID[12]), .IN4(n34), 
        .IN5(n49), .Q(n95) );
  AO22X1 U79 ( .IN1(data_out[12]), .IN2(n100), .IN3(MY_CLUSTER_ID[12]), .IN4(
        n37), .Q(n49) );
  AO221X1 U80 ( .IN1(data_in[13]), .IN2(n33), .IN3(MY_NODE_ID[13]), .IN4(n34), 
        .IN5(n50), .Q(n96) );
  AO22X1 U81 ( .IN1(data_out[13]), .IN2(n100), .IN3(MY_CLUSTER_ID[13]), .IN4(
        n37), .Q(n50) );
  AO221X1 U82 ( .IN1(data_in[14]), .IN2(n33), .IN3(MY_NODE_ID[14]), .IN4(n34), 
        .IN5(n51), .Q(n97) );
  AO22X1 U83 ( .IN1(data_out[14]), .IN2(n100), .IN3(MY_CLUSTER_ID[14]), .IN4(
        n37), .Q(n51) );
  AO221X1 U84 ( .IN1(data_in[15]), .IN2(n33), .IN3(MY_NODE_ID[15]), .IN4(n34), 
        .IN5(n52), .Q(n98) );
  AO22X1 U85 ( .IN1(data_out[15]), .IN2(n100), .IN3(MY_CLUSTER_ID[15]), .IN4(
        n37), .Q(n52) );
  NAND3X0 U90 ( .IN1(n58), .IN2(n32), .IN3(n59), .QN(n56) );
  AO22X1 U91 ( .IN1(done), .IN2(n60), .IN3(n61), .IN4(state[0]), .Q(n99) );
  NAND3X0 U94 ( .IN1(state[0]), .IN2(n13), .IN3(state[1]), .QN(n32) );
  OA221X1 U95 ( .IN1(n104), .IN2(n67), .IN3(state[0]), .IN4(n14), .IN5(n58), 
        .Q(n66) );
  NAND3X0 U96 ( .IN1(state[0]), .IN2(n14), .IN3(state[2]), .QN(n58) );
  NOR4X0 U97 ( .IN1(n107), .IN2(n105), .IN3(n70), .IN4(n71), .QN(n69) );
  AND3X1 U98 ( .IN1(n68), .IN2(n104), .IN3(state[0]), .Q(n70) );
  NAND3X0 U99 ( .IN1(n15), .IN2(n13), .IN3(state[1]), .QN(n59) );
  AND2X1 U100 ( .IN1(n53), .IN2(n107), .Q(n34) );
  AND2X1 U101 ( .IN1(n53), .IN2(n109), .Q(n37) );
  AND2X1 U102 ( .IN1(n53), .IN2(n54), .Q(n33) );
  NOR2X0 U103 ( .IN1(n69), .IN2(n102), .QN(N122) );
  INVX0 U104 ( .INP(n55), .ZN(n105) );
  NOR2X0 U105 ( .IN1(n64), .IN2(n103), .QN(n71) );
  NOR2X0 U106 ( .IN1(n56), .IN2(n57), .QN(n19) );
  NOR2X0 U107 ( .IN1(n102), .IN2(n19), .QN(n20) );
  NOR2X0 U108 ( .IN1(n102), .IN2(n100), .QN(n53) );
  AND2X1 U109 ( .IN1(n55), .IN2(n19), .Q(n100) );
  INVX0 U110 ( .INP(n59), .ZN(n107) );
  INVX0 U111 ( .INP(n32), .ZN(n108) );
  INVX0 U112 ( .INP(n58), .ZN(n109) );
  NAND2X1 U113 ( .IN1(n55), .IN2(n32), .QN(n54) );
  INVX0 U114 ( .INP(nrst), .ZN(n102) );
  NOR2X0 U115 ( .IN1(n60), .IN2(n102), .QN(n61) );
  NOR2X0 U116 ( .IN1(n57), .IN2(n62), .QN(n60) );
  NOR2X0 U117 ( .IN1(n66), .IN2(n102), .QN(N123) );
  NAND2X1 U118 ( .IN1(state[0]), .IN2(n68), .QN(n67) );
  INVX0 U119 ( .INP(besthop[2]), .ZN(N64) );
  OA21X1 U120 ( .IN1(n109), .IN2(n54), .IN3(nrst), .Q(N124) );
  NAND2X1 U121 ( .IN1(nrst), .IN2(n63), .QN(n57) );
  NAND2X1 U122 ( .IN1(n106), .IN2(en), .QN(n63) );
  INVX0 U123 ( .INP(n64), .ZN(n106) );
  INVX0 U124 ( .INP(en), .ZN(n103) );
  AND2X1 U125 ( .IN1(address[0]), .IN2(n19), .Q(n101) );
  INVX0 U126 ( .INP(start), .ZN(n104) );
  INVX0 U127 ( .INP(action[2]), .ZN(N75) );
  NOR2X0 U128 ( .IN1(state[1]), .IN2(state[2]), .QN(n68) );
  NAND2X1 U129 ( .IN1(state[2]), .IN2(n15), .QN(n55) );
  NAND2X1 U130 ( .IN1(n68), .IN2(n15), .QN(n64) );
  XOR2X1 U131 ( .IN1(besthop[9]), .IN2(\add_55/carry[10] ), .Q(N71) );
  AND2X1 U132 ( .IN1(\add_55/carry[9] ), .IN2(besthop[8]), .Q(
        \add_55/carry[10] ) );
  XOR2X1 U133 ( .IN1(besthop[8]), .IN2(\add_55/carry[9] ), .Q(N70) );
  OR2X1 U134 ( .IN1(besthop[7]), .IN2(\add_55/carry[8] ), .Q(\add_55/carry[9] ) );
  XNOR2X1 U135 ( .IN1(\add_55/carry[8] ), .IN2(besthop[7]), .Q(N69) );
  OR2X1 U136 ( .IN1(besthop[6]), .IN2(\add_55/carry[7] ), .Q(\add_55/carry[8] ) );
  XNOR2X1 U137 ( .IN1(\add_55/carry[7] ), .IN2(besthop[6]), .Q(N68) );
  OR2X1 U138 ( .IN1(besthop[5]), .IN2(\add_55/carry[6] ), .Q(\add_55/carry[7] ) );
  XNOR2X1 U139 ( .IN1(\add_55/carry[6] ), .IN2(besthop[5]), .Q(N67) );
  AND2X1 U140 ( .IN1(\add_55/carry[5] ), .IN2(besthop[4]), .Q(
        \add_55/carry[6] ) );
  XOR2X1 U141 ( .IN1(besthop[4]), .IN2(\add_55/carry[5] ), .Q(N66) );
  AND2X1 U142 ( .IN1(besthop[2]), .IN2(besthop[3]), .Q(\add_55/carry[5] ) );
  XOR2X1 U143 ( .IN1(besthop[3]), .IN2(besthop[2]), .Q(N65) );
  XOR2X1 U144 ( .IN1(besthop[9]), .IN2(\add_49/carry[10] ), .Q(N60) );
  AND2X1 U145 ( .IN1(\add_49/carry[9] ), .IN2(besthop[8]), .Q(
        \add_49/carry[10] ) );
  XOR2X1 U146 ( .IN1(besthop[8]), .IN2(\add_49/carry[9] ), .Q(N59) );
  OR2X1 U147 ( .IN1(besthop[7]), .IN2(\add_49/carry[8] ), .Q(\add_49/carry[9] ) );
  XNOR2X1 U148 ( .IN1(\add_49/carry[8] ), .IN2(besthop[7]), .Q(N58) );
  AND2X1 U149 ( .IN1(\add_49/carry[7] ), .IN2(besthop[6]), .Q(
        \add_49/carry[8] ) );
  XOR2X1 U150 ( .IN1(besthop[6]), .IN2(\add_49/carry[7] ), .Q(N57) );
  OR2X1 U151 ( .IN1(besthop[5]), .IN2(\add_49/carry[6] ), .Q(\add_49/carry[7] ) );
  XNOR2X1 U152 ( .IN1(\add_49/carry[6] ), .IN2(besthop[5]), .Q(N56) );
  AND2X1 U153 ( .IN1(\add_49/carry[5] ), .IN2(besthop[4]), .Q(
        \add_49/carry[6] ) );
  XOR2X1 U154 ( .IN1(besthop[4]), .IN2(\add_49/carry[5] ), .Q(N55) );
  AND2X1 U155 ( .IN1(besthop[2]), .IN2(besthop[3]), .Q(\add_49/carry[5] ) );
  XOR2X1 U156 ( .IN1(besthop[3]), .IN2(besthop[2]), .Q(N54) );
  XOR2X1 U157 ( .IN1(action[9]), .IN2(\add_66/carry[10] ), .Q(N82) );
  AND2X1 U158 ( .IN1(\add_66/carry[9] ), .IN2(action[8]), .Q(
        \add_66/carry[10] ) );
  XOR2X1 U159 ( .IN1(action[8]), .IN2(\add_66/carry[9] ), .Q(N81) );
  AND2X1 U160 ( .IN1(\add_66/carry[8] ), .IN2(action[7]), .Q(\add_66/carry[9] ) );
  XOR2X1 U161 ( .IN1(action[7]), .IN2(\add_66/carry[8] ), .Q(N80) );
  AND2X1 U162 ( .IN1(\add_66/carry[7] ), .IN2(action[6]), .Q(\add_66/carry[8] ) );
  XOR2X1 U163 ( .IN1(action[6]), .IN2(\add_66/carry[7] ), .Q(N79) );
  OR2X1 U164 ( .IN1(action[5]), .IN2(\add_66/carry[6] ), .Q(\add_66/carry[7] )
         );
  XNOR2X1 U165 ( .IN1(\add_66/carry[6] ), .IN2(action[5]), .Q(N78) );
  AND2X1 U166 ( .IN1(\add_66/carry[5] ), .IN2(action[4]), .Q(\add_66/carry[6] ) );
  XOR2X1 U167 ( .IN1(action[4]), .IN2(\add_66/carry[5] ), .Q(N77) );
  AND2X1 U168 ( .IN1(action[2]), .IN2(action[3]), .Q(\add_66/carry[5] ) );
  XOR2X1 U169 ( .IN1(action[3]), .IN2(action[2]), .Q(N76) );
  NOR3X0 U170 ( .IN1(n15), .IN2(n13), .IN3(n14), .QN(n62) );
endmodule

