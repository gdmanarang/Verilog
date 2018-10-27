
module findMyBest_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[15]), .IN2(A[15]), .Q(SUM[15]) );
endmodule


module findMyBest_DW01_add_4 ( A, B, CI, SUM, CO );
  input [29:0] A;
  input [29:0] B;
  output [29:0] SUM;
  input CI;
  output CO;
  wire   \A[14] , \A[13] , \A[12] , \A[11] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47;
  assign SUM[14] = \A[14] ;
  assign \A[14]  = A[14];
  assign SUM[13] = \A[13] ;
  assign \A[13]  = A[13];
  assign SUM[12] = \A[12] ;
  assign \A[12]  = A[12];
  assign SUM[11] = \A[11] ;
  assign \A[11]  = A[11];

  INVX0 U2 ( .INP(n16), .ZN(n1) );
  INVX0 U3 ( .INP(n40), .ZN(n7) );
  INVX0 U4 ( .INP(n36), .ZN(n6) );
  INVX0 U5 ( .INP(n32), .ZN(n5) );
  INVX0 U6 ( .INP(n28), .ZN(n4) );
  INVX0 U7 ( .INP(n24), .ZN(n3) );
  INVX0 U8 ( .INP(n20), .ZN(n2) );
  INVX0 U9 ( .INP(n43), .ZN(n9) );
  INVX0 U10 ( .INP(n44), .ZN(n8) );
  XNOR3X1 U11 ( .IN1(B[26]), .IN2(A[26]), .IN3(n10), .Q(SUM[26]) );
  AOI22X1 U12 ( .IN1(n11), .IN2(B[25]), .IN3(n12), .IN4(A[25]), .QN(n10) );
  OR2X1 U13 ( .IN1(A[25]), .IN2(n12), .Q(n11) );
  XOR3X1 U14 ( .IN1(B[25]), .IN2(A[25]), .IN3(n12), .Q(SUM[25]) );
  AO22X1 U15 ( .IN1(A[24]), .IN2(n13), .IN3(B[24]), .IN4(n14), .Q(n12) );
  OR2X1 U16 ( .IN1(n13), .IN2(A[24]), .Q(n14) );
  XOR3X1 U17 ( .IN1(B[24]), .IN2(A[24]), .IN3(n13), .Q(SUM[24]) );
  OAI21X1 U18 ( .IN1(n15), .IN2(n16), .IN3(n17), .QN(n13) );
  XOR2X1 U19 ( .IN1(n18), .IN2(n15), .Q(SUM[23]) );
  OA21X1 U20 ( .IN1(n19), .IN2(n20), .IN3(n21), .Q(n15) );
  NAND2X0 U21 ( .IN1(n1), .IN2(n17), .QN(n18) );
  NAND2X0 U22 ( .IN1(B[23]), .IN2(A[23]), .QN(n17) );
  NOR2X0 U23 ( .IN1(B[23]), .IN2(A[23]), .QN(n16) );
  XOR2X1 U24 ( .IN1(n22), .IN2(n19), .Q(SUM[22]) );
  OA21X1 U25 ( .IN1(n23), .IN2(n24), .IN3(n25), .Q(n19) );
  NAND2X0 U26 ( .IN1(n2), .IN2(n21), .QN(n22) );
  NAND2X0 U27 ( .IN1(B[22]), .IN2(A[22]), .QN(n21) );
  NOR2X0 U28 ( .IN1(B[22]), .IN2(A[22]), .QN(n20) );
  XOR2X1 U29 ( .IN1(n26), .IN2(n23), .Q(SUM[21]) );
  OA21X1 U30 ( .IN1(n27), .IN2(n28), .IN3(n29), .Q(n23) );
  NAND2X0 U31 ( .IN1(n3), .IN2(n25), .QN(n26) );
  NAND2X0 U32 ( .IN1(B[21]), .IN2(A[21]), .QN(n25) );
  NOR2X0 U33 ( .IN1(B[21]), .IN2(A[21]), .QN(n24) );
  XOR2X1 U34 ( .IN1(n30), .IN2(n27), .Q(SUM[20]) );
  OA21X1 U35 ( .IN1(n31), .IN2(n32), .IN3(n33), .Q(n27) );
  NAND2X0 U36 ( .IN1(n4), .IN2(n29), .QN(n30) );
  NAND2X0 U37 ( .IN1(B[20]), .IN2(A[20]), .QN(n29) );
  NOR2X0 U38 ( .IN1(B[20]), .IN2(A[20]), .QN(n28) );
  XOR2X1 U39 ( .IN1(n34), .IN2(n31), .Q(SUM[19]) );
  OA21X1 U40 ( .IN1(n35), .IN2(n36), .IN3(n37), .Q(n31) );
  NAND2X0 U41 ( .IN1(n5), .IN2(n33), .QN(n34) );
  NAND2X0 U42 ( .IN1(B[19]), .IN2(A[19]), .QN(n33) );
  NOR2X0 U43 ( .IN1(B[19]), .IN2(A[19]), .QN(n32) );
  XOR2X1 U44 ( .IN1(n38), .IN2(n35), .Q(SUM[18]) );
  OA21X1 U45 ( .IN1(n39), .IN2(n40), .IN3(n41), .Q(n35) );
  NAND2X0 U46 ( .IN1(n6), .IN2(n37), .QN(n38) );
  NAND2X0 U47 ( .IN1(B[18]), .IN2(A[18]), .QN(n37) );
  NOR2X0 U48 ( .IN1(B[18]), .IN2(A[18]), .QN(n36) );
  XOR2X1 U49 ( .IN1(n42), .IN2(n39), .Q(SUM[17]) );
  OA21X1 U50 ( .IN1(n43), .IN2(n44), .IN3(n45), .Q(n39) );
  NAND2X0 U51 ( .IN1(n7), .IN2(n41), .QN(n42) );
  NAND2X0 U52 ( .IN1(B[17]), .IN2(A[17]), .QN(n41) );
  NOR2X0 U53 ( .IN1(B[17]), .IN2(A[17]), .QN(n40) );
  XOR2X1 U54 ( .IN1(n46), .IN2(n43), .Q(SUM[16]) );
  NAND2X0 U55 ( .IN1(n8), .IN2(n45), .QN(n46) );
  NAND2X0 U56 ( .IN1(B[16]), .IN2(A[16]), .QN(n45) );
  NOR2X0 U57 ( .IN1(B[16]), .IN2(A[16]), .QN(n44) );
  NOR2X0 U58 ( .IN1(n9), .IN2(n47), .QN(SUM[15]) );
  NOR2X0 U59 ( .IN1(B[15]), .IN2(A[15]), .QN(n47) );
  NAND2X0 U60 ( .IN1(B[15]), .IN2(A[15]), .QN(n43) );
endmodule


module findMyBest_DW02_mult_1 ( A, B, TC, PRODUCT );
  input [15:0] A;
  input [15:0] B;
  output [31:0] PRODUCT;
  input TC;
  wire   \ab[15][15] , \ab[15][14] , \ab[15][13] , \ab[15][12] , \ab[15][11] ,
         \ab[15][10] , \ab[15][9] , \ab[15][8] , \ab[15][7] , \ab[15][6] ,
         \ab[15][5] , \ab[15][4] , \ab[15][3] , \ab[15][2] , \ab[15][1] ,
         \ab[15][0] , \ab[14][15] , \ab[14][14] , \ab[14][13] , \ab[14][12] ,
         \ab[14][11] , \ab[14][10] , \ab[14][9] , \ab[14][8] , \ab[14][7] ,
         \ab[14][6] , \ab[14][5] , \ab[14][4] , \ab[14][3] , \ab[14][2] ,
         \ab[14][1] , \ab[14][0] , \ab[13][15] , \ab[13][14] , \ab[13][13] ,
         \ab[13][12] , \ab[13][11] , \ab[13][10] , \ab[13][9] , \ab[13][8] ,
         \ab[13][7] , \ab[13][6] , \ab[13][5] , \ab[13][4] , \ab[13][3] ,
         \ab[13][2] , \ab[13][1] , \ab[13][0] , \ab[12][15] , \ab[12][14] ,
         \ab[12][13] , \ab[12][12] , \ab[12][11] , \ab[12][10] , \ab[12][9] ,
         \ab[12][8] , \ab[12][7] , \ab[12][6] , \ab[12][5] , \ab[12][4] ,
         \ab[12][3] , \ab[12][2] , \ab[12][1] , \ab[12][0] , \ab[11][15] ,
         \ab[11][14] , \ab[11][13] , \ab[11][12] , \ab[11][11] , \ab[11][10] ,
         \ab[11][9] , \ab[11][8] , \ab[11][7] , \ab[11][6] , \ab[11][5] ,
         \ab[11][4] , \ab[11][3] , \ab[11][2] , \ab[11][1] , \ab[11][0] ,
         \ab[10][15] , \ab[10][14] , \ab[10][13] , \ab[10][12] , \ab[10][11] ,
         \ab[10][10] , \ab[10][9] , \ab[10][8] , \ab[10][7] , \ab[10][6] ,
         \ab[10][5] , \ab[10][4] , \ab[10][3] , \ab[10][2] , \ab[10][1] ,
         \ab[10][0] , \ab[9][15] , \ab[9][14] , \ab[9][13] , \ab[9][12] ,
         \ab[9][11] , \ab[9][10] , \ab[9][9] , \ab[9][8] , \ab[9][7] ,
         \ab[9][6] , \ab[9][5] , \ab[9][4] , \ab[9][3] , \ab[9][2] ,
         \ab[9][1] , \ab[9][0] , \ab[8][15] , \ab[8][14] , \ab[8][13] ,
         \ab[8][12] , \ab[8][11] , \ab[8][10] , \ab[8][9] , \ab[8][8] ,
         \ab[8][7] , \ab[8][6] , \ab[8][5] , \ab[8][4] , \ab[8][3] ,
         \ab[8][2] , \ab[8][1] , \ab[8][0] , \ab[7][15] , \ab[7][14] ,
         \ab[7][13] , \ab[7][12] , \ab[7][11] , \ab[7][10] , \ab[7][9] ,
         \ab[7][8] , \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] ,
         \ab[7][3] , \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][15] ,
         \ab[6][14] , \ab[6][13] , \ab[6][12] , \ab[6][11] , \ab[6][10] ,
         \ab[6][9] , \ab[6][8] , \ab[6][7] , \ab[6][6] , \ab[6][5] ,
         \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] , \ab[6][0] ,
         \ab[5][15] , \ab[5][14] , \ab[5][13] , \ab[5][12] , \ab[5][11] ,
         \ab[5][10] , \ab[5][9] , \ab[5][8] , \ab[5][7] , \ab[5][6] ,
         \ab[5][5] , \ab[5][4] , \ab[5][3] , \ab[5][2] , \ab[5][1] ,
         \ab[5][0] , \ab[4][15] , \ab[4][14] , \ab[4][13] , \ab[4][12] ,
         \ab[4][11] , \ab[4][10] , \ab[4][9] , \ab[4][8] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][15] , \ab[3][14] , \ab[3][13] ,
         \ab[3][12] , \ab[3][11] , \ab[3][10] , \ab[3][9] , \ab[3][8] ,
         \ab[3][7] , \ab[3][6] , \ab[3][5] , \ab[3][4] , \ab[3][3] ,
         \ab[3][2] , \ab[3][1] , \ab[3][0] , \ab[2][15] , \ab[2][14] ,
         \ab[2][13] , \ab[2][12] , \ab[2][11] , \ab[2][10] , \ab[2][9] ,
         \ab[2][8] , \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] ,
         \ab[2][3] , \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][15] ,
         \ab[1][14] , \ab[1][13] , \ab[1][12] , \ab[1][11] , \ab[1][10] ,
         \ab[1][9] , \ab[1][8] , \ab[1][7] , \ab[1][6] , \ab[1][5] ,
         \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] , \ab[0][15] ,
         \ab[0][14] , \ab[0][13] , \ab[0][12] , \ab[0][11] , \ab[0][10] ,
         \ab[0][9] , \ab[0][8] , \ab[0][7] , \ab[0][6] , \ab[0][5] ,
         \ab[0][4] , \ab[0][3] , \ab[0][2] , \CARRYB[15][14] ,
         \CARRYB[15][13] , \CARRYB[15][12] , \CARRYB[15][11] ,
         \CARRYB[15][10] , \CARRYB[15][9] , \CARRYB[15][8] , \CARRYB[15][7] ,
         \CARRYB[15][6] , \CARRYB[15][5] , \CARRYB[15][4] , \CARRYB[15][3] ,
         \CARRYB[15][2] , \CARRYB[15][1] , \CARRYB[15][0] , \CARRYB[14][14] ,
         \CARRYB[14][13] , \CARRYB[14][12] , \CARRYB[14][11] ,
         \CARRYB[14][10] , \CARRYB[14][9] , \CARRYB[14][8] , \CARRYB[14][7] ,
         \CARRYB[14][6] , \CARRYB[14][5] , \CARRYB[14][4] , \CARRYB[14][3] ,
         \CARRYB[14][2] , \CARRYB[14][1] , \CARRYB[14][0] , \CARRYB[13][14] ,
         \CARRYB[13][13] , \CARRYB[13][12] , \CARRYB[13][11] ,
         \CARRYB[13][10] , \CARRYB[13][9] , \CARRYB[13][8] , \CARRYB[13][7] ,
         \CARRYB[13][6] , \CARRYB[13][5] , \CARRYB[13][4] , \CARRYB[13][3] ,
         \CARRYB[13][2] , \CARRYB[13][1] , \CARRYB[13][0] , \CARRYB[12][14] ,
         \CARRYB[12][13] , \CARRYB[12][12] , \CARRYB[12][11] ,
         \CARRYB[12][10] , \CARRYB[12][9] , \CARRYB[12][8] , \CARRYB[12][7] ,
         \CARRYB[12][6] , \CARRYB[12][5] , \CARRYB[12][4] , \CARRYB[12][3] ,
         \CARRYB[12][2] , \CARRYB[12][1] , \CARRYB[12][0] , \CARRYB[11][14] ,
         \CARRYB[11][13] , \CARRYB[11][12] , \CARRYB[11][11] ,
         \CARRYB[11][10] , \CARRYB[11][9] , \CARRYB[11][8] , \CARRYB[11][7] ,
         \CARRYB[11][6] , \CARRYB[11][5] , \CARRYB[11][4] , \CARRYB[11][3] ,
         \CARRYB[11][2] , \CARRYB[11][1] , \CARRYB[11][0] , \CARRYB[10][14] ,
         \CARRYB[10][13] , \CARRYB[10][12] , \CARRYB[10][11] ,
         \CARRYB[10][10] , \CARRYB[10][9] , \CARRYB[10][8] , \CARRYB[10][7] ,
         \CARRYB[10][6] , \CARRYB[10][5] , \CARRYB[10][4] , \CARRYB[10][3] ,
         \CARRYB[10][2] , \CARRYB[10][1] , \CARRYB[10][0] , \CARRYB[9][14] ,
         \CARRYB[9][13] , \CARRYB[9][12] , \CARRYB[9][11] , \CARRYB[9][10] ,
         \CARRYB[9][9] , \CARRYB[9][8] , \CARRYB[9][7] , \CARRYB[9][6] ,
         \CARRYB[9][5] , \CARRYB[9][4] , \CARRYB[9][3] , \CARRYB[9][2] ,
         \CARRYB[9][1] , \CARRYB[9][0] , \CARRYB[8][14] , \CARRYB[8][13] ,
         \CARRYB[8][12] , \CARRYB[8][11] , \CARRYB[8][10] , \CARRYB[8][9] ,
         \CARRYB[8][8] , \CARRYB[8][7] , \CARRYB[8][6] , \CARRYB[8][5] ,
         \CARRYB[8][4] , \CARRYB[8][3] , \CARRYB[8][2] , \CARRYB[8][1] ,
         \CARRYB[8][0] , \CARRYB[7][14] , \CARRYB[7][13] , \CARRYB[7][12] ,
         \CARRYB[7][11] , \CARRYB[7][10] , \CARRYB[7][9] , \CARRYB[7][8] ,
         \CARRYB[7][7] , \CARRYB[7][6] , \CARRYB[7][5] , \CARRYB[7][4] ,
         \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] , \CARRYB[7][0] ,
         \CARRYB[6][14] , \CARRYB[6][13] , \CARRYB[6][12] , \CARRYB[6][11] ,
         \CARRYB[6][10] , \CARRYB[6][9] , \CARRYB[6][8] , \CARRYB[6][7] ,
         \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] , \CARRYB[6][3] ,
         \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] , \CARRYB[5][14] ,
         \CARRYB[5][13] , \CARRYB[5][12] , \CARRYB[5][11] , \CARRYB[5][10] ,
         \CARRYB[5][9] , \CARRYB[5][8] , \CARRYB[5][7] , \CARRYB[5][6] ,
         \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] , \CARRYB[5][2] ,
         \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][14] , \CARRYB[4][13] ,
         \CARRYB[4][12] , \CARRYB[4][11] , \CARRYB[4][10] , \CARRYB[4][9] ,
         \CARRYB[4][8] , \CARRYB[4][7] , \CARRYB[4][6] , \CARRYB[4][5] ,
         \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] , \CARRYB[4][1] ,
         \CARRYB[4][0] , \CARRYB[3][14] , \CARRYB[3][13] , \CARRYB[3][12] ,
         \CARRYB[3][11] , \CARRYB[3][10] , \CARRYB[3][9] , \CARRYB[3][8] ,
         \CARRYB[3][7] , \CARRYB[3][6] , \CARRYB[3][5] , \CARRYB[3][4] ,
         \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] , \CARRYB[3][0] ,
         \CARRYB[2][14] , \CARRYB[2][13] , \CARRYB[2][12] , \CARRYB[2][11] ,
         \CARRYB[2][10] , \CARRYB[2][9] , \CARRYB[2][8] , \CARRYB[2][7] ,
         \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] , \CARRYB[2][3] ,
         \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] , \CARRYB[1][0] ,
         \SUMB[15][14] , \SUMB[15][13] , \SUMB[15][12] , \SUMB[15][11] ,
         \SUMB[15][10] , \SUMB[15][9] , \SUMB[15][8] , \SUMB[15][7] ,
         \SUMB[15][6] , \SUMB[15][5] , \SUMB[15][4] , \SUMB[15][3] ,
         \SUMB[15][2] , \SUMB[15][1] , \SUMB[15][0] , \SUMB[14][14] ,
         \SUMB[14][13] , \SUMB[14][12] , \SUMB[14][11] , \SUMB[14][10] ,
         \SUMB[14][9] , \SUMB[14][8] , \SUMB[14][7] , \SUMB[14][6] ,
         \SUMB[14][5] , \SUMB[14][4] , \SUMB[14][3] , \SUMB[14][2] ,
         \SUMB[14][1] , \SUMB[13][14] , \SUMB[13][13] , \SUMB[13][12] ,
         \SUMB[13][11] , \SUMB[13][10] , \SUMB[13][9] , \SUMB[13][8] ,
         \SUMB[13][7] , \SUMB[13][6] , \SUMB[13][5] , \SUMB[13][4] ,
         \SUMB[13][3] , \SUMB[13][2] , \SUMB[13][1] , \SUMB[12][14] ,
         \SUMB[12][13] , \SUMB[12][12] , \SUMB[12][11] , \SUMB[12][10] ,
         \SUMB[12][9] , \SUMB[12][8] , \SUMB[12][7] , \SUMB[12][6] ,
         \SUMB[12][5] , \SUMB[12][4] , \SUMB[12][3] , \SUMB[12][2] ,
         \SUMB[12][1] , \SUMB[11][14] , \SUMB[11][13] , \SUMB[11][12] ,
         \SUMB[11][11] , \SUMB[11][10] , \SUMB[11][9] , \SUMB[11][8] ,
         \SUMB[11][7] , \SUMB[11][6] , \SUMB[11][5] , \SUMB[11][4] ,
         \SUMB[11][3] , \SUMB[11][2] , \SUMB[11][1] , \SUMB[10][14] ,
         \SUMB[10][13] , \SUMB[10][12] , \SUMB[10][11] , \SUMB[10][10] ,
         \SUMB[10][9] , \SUMB[10][8] , \SUMB[10][7] , \SUMB[10][6] ,
         \SUMB[10][5] , \SUMB[10][4] , \SUMB[10][3] , \SUMB[10][2] ,
         \SUMB[10][1] , \SUMB[9][14] , \SUMB[9][13] , \SUMB[9][12] ,
         \SUMB[9][11] , \SUMB[9][10] , \SUMB[9][9] , \SUMB[9][8] ,
         \SUMB[9][7] , \SUMB[9][6] , \SUMB[9][5] , \SUMB[9][4] , \SUMB[9][3] ,
         \SUMB[9][2] , \SUMB[9][1] , \SUMB[8][14] , \SUMB[8][13] ,
         \SUMB[8][12] , \SUMB[8][11] , \SUMB[8][10] , \SUMB[8][9] ,
         \SUMB[8][8] , \SUMB[8][7] , \SUMB[8][6] , \SUMB[8][5] , \SUMB[8][4] ,
         \SUMB[8][3] , \SUMB[8][2] , \SUMB[8][1] , \SUMB[7][14] ,
         \SUMB[7][13] , \SUMB[7][12] , \SUMB[7][11] , \SUMB[7][10] ,
         \SUMB[7][9] , \SUMB[7][8] , \SUMB[7][7] , \SUMB[7][6] , \SUMB[7][5] ,
         \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] , \SUMB[7][1] , \SUMB[6][14] ,
         \SUMB[6][13] , \SUMB[6][12] , \SUMB[6][11] , \SUMB[6][10] ,
         \SUMB[6][9] , \SUMB[6][8] , \SUMB[6][7] , \SUMB[6][6] , \SUMB[6][5] ,
         \SUMB[6][4] , \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][14] ,
         \SUMB[5][13] , \SUMB[5][12] , \SUMB[5][11] , \SUMB[5][10] ,
         \SUMB[5][9] , \SUMB[5][8] , \SUMB[5][7] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][14] ,
         \SUMB[4][13] , \SUMB[4][12] , \SUMB[4][11] , \SUMB[4][10] ,
         \SUMB[4][9] , \SUMB[4][8] , \SUMB[4][7] , \SUMB[4][6] , \SUMB[4][5] ,
         \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][14] ,
         \SUMB[3][13] , \SUMB[3][12] , \SUMB[3][11] , \SUMB[3][10] ,
         \SUMB[3][9] , \SUMB[3][8] , \SUMB[3][7] , \SUMB[3][6] , \SUMB[3][5] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][14] ,
         \SUMB[2][13] , \SUMB[2][12] , \SUMB[2][11] , \SUMB[2][10] ,
         \SUMB[2][9] , \SUMB[2][8] , \SUMB[2][7] , \SUMB[2][6] , \SUMB[2][5] ,
         \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][14] ,
         \SUMB[1][13] , \SUMB[1][12] , \SUMB[1][11] , \SUMB[1][10] ,
         \SUMB[1][9] , \SUMB[1][8] , \SUMB[1][7] , \SUMB[1][6] , \SUMB[1][5] ,
         \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[28] ,
         \A1[27] , \A1[26] , \A1[25] , \A1[24] , \A1[23] , \A1[22] , \A1[21] ,
         \A1[20] , \A1[19] , \A1[18] , \A1[17] , \A1[16] , \A1[15] , \A1[14] ,
         \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] ,
         \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13;

  FADDX1 S4_0 ( .A(\ab[15][0] ), .B(\CARRYB[14][0] ), .CI(\SUMB[14][1] ), .CO(
        \CARRYB[15][0] ), .S(\SUMB[15][0] ) );
  FADDX1 S4_1 ( .A(\ab[15][1] ), .B(\CARRYB[14][1] ), .CI(\SUMB[14][2] ), .CO(
        \CARRYB[15][1] ), .S(\SUMB[15][1] ) );
  FADDX1 S4_2 ( .A(\ab[15][2] ), .B(\CARRYB[14][2] ), .CI(\SUMB[14][3] ), .CO(
        \CARRYB[15][2] ), .S(\SUMB[15][2] ) );
  FADDX1 S4_3 ( .A(\ab[15][3] ), .B(\CARRYB[14][3] ), .CI(\SUMB[14][4] ), .CO(
        \CARRYB[15][3] ), .S(\SUMB[15][3] ) );
  FADDX1 S4_4 ( .A(\ab[15][4] ), .B(\CARRYB[14][4] ), .CI(\SUMB[14][5] ), .CO(
        \CARRYB[15][4] ), .S(\SUMB[15][4] ) );
  FADDX1 S4_5 ( .A(\ab[15][5] ), .B(\CARRYB[14][5] ), .CI(\SUMB[14][6] ), .CO(
        \CARRYB[15][5] ), .S(\SUMB[15][5] ) );
  FADDX1 S4_6 ( .A(\ab[15][6] ), .B(\CARRYB[14][6] ), .CI(\SUMB[14][7] ), .CO(
        \CARRYB[15][6] ), .S(\SUMB[15][6] ) );
  FADDX1 S4_7 ( .A(\ab[15][7] ), .B(\CARRYB[14][7] ), .CI(\SUMB[14][8] ), .CO(
        \CARRYB[15][7] ), .S(\SUMB[15][7] ) );
  FADDX1 S4_8 ( .A(\ab[15][8] ), .B(\CARRYB[14][8] ), .CI(\SUMB[14][9] ), .CO(
        \CARRYB[15][8] ), .S(\SUMB[15][8] ) );
  FADDX1 S4_9 ( .A(\ab[15][9] ), .B(\CARRYB[14][9] ), .CI(\SUMB[14][10] ), 
        .CO(\CARRYB[15][9] ), .S(\SUMB[15][9] ) );
  FADDX1 S4_10 ( .A(\ab[15][10] ), .B(\CARRYB[14][10] ), .CI(\SUMB[14][11] ), 
        .CO(\CARRYB[15][10] ), .S(\SUMB[15][10] ) );
  FADDX1 S4_11 ( .A(\ab[15][11] ), .B(\CARRYB[14][11] ), .CI(\SUMB[14][12] ), 
        .CO(\CARRYB[15][11] ), .S(\SUMB[15][11] ) );
  FADDX1 S4_12 ( .A(\ab[15][12] ), .B(\CARRYB[14][12] ), .CI(\SUMB[14][13] ), 
        .CO(\CARRYB[15][12] ), .S(\SUMB[15][12] ) );
  FADDX1 S4_13 ( .A(\ab[15][13] ), .B(\CARRYB[14][13] ), .CI(\SUMB[14][14] ), 
        .CO(\CARRYB[15][13] ), .S(\SUMB[15][13] ) );
  FADDX1 S5_14 ( .A(\ab[15][14] ), .B(\CARRYB[14][14] ), .CI(\ab[14][15] ), 
        .CO(\CARRYB[15][14] ), .S(\SUMB[15][14] ) );
  FADDX1 S1_14_0 ( .A(\ab[14][0] ), .B(\CARRYB[13][0] ), .CI(\SUMB[13][1] ), 
        .CO(\CARRYB[14][0] ), .S(\A1[12] ) );
  FADDX1 S2_14_1 ( .A(\ab[14][1] ), .B(\CARRYB[13][1] ), .CI(\SUMB[13][2] ), 
        .CO(\CARRYB[14][1] ), .S(\SUMB[14][1] ) );
  FADDX1 S2_14_2 ( .A(\ab[14][2] ), .B(\CARRYB[13][2] ), .CI(\SUMB[13][3] ), 
        .CO(\CARRYB[14][2] ), .S(\SUMB[14][2] ) );
  FADDX1 S2_14_3 ( .A(\ab[14][3] ), .B(\CARRYB[13][3] ), .CI(\SUMB[13][4] ), 
        .CO(\CARRYB[14][3] ), .S(\SUMB[14][3] ) );
  FADDX1 S2_14_4 ( .A(\ab[14][4] ), .B(\CARRYB[13][4] ), .CI(\SUMB[13][5] ), 
        .CO(\CARRYB[14][4] ), .S(\SUMB[14][4] ) );
  FADDX1 S2_14_5 ( .A(\ab[14][5] ), .B(\CARRYB[13][5] ), .CI(\SUMB[13][6] ), 
        .CO(\CARRYB[14][5] ), .S(\SUMB[14][5] ) );
  FADDX1 S2_14_6 ( .A(\ab[14][6] ), .B(\CARRYB[13][6] ), .CI(\SUMB[13][7] ), 
        .CO(\CARRYB[14][6] ), .S(\SUMB[14][6] ) );
  FADDX1 S2_14_7 ( .A(\ab[14][7] ), .B(\CARRYB[13][7] ), .CI(\SUMB[13][8] ), 
        .CO(\CARRYB[14][7] ), .S(\SUMB[14][7] ) );
  FADDX1 S2_14_8 ( .A(\ab[14][8] ), .B(\CARRYB[13][8] ), .CI(\SUMB[13][9] ), 
        .CO(\CARRYB[14][8] ), .S(\SUMB[14][8] ) );
  FADDX1 S2_14_9 ( .A(\ab[14][9] ), .B(\CARRYB[13][9] ), .CI(\SUMB[13][10] ), 
        .CO(\CARRYB[14][9] ), .S(\SUMB[14][9] ) );
  FADDX1 S2_14_10 ( .A(\ab[14][10] ), .B(\CARRYB[13][10] ), .CI(\SUMB[13][11] ), .CO(\CARRYB[14][10] ), .S(\SUMB[14][10] ) );
  FADDX1 S2_14_11 ( .A(\ab[14][11] ), .B(\CARRYB[13][11] ), .CI(\SUMB[13][12] ), .CO(\CARRYB[14][11] ), .S(\SUMB[14][11] ) );
  FADDX1 S2_14_12 ( .A(\ab[14][12] ), .B(\CARRYB[13][12] ), .CI(\SUMB[13][13] ), .CO(\CARRYB[14][12] ), .S(\SUMB[14][12] ) );
  FADDX1 S2_14_13 ( .A(\ab[14][13] ), .B(\CARRYB[13][13] ), .CI(\SUMB[13][14] ), .CO(\CARRYB[14][13] ), .S(\SUMB[14][13] ) );
  FADDX1 S3_14_14 ( .A(\ab[14][14] ), .B(\CARRYB[13][14] ), .CI(\ab[13][15] ), 
        .CO(\CARRYB[14][14] ), .S(\SUMB[14][14] ) );
  FADDX1 S1_13_0 ( .A(\ab[13][0] ), .B(\CARRYB[12][0] ), .CI(\SUMB[12][1] ), 
        .CO(\CARRYB[13][0] ), .S(\A1[11] ) );
  FADDX1 S2_13_1 ( .A(\ab[13][1] ), .B(\CARRYB[12][1] ), .CI(\SUMB[12][2] ), 
        .CO(\CARRYB[13][1] ), .S(\SUMB[13][1] ) );
  FADDX1 S2_13_2 ( .A(\ab[13][2] ), .B(\CARRYB[12][2] ), .CI(\SUMB[12][3] ), 
        .CO(\CARRYB[13][2] ), .S(\SUMB[13][2] ) );
  FADDX1 S2_13_3 ( .A(\ab[13][3] ), .B(\CARRYB[12][3] ), .CI(\SUMB[12][4] ), 
        .CO(\CARRYB[13][3] ), .S(\SUMB[13][3] ) );
  FADDX1 S2_13_4 ( .A(\ab[13][4] ), .B(\CARRYB[12][4] ), .CI(\SUMB[12][5] ), 
        .CO(\CARRYB[13][4] ), .S(\SUMB[13][4] ) );
  FADDX1 S2_13_5 ( .A(\ab[13][5] ), .B(\CARRYB[12][5] ), .CI(\SUMB[12][6] ), 
        .CO(\CARRYB[13][5] ), .S(\SUMB[13][5] ) );
  FADDX1 S2_13_6 ( .A(\ab[13][6] ), .B(\CARRYB[12][6] ), .CI(\SUMB[12][7] ), 
        .CO(\CARRYB[13][6] ), .S(\SUMB[13][6] ) );
  FADDX1 S2_13_7 ( .A(\ab[13][7] ), .B(\CARRYB[12][7] ), .CI(\SUMB[12][8] ), 
        .CO(\CARRYB[13][7] ), .S(\SUMB[13][7] ) );
  FADDX1 S2_13_8 ( .A(\ab[13][8] ), .B(\CARRYB[12][8] ), .CI(\SUMB[12][9] ), 
        .CO(\CARRYB[13][8] ), .S(\SUMB[13][8] ) );
  FADDX1 S2_13_9 ( .A(\ab[13][9] ), .B(\CARRYB[12][9] ), .CI(\SUMB[12][10] ), 
        .CO(\CARRYB[13][9] ), .S(\SUMB[13][9] ) );
  FADDX1 S2_13_10 ( .A(\ab[13][10] ), .B(\CARRYB[12][10] ), .CI(\SUMB[12][11] ), .CO(\CARRYB[13][10] ), .S(\SUMB[13][10] ) );
  FADDX1 S2_13_11 ( .A(\ab[13][11] ), .B(\CARRYB[12][11] ), .CI(\SUMB[12][12] ), .CO(\CARRYB[13][11] ), .S(\SUMB[13][11] ) );
  FADDX1 S2_13_12 ( .A(\ab[13][12] ), .B(\CARRYB[12][12] ), .CI(\SUMB[12][13] ), .CO(\CARRYB[13][12] ), .S(\SUMB[13][12] ) );
  FADDX1 S2_13_13 ( .A(\ab[13][13] ), .B(\CARRYB[12][13] ), .CI(\SUMB[12][14] ), .CO(\CARRYB[13][13] ), .S(\SUMB[13][13] ) );
  FADDX1 S3_13_14 ( .A(\ab[13][14] ), .B(\CARRYB[12][14] ), .CI(\ab[12][15] ), 
        .CO(\CARRYB[13][14] ), .S(\SUMB[13][14] ) );
  FADDX1 S1_12_0 ( .A(\ab[12][0] ), .B(\CARRYB[11][0] ), .CI(\SUMB[11][1] ), 
        .CO(\CARRYB[12][0] ), .S(\A1[10] ) );
  FADDX1 S2_12_1 ( .A(\ab[12][1] ), .B(\CARRYB[11][1] ), .CI(\SUMB[11][2] ), 
        .CO(\CARRYB[12][1] ), .S(\SUMB[12][1] ) );
  FADDX1 S2_12_2 ( .A(\ab[12][2] ), .B(\CARRYB[11][2] ), .CI(\SUMB[11][3] ), 
        .CO(\CARRYB[12][2] ), .S(\SUMB[12][2] ) );
  FADDX1 S2_12_3 ( .A(\ab[12][3] ), .B(\CARRYB[11][3] ), .CI(\SUMB[11][4] ), 
        .CO(\CARRYB[12][3] ), .S(\SUMB[12][3] ) );
  FADDX1 S2_12_4 ( .A(\ab[12][4] ), .B(\CARRYB[11][4] ), .CI(\SUMB[11][5] ), 
        .CO(\CARRYB[12][4] ), .S(\SUMB[12][4] ) );
  FADDX1 S2_12_5 ( .A(\ab[12][5] ), .B(\CARRYB[11][5] ), .CI(\SUMB[11][6] ), 
        .CO(\CARRYB[12][5] ), .S(\SUMB[12][5] ) );
  FADDX1 S2_12_6 ( .A(\ab[12][6] ), .B(\CARRYB[11][6] ), .CI(\SUMB[11][7] ), 
        .CO(\CARRYB[12][6] ), .S(\SUMB[12][6] ) );
  FADDX1 S2_12_7 ( .A(\ab[12][7] ), .B(\CARRYB[11][7] ), .CI(\SUMB[11][8] ), 
        .CO(\CARRYB[12][7] ), .S(\SUMB[12][7] ) );
  FADDX1 S2_12_8 ( .A(\ab[12][8] ), .B(\CARRYB[11][8] ), .CI(\SUMB[11][9] ), 
        .CO(\CARRYB[12][8] ), .S(\SUMB[12][8] ) );
  FADDX1 S2_12_9 ( .A(\ab[12][9] ), .B(\CARRYB[11][9] ), .CI(\SUMB[11][10] ), 
        .CO(\CARRYB[12][9] ), .S(\SUMB[12][9] ) );
  FADDX1 S2_12_10 ( .A(\ab[12][10] ), .B(\CARRYB[11][10] ), .CI(\SUMB[11][11] ), .CO(\CARRYB[12][10] ), .S(\SUMB[12][10] ) );
  FADDX1 S2_12_11 ( .A(\ab[12][11] ), .B(\CARRYB[11][11] ), .CI(\SUMB[11][12] ), .CO(\CARRYB[12][11] ), .S(\SUMB[12][11] ) );
  FADDX1 S2_12_12 ( .A(\ab[12][12] ), .B(\CARRYB[11][12] ), .CI(\SUMB[11][13] ), .CO(\CARRYB[12][12] ), .S(\SUMB[12][12] ) );
  FADDX1 S2_12_13 ( .A(\ab[12][13] ), .B(\CARRYB[11][13] ), .CI(\SUMB[11][14] ), .CO(\CARRYB[12][13] ), .S(\SUMB[12][13] ) );
  FADDX1 S3_12_14 ( .A(\ab[12][14] ), .B(\CARRYB[11][14] ), .CI(\ab[11][15] ), 
        .CO(\CARRYB[12][14] ), .S(\SUMB[12][14] ) );
  FADDX1 S1_11_0 ( .A(\ab[11][0] ), .B(\CARRYB[10][0] ), .CI(\SUMB[10][1] ), 
        .CO(\CARRYB[11][0] ), .S(\A1[9] ) );
  FADDX1 S2_11_1 ( .A(\ab[11][1] ), .B(\CARRYB[10][1] ), .CI(\SUMB[10][2] ), 
        .CO(\CARRYB[11][1] ), .S(\SUMB[11][1] ) );
  FADDX1 S2_11_2 ( .A(\ab[11][2] ), .B(\CARRYB[10][2] ), .CI(\SUMB[10][3] ), 
        .CO(\CARRYB[11][2] ), .S(\SUMB[11][2] ) );
  FADDX1 S2_11_3 ( .A(\ab[11][3] ), .B(\CARRYB[10][3] ), .CI(\SUMB[10][4] ), 
        .CO(\CARRYB[11][3] ), .S(\SUMB[11][3] ) );
  FADDX1 S2_11_4 ( .A(\ab[11][4] ), .B(\CARRYB[10][4] ), .CI(\SUMB[10][5] ), 
        .CO(\CARRYB[11][4] ), .S(\SUMB[11][4] ) );
  FADDX1 S2_11_5 ( .A(\ab[11][5] ), .B(\CARRYB[10][5] ), .CI(\SUMB[10][6] ), 
        .CO(\CARRYB[11][5] ), .S(\SUMB[11][5] ) );
  FADDX1 S2_11_6 ( .A(\ab[11][6] ), .B(\CARRYB[10][6] ), .CI(\SUMB[10][7] ), 
        .CO(\CARRYB[11][6] ), .S(\SUMB[11][6] ) );
  FADDX1 S2_11_7 ( .A(\ab[11][7] ), .B(\CARRYB[10][7] ), .CI(\SUMB[10][8] ), 
        .CO(\CARRYB[11][7] ), .S(\SUMB[11][7] ) );
  FADDX1 S2_11_8 ( .A(\ab[11][8] ), .B(\CARRYB[10][8] ), .CI(\SUMB[10][9] ), 
        .CO(\CARRYB[11][8] ), .S(\SUMB[11][8] ) );
  FADDX1 S2_11_9 ( .A(\ab[11][9] ), .B(\CARRYB[10][9] ), .CI(\SUMB[10][10] ), 
        .CO(\CARRYB[11][9] ), .S(\SUMB[11][9] ) );
  FADDX1 S2_11_10 ( .A(\ab[11][10] ), .B(\CARRYB[10][10] ), .CI(\SUMB[10][11] ), .CO(\CARRYB[11][10] ), .S(\SUMB[11][10] ) );
  FADDX1 S2_11_11 ( .A(\ab[11][11] ), .B(\CARRYB[10][11] ), .CI(\SUMB[10][12] ), .CO(\CARRYB[11][11] ), .S(\SUMB[11][11] ) );
  FADDX1 S2_11_12 ( .A(\ab[11][12] ), .B(\CARRYB[10][12] ), .CI(\SUMB[10][13] ), .CO(\CARRYB[11][12] ), .S(\SUMB[11][12] ) );
  FADDX1 S2_11_13 ( .A(\ab[11][13] ), .B(\CARRYB[10][13] ), .CI(\SUMB[10][14] ), .CO(\CARRYB[11][13] ), .S(\SUMB[11][13] ) );
  FADDX1 S3_11_14 ( .A(\ab[11][14] ), .B(\CARRYB[10][14] ), .CI(\ab[10][15] ), 
        .CO(\CARRYB[11][14] ), .S(\SUMB[11][14] ) );
  FADDX1 S1_10_0 ( .A(\ab[10][0] ), .B(\CARRYB[9][0] ), .CI(\SUMB[9][1] ), 
        .CO(\CARRYB[10][0] ), .S(\A1[8] ) );
  FADDX1 S2_10_1 ( .A(\ab[10][1] ), .B(\CARRYB[9][1] ), .CI(\SUMB[9][2] ), 
        .CO(\CARRYB[10][1] ), .S(\SUMB[10][1] ) );
  FADDX1 S2_10_2 ( .A(\ab[10][2] ), .B(\CARRYB[9][2] ), .CI(\SUMB[9][3] ), 
        .CO(\CARRYB[10][2] ), .S(\SUMB[10][2] ) );
  FADDX1 S2_10_3 ( .A(\ab[10][3] ), .B(\CARRYB[9][3] ), .CI(\SUMB[9][4] ), 
        .CO(\CARRYB[10][3] ), .S(\SUMB[10][3] ) );
  FADDX1 S2_10_4 ( .A(\ab[10][4] ), .B(\CARRYB[9][4] ), .CI(\SUMB[9][5] ), 
        .CO(\CARRYB[10][4] ), .S(\SUMB[10][4] ) );
  FADDX1 S2_10_5 ( .A(\ab[10][5] ), .B(\CARRYB[9][5] ), .CI(\SUMB[9][6] ), 
        .CO(\CARRYB[10][5] ), .S(\SUMB[10][5] ) );
  FADDX1 S2_10_6 ( .A(\ab[10][6] ), .B(\CARRYB[9][6] ), .CI(\SUMB[9][7] ), 
        .CO(\CARRYB[10][6] ), .S(\SUMB[10][6] ) );
  FADDX1 S2_10_7 ( .A(\ab[10][7] ), .B(\CARRYB[9][7] ), .CI(\SUMB[9][8] ), 
        .CO(\CARRYB[10][7] ), .S(\SUMB[10][7] ) );
  FADDX1 S2_10_8 ( .A(\ab[10][8] ), .B(\CARRYB[9][8] ), .CI(\SUMB[9][9] ), 
        .CO(\CARRYB[10][8] ), .S(\SUMB[10][8] ) );
  FADDX1 S2_10_9 ( .A(\ab[10][9] ), .B(\CARRYB[9][9] ), .CI(\SUMB[9][10] ), 
        .CO(\CARRYB[10][9] ), .S(\SUMB[10][9] ) );
  FADDX1 S2_10_10 ( .A(\ab[10][10] ), .B(\CARRYB[9][10] ), .CI(\SUMB[9][11] ), 
        .CO(\CARRYB[10][10] ), .S(\SUMB[10][10] ) );
  FADDX1 S2_10_11 ( .A(\ab[10][11] ), .B(\CARRYB[9][11] ), .CI(\SUMB[9][12] ), 
        .CO(\CARRYB[10][11] ), .S(\SUMB[10][11] ) );
  FADDX1 S2_10_12 ( .A(\ab[10][12] ), .B(\CARRYB[9][12] ), .CI(\SUMB[9][13] ), 
        .CO(\CARRYB[10][12] ), .S(\SUMB[10][12] ) );
  FADDX1 S2_10_13 ( .A(\ab[10][13] ), .B(\CARRYB[9][13] ), .CI(\SUMB[9][14] ), 
        .CO(\CARRYB[10][13] ), .S(\SUMB[10][13] ) );
  FADDX1 S3_10_14 ( .A(\ab[10][14] ), .B(\CARRYB[9][14] ), .CI(\ab[9][15] ), 
        .CO(\CARRYB[10][14] ), .S(\SUMB[10][14] ) );
  FADDX1 S1_9_0 ( .A(\ab[9][0] ), .B(\CARRYB[8][0] ), .CI(\SUMB[8][1] ), .CO(
        \CARRYB[9][0] ), .S(\A1[7] ) );
  FADDX1 S2_9_1 ( .A(\ab[9][1] ), .B(\CARRYB[8][1] ), .CI(\SUMB[8][2] ), .CO(
        \CARRYB[9][1] ), .S(\SUMB[9][1] ) );
  FADDX1 S2_9_2 ( .A(\ab[9][2] ), .B(\CARRYB[8][2] ), .CI(\SUMB[8][3] ), .CO(
        \CARRYB[9][2] ), .S(\SUMB[9][2] ) );
  FADDX1 S2_9_3 ( .A(\ab[9][3] ), .B(\CARRYB[8][3] ), .CI(\SUMB[8][4] ), .CO(
        \CARRYB[9][3] ), .S(\SUMB[9][3] ) );
  FADDX1 S2_9_4 ( .A(\ab[9][4] ), .B(\CARRYB[8][4] ), .CI(\SUMB[8][5] ), .CO(
        \CARRYB[9][4] ), .S(\SUMB[9][4] ) );
  FADDX1 S2_9_5 ( .A(\ab[9][5] ), .B(\CARRYB[8][5] ), .CI(\SUMB[8][6] ), .CO(
        \CARRYB[9][5] ), .S(\SUMB[9][5] ) );
  FADDX1 S2_9_6 ( .A(\ab[9][6] ), .B(\CARRYB[8][6] ), .CI(\SUMB[8][7] ), .CO(
        \CARRYB[9][6] ), .S(\SUMB[9][6] ) );
  FADDX1 S2_9_7 ( .A(\ab[9][7] ), .B(\CARRYB[8][7] ), .CI(\SUMB[8][8] ), .CO(
        \CARRYB[9][7] ), .S(\SUMB[9][7] ) );
  FADDX1 S2_9_8 ( .A(\ab[9][8] ), .B(\CARRYB[8][8] ), .CI(\SUMB[8][9] ), .CO(
        \CARRYB[9][8] ), .S(\SUMB[9][8] ) );
  FADDX1 S2_9_9 ( .A(\ab[9][9] ), .B(\CARRYB[8][9] ), .CI(\SUMB[8][10] ), .CO(
        \CARRYB[9][9] ), .S(\SUMB[9][9] ) );
  FADDX1 S2_9_10 ( .A(\ab[9][10] ), .B(\CARRYB[8][10] ), .CI(\SUMB[8][11] ), 
        .CO(\CARRYB[9][10] ), .S(\SUMB[9][10] ) );
  FADDX1 S2_9_11 ( .A(\ab[9][11] ), .B(\CARRYB[8][11] ), .CI(\SUMB[8][12] ), 
        .CO(\CARRYB[9][11] ), .S(\SUMB[9][11] ) );
  FADDX1 S2_9_12 ( .A(\ab[9][12] ), .B(\CARRYB[8][12] ), .CI(\SUMB[8][13] ), 
        .CO(\CARRYB[9][12] ), .S(\SUMB[9][12] ) );
  FADDX1 S2_9_13 ( .A(\ab[9][13] ), .B(\CARRYB[8][13] ), .CI(\SUMB[8][14] ), 
        .CO(\CARRYB[9][13] ), .S(\SUMB[9][13] ) );
  FADDX1 S3_9_14 ( .A(\ab[9][14] ), .B(\CARRYB[8][14] ), .CI(\ab[8][15] ), 
        .CO(\CARRYB[9][14] ), .S(\SUMB[9][14] ) );
  FADDX1 S1_8_0 ( .A(\ab[8][0] ), .B(\CARRYB[7][0] ), .CI(\SUMB[7][1] ), .CO(
        \CARRYB[8][0] ), .S(\A1[6] ) );
  FADDX1 S2_8_1 ( .A(\ab[8][1] ), .B(\CARRYB[7][1] ), .CI(\SUMB[7][2] ), .CO(
        \CARRYB[8][1] ), .S(\SUMB[8][1] ) );
  FADDX1 S2_8_2 ( .A(\ab[8][2] ), .B(\CARRYB[7][2] ), .CI(\SUMB[7][3] ), .CO(
        \CARRYB[8][2] ), .S(\SUMB[8][2] ) );
  FADDX1 S2_8_3 ( .A(\ab[8][3] ), .B(\CARRYB[7][3] ), .CI(\SUMB[7][4] ), .CO(
        \CARRYB[8][3] ), .S(\SUMB[8][3] ) );
  FADDX1 S2_8_4 ( .A(\ab[8][4] ), .B(\CARRYB[7][4] ), .CI(\SUMB[7][5] ), .CO(
        \CARRYB[8][4] ), .S(\SUMB[8][4] ) );
  FADDX1 S2_8_5 ( .A(\ab[8][5] ), .B(\CARRYB[7][5] ), .CI(\SUMB[7][6] ), .CO(
        \CARRYB[8][5] ), .S(\SUMB[8][5] ) );
  FADDX1 S2_8_6 ( .A(\ab[8][6] ), .B(\CARRYB[7][6] ), .CI(\SUMB[7][7] ), .CO(
        \CARRYB[8][6] ), .S(\SUMB[8][6] ) );
  FADDX1 S2_8_7 ( .A(\ab[8][7] ), .B(\CARRYB[7][7] ), .CI(\SUMB[7][8] ), .CO(
        \CARRYB[8][7] ), .S(\SUMB[8][7] ) );
  FADDX1 S2_8_8 ( .A(\ab[8][8] ), .B(\CARRYB[7][8] ), .CI(\SUMB[7][9] ), .CO(
        \CARRYB[8][8] ), .S(\SUMB[8][8] ) );
  FADDX1 S2_8_9 ( .A(\ab[8][9] ), .B(\CARRYB[7][9] ), .CI(\SUMB[7][10] ), .CO(
        \CARRYB[8][9] ), .S(\SUMB[8][9] ) );
  FADDX1 S2_8_10 ( .A(\ab[8][10] ), .B(\CARRYB[7][10] ), .CI(\SUMB[7][11] ), 
        .CO(\CARRYB[8][10] ), .S(\SUMB[8][10] ) );
  FADDX1 S2_8_11 ( .A(\ab[8][11] ), .B(\CARRYB[7][11] ), .CI(\SUMB[7][12] ), 
        .CO(\CARRYB[8][11] ), .S(\SUMB[8][11] ) );
  FADDX1 S2_8_12 ( .A(\ab[8][12] ), .B(\CARRYB[7][12] ), .CI(\SUMB[7][13] ), 
        .CO(\CARRYB[8][12] ), .S(\SUMB[8][12] ) );
  FADDX1 S2_8_13 ( .A(\ab[8][13] ), .B(\CARRYB[7][13] ), .CI(\SUMB[7][14] ), 
        .CO(\CARRYB[8][13] ), .S(\SUMB[8][13] ) );
  FADDX1 S3_8_14 ( .A(\ab[8][14] ), .B(\CARRYB[7][14] ), .CI(\ab[7][15] ), 
        .CO(\CARRYB[8][14] ), .S(\SUMB[8][14] ) );
  FADDX1 S1_7_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\A1[5] ) );
  FADDX1 S2_7_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  FADDX1 S2_7_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  FADDX1 S2_7_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  FADDX1 S2_7_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  FADDX1 S2_7_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  FADDX1 S2_7_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\SUMB[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  FADDX1 S2_7_7 ( .A(\ab[7][7] ), .B(\CARRYB[6][7] ), .CI(\SUMB[6][8] ), .CO(
        \CARRYB[7][7] ), .S(\SUMB[7][7] ) );
  FADDX1 S2_7_8 ( .A(\ab[7][8] ), .B(\CARRYB[6][8] ), .CI(\SUMB[6][9] ), .CO(
        \CARRYB[7][8] ), .S(\SUMB[7][8] ) );
  FADDX1 S2_7_9 ( .A(\ab[7][9] ), .B(\CARRYB[6][9] ), .CI(\SUMB[6][10] ), .CO(
        \CARRYB[7][9] ), .S(\SUMB[7][9] ) );
  FADDX1 S2_7_10 ( .A(\ab[7][10] ), .B(\CARRYB[6][10] ), .CI(\SUMB[6][11] ), 
        .CO(\CARRYB[7][10] ), .S(\SUMB[7][10] ) );
  FADDX1 S2_7_11 ( .A(\ab[7][11] ), .B(\CARRYB[6][11] ), .CI(\SUMB[6][12] ), 
        .CO(\CARRYB[7][11] ), .S(\SUMB[7][11] ) );
  FADDX1 S2_7_12 ( .A(\ab[7][12] ), .B(\CARRYB[6][12] ), .CI(\SUMB[6][13] ), 
        .CO(\CARRYB[7][12] ), .S(\SUMB[7][12] ) );
  FADDX1 S2_7_13 ( .A(\ab[7][13] ), .B(\CARRYB[6][13] ), .CI(\SUMB[6][14] ), 
        .CO(\CARRYB[7][13] ), .S(\SUMB[7][13] ) );
  FADDX1 S3_7_14 ( .A(\ab[7][14] ), .B(\CARRYB[6][14] ), .CI(\ab[6][15] ), 
        .CO(\CARRYB[7][14] ), .S(\SUMB[7][14] ) );
  FADDX1 S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  FADDX1 S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  FADDX1 S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  FADDX1 S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  FADDX1 S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  FADDX1 S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  FADDX1 S2_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\SUMB[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  FADDX1 S2_6_7 ( .A(\ab[6][7] ), .B(\CARRYB[5][7] ), .CI(\SUMB[5][8] ), .CO(
        \CARRYB[6][7] ), .S(\SUMB[6][7] ) );
  FADDX1 S2_6_8 ( .A(\ab[6][8] ), .B(\CARRYB[5][8] ), .CI(\SUMB[5][9] ), .CO(
        \CARRYB[6][8] ), .S(\SUMB[6][8] ) );
  FADDX1 S2_6_9 ( .A(\ab[6][9] ), .B(\CARRYB[5][9] ), .CI(\SUMB[5][10] ), .CO(
        \CARRYB[6][9] ), .S(\SUMB[6][9] ) );
  FADDX1 S2_6_10 ( .A(\ab[6][10] ), .B(\CARRYB[5][10] ), .CI(\SUMB[5][11] ), 
        .CO(\CARRYB[6][10] ), .S(\SUMB[6][10] ) );
  FADDX1 S2_6_11 ( .A(\ab[6][11] ), .B(\CARRYB[5][11] ), .CI(\SUMB[5][12] ), 
        .CO(\CARRYB[6][11] ), .S(\SUMB[6][11] ) );
  FADDX1 S2_6_12 ( .A(\ab[6][12] ), .B(\CARRYB[5][12] ), .CI(\SUMB[5][13] ), 
        .CO(\CARRYB[6][12] ), .S(\SUMB[6][12] ) );
  FADDX1 S2_6_13 ( .A(\ab[6][13] ), .B(\CARRYB[5][13] ), .CI(\SUMB[5][14] ), 
        .CO(\CARRYB[6][13] ), .S(\SUMB[6][13] ) );
  FADDX1 S3_6_14 ( .A(\ab[6][14] ), .B(\CARRYB[5][14] ), .CI(\ab[5][15] ), 
        .CO(\CARRYB[6][14] ), .S(\SUMB[6][14] ) );
  FADDX1 S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  FADDX1 S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  FADDX1 S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  FADDX1 S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  FADDX1 S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  FADDX1 S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  FADDX1 S2_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\SUMB[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  FADDX1 S2_5_7 ( .A(\ab[5][7] ), .B(\CARRYB[4][7] ), .CI(\SUMB[4][8] ), .CO(
        \CARRYB[5][7] ), .S(\SUMB[5][7] ) );
  FADDX1 S2_5_8 ( .A(\ab[5][8] ), .B(\CARRYB[4][8] ), .CI(\SUMB[4][9] ), .CO(
        \CARRYB[5][8] ), .S(\SUMB[5][8] ) );
  FADDX1 S2_5_9 ( .A(\ab[5][9] ), .B(\CARRYB[4][9] ), .CI(\SUMB[4][10] ), .CO(
        \CARRYB[5][9] ), .S(\SUMB[5][9] ) );
  FADDX1 S2_5_10 ( .A(\ab[5][10] ), .B(\CARRYB[4][10] ), .CI(\SUMB[4][11] ), 
        .CO(\CARRYB[5][10] ), .S(\SUMB[5][10] ) );
  FADDX1 S2_5_11 ( .A(\ab[5][11] ), .B(\CARRYB[4][11] ), .CI(\SUMB[4][12] ), 
        .CO(\CARRYB[5][11] ), .S(\SUMB[5][11] ) );
  FADDX1 S2_5_12 ( .A(\ab[5][12] ), .B(\CARRYB[4][12] ), .CI(\SUMB[4][13] ), 
        .CO(\CARRYB[5][12] ), .S(\SUMB[5][12] ) );
  FADDX1 S2_5_13 ( .A(\ab[5][13] ), .B(\CARRYB[4][13] ), .CI(\SUMB[4][14] ), 
        .CO(\CARRYB[5][13] ), .S(\SUMB[5][13] ) );
  FADDX1 S3_5_14 ( .A(\ab[5][14] ), .B(\CARRYB[4][14] ), .CI(\ab[4][15] ), 
        .CO(\CARRYB[5][14] ), .S(\SUMB[5][14] ) );
  FADDX1 S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  FADDX1 S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  FADDX1 S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  FADDX1 S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  FADDX1 S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  FADDX1 S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  FADDX1 S2_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\SUMB[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  FADDX1 S2_4_7 ( .A(\ab[4][7] ), .B(\CARRYB[3][7] ), .CI(\SUMB[3][8] ), .CO(
        \CARRYB[4][7] ), .S(\SUMB[4][7] ) );
  FADDX1 S2_4_8 ( .A(\ab[4][8] ), .B(\CARRYB[3][8] ), .CI(\SUMB[3][9] ), .CO(
        \CARRYB[4][8] ), .S(\SUMB[4][8] ) );
  FADDX1 S2_4_9 ( .A(\ab[4][9] ), .B(\CARRYB[3][9] ), .CI(\SUMB[3][10] ), .CO(
        \CARRYB[4][9] ), .S(\SUMB[4][9] ) );
  FADDX1 S2_4_10 ( .A(\ab[4][10] ), .B(\CARRYB[3][10] ), .CI(\SUMB[3][11] ), 
        .CO(\CARRYB[4][10] ), .S(\SUMB[4][10] ) );
  FADDX1 S2_4_11 ( .A(\ab[4][11] ), .B(\CARRYB[3][11] ), .CI(\SUMB[3][12] ), 
        .CO(\CARRYB[4][11] ), .S(\SUMB[4][11] ) );
  FADDX1 S2_4_12 ( .A(\ab[4][12] ), .B(\CARRYB[3][12] ), .CI(\SUMB[3][13] ), 
        .CO(\CARRYB[4][12] ), .S(\SUMB[4][12] ) );
  FADDX1 S2_4_13 ( .A(\ab[4][13] ), .B(\CARRYB[3][13] ), .CI(\SUMB[3][14] ), 
        .CO(\CARRYB[4][13] ), .S(\SUMB[4][13] ) );
  FADDX1 S3_4_14 ( .A(\ab[4][14] ), .B(\CARRYB[3][14] ), .CI(\ab[3][15] ), 
        .CO(\CARRYB[4][14] ), .S(\SUMB[4][14] ) );
  FADDX1 S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  FADDX1 S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  FADDX1 S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  FADDX1 S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  FADDX1 S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  FADDX1 S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  FADDX1 S2_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\SUMB[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  FADDX1 S2_3_7 ( .A(\ab[3][7] ), .B(\CARRYB[2][7] ), .CI(\SUMB[2][8] ), .CO(
        \CARRYB[3][7] ), .S(\SUMB[3][7] ) );
  FADDX1 S2_3_8 ( .A(\ab[3][8] ), .B(\CARRYB[2][8] ), .CI(\SUMB[2][9] ), .CO(
        \CARRYB[3][8] ), .S(\SUMB[3][8] ) );
  FADDX1 S2_3_9 ( .A(\ab[3][9] ), .B(\CARRYB[2][9] ), .CI(\SUMB[2][10] ), .CO(
        \CARRYB[3][9] ), .S(\SUMB[3][9] ) );
  FADDX1 S2_3_10 ( .A(\ab[3][10] ), .B(\CARRYB[2][10] ), .CI(\SUMB[2][11] ), 
        .CO(\CARRYB[3][10] ), .S(\SUMB[3][10] ) );
  FADDX1 S2_3_11 ( .A(\ab[3][11] ), .B(\CARRYB[2][11] ), .CI(\SUMB[2][12] ), 
        .CO(\CARRYB[3][11] ), .S(\SUMB[3][11] ) );
  FADDX1 S2_3_12 ( .A(\ab[3][12] ), .B(\CARRYB[2][12] ), .CI(\SUMB[2][13] ), 
        .CO(\CARRYB[3][12] ), .S(\SUMB[3][12] ) );
  FADDX1 S2_3_13 ( .A(\ab[3][13] ), .B(\CARRYB[2][13] ), .CI(\SUMB[2][14] ), 
        .CO(\CARRYB[3][13] ), .S(\SUMB[3][13] ) );
  FADDX1 S3_3_14 ( .A(\ab[3][14] ), .B(\CARRYB[2][14] ), .CI(\ab[2][15] ), 
        .CO(\CARRYB[3][14] ), .S(\SUMB[3][14] ) );
  FADDX1 S1_2_0 ( .A(\ab[2][0] ), .B(\CARRYB[1][0] ), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  FADDX1 S2_2_1 ( .A(\ab[2][1] ), .B(n19), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  FADDX1 S2_2_2 ( .A(\ab[2][2] ), .B(n18), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  FADDX1 S2_2_3 ( .A(\ab[2][3] ), .B(n17), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  FADDX1 S2_2_4 ( .A(\ab[2][4] ), .B(n16), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  FADDX1 S2_2_5 ( .A(\ab[2][5] ), .B(n15), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  FADDX1 S2_2_6 ( .A(\ab[2][6] ), .B(n14), .CI(\SUMB[1][7] ), .CO(
        \CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  FADDX1 S2_2_7 ( .A(\ab[2][7] ), .B(n13), .CI(\SUMB[1][8] ), .CO(
        \CARRYB[2][7] ), .S(\SUMB[2][7] ) );
  FADDX1 S2_2_8 ( .A(\ab[2][8] ), .B(n12), .CI(\SUMB[1][9] ), .CO(
        \CARRYB[2][8] ), .S(\SUMB[2][8] ) );
  FADDX1 S2_2_9 ( .A(\ab[2][9] ), .B(n11), .CI(\SUMB[1][10] ), .CO(
        \CARRYB[2][9] ), .S(\SUMB[2][9] ) );
  FADDX1 S2_2_10 ( .A(\ab[2][10] ), .B(n10), .CI(\SUMB[1][11] ), .CO(
        \CARRYB[2][10] ), .S(\SUMB[2][10] ) );
  FADDX1 S2_2_11 ( .A(\ab[2][11] ), .B(n9), .CI(\SUMB[1][12] ), .CO(
        \CARRYB[2][11] ), .S(\SUMB[2][11] ) );
  FADDX1 S2_2_12 ( .A(\ab[2][12] ), .B(n8), .CI(\SUMB[1][13] ), .CO(
        \CARRYB[2][12] ), .S(\SUMB[2][12] ) );
  FADDX1 S2_2_13 ( .A(\ab[2][13] ), .B(n7), .CI(\SUMB[1][14] ), .CO(
        \CARRYB[2][13] ), .S(\SUMB[2][13] ) );
  FADDX1 S3_2_14 ( .A(\ab[2][14] ), .B(n6), .CI(\ab[1][15] ), .CO(
        \CARRYB[2][14] ), .S(\SUMB[2][14] ) );
  findMyBest_DW01_add_4 FS_1 ( .A({1'b0, \A1[28] , \A1[27] , \A1[26] , 
        \A1[25] , \A1[24] , \A1[23] , \A1[22] , \A1[21] , \A1[20] , \A1[19] , 
        \A1[18] , \A1[17] , \A1[16] , \A1[15] , \A1[14] , \SUMB[15][0] , 
        \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , 
        \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n3, n5, n4, 
        n20, n25, n24, n31, n30, n29, n28, n27, n26, n21, n22, n23, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, PRODUCT[28:13], 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13}) );
  AND2X1 U2 ( .IN1(\CARRYB[15][14] ), .IN2(\ab[15][15] ), .Q(n3) );
  AND2X1 U3 ( .IN1(\CARRYB[15][12] ), .IN2(\SUMB[15][13] ), .Q(n4) );
  AND2X1 U4 ( .IN1(\CARRYB[15][13] ), .IN2(\SUMB[15][14] ), .Q(n5) );
  AND2X1 U5 ( .IN1(\ab[0][15] ), .IN2(\ab[1][14] ), .Q(n6) );
  AND2X1 U6 ( .IN1(\ab[0][14] ), .IN2(\ab[1][13] ), .Q(n7) );
  AND2X1 U7 ( .IN1(\ab[0][13] ), .IN2(\ab[1][12] ), .Q(n8) );
  AND2X1 U8 ( .IN1(\ab[0][12] ), .IN2(\ab[1][11] ), .Q(n9) );
  AND2X1 U9 ( .IN1(\ab[0][11] ), .IN2(\ab[1][10] ), .Q(n10) );
  AND2X1 U10 ( .IN1(\ab[0][10] ), .IN2(\ab[1][9] ), .Q(n11) );
  AND2X1 U11 ( .IN1(\ab[0][9] ), .IN2(\ab[1][8] ), .Q(n12) );
  AND2X1 U12 ( .IN1(\ab[0][8] ), .IN2(\ab[1][7] ), .Q(n13) );
  AND2X1 U13 ( .IN1(\ab[0][7] ), .IN2(\ab[1][6] ), .Q(n14) );
  AND2X1 U14 ( .IN1(\ab[0][6] ), .IN2(\ab[1][5] ), .Q(n15) );
  AND2X1 U15 ( .IN1(\ab[0][5] ), .IN2(\ab[1][4] ), .Q(n16) );
  AND2X1 U16 ( .IN1(\ab[0][4] ), .IN2(\ab[1][3] ), .Q(n17) );
  AND2X1 U17 ( .IN1(\ab[0][3] ), .IN2(\ab[1][2] ), .Q(n18) );
  AND2X1 U18 ( .IN1(\ab[0][2] ), .IN2(\ab[1][1] ), .Q(n19) );
  AND2X1 U19 ( .IN1(\CARRYB[15][11] ), .IN2(\SUMB[15][12] ), .Q(n20) );
  AND2X1 U20 ( .IN1(\CARRYB[15][2] ), .IN2(\SUMB[15][3] ), .Q(n21) );
  AND2X1 U21 ( .IN1(\CARRYB[15][1] ), .IN2(\SUMB[15][2] ), .Q(n22) );
  AND2X1 U22 ( .IN1(\CARRYB[15][0] ), .IN2(\SUMB[15][1] ), .Q(n23) );
  AND2X1 U23 ( .IN1(\CARRYB[15][9] ), .IN2(\SUMB[15][10] ), .Q(n24) );
  AND2X1 U24 ( .IN1(\CARRYB[15][10] ), .IN2(\SUMB[15][11] ), .Q(n25) );
  AND2X1 U25 ( .IN1(\CARRYB[15][3] ), .IN2(\SUMB[15][4] ), .Q(n26) );
  AND2X1 U26 ( .IN1(\CARRYB[15][4] ), .IN2(\SUMB[15][5] ), .Q(n27) );
  AND2X1 U27 ( .IN1(\CARRYB[15][5] ), .IN2(\SUMB[15][6] ), .Q(n28) );
  AND2X1 U28 ( .IN1(\CARRYB[15][6] ), .IN2(\SUMB[15][7] ), .Q(n29) );
  AND2X1 U29 ( .IN1(\CARRYB[15][7] ), .IN2(\SUMB[15][8] ), .Q(n30) );
  AND2X1 U30 ( .IN1(\CARRYB[15][8] ), .IN2(\SUMB[15][9] ), .Q(n31) );
  INVX0 U31 ( .INP(B[10]), .ZN(n37) );
  INVX0 U32 ( .INP(B[2]), .ZN(n45) );
  INVX0 U33 ( .INP(B[3]), .ZN(n44) );
  INVX0 U34 ( .INP(B[4]), .ZN(n43) );
  INVX0 U35 ( .INP(B[5]), .ZN(n42) );
  INVX0 U36 ( .INP(B[6]), .ZN(n41) );
  INVX0 U37 ( .INP(B[7]), .ZN(n40) );
  INVX0 U38 ( .INP(B[11]), .ZN(n36) );
  INVX0 U39 ( .INP(B[9]), .ZN(n38) );
  INVX0 U40 ( .INP(B[12]), .ZN(n35) );
  INVX0 U41 ( .INP(B[8]), .ZN(n39) );
  INVX0 U42 ( .INP(B[13]), .ZN(n34) );
  INVX0 U43 ( .INP(B[14]), .ZN(n33) );
  INVX0 U44 ( .INP(B[15]), .ZN(n32) );
  INVX0 U45 ( .INP(B[1]), .ZN(n46) );
  INVX0 U46 ( .INP(B[0]), .ZN(n47) );
  INVX0 U47 ( .INP(A[4]), .ZN(n52) );
  INVX0 U48 ( .INP(A[2]), .ZN(n50) );
  INVX0 U49 ( .INP(A[3]), .ZN(n51) );
  INVX0 U50 ( .INP(A[5]), .ZN(n53) );
  INVX0 U51 ( .INP(A[0]), .ZN(n48) );
  INVX0 U52 ( .INP(A[1]), .ZN(n49) );
  INVX0 U53 ( .INP(A[9]), .ZN(n57) );
  INVX0 U54 ( .INP(A[6]), .ZN(n54) );
  INVX0 U55 ( .INP(A[8]), .ZN(n56) );
  INVX0 U56 ( .INP(A[12]), .ZN(n60) );
  INVX0 U57 ( .INP(A[10]), .ZN(n58) );
  INVX0 U58 ( .INP(A[7]), .ZN(n55) );
  INVX0 U59 ( .INP(A[11]), .ZN(n59) );
  INVX0 U60 ( .INP(A[13]), .ZN(n61) );
  INVX0 U61 ( .INP(A[14]), .ZN(n62) );
  INVX0 U62 ( .INP(A[15]), .ZN(n63) );
  XOR2X1 U63 ( .IN1(\CARRYB[15][0] ), .IN2(\SUMB[15][1] ), .Q(\A1[14] ) );
  XOR2X1 U64 ( .IN1(\CARRYB[15][1] ), .IN2(\SUMB[15][2] ), .Q(\A1[15] ) );
  XOR2X1 U65 ( .IN1(\CARRYB[15][2] ), .IN2(\SUMB[15][3] ), .Q(\A1[16] ) );
  XOR2X1 U66 ( .IN1(\CARRYB[15][3] ), .IN2(\SUMB[15][4] ), .Q(\A1[17] ) );
  XOR2X1 U67 ( .IN1(\CARRYB[15][4] ), .IN2(\SUMB[15][5] ), .Q(\A1[18] ) );
  XOR2X1 U68 ( .IN1(\CARRYB[15][5] ), .IN2(\SUMB[15][6] ), .Q(\A1[19] ) );
  XOR2X1 U69 ( .IN1(\CARRYB[15][6] ), .IN2(\SUMB[15][7] ), .Q(\A1[20] ) );
  XOR2X1 U70 ( .IN1(\CARRYB[15][7] ), .IN2(\SUMB[15][8] ), .Q(\A1[21] ) );
  XOR2X1 U71 ( .IN1(\CARRYB[15][8] ), .IN2(\SUMB[15][9] ), .Q(\A1[22] ) );
  XOR2X1 U72 ( .IN1(\CARRYB[15][9] ), .IN2(\SUMB[15][10] ), .Q(\A1[23] ) );
  XOR2X1 U73 ( .IN1(\CARRYB[15][10] ), .IN2(\SUMB[15][11] ), .Q(\A1[24] ) );
  XOR2X1 U74 ( .IN1(\CARRYB[15][11] ), .IN2(\SUMB[15][12] ), .Q(\A1[25] ) );
  XOR2X1 U75 ( .IN1(\CARRYB[15][12] ), .IN2(\SUMB[15][13] ), .Q(\A1[26] ) );
  XOR2X1 U76 ( .IN1(\CARRYB[15][13] ), .IN2(\SUMB[15][14] ), .Q(\A1[27] ) );
  XOR2X1 U77 ( .IN1(\CARRYB[15][14] ), .IN2(\ab[15][15] ), .Q(\A1[28] ) );
  XOR2X1 U78 ( .IN1(\ab[1][1] ), .IN2(\ab[0][2] ), .Q(\SUMB[1][1] ) );
  XOR2X1 U79 ( .IN1(\ab[1][2] ), .IN2(\ab[0][3] ), .Q(\SUMB[1][2] ) );
  XOR2X1 U80 ( .IN1(\ab[1][3] ), .IN2(\ab[0][4] ), .Q(\SUMB[1][3] ) );
  XOR2X1 U81 ( .IN1(\ab[1][4] ), .IN2(\ab[0][5] ), .Q(\SUMB[1][4] ) );
  XOR2X1 U82 ( .IN1(\ab[1][5] ), .IN2(\ab[0][6] ), .Q(\SUMB[1][5] ) );
  XOR2X1 U83 ( .IN1(\ab[1][6] ), .IN2(\ab[0][7] ), .Q(\SUMB[1][6] ) );
  XOR2X1 U84 ( .IN1(\ab[1][7] ), .IN2(\ab[0][8] ), .Q(\SUMB[1][7] ) );
  XOR2X1 U85 ( .IN1(\ab[1][8] ), .IN2(\ab[0][9] ), .Q(\SUMB[1][8] ) );
  XOR2X1 U86 ( .IN1(\ab[1][9] ), .IN2(\ab[0][10] ), .Q(\SUMB[1][9] ) );
  XOR2X1 U87 ( .IN1(\ab[1][10] ), .IN2(\ab[0][11] ), .Q(\SUMB[1][10] ) );
  XOR2X1 U88 ( .IN1(\ab[1][11] ), .IN2(\ab[0][12] ), .Q(\SUMB[1][11] ) );
  XOR2X1 U89 ( .IN1(\ab[1][12] ), .IN2(\ab[0][13] ), .Q(\SUMB[1][12] ) );
  XOR2X1 U90 ( .IN1(\ab[1][13] ), .IN2(\ab[0][14] ), .Q(\SUMB[1][13] ) );
  XOR2X1 U91 ( .IN1(\ab[1][14] ), .IN2(\ab[0][15] ), .Q(\SUMB[1][14] ) );
  NOR2X0 U93 ( .IN1(n57), .IN2(n38), .QN(\ab[9][9] ) );
  NOR2X0 U94 ( .IN1(n57), .IN2(n39), .QN(\ab[9][8] ) );
  NOR2X0 U95 ( .IN1(n57), .IN2(n40), .QN(\ab[9][7] ) );
  NOR2X0 U96 ( .IN1(n57), .IN2(n41), .QN(\ab[9][6] ) );
  NOR2X0 U97 ( .IN1(n57), .IN2(n42), .QN(\ab[9][5] ) );
  NOR2X0 U98 ( .IN1(n57), .IN2(n43), .QN(\ab[9][4] ) );
  NOR2X0 U99 ( .IN1(n57), .IN2(n44), .QN(\ab[9][3] ) );
  NOR2X0 U100 ( .IN1(n57), .IN2(n45), .QN(\ab[9][2] ) );
  NOR2X0 U101 ( .IN1(n57), .IN2(n46), .QN(\ab[9][1] ) );
  NOR2X0 U102 ( .IN1(n57), .IN2(n32), .QN(\ab[9][15] ) );
  NOR2X0 U103 ( .IN1(n57), .IN2(n33), .QN(\ab[9][14] ) );
  NOR2X0 U104 ( .IN1(n57), .IN2(n34), .QN(\ab[9][13] ) );
  NOR2X0 U105 ( .IN1(n57), .IN2(n35), .QN(\ab[9][12] ) );
  NOR2X0 U106 ( .IN1(n57), .IN2(n36), .QN(\ab[9][11] ) );
  NOR2X0 U107 ( .IN1(n57), .IN2(n37), .QN(\ab[9][10] ) );
  NOR2X0 U108 ( .IN1(n57), .IN2(n47), .QN(\ab[9][0] ) );
  NOR2X0 U109 ( .IN1(n38), .IN2(n56), .QN(\ab[8][9] ) );
  NOR2X0 U110 ( .IN1(n39), .IN2(n56), .QN(\ab[8][8] ) );
  NOR2X0 U111 ( .IN1(n40), .IN2(n56), .QN(\ab[8][7] ) );
  NOR2X0 U112 ( .IN1(n41), .IN2(n56), .QN(\ab[8][6] ) );
  NOR2X0 U113 ( .IN1(n42), .IN2(n56), .QN(\ab[8][5] ) );
  NOR2X0 U114 ( .IN1(n43), .IN2(n56), .QN(\ab[8][4] ) );
  NOR2X0 U115 ( .IN1(n44), .IN2(n56), .QN(\ab[8][3] ) );
  NOR2X0 U116 ( .IN1(n45), .IN2(n56), .QN(\ab[8][2] ) );
  NOR2X0 U117 ( .IN1(n46), .IN2(n56), .QN(\ab[8][1] ) );
  NOR2X0 U118 ( .IN1(n32), .IN2(n56), .QN(\ab[8][15] ) );
  NOR2X0 U119 ( .IN1(n33), .IN2(n56), .QN(\ab[8][14] ) );
  NOR2X0 U120 ( .IN1(n34), .IN2(n56), .QN(\ab[8][13] ) );
  NOR2X0 U121 ( .IN1(n35), .IN2(n56), .QN(\ab[8][12] ) );
  NOR2X0 U122 ( .IN1(n36), .IN2(n56), .QN(\ab[8][11] ) );
  NOR2X0 U123 ( .IN1(n37), .IN2(n56), .QN(\ab[8][10] ) );
  NOR2X0 U124 ( .IN1(n47), .IN2(n56), .QN(\ab[8][0] ) );
  NOR2X0 U125 ( .IN1(n38), .IN2(n55), .QN(\ab[7][9] ) );
  NOR2X0 U126 ( .IN1(n39), .IN2(n55), .QN(\ab[7][8] ) );
  NOR2X0 U127 ( .IN1(n40), .IN2(n55), .QN(\ab[7][7] ) );
  NOR2X0 U128 ( .IN1(n41), .IN2(n55), .QN(\ab[7][6] ) );
  NOR2X0 U129 ( .IN1(n42), .IN2(n55), .QN(\ab[7][5] ) );
  NOR2X0 U130 ( .IN1(n43), .IN2(n55), .QN(\ab[7][4] ) );
  NOR2X0 U131 ( .IN1(n44), .IN2(n55), .QN(\ab[7][3] ) );
  NOR2X0 U132 ( .IN1(n45), .IN2(n55), .QN(\ab[7][2] ) );
  NOR2X0 U133 ( .IN1(n46), .IN2(n55), .QN(\ab[7][1] ) );
  NOR2X0 U134 ( .IN1(n32), .IN2(n55), .QN(\ab[7][15] ) );
  NOR2X0 U135 ( .IN1(n33), .IN2(n55), .QN(\ab[7][14] ) );
  NOR2X0 U136 ( .IN1(n34), .IN2(n55), .QN(\ab[7][13] ) );
  NOR2X0 U137 ( .IN1(n35), .IN2(n55), .QN(\ab[7][12] ) );
  NOR2X0 U138 ( .IN1(n36), .IN2(n55), .QN(\ab[7][11] ) );
  NOR2X0 U139 ( .IN1(n37), .IN2(n55), .QN(\ab[7][10] ) );
  NOR2X0 U140 ( .IN1(n47), .IN2(n55), .QN(\ab[7][0] ) );
  NOR2X0 U141 ( .IN1(n38), .IN2(n54), .QN(\ab[6][9] ) );
  NOR2X0 U142 ( .IN1(n39), .IN2(n54), .QN(\ab[6][8] ) );
  NOR2X0 U143 ( .IN1(n40), .IN2(n54), .QN(\ab[6][7] ) );
  NOR2X0 U144 ( .IN1(n41), .IN2(n54), .QN(\ab[6][6] ) );
  NOR2X0 U145 ( .IN1(n42), .IN2(n54), .QN(\ab[6][5] ) );
  NOR2X0 U146 ( .IN1(n43), .IN2(n54), .QN(\ab[6][4] ) );
  NOR2X0 U147 ( .IN1(n44), .IN2(n54), .QN(\ab[6][3] ) );
  NOR2X0 U148 ( .IN1(n45), .IN2(n54), .QN(\ab[6][2] ) );
  NOR2X0 U149 ( .IN1(n46), .IN2(n54), .QN(\ab[6][1] ) );
  NOR2X0 U150 ( .IN1(n32), .IN2(n54), .QN(\ab[6][15] ) );
  NOR2X0 U151 ( .IN1(n33), .IN2(n54), .QN(\ab[6][14] ) );
  NOR2X0 U152 ( .IN1(n34), .IN2(n54), .QN(\ab[6][13] ) );
  NOR2X0 U153 ( .IN1(n35), .IN2(n54), .QN(\ab[6][12] ) );
  NOR2X0 U154 ( .IN1(n36), .IN2(n54), .QN(\ab[6][11] ) );
  NOR2X0 U155 ( .IN1(n37), .IN2(n54), .QN(\ab[6][10] ) );
  NOR2X0 U156 ( .IN1(n47), .IN2(n54), .QN(\ab[6][0] ) );
  NOR2X0 U157 ( .IN1(n38), .IN2(n53), .QN(\ab[5][9] ) );
  NOR2X0 U158 ( .IN1(n39), .IN2(n53), .QN(\ab[5][8] ) );
  NOR2X0 U159 ( .IN1(n40), .IN2(n53), .QN(\ab[5][7] ) );
  NOR2X0 U160 ( .IN1(n41), .IN2(n53), .QN(\ab[5][6] ) );
  NOR2X0 U161 ( .IN1(n42), .IN2(n53), .QN(\ab[5][5] ) );
  NOR2X0 U162 ( .IN1(n43), .IN2(n53), .QN(\ab[5][4] ) );
  NOR2X0 U163 ( .IN1(n44), .IN2(n53), .QN(\ab[5][3] ) );
  NOR2X0 U164 ( .IN1(n45), .IN2(n53), .QN(\ab[5][2] ) );
  NOR2X0 U165 ( .IN1(n46), .IN2(n53), .QN(\ab[5][1] ) );
  NOR2X0 U166 ( .IN1(n32), .IN2(n53), .QN(\ab[5][15] ) );
  NOR2X0 U167 ( .IN1(n33), .IN2(n53), .QN(\ab[5][14] ) );
  NOR2X0 U168 ( .IN1(n34), .IN2(n53), .QN(\ab[5][13] ) );
  NOR2X0 U169 ( .IN1(n35), .IN2(n53), .QN(\ab[5][12] ) );
  NOR2X0 U170 ( .IN1(n36), .IN2(n53), .QN(\ab[5][11] ) );
  NOR2X0 U171 ( .IN1(n37), .IN2(n53), .QN(\ab[5][10] ) );
  NOR2X0 U172 ( .IN1(n47), .IN2(n53), .QN(\ab[5][0] ) );
  NOR2X0 U173 ( .IN1(n38), .IN2(n52), .QN(\ab[4][9] ) );
  NOR2X0 U174 ( .IN1(n39), .IN2(n52), .QN(\ab[4][8] ) );
  NOR2X0 U175 ( .IN1(n40), .IN2(n52), .QN(\ab[4][7] ) );
  NOR2X0 U176 ( .IN1(n41), .IN2(n52), .QN(\ab[4][6] ) );
  NOR2X0 U177 ( .IN1(n42), .IN2(n52), .QN(\ab[4][5] ) );
  NOR2X0 U178 ( .IN1(n43), .IN2(n52), .QN(\ab[4][4] ) );
  NOR2X0 U179 ( .IN1(n44), .IN2(n52), .QN(\ab[4][3] ) );
  NOR2X0 U180 ( .IN1(n45), .IN2(n52), .QN(\ab[4][2] ) );
  NOR2X0 U181 ( .IN1(n46), .IN2(n52), .QN(\ab[4][1] ) );
  NOR2X0 U182 ( .IN1(n32), .IN2(n52), .QN(\ab[4][15] ) );
  NOR2X0 U183 ( .IN1(n33), .IN2(n52), .QN(\ab[4][14] ) );
  NOR2X0 U184 ( .IN1(n34), .IN2(n52), .QN(\ab[4][13] ) );
  NOR2X0 U185 ( .IN1(n35), .IN2(n52), .QN(\ab[4][12] ) );
  NOR2X0 U186 ( .IN1(n36), .IN2(n52), .QN(\ab[4][11] ) );
  NOR2X0 U187 ( .IN1(n37), .IN2(n52), .QN(\ab[4][10] ) );
  NOR2X0 U188 ( .IN1(n47), .IN2(n52), .QN(\ab[4][0] ) );
  NOR2X0 U189 ( .IN1(n38), .IN2(n51), .QN(\ab[3][9] ) );
  NOR2X0 U190 ( .IN1(n39), .IN2(n51), .QN(\ab[3][8] ) );
  NOR2X0 U191 ( .IN1(n40), .IN2(n51), .QN(\ab[3][7] ) );
  NOR2X0 U192 ( .IN1(n41), .IN2(n51), .QN(\ab[3][6] ) );
  NOR2X0 U193 ( .IN1(n42), .IN2(n51), .QN(\ab[3][5] ) );
  NOR2X0 U194 ( .IN1(n43), .IN2(n51), .QN(\ab[3][4] ) );
  NOR2X0 U195 ( .IN1(n44), .IN2(n51), .QN(\ab[3][3] ) );
  NOR2X0 U196 ( .IN1(n45), .IN2(n51), .QN(\ab[3][2] ) );
  NOR2X0 U197 ( .IN1(n46), .IN2(n51), .QN(\ab[3][1] ) );
  NOR2X0 U198 ( .IN1(n32), .IN2(n51), .QN(\ab[3][15] ) );
  NOR2X0 U199 ( .IN1(n33), .IN2(n51), .QN(\ab[3][14] ) );
  NOR2X0 U200 ( .IN1(n34), .IN2(n51), .QN(\ab[3][13] ) );
  NOR2X0 U201 ( .IN1(n35), .IN2(n51), .QN(\ab[3][12] ) );
  NOR2X0 U202 ( .IN1(n36), .IN2(n51), .QN(\ab[3][11] ) );
  NOR2X0 U203 ( .IN1(n37), .IN2(n51), .QN(\ab[3][10] ) );
  NOR2X0 U204 ( .IN1(n47), .IN2(n51), .QN(\ab[3][0] ) );
  NOR2X0 U205 ( .IN1(n38), .IN2(n50), .QN(\ab[2][9] ) );
  NOR2X0 U206 ( .IN1(n39), .IN2(n50), .QN(\ab[2][8] ) );
  NOR2X0 U207 ( .IN1(n40), .IN2(n50), .QN(\ab[2][7] ) );
  NOR2X0 U208 ( .IN1(n41), .IN2(n50), .QN(\ab[2][6] ) );
  NOR2X0 U209 ( .IN1(n42), .IN2(n50), .QN(\ab[2][5] ) );
  NOR2X0 U210 ( .IN1(n43), .IN2(n50), .QN(\ab[2][4] ) );
  NOR2X0 U211 ( .IN1(n44), .IN2(n50), .QN(\ab[2][3] ) );
  NOR2X0 U212 ( .IN1(n45), .IN2(n50), .QN(\ab[2][2] ) );
  NOR2X0 U213 ( .IN1(n46), .IN2(n50), .QN(\ab[2][1] ) );
  NOR2X0 U214 ( .IN1(n32), .IN2(n50), .QN(\ab[2][15] ) );
  NOR2X0 U215 ( .IN1(n33), .IN2(n50), .QN(\ab[2][14] ) );
  NOR2X0 U216 ( .IN1(n34), .IN2(n50), .QN(\ab[2][13] ) );
  NOR2X0 U217 ( .IN1(n35), .IN2(n50), .QN(\ab[2][12] ) );
  NOR2X0 U218 ( .IN1(n36), .IN2(n50), .QN(\ab[2][11] ) );
  NOR2X0 U219 ( .IN1(n37), .IN2(n50), .QN(\ab[2][10] ) );
  NOR2X0 U220 ( .IN1(n47), .IN2(n50), .QN(\ab[2][0] ) );
  NOR2X0 U221 ( .IN1(n38), .IN2(n49), .QN(\ab[1][9] ) );
  NOR2X0 U222 ( .IN1(n39), .IN2(n49), .QN(\ab[1][8] ) );
  NOR2X0 U223 ( .IN1(n40), .IN2(n49), .QN(\ab[1][7] ) );
  NOR2X0 U224 ( .IN1(n41), .IN2(n49), .QN(\ab[1][6] ) );
  NOR2X0 U225 ( .IN1(n42), .IN2(n49), .QN(\ab[1][5] ) );
  NOR2X0 U226 ( .IN1(n43), .IN2(n49), .QN(\ab[1][4] ) );
  NOR2X0 U227 ( .IN1(n44), .IN2(n49), .QN(\ab[1][3] ) );
  NOR2X0 U228 ( .IN1(n45), .IN2(n49), .QN(\ab[1][2] ) );
  NOR2X0 U229 ( .IN1(n32), .IN2(n49), .QN(\ab[1][15] ) );
  NOR2X0 U230 ( .IN1(n33), .IN2(n49), .QN(\ab[1][14] ) );
  NOR2X0 U231 ( .IN1(n34), .IN2(n49), .QN(\ab[1][13] ) );
  NOR2X0 U232 ( .IN1(n35), .IN2(n49), .QN(\ab[1][12] ) );
  NOR2X0 U233 ( .IN1(n36), .IN2(n49), .QN(\ab[1][11] ) );
  NOR2X0 U234 ( .IN1(n37), .IN2(n49), .QN(\ab[1][10] ) );
  NOR2X0 U235 ( .IN1(n38), .IN2(n63), .QN(\ab[15][9] ) );
  NOR2X0 U236 ( .IN1(n39), .IN2(n63), .QN(\ab[15][8] ) );
  NOR2X0 U237 ( .IN1(n40), .IN2(n63), .QN(\ab[15][7] ) );
  NOR2X0 U238 ( .IN1(n41), .IN2(n63), .QN(\ab[15][6] ) );
  NOR2X0 U239 ( .IN1(n42), .IN2(n63), .QN(\ab[15][5] ) );
  NOR2X0 U240 ( .IN1(n43), .IN2(n63), .QN(\ab[15][4] ) );
  NOR2X0 U241 ( .IN1(n44), .IN2(n63), .QN(\ab[15][3] ) );
  NOR2X0 U242 ( .IN1(n45), .IN2(n63), .QN(\ab[15][2] ) );
  NOR2X0 U243 ( .IN1(n46), .IN2(n63), .QN(\ab[15][1] ) );
  NOR2X0 U244 ( .IN1(n32), .IN2(n63), .QN(\ab[15][15] ) );
  NOR2X0 U245 ( .IN1(n33), .IN2(n63), .QN(\ab[15][14] ) );
  NOR2X0 U246 ( .IN1(n34), .IN2(n63), .QN(\ab[15][13] ) );
  NOR2X0 U247 ( .IN1(n35), .IN2(n63), .QN(\ab[15][12] ) );
  NOR2X0 U248 ( .IN1(n36), .IN2(n63), .QN(\ab[15][11] ) );
  NOR2X0 U249 ( .IN1(n37), .IN2(n63), .QN(\ab[15][10] ) );
  NOR2X0 U250 ( .IN1(n47), .IN2(n63), .QN(\ab[15][0] ) );
  NOR2X0 U251 ( .IN1(n38), .IN2(n62), .QN(\ab[14][9] ) );
  NOR2X0 U252 ( .IN1(n39), .IN2(n62), .QN(\ab[14][8] ) );
  NOR2X0 U253 ( .IN1(n40), .IN2(n62), .QN(\ab[14][7] ) );
  NOR2X0 U254 ( .IN1(n41), .IN2(n62), .QN(\ab[14][6] ) );
  NOR2X0 U255 ( .IN1(n42), .IN2(n62), .QN(\ab[14][5] ) );
  NOR2X0 U256 ( .IN1(n43), .IN2(n62), .QN(\ab[14][4] ) );
  NOR2X0 U257 ( .IN1(n44), .IN2(n62), .QN(\ab[14][3] ) );
  NOR2X0 U258 ( .IN1(n45), .IN2(n62), .QN(\ab[14][2] ) );
  NOR2X0 U259 ( .IN1(n46), .IN2(n62), .QN(\ab[14][1] ) );
  NOR2X0 U260 ( .IN1(n32), .IN2(n62), .QN(\ab[14][15] ) );
  NOR2X0 U261 ( .IN1(n33), .IN2(n62), .QN(\ab[14][14] ) );
  NOR2X0 U262 ( .IN1(n34), .IN2(n62), .QN(\ab[14][13] ) );
  NOR2X0 U263 ( .IN1(n35), .IN2(n62), .QN(\ab[14][12] ) );
  NOR2X0 U264 ( .IN1(n36), .IN2(n62), .QN(\ab[14][11] ) );
  NOR2X0 U265 ( .IN1(n37), .IN2(n62), .QN(\ab[14][10] ) );
  NOR2X0 U266 ( .IN1(n47), .IN2(n62), .QN(\ab[14][0] ) );
  NOR2X0 U267 ( .IN1(n38), .IN2(n61), .QN(\ab[13][9] ) );
  NOR2X0 U268 ( .IN1(n39), .IN2(n61), .QN(\ab[13][8] ) );
  NOR2X0 U269 ( .IN1(n40), .IN2(n61), .QN(\ab[13][7] ) );
  NOR2X0 U270 ( .IN1(n41), .IN2(n61), .QN(\ab[13][6] ) );
  NOR2X0 U271 ( .IN1(n42), .IN2(n61), .QN(\ab[13][5] ) );
  NOR2X0 U272 ( .IN1(n43), .IN2(n61), .QN(\ab[13][4] ) );
  NOR2X0 U273 ( .IN1(n44), .IN2(n61), .QN(\ab[13][3] ) );
  NOR2X0 U274 ( .IN1(n45), .IN2(n61), .QN(\ab[13][2] ) );
  NOR2X0 U275 ( .IN1(n46), .IN2(n61), .QN(\ab[13][1] ) );
  NOR2X0 U276 ( .IN1(n32), .IN2(n61), .QN(\ab[13][15] ) );
  NOR2X0 U277 ( .IN1(n33), .IN2(n61), .QN(\ab[13][14] ) );
  NOR2X0 U278 ( .IN1(n34), .IN2(n61), .QN(\ab[13][13] ) );
  NOR2X0 U279 ( .IN1(n35), .IN2(n61), .QN(\ab[13][12] ) );
  NOR2X0 U280 ( .IN1(n36), .IN2(n61), .QN(\ab[13][11] ) );
  NOR2X0 U281 ( .IN1(n37), .IN2(n61), .QN(\ab[13][10] ) );
  NOR2X0 U282 ( .IN1(n47), .IN2(n61), .QN(\ab[13][0] ) );
  NOR2X0 U283 ( .IN1(n38), .IN2(n60), .QN(\ab[12][9] ) );
  NOR2X0 U284 ( .IN1(n39), .IN2(n60), .QN(\ab[12][8] ) );
  NOR2X0 U285 ( .IN1(n40), .IN2(n60), .QN(\ab[12][7] ) );
  NOR2X0 U286 ( .IN1(n41), .IN2(n60), .QN(\ab[12][6] ) );
  NOR2X0 U287 ( .IN1(n42), .IN2(n60), .QN(\ab[12][5] ) );
  NOR2X0 U288 ( .IN1(n43), .IN2(n60), .QN(\ab[12][4] ) );
  NOR2X0 U289 ( .IN1(n44), .IN2(n60), .QN(\ab[12][3] ) );
  NOR2X0 U290 ( .IN1(n45), .IN2(n60), .QN(\ab[12][2] ) );
  NOR2X0 U291 ( .IN1(n46), .IN2(n60), .QN(\ab[12][1] ) );
  NOR2X0 U292 ( .IN1(n32), .IN2(n60), .QN(\ab[12][15] ) );
  NOR2X0 U293 ( .IN1(n33), .IN2(n60), .QN(\ab[12][14] ) );
  NOR2X0 U294 ( .IN1(n34), .IN2(n60), .QN(\ab[12][13] ) );
  NOR2X0 U295 ( .IN1(n35), .IN2(n60), .QN(\ab[12][12] ) );
  NOR2X0 U296 ( .IN1(n36), .IN2(n60), .QN(\ab[12][11] ) );
  NOR2X0 U297 ( .IN1(n37), .IN2(n60), .QN(\ab[12][10] ) );
  NOR2X0 U298 ( .IN1(n47), .IN2(n60), .QN(\ab[12][0] ) );
  NOR2X0 U299 ( .IN1(n38), .IN2(n59), .QN(\ab[11][9] ) );
  NOR2X0 U300 ( .IN1(n39), .IN2(n59), .QN(\ab[11][8] ) );
  NOR2X0 U301 ( .IN1(n40), .IN2(n59), .QN(\ab[11][7] ) );
  NOR2X0 U302 ( .IN1(n41), .IN2(n59), .QN(\ab[11][6] ) );
  NOR2X0 U303 ( .IN1(n42), .IN2(n59), .QN(\ab[11][5] ) );
  NOR2X0 U304 ( .IN1(n43), .IN2(n59), .QN(\ab[11][4] ) );
  NOR2X0 U305 ( .IN1(n44), .IN2(n59), .QN(\ab[11][3] ) );
  NOR2X0 U306 ( .IN1(n45), .IN2(n59), .QN(\ab[11][2] ) );
  NOR2X0 U307 ( .IN1(n46), .IN2(n59), .QN(\ab[11][1] ) );
  NOR2X0 U308 ( .IN1(n32), .IN2(n59), .QN(\ab[11][15] ) );
  NOR2X0 U309 ( .IN1(n33), .IN2(n59), .QN(\ab[11][14] ) );
  NOR2X0 U310 ( .IN1(n34), .IN2(n59), .QN(\ab[11][13] ) );
  NOR2X0 U311 ( .IN1(n35), .IN2(n59), .QN(\ab[11][12] ) );
  NOR2X0 U312 ( .IN1(n36), .IN2(n59), .QN(\ab[11][11] ) );
  NOR2X0 U313 ( .IN1(n37), .IN2(n59), .QN(\ab[11][10] ) );
  NOR2X0 U314 ( .IN1(n47), .IN2(n59), .QN(\ab[11][0] ) );
  NOR2X0 U315 ( .IN1(n38), .IN2(n58), .QN(\ab[10][9] ) );
  NOR2X0 U316 ( .IN1(n39), .IN2(n58), .QN(\ab[10][8] ) );
  NOR2X0 U317 ( .IN1(n40), .IN2(n58), .QN(\ab[10][7] ) );
  NOR2X0 U318 ( .IN1(n41), .IN2(n58), .QN(\ab[10][6] ) );
  NOR2X0 U319 ( .IN1(n42), .IN2(n58), .QN(\ab[10][5] ) );
  NOR2X0 U320 ( .IN1(n43), .IN2(n58), .QN(\ab[10][4] ) );
  NOR2X0 U321 ( .IN1(n44), .IN2(n58), .QN(\ab[10][3] ) );
  NOR2X0 U322 ( .IN1(n45), .IN2(n58), .QN(\ab[10][2] ) );
  NOR2X0 U323 ( .IN1(n46), .IN2(n58), .QN(\ab[10][1] ) );
  NOR2X0 U324 ( .IN1(n32), .IN2(n58), .QN(\ab[10][15] ) );
  NOR2X0 U325 ( .IN1(n33), .IN2(n58), .QN(\ab[10][14] ) );
  NOR2X0 U326 ( .IN1(n34), .IN2(n58), .QN(\ab[10][13] ) );
  NOR2X0 U327 ( .IN1(n35), .IN2(n58), .QN(\ab[10][12] ) );
  NOR2X0 U328 ( .IN1(n36), .IN2(n58), .QN(\ab[10][11] ) );
  NOR2X0 U329 ( .IN1(n37), .IN2(n58), .QN(\ab[10][10] ) );
  NOR2X0 U330 ( .IN1(n47), .IN2(n58), .QN(\ab[10][0] ) );
  NOR2X0 U331 ( .IN1(n38), .IN2(n48), .QN(\ab[0][9] ) );
  NOR2X0 U332 ( .IN1(n39), .IN2(n48), .QN(\ab[0][8] ) );
  NOR2X0 U333 ( .IN1(n40), .IN2(n48), .QN(\ab[0][7] ) );
  NOR2X0 U334 ( .IN1(n41), .IN2(n48), .QN(\ab[0][6] ) );
  NOR2X0 U335 ( .IN1(n42), .IN2(n48), .QN(\ab[0][5] ) );
  NOR2X0 U336 ( .IN1(n43), .IN2(n48), .QN(\ab[0][4] ) );
  NOR2X0 U337 ( .IN1(n44), .IN2(n48), .QN(\ab[0][3] ) );
  NOR2X0 U338 ( .IN1(n45), .IN2(n48), .QN(\ab[0][2] ) );
  NOR2X0 U339 ( .IN1(n32), .IN2(n48), .QN(\ab[0][15] ) );
  NOR2X0 U340 ( .IN1(n33), .IN2(n48), .QN(\ab[0][14] ) );
  NOR2X0 U341 ( .IN1(n34), .IN2(n48), .QN(\ab[0][13] ) );
  NOR2X0 U342 ( .IN1(n35), .IN2(n48), .QN(\ab[0][12] ) );
  NOR2X0 U343 ( .IN1(n36), .IN2(n48), .QN(\ab[0][11] ) );
  NOR2X0 U344 ( .IN1(n37), .IN2(n48), .QN(\ab[0][10] ) );
  AND3X1 U345 ( .IN1(\ab[1][1] ), .IN2(B[0]), .IN3(A[0]), .Q(\CARRYB[1][0] )
         );
  NOR2X0 U346 ( .IN1(n49), .IN2(n46), .QN(\ab[1][1] ) );
endmodule


module findMyBest_DW01_add_2 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   \A[2] , \A[1] , \A[0] , n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  INVX0 U2 ( .INP(n38), .ZN(n14) );
  AND2X1 U3 ( .IN1(A[3]), .IN2(B[3]), .Q(n1) );
  OAI21X1 U4 ( .IN1(n39), .IN2(n40), .IN3(n41), .QN(SUM[17]) );
  INVX0 U5 ( .INP(n59), .ZN(n7) );
  INVX0 U6 ( .INP(n56), .ZN(n6) );
  INVX0 U7 ( .INP(n52), .ZN(n5) );
  INVX0 U8 ( .INP(n47), .ZN(n4) );
  INVX0 U9 ( .INP(n43), .ZN(n3) );
  INVX0 U10 ( .INP(n39), .ZN(n15) );
  INVX0 U11 ( .INP(n35), .ZN(n13) );
  INVX0 U12 ( .INP(n31), .ZN(n12) );
  INVX0 U13 ( .INP(n19), .ZN(n9) );
  INVX0 U14 ( .INP(n65), .ZN(n8) );
  INVX0 U15 ( .INP(n27), .ZN(n11) );
  INVX0 U16 ( .INP(n23), .ZN(n10) );
  XOR2X1 U17 ( .IN1(A[3]), .IN2(B[3]), .Q(SUM[3]) );
  XNOR2X1 U18 ( .IN1(n16), .IN2(n17), .Q(SUM[9]) );
  NOR2X0 U19 ( .IN1(n9), .IN2(n18), .QN(n17) );
  XOR2X1 U20 ( .IN1(n20), .IN2(n21), .Q(SUM[8]) );
  NAND2X0 U21 ( .IN1(n10), .IN2(n22), .QN(n20) );
  XOR2X1 U22 ( .IN1(n24), .IN2(n25), .Q(SUM[7]) );
  NAND2X0 U23 ( .IN1(n11), .IN2(n26), .QN(n24) );
  XNOR2X1 U24 ( .IN1(n28), .IN2(n29), .Q(SUM[6]) );
  NOR2X0 U25 ( .IN1(n12), .IN2(n30), .QN(n29) );
  XNOR2X1 U26 ( .IN1(n32), .IN2(n33), .Q(SUM[5]) );
  NOR2X0 U27 ( .IN1(n13), .IN2(n34), .QN(n33) );
  XOR2X1 U28 ( .IN1(n1), .IN2(n36), .Q(SUM[4]) );
  NOR2X0 U29 ( .IN1(n37), .IN2(n38), .QN(n36) );
  XOR2X1 U30 ( .IN1(n42), .IN2(n40), .Q(SUM[16]) );
  OA21X1 U31 ( .IN1(n43), .IN2(n44), .IN3(n45), .Q(n40) );
  NAND2X0 U32 ( .IN1(n15), .IN2(n41), .QN(n42) );
  NAND2X0 U33 ( .IN1(B[16]), .IN2(A[16]), .QN(n41) );
  NOR2X0 U34 ( .IN1(B[16]), .IN2(A[16]), .QN(n39) );
  XOR2X1 U35 ( .IN1(n46), .IN2(n44), .Q(SUM[15]) );
  OA21X1 U36 ( .IN1(n47), .IN2(n48), .IN3(n49), .Q(n44) );
  NAND2X0 U37 ( .IN1(n3), .IN2(n45), .QN(n46) );
  NAND2X0 U38 ( .IN1(B[15]), .IN2(A[15]), .QN(n45) );
  NOR2X0 U39 ( .IN1(B[15]), .IN2(A[15]), .QN(n43) );
  XOR2X1 U40 ( .IN1(n50), .IN2(n48), .Q(SUM[14]) );
  OA21X1 U41 ( .IN1(n51), .IN2(n52), .IN3(n53), .Q(n48) );
  NAND2X0 U42 ( .IN1(n4), .IN2(n49), .QN(n50) );
  NAND2X0 U43 ( .IN1(B[14]), .IN2(A[14]), .QN(n49) );
  NOR2X0 U44 ( .IN1(B[14]), .IN2(A[14]), .QN(n47) );
  XOR2X1 U45 ( .IN1(n54), .IN2(n51), .Q(SUM[13]) );
  OA21X1 U46 ( .IN1(n55), .IN2(n56), .IN3(n57), .Q(n51) );
  NAND2X0 U47 ( .IN1(n5), .IN2(n53), .QN(n54) );
  NAND2X0 U48 ( .IN1(B[13]), .IN2(A[13]), .QN(n53) );
  NOR2X0 U49 ( .IN1(B[13]), .IN2(A[13]), .QN(n52) );
  XOR2X1 U50 ( .IN1(n58), .IN2(n55), .Q(SUM[12]) );
  OA21X1 U51 ( .IN1(n59), .IN2(n60), .IN3(n61), .Q(n55) );
  NAND2X0 U52 ( .IN1(n6), .IN2(n57), .QN(n58) );
  NAND2X0 U53 ( .IN1(B[12]), .IN2(A[12]), .QN(n57) );
  NOR2X0 U54 ( .IN1(B[12]), .IN2(A[12]), .QN(n56) );
  XOR2X1 U55 ( .IN1(n62), .IN2(n60), .Q(SUM[11]) );
  OA21X1 U56 ( .IN1(n63), .IN2(n64), .IN3(n65), .Q(n60) );
  NAND2X0 U57 ( .IN1(n7), .IN2(n61), .QN(n62) );
  NAND2X0 U58 ( .IN1(B[11]), .IN2(A[11]), .QN(n61) );
  NOR2X0 U59 ( .IN1(B[11]), .IN2(A[11]), .QN(n59) );
  XNOR2X1 U60 ( .IN1(n64), .IN2(n66), .Q(SUM[10]) );
  NOR2X0 U61 ( .IN1(n8), .IN2(n63), .QN(n66) );
  NOR2X0 U62 ( .IN1(B[10]), .IN2(A[10]), .QN(n63) );
  NAND2X0 U63 ( .IN1(B[10]), .IN2(A[10]), .QN(n65) );
  OA21X1 U64 ( .IN1(n18), .IN2(n16), .IN3(n19), .Q(n64) );
  NAND2X0 U65 ( .IN1(B[9]), .IN2(A[9]), .QN(n19) );
  OA21X1 U66 ( .IN1(n21), .IN2(n23), .IN3(n22), .Q(n16) );
  NAND2X0 U67 ( .IN1(B[8]), .IN2(A[8]), .QN(n22) );
  NOR2X0 U68 ( .IN1(B[8]), .IN2(A[8]), .QN(n23) );
  OA21X1 U69 ( .IN1(n27), .IN2(n25), .IN3(n26), .Q(n21) );
  NAND2X0 U70 ( .IN1(B[7]), .IN2(A[7]), .QN(n26) );
  OA21X1 U71 ( .IN1(n30), .IN2(n28), .IN3(n31), .Q(n25) );
  NAND2X0 U72 ( .IN1(B[6]), .IN2(A[6]), .QN(n31) );
  OA21X1 U73 ( .IN1(n32), .IN2(n34), .IN3(n35), .Q(n28) );
  NAND2X0 U74 ( .IN1(B[5]), .IN2(A[5]), .QN(n35) );
  NOR2X0 U75 ( .IN1(B[5]), .IN2(A[5]), .QN(n34) );
  AOI21X1 U76 ( .IN1(n14), .IN2(n1), .IN3(n37), .QN(n32) );
  AND2X1 U77 ( .IN1(B[4]), .IN2(A[4]), .Q(n37) );
  NOR2X0 U78 ( .IN1(B[4]), .IN2(A[4]), .QN(n38) );
  NOR2X0 U79 ( .IN1(B[6]), .IN2(A[6]), .QN(n30) );
  NOR2X0 U80 ( .IN1(B[7]), .IN2(A[7]), .QN(n27) );
  NOR2X0 U81 ( .IN1(B[9]), .IN2(A[9]), .QN(n18) );
endmodule


module findMyBest_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [3:0] A;
  input [15:0] B;
  output [19:0] PRODUCT;
  input TC;
  wire   \ab[3][15] , \ab[3][14] , \ab[3][13] , \ab[3][12] , \ab[3][11] ,
         \ab[3][10] , \ab[3][9] , \ab[3][8] , \ab[3][7] , \ab[3][6] ,
         \ab[3][5] , \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] ,
         \ab[3][0] , \SUMB[3][13] , \SUMB[3][12] , \SUMB[3][11] ,
         \SUMB[3][10] , \SUMB[3][9] , \SUMB[3][8] , \SUMB[3][7] , \SUMB[3][6] ,
         \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] ,
         \SUMB[3][0] , \A1[15] , \A1[14] , \A1[13] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] ,
         \A1[3] , \A1[2] , n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29;
  assign \ab[3][15]  = B[15];
  assign \ab[3][14]  = B[14];
  assign \ab[3][13]  = B[13];
  assign \ab[3][12]  = B[12];
  assign \ab[3][11]  = B[11];
  assign \ab[3][10]  = B[10];
  assign \ab[3][9]  = B[9];
  assign \ab[3][8]  = B[8];
  assign \ab[3][7]  = B[7];
  assign \ab[3][6]  = B[6];
  assign \ab[3][5]  = B[5];
  assign \ab[3][4]  = B[4];
  assign \ab[3][3]  = B[3];
  assign \ab[3][2]  = B[2];
  assign \ab[3][1]  = B[1];
  assign PRODUCT[1] = \ab[3][0] ;
  assign \ab[3][0]  = B[0];

  findMyBest_DW01_add_2 FS_1 ( .A({1'b0, \ab[3][15] , \A1[15] , \A1[14] , 
        \A1[13] , \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , 
        \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \SUMB[3][0] , \ab[3][1] }), .B({1'b0, n22, n13, n14, n12, n11, n10, n9, n8, n3, n7, n6, n5, n4, n2, 1'b0, 
        1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[19:2]) );
  AND2X1 U2 ( .IN1(n16), .IN2(\SUMB[3][1] ), .Q(n2) );
  AND2X1 U3 ( .IN1(n20), .IN2(\SUMB[3][6] ), .Q(n3) );
  AND2X1 U4 ( .IN1(n15), .IN2(\SUMB[3][2] ), .Q(n4) );
  AND2X1 U5 ( .IN1(n17), .IN2(\SUMB[3][3] ), .Q(n5) );
  AND2X1 U6 ( .IN1(n18), .IN2(\SUMB[3][4] ), .Q(n6) );
  AND2X1 U7 ( .IN1(n19), .IN2(\SUMB[3][5] ), .Q(n7) );
  AND2X1 U8 ( .IN1(n21), .IN2(\SUMB[3][7] ), .Q(n8) );
  AND2X1 U9 ( .IN1(n24), .IN2(\SUMB[3][8] ), .Q(n9) );
  AND2X1 U10 ( .IN1(n25), .IN2(\SUMB[3][9] ), .Q(n10) );
  AND2X1 U11 ( .IN1(n26), .IN2(\SUMB[3][10] ), .Q(n11) );
  AND2X1 U12 ( .IN1(n27), .IN2(\SUMB[3][11] ), .Q(n12) );
  AND2X1 U13 ( .IN1(n23), .IN2(\SUMB[3][13] ), .Q(n13) );
  AND2X1 U14 ( .IN1(n28), .IN2(\SUMB[3][12] ), .Q(n14) );
  AND2X1 U15 ( .IN1(\ab[3][1] ), .IN2(\ab[3][3] ), .Q(n15) );
  AND2X1 U16 ( .IN1(\ab[3][0] ), .IN2(\ab[3][2] ), .Q(n16) );
  AND2X1 U17 ( .IN1(\ab[3][2] ), .IN2(\ab[3][4] ), .Q(n17) );
  AND2X1 U18 ( .IN1(\ab[3][3] ), .IN2(\ab[3][5] ), .Q(n18) );
  AND2X1 U19 ( .IN1(\ab[3][4] ), .IN2(\ab[3][6] ), .Q(n19) );
  AND2X1 U20 ( .IN1(\ab[3][5] ), .IN2(\ab[3][7] ), .Q(n20) );
  AND2X1 U21 ( .IN1(\ab[3][6] ), .IN2(\ab[3][8] ), .Q(n21) );
  AND2X1 U22 ( .IN1(n29), .IN2(\ab[3][14] ), .Q(n22) );
  AND2X1 U23 ( .IN1(\ab[3][12] ), .IN2(\ab[3][14] ), .Q(n23) );
  AND2X1 U24 ( .IN1(\ab[3][7] ), .IN2(\ab[3][9] ), .Q(n24) );
  AND2X1 U25 ( .IN1(\ab[3][8] ), .IN2(\ab[3][10] ), .Q(n25) );
  AND2X1 U26 ( .IN1(\ab[3][9] ), .IN2(\ab[3][11] ), .Q(n26) );
  AND2X1 U27 ( .IN1(\ab[3][10] ), .IN2(\ab[3][12] ), .Q(n27) );
  AND2X1 U28 ( .IN1(\ab[3][11] ), .IN2(\ab[3][13] ), .Q(n28) );
  AND2X1 U29 ( .IN1(\ab[3][13] ), .IN2(\ab[3][15] ), .Q(n29) );
  XOR2X1 U30 ( .IN1(n16), .IN2(\SUMB[3][1] ), .Q(\A1[2] ) );
  XOR2X1 U31 ( .IN1(n15), .IN2(\SUMB[3][2] ), .Q(\A1[3] ) );
  XOR2X1 U32 ( .IN1(n17), .IN2(\SUMB[3][3] ), .Q(\A1[4] ) );
  XOR2X1 U33 ( .IN1(n18), .IN2(\SUMB[3][4] ), .Q(\A1[5] ) );
  XOR2X1 U34 ( .IN1(n19), .IN2(\SUMB[3][5] ), .Q(\A1[6] ) );
  XOR2X1 U35 ( .IN1(n20), .IN2(\SUMB[3][6] ), .Q(\A1[7] ) );
  XOR2X1 U36 ( .IN1(n21), .IN2(\SUMB[3][7] ), .Q(\A1[8] ) );
  XOR2X1 U37 ( .IN1(n24), .IN2(\SUMB[3][8] ), .Q(\A1[9] ) );
  XOR2X1 U38 ( .IN1(n25), .IN2(\SUMB[3][9] ), .Q(\A1[10] ) );
  XOR2X1 U39 ( .IN1(n26), .IN2(\SUMB[3][10] ), .Q(\A1[11] ) );
  XOR2X1 U40 ( .IN1(n27), .IN2(\SUMB[3][11] ), .Q(\A1[12] ) );
  XOR2X1 U41 ( .IN1(n23), .IN2(\SUMB[3][13] ), .Q(\A1[14] ) );
  XOR2X1 U42 ( .IN1(n29), .IN2(\ab[3][14] ), .Q(\A1[15] ) );
  XOR2X1 U43 ( .IN1(n28), .IN2(\SUMB[3][12] ), .Q(\A1[13] ) );
  XOR2X1 U44 ( .IN1(\ab[3][2] ), .IN2(\ab[3][0] ), .Q(\SUMB[3][0] ) );
  XOR2X1 U45 ( .IN1(\ab[3][3] ), .IN2(\ab[3][1] ), .Q(\SUMB[3][1] ) );
  XOR2X1 U46 ( .IN1(\ab[3][4] ), .IN2(\ab[3][2] ), .Q(\SUMB[3][2] ) );
  XOR2X1 U47 ( .IN1(\ab[3][5] ), .IN2(\ab[3][3] ), .Q(\SUMB[3][3] ) );
  XOR2X1 U48 ( .IN1(\ab[3][6] ), .IN2(\ab[3][4] ), .Q(\SUMB[3][4] ) );
  XOR2X1 U49 ( .IN1(\ab[3][7] ), .IN2(\ab[3][5] ), .Q(\SUMB[3][5] ) );
  XOR2X1 U50 ( .IN1(\ab[3][8] ), .IN2(\ab[3][6] ), .Q(\SUMB[3][6] ) );
  XOR2X1 U51 ( .IN1(\ab[3][9] ), .IN2(\ab[3][7] ), .Q(\SUMB[3][7] ) );
  XOR2X1 U52 ( .IN1(\ab[3][10] ), .IN2(\ab[3][8] ), .Q(\SUMB[3][8] ) );
  XOR2X1 U53 ( .IN1(\ab[3][11] ), .IN2(\ab[3][9] ), .Q(\SUMB[3][9] ) );
  XOR2X1 U54 ( .IN1(\ab[3][12] ), .IN2(\ab[3][10] ), .Q(\SUMB[3][10] ) );
  XOR2X1 U55 ( .IN1(\ab[3][13] ), .IN2(\ab[3][11] ), .Q(\SUMB[3][11] ) );
  XOR2X1 U56 ( .IN1(\ab[3][14] ), .IN2(\ab[3][12] ), .Q(\SUMB[3][12] ) );
  XOR2X1 U57 ( .IN1(\ab[3][15] ), .IN2(\ab[3][13] ), .Q(\SUMB[3][13] ) );
endmodule


module findMyBest ( clock, nrst, en, start, address, data_in, MY_BATTERY_STAT, 
        mybest, done );
  output [10:0] address;
  input [15:0] data_in;
  input [15:0] MY_BATTERY_STAT;
  output [15:0] mybest;
  input clock, nrst, en, start;
  output done;
  wire   N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N101,
         N102, N103, N104, N105, N106, N107, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N122, N123, N124, N125,
         N126, N127, N154, N161, N166, N167, N168, N169, N170, N171, N172,
         N173, N174, N175, N192, N193, N194, N195, N196, N197, N198, N199,
         N200, N201, N202, N203, N204, N205, N206, N207, N444, N446, N448,
         N450, N452, N454, N458, n28, n29, n30, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182,
         N181, \add_84/carry[10] , \add_84/carry[9] , \add_84/carry[8] ,
         \add_84/carry[7] , \add_84/carry[6] , \add_84/carry[5] ,
         \add_75/carry[4] , \add_75/carry[3] , \add_75/carry[2] ,
         \add_55/carry[10] , \add_55/carry[9] , \add_55/carry[8] ,
         \add_55/carry[7] , \add_55/carry[6] , \add_55/carry[5] ,
         \add_93/carry[15] , \add_93/carry[14] , \add_93/carry[13] ,
         \add_93/carry[12] , \add_93/carry[11] , \add_93/carry[10] ,
         \add_93/carry[9] , \add_93/carry[8] , \add_93/carry[7] , n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n301,
         n302;
  wire   [3:0] state;
  wire   [30:0] kTemp;
  wire   [15:0] k;
  wire   [15:0] l;
  wire   [15:0] neighborCount;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16;

  DFFX1 \state_reg[0]  ( .D(n205), .CLK(clock), .Q(state[0]), .QN(n30) );
  DFFX1 \state_reg[2]  ( .D(n204), .CLK(clock), .Q(state[2]), .QN(n28) );
  DFFSSRX1 \state_reg[1]  ( .D(nrst), .RSTB(n99), .SETB(n285), .CLK(clock), 
        .Q(state[1]), .QN(n29) );
  DFFX1 \state_reg[3]  ( .D(n206), .CLK(clock), .Q(state[3]), .QN(n219) );
  AO22X1 U59 ( .IN1(l[15]), .IN2(n34), .IN3(N86), .IN4(n35), .Q(n109) );
  AO22X1 U60 ( .IN1(l[14]), .IN2(n34), .IN3(N85), .IN4(n35), .Q(n110) );
  AO22X1 U61 ( .IN1(l[13]), .IN2(n34), .IN3(N84), .IN4(n35), .Q(n111) );
  AO22X1 U62 ( .IN1(l[12]), .IN2(n34), .IN3(N83), .IN4(n35), .Q(n112) );
  AO22X1 U63 ( .IN1(l[11]), .IN2(n34), .IN3(N82), .IN4(n35), .Q(n113) );
  AO22X1 U64 ( .IN1(l[10]), .IN2(n34), .IN3(N81), .IN4(n35), .Q(n114) );
  AO22X1 U65 ( .IN1(l[9]), .IN2(n34), .IN3(N80), .IN4(n35), .Q(n115) );
  AO22X1 U66 ( .IN1(l[8]), .IN2(n34), .IN3(N79), .IN4(n35), .Q(n116) );
  AO22X1 U67 ( .IN1(l[7]), .IN2(n34), .IN3(N78), .IN4(n35), .Q(n117) );
  AO22X1 U68 ( .IN1(l[6]), .IN2(n34), .IN3(N77), .IN4(n35), .Q(n118) );
  AO22X1 U69 ( .IN1(l[5]), .IN2(n34), .IN3(N76), .IN4(n35), .Q(n119) );
  AO22X1 U70 ( .IN1(l[4]), .IN2(n34), .IN3(N75), .IN4(n35), .Q(n120) );
  AO22X1 U71 ( .IN1(l[3]), .IN2(n34), .IN3(N74), .IN4(n35), .Q(n121) );
  AO22X1 U72 ( .IN1(l[2]), .IN2(n34), .IN3(N73), .IN4(n35), .Q(n122) );
  AO22X1 U73 ( .IN1(l[1]), .IN2(n34), .IN3(N89), .IN4(n35), .Q(n123) );
  AO221X1 U74 ( .IN1(N97), .IN2(n292), .IN3(address[10]), .IN4(n288), .IN5(n36), .Q(n124) );
  AO21X1 U75 ( .IN1(N175), .IN2(n294), .IN3(n37), .Q(n36) );
  AO221X1 U76 ( .IN1(N96), .IN2(n292), .IN3(address[9]), .IN4(n288), .IN5(n38), 
        .Q(n125) );
  AO21X1 U77 ( .IN1(N174), .IN2(n294), .IN3(n37), .Q(n38) );
  AO22X1 U78 ( .IN1(address[8]), .IN2(n288), .IN3(nrst), .IN4(n39), .Q(n126)
         );
  AO221X1 U79 ( .IN1(N173), .IN2(n294), .IN3(N95), .IN4(n292), .IN5(n293), .Q(
        n39) );
  AO221X1 U80 ( .IN1(N172), .IN2(n294), .IN3(N94), .IN4(n292), .IN5(n40), .Q(
        n127) );
  AO21X1 U81 ( .IN1(address[7]), .IN2(n288), .IN3(n41), .Q(n40) );
  AO22X1 U82 ( .IN1(address[6]), .IN2(n288), .IN3(nrst), .IN4(n42), .Q(n128)
         );
  AO221X1 U83 ( .IN1(N171), .IN2(n294), .IN3(N93), .IN4(n292), .IN5(n293), .Q(
        n42) );
  AO222X1 U84 ( .IN1(N92), .IN2(n35), .IN3(N170), .IN4(n43), .IN5(address[5]), 
        .IN6(n288), .Q(n129) );
  AO222X1 U85 ( .IN1(N91), .IN2(n35), .IN3(N169), .IN4(n43), .IN5(address[4]), 
        .IN6(n288), .Q(n130) );
  AO221X1 U86 ( .IN1(N168), .IN2(n294), .IN3(N90), .IN4(n292), .IN5(n44), .Q(
        n131) );
  AO21X1 U87 ( .IN1(address[3]), .IN2(n288), .IN3(n41), .Q(n44) );
  OR2X1 U88 ( .IN1(n293), .IN2(n37), .Q(n41) );
  AO222X1 U89 ( .IN1(N89), .IN2(n35), .IN3(N167), .IN4(n43), .IN5(address[2]), 
        .IN6(n288), .Q(n132) );
  AO221X1 U90 ( .IN1(N88), .IN2(n292), .IN3(address[1]), .IN4(n288), .IN5(n46), 
        .Q(n133) );
  AO21X1 U91 ( .IN1(N166), .IN2(n294), .IN3(n37), .Q(n46) );
  NAND4X0 U93 ( .IN1(n34), .IN2(n50), .IN3(n51), .IN4(n45), .QN(n49) );
  AO22X1 U94 ( .IN1(neighborCount[15]), .IN2(n52), .IN3(data_in[15]), .IN4(n53), .Q(n135) );
  AO22X1 U95 ( .IN1(neighborCount[14]), .IN2(n52), .IN3(data_in[14]), .IN4(n53), .Q(n136) );
  AO22X1 U96 ( .IN1(neighborCount[13]), .IN2(n52), .IN3(data_in[13]), .IN4(n53), .Q(n137) );
  AO22X1 U97 ( .IN1(neighborCount[12]), .IN2(n52), .IN3(data_in[12]), .IN4(n53), .Q(n138) );
  AO22X1 U98 ( .IN1(neighborCount[11]), .IN2(n52), .IN3(data_in[11]), .IN4(n53), .Q(n139) );
  AO22X1 U99 ( .IN1(neighborCount[10]), .IN2(n52), .IN3(data_in[10]), .IN4(n53), .Q(n140) );
  AO22X1 U100 ( .IN1(neighborCount[9]), .IN2(n52), .IN3(data_in[9]), .IN4(n53), 
        .Q(n141) );
  AO22X1 U101 ( .IN1(neighborCount[8]), .IN2(n52), .IN3(data_in[8]), .IN4(n53), 
        .Q(n142) );
  AO22X1 U102 ( .IN1(neighborCount[7]), .IN2(n52), .IN3(data_in[7]), .IN4(n53), 
        .Q(n143) );
  AO22X1 U103 ( .IN1(neighborCount[6]), .IN2(n52), .IN3(data_in[6]), .IN4(n53), 
        .Q(n144) );
  AO22X1 U104 ( .IN1(neighborCount[5]), .IN2(n52), .IN3(data_in[5]), .IN4(n53), 
        .Q(n145) );
  AO22X1 U105 ( .IN1(neighborCount[4]), .IN2(n52), .IN3(data_in[4]), .IN4(n53), 
        .Q(n146) );
  AO22X1 U106 ( .IN1(neighborCount[3]), .IN2(n52), .IN3(data_in[3]), .IN4(n53), 
        .Q(n147) );
  AO22X1 U107 ( .IN1(neighborCount[2]), .IN2(n52), .IN3(data_in[2]), .IN4(n53), 
        .Q(n148) );
  AO22X1 U108 ( .IN1(neighborCount[1]), .IN2(n52), .IN3(data_in[1]), .IN4(n53), 
        .Q(n149) );
  AO22X1 U109 ( .IN1(neighborCount[0]), .IN2(n52), .IN3(data_in[0]), .IN4(n53), 
        .Q(n150) );
  AO221X1 U111 ( .IN1(n55), .IN2(data_in[15]), .IN3(mybest[15]), .IN4(n289), 
        .IN5(n56), .Q(n151) );
  AO21X1 U112 ( .IN1(N207), .IN2(n291), .IN3(n57), .Q(n56) );
  AO221X1 U113 ( .IN1(n55), .IN2(data_in[14]), .IN3(mybest[14]), .IN4(n289), 
        .IN5(n58), .Q(n152) );
  AO21X1 U114 ( .IN1(N206), .IN2(n291), .IN3(n57), .Q(n58) );
  AO221X1 U115 ( .IN1(n55), .IN2(data_in[13]), .IN3(mybest[13]), .IN4(n289), 
        .IN5(n59), .Q(n153) );
  AO21X1 U116 ( .IN1(N205), .IN2(n291), .IN3(n57), .Q(n59) );
  AO221X1 U117 ( .IN1(n55), .IN2(data_in[12]), .IN3(mybest[12]), .IN4(n289), 
        .IN5(n60), .Q(n154) );
  AO21X1 U118 ( .IN1(N204), .IN2(n291), .IN3(n57), .Q(n60) );
  AO221X1 U119 ( .IN1(n55), .IN2(data_in[11]), .IN3(mybest[11]), .IN4(n289), 
        .IN5(n61), .Q(n155) );
  AO21X1 U120 ( .IN1(N203), .IN2(n291), .IN3(n57), .Q(n61) );
  AO221X1 U121 ( .IN1(n55), .IN2(data_in[10]), .IN3(mybest[10]), .IN4(n289), 
        .IN5(n62), .Q(n156) );
  AO21X1 U122 ( .IN1(N202), .IN2(n291), .IN3(n57), .Q(n62) );
  AO221X1 U123 ( .IN1(n55), .IN2(data_in[9]), .IN3(mybest[9]), .IN4(n289), 
        .IN5(n63), .Q(n157) );
  AO21X1 U124 ( .IN1(N201), .IN2(n291), .IN3(n57), .Q(n63) );
  AO221X1 U125 ( .IN1(n55), .IN2(data_in[8]), .IN3(mybest[8]), .IN4(n289), 
        .IN5(n64), .Q(n158) );
  AO21X1 U126 ( .IN1(N200), .IN2(n291), .IN3(n57), .Q(n64) );
  AO221X1 U127 ( .IN1(n55), .IN2(data_in[7]), .IN3(mybest[7]), .IN4(n289), 
        .IN5(n65), .Q(n159) );
  AO21X1 U128 ( .IN1(N199), .IN2(n291), .IN3(n57), .Q(n65) );
  AO221X1 U129 ( .IN1(n55), .IN2(data_in[6]), .IN3(mybest[6]), .IN4(n289), 
        .IN5(n66), .Q(n160) );
  AO21X1 U130 ( .IN1(N198), .IN2(n291), .IN3(n57), .Q(n66) );
  AO221X1 U131 ( .IN1(n55), .IN2(data_in[5]), .IN3(mybest[5]), .IN4(n289), 
        .IN5(n67), .Q(n161) );
  AO21X1 U132 ( .IN1(N197), .IN2(n291), .IN3(n57), .Q(n67) );
  AO221X1 U133 ( .IN1(n55), .IN2(data_in[4]), .IN3(mybest[4]), .IN4(n289), 
        .IN5(n68), .Q(n162) );
  AO21X1 U134 ( .IN1(N196), .IN2(n291), .IN3(n57), .Q(n68) );
  AO221X1 U135 ( .IN1(n55), .IN2(data_in[3]), .IN3(mybest[3]), .IN4(n289), 
        .IN5(n69), .Q(n163) );
  AO21X1 U136 ( .IN1(N195), .IN2(n291), .IN3(n57), .Q(n69) );
  AO221X1 U137 ( .IN1(n55), .IN2(data_in[2]), .IN3(mybest[2]), .IN4(n289), 
        .IN5(n70), .Q(n164) );
  AO21X1 U138 ( .IN1(N194), .IN2(n291), .IN3(n57), .Q(n70) );
  AO221X1 U139 ( .IN1(n55), .IN2(data_in[1]), .IN3(mybest[1]), .IN4(n289), 
        .IN5(n71), .Q(n165) );
  AO21X1 U140 ( .IN1(N193), .IN2(n291), .IN3(n57), .Q(n71) );
  AO22X1 U142 ( .IN1(mybest[0]), .IN2(n289), .IN3(nrst), .IN4(n74), .Q(n166)
         );
  AO22X1 U143 ( .IN1(n55), .IN2(data_in[0]), .IN3(N192), .IN4(n291), .Q(n74)
         );
  NAND3X0 U144 ( .IN1(n77), .IN2(n75), .IN3(n54), .QN(n72) );
  AO22X1 U145 ( .IN1(done), .IN2(n54), .IN3(n295), .IN4(nrst), .Q(n167) );
  AO222X1 U157 ( .IN1(N126), .IN2(n79), .IN3(kTemp[19]), .IN4(n80), .IN5(k[4]), 
        .IN6(n81), .Q(n179) );
  AO221X1 U158 ( .IN1(N125), .IN2(n79), .IN3(k[3]), .IN4(n81), .IN5(n82), .Q(
        n180) );
  AO21X1 U159 ( .IN1(kTemp[18]), .IN2(n80), .IN3(n83), .Q(n82) );
  AO222X1 U160 ( .IN1(N124), .IN2(n79), .IN3(kTemp[17]), .IN4(n80), .IN5(k[2]), 
        .IN6(n81), .Q(n181) );
  AO221X1 U161 ( .IN1(N123), .IN2(n79), .IN3(k[1]), .IN4(n81), .IN5(n84), .Q(
        n182) );
  AO21X1 U162 ( .IN1(kTemp[16]), .IN2(n80), .IN3(n83), .Q(n84) );
  NOR3X0 U163 ( .IN1(n287), .IN2(n81), .IN3(n51), .QN(n83) );
  AO222X1 U164 ( .IN1(N122), .IN2(n79), .IN3(kTemp[15]), .IN4(n80), .IN5(k[0]), 
        .IN6(n81), .Q(n183) );
  AND2X1 U166 ( .IN1(n87), .IN2(n88), .Q(n80) );
  NOR4X0 U167 ( .IN1(n89), .IN2(n90), .IN3(n91), .IN4(n92), .QN(n88) );
  OR4X1 U168 ( .IN1(kTemp[2]), .IN2(kTemp[3]), .IN3(kTemp[4]), .IN4(kTemp[5]), 
        .Q(n92) );
  OR4X1 U169 ( .IN1(kTemp[6]), .IN2(kTemp[7]), .IN3(kTemp[8]), .IN4(kTemp[9]), 
        .Q(n91) );
  OR3X1 U170 ( .IN1(kTemp[10]), .IN2(kTemp[11]), .IN3(kTemp[0]), .Q(n90) );
  OR4X1 U171 ( .IN1(kTemp[12]), .IN2(kTemp[13]), .IN3(kTemp[14]), .IN4(
        kTemp[1]), .Q(n89) );
  AO22X1 U172 ( .IN1(kTemp[19]), .IN2(n93), .IN3(N119), .IN4(n94), .Q(n184) );
  AO22X1 U173 ( .IN1(kTemp[18]), .IN2(n93), .IN3(N118), .IN4(n94), .Q(n185) );
  AO22X1 U174 ( .IN1(kTemp[17]), .IN2(n93), .IN3(N117), .IN4(n94), .Q(n186) );
  AO22X1 U175 ( .IN1(kTemp[16]), .IN2(n93), .IN3(N116), .IN4(n94), .Q(n187) );
  AO22X1 U176 ( .IN1(kTemp[15]), .IN2(n93), .IN3(N115), .IN4(n94), .Q(n188) );
  AO22X1 U177 ( .IN1(kTemp[14]), .IN2(n93), .IN3(N114), .IN4(n94), .Q(n189) );
  AO22X1 U178 ( .IN1(kTemp[13]), .IN2(n93), .IN3(N113), .IN4(n94), .Q(n190) );
  AO22X1 U179 ( .IN1(kTemp[12]), .IN2(n93), .IN3(N112), .IN4(n94), .Q(n191) );
  AO22X1 U180 ( .IN1(kTemp[11]), .IN2(n93), .IN3(N111), .IN4(n94), .Q(n192) );
  AO22X1 U181 ( .IN1(kTemp[10]), .IN2(n93), .IN3(N110), .IN4(n94), .Q(n193) );
  AO22X1 U182 ( .IN1(kTemp[9]), .IN2(n93), .IN3(N109), .IN4(n94), .Q(n194) );
  AO22X1 U183 ( .IN1(kTemp[8]), .IN2(n93), .IN3(N108), .IN4(n94), .Q(n195) );
  AO22X1 U184 ( .IN1(kTemp[7]), .IN2(n93), .IN3(N107), .IN4(n94), .Q(n196) );
  AO22X1 U185 ( .IN1(kTemp[6]), .IN2(n93), .IN3(N106), .IN4(n94), .Q(n197) );
  AO22X1 U186 ( .IN1(kTemp[5]), .IN2(n93), .IN3(N105), .IN4(n94), .Q(n198) );
  AO22X1 U187 ( .IN1(kTemp[4]), .IN2(n93), .IN3(N104), .IN4(n94), .Q(n199) );
  AO22X1 U188 ( .IN1(kTemp[3]), .IN2(n93), .IN3(N103), .IN4(n94), .Q(n200) );
  AO22X1 U189 ( .IN1(kTemp[2]), .IN2(n93), .IN3(N102), .IN4(n94), .Q(n201) );
  AO22X1 U190 ( .IN1(kTemp[1]), .IN2(n93), .IN3(N101), .IN4(n94), .Q(n202) );
  AND4X1 U193 ( .IN1(n86), .IN2(n78), .IN3(n101), .IN4(n103), .Q(n100) );
  NOR4X0 U194 ( .IN1(state[3]), .IN2(N99), .IN3(n286), .IN4(n48), .QN(n103) );
  AND3X1 U195 ( .IN1(n51), .IN2(n45), .IN3(n75), .Q(n101) );
  NAND3X0 U196 ( .IN1(n104), .IN2(n28), .IN3(state[0]), .QN(n45) );
  NAND3X0 U197 ( .IN1(state[0]), .IN2(n104), .IN3(state[2]), .QN(n51) );
  AO21X1 U198 ( .IN1(start), .IN2(n48), .IN3(n292), .Q(n102) );
  NAND3X0 U199 ( .IN1(n106), .IN2(n30), .IN3(state[2]), .QN(n75) );
  NAND3X0 U200 ( .IN1(n104), .IN2(n30), .IN3(state[2]), .QN(n86) );
  NAND4X0 U201 ( .IN1(nrst), .IN2(n107), .IN3(n108), .IN4(n78), .QN(n206) );
  NAND3X0 U202 ( .IN1(state[0]), .IN2(n106), .IN3(state[2]), .QN(n78) );
  OR2X1 U203 ( .IN1(n73), .IN2(en), .Q(n108) );
  AO22X1 U204 ( .IN1(l[0]), .IN2(n34), .IN3(N88), .IN4(n35), .Q(n207) );
  NAND3X0 U206 ( .IN1(n30), .IN2(n28), .IN3(n106), .QN(n76) );
  NAND3X0 U207 ( .IN1(n29), .IN2(n28), .IN3(n30), .QN(n105) );
  AND2X1 U208 ( .IN1(n296), .IN2(k[0]), .Q(N166) );
  AND2X1 U209 ( .IN1(n296), .IN2(k[2]), .Q(N458) );
  AND2X1 U210 ( .IN1(n296), .IN2(k[4]), .Q(N454) );
  AND2X1 U211 ( .IN1(n296), .IN2(k[5]), .Q(N452) );
  AND2X1 U212 ( .IN1(n296), .IN2(k[6]), .Q(N450) );
  AND2X1 U213 ( .IN1(n296), .IN2(k[7]), .Q(N448) );
  AND2X1 U214 ( .IN1(n296), .IN2(k[8]), .Q(N446) );
  AND2X1 U215 ( .IN1(n296), .IN2(k[9]), .Q(N444) );
  AND3X1 U216 ( .IN1(n106), .IN2(n28), .IN3(state[0]), .Q(n98) );
  OR2X1 U217 ( .IN1(k[1]), .IN2(N154), .Q(N167) );
  OR2X1 U218 ( .IN1(k[3]), .IN2(N154), .Q(N161) );
  findMyBest_DW01_inc_1 add_54 ( .A(l), .SUM({N86, N85, N84, N83, N82, N81, 
        N80, N79, N78, N77, N76, N75, N74, N73, N89, N88}) );
  findMyBest_DW02_mult_1 mult_91 ( .A(mybest), .B(data_in), .TC(1'b0), 
        .PRODUCT({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, N191, N190, N189, N188, N187, N186, N185, 
        N184, N183, N182, N181, N196, N195, N194, N193, N192, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15}) );
  findMyBest_DW02_mult_0 mult_68 ( .A({1'b1, 1'b0, 1'b1, 1'b0}), .B(
        MY_BATTERY_STAT), .TC(1'b0), .PRODUCT({N119, N118, N117, N116, N115, 
        N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, 
        N102, N101, SYNOPSYS_UNCONNECTED__16}) );
  HADDX1 \add_75/U1_1_1  ( .A0(kTemp[16]), .B0(kTemp[15]), .C1(
        \add_75/carry[2] ), .SO(N123) );
  HADDX1 \add_75/U1_1_2  ( .A0(kTemp[17]), .B0(\add_75/carry[2] ), .C1(
        \add_75/carry[3] ), .SO(N124) );
  HADDX1 \add_75/U1_1_3  ( .A0(kTemp[18]), .B0(\add_75/carry[3] ), .C1(
        \add_75/carry[4] ), .SO(N125) );
  HADDX1 \add_75/U1_1_4  ( .A0(kTemp[19]), .B0(\add_75/carry[4] ), .C1(N127), 
        .SO(N126) );
  DFFX1 done_buf_reg ( .D(n167), .CLK(clock), .Q(done) );
  DFFX1 \neighborCount_reg[15]  ( .D(n135), .CLK(clock), .Q(neighborCount[15])
         );
  DFFX1 \neighborCount_reg[14]  ( .D(n136), .CLK(clock), .Q(neighborCount[14])
         );
  DFFX1 \neighborCount_reg[13]  ( .D(n137), .CLK(clock), .Q(neighborCount[13])
         );
  DFFX1 \neighborCount_reg[12]  ( .D(n138), .CLK(clock), .Q(neighborCount[12])
         );
  DFFX1 \neighborCount_reg[11]  ( .D(n139), .CLK(clock), .Q(neighborCount[11])
         );
  DFFX1 \neighborCount_reg[10]  ( .D(n140), .CLK(clock), .Q(neighborCount[10])
         );
  DFFX1 \neighborCount_reg[9]  ( .D(n141), .CLK(clock), .Q(neighborCount[9])
         );
  DFFX1 \neighborCount_reg[8]  ( .D(n142), .CLK(clock), .Q(neighborCount[8])
         );
  DFFX1 \neighborCount_reg[7]  ( .D(n143), .CLK(clock), .Q(neighborCount[7])
         );
  DFFX1 \neighborCount_reg[6]  ( .D(n144), .CLK(clock), .Q(neighborCount[6])
         );
  DFFX1 \neighborCount_reg[5]  ( .D(n145), .CLK(clock), .Q(neighborCount[5])
         );
  DFFX1 \neighborCount_reg[4]  ( .D(n146), .CLK(clock), .Q(neighborCount[4])
         );
  DFFX1 \neighborCount_reg[3]  ( .D(n147), .CLK(clock), .Q(neighborCount[3])
         );
  DFFX1 \neighborCount_reg[2]  ( .D(n148), .CLK(clock), .Q(neighborCount[2])
         );
  DFFX1 \neighborCount_reg[1]  ( .D(n149), .CLK(clock), .Q(neighborCount[1]), 
        .QN(n276) );
  DFFX1 \neighborCount_reg[0]  ( .D(n150), .CLK(clock), .Q(neighborCount[0]), 
        .QN(n275) );
  DFFX1 \k_reg[5]  ( .D(n178), .CLK(clock), .Q(k[5]) );
  DFFX1 \k_reg[15]  ( .D(n218), .CLK(clock), .Q(k[15]) );
  DFFX1 \k_reg[14]  ( .D(n217), .CLK(clock), .Q(k[14]) );
  DFFX1 \k_reg[13]  ( .D(n216), .CLK(clock), .Q(k[13]) );
  DFFX1 \k_reg[12]  ( .D(n215), .CLK(clock), .Q(k[12]) );
  DFFX1 \k_reg[11]  ( .D(n214), .CLK(clock), .Q(k[11]) );
  DFFX1 \k_reg[10]  ( .D(n213), .CLK(clock), .Q(k[10]) );
  DFFX1 \k_reg[9]  ( .D(n212), .CLK(clock), .Q(k[9]) );
  DFFX1 \k_reg[8]  ( .D(n211), .CLK(clock), .Q(k[8]) );
  DFFX1 \k_reg[7]  ( .D(n210), .CLK(clock), .Q(k[7]) );
  DFFX1 \k_reg[6]  ( .D(n209), .CLK(clock), .Q(k[6]) );
  DFFX1 \kTemp_reg[0]  ( .D(n203), .CLK(clock), .Q(kTemp[0]) );
  DFFX1 \k_reg[4]  ( .D(n179), .CLK(clock), .Q(k[4]) );
  DFFX1 \k_reg[2]  ( .D(n181), .CLK(clock), .Q(k[2]) );
  DFFX1 \k_reg[0]  ( .D(n183), .CLK(clock), .Q(k[0]) );
  DFFX1 \l_reg[15]  ( .D(n109), .CLK(clock), .Q(l[15]) );
  DFFX1 \l_reg[14]  ( .D(n110), .CLK(clock), .Q(l[14]) );
  DFFX1 \l_reg[13]  ( .D(n111), .CLK(clock), .Q(l[13]) );
  DFFX1 \l_reg[12]  ( .D(n112), .CLK(clock), .Q(l[12]) );
  DFFX1 \l_reg[11]  ( .D(n113), .CLK(clock), .Q(l[11]) );
  DFFX1 \l_reg[10]  ( .D(n114), .CLK(clock), .Q(l[10]) );
  DFFX1 \l_reg[9]  ( .D(n115), .CLK(clock), .Q(l[9]) );
  DFFX1 \l_reg[8]  ( .D(n116), .CLK(clock), .Q(l[8]) );
  DFFX1 \l_reg[7]  ( .D(n117), .CLK(clock), .Q(l[7]) );
  DFFX1 \l_reg[6]  ( .D(n118), .CLK(clock), .Q(l[6]) );
  DFFX1 \l_reg[5]  ( .D(n119), .CLK(clock), .Q(l[5]) );
  DFFX1 \l_reg[4]  ( .D(n120), .CLK(clock), .Q(l[4]) );
  DFFX1 \l_reg[3]  ( .D(n121), .CLK(clock), .Q(l[3]) );
  DFFX1 \l_reg[2]  ( .D(n122), .CLK(clock), .Q(l[2]) );
  DFFX1 \l_reg[1]  ( .D(n123), .CLK(clock), .Q(l[1]) );
  DFFX1 \l_reg[0]  ( .D(n207), .CLK(clock), .Q(l[0]) );
  DFFX1 \address_count_reg[0]  ( .D(n134), .CLK(clock), .Q(address[0]) );
  DFFX1 \address_count_reg[5]  ( .D(n129), .CLK(clock), .Q(address[5]) );
  DFFX1 \address_count_reg[4]  ( .D(n130), .CLK(clock), .Q(address[4]) );
  DFFX1 \address_count_reg[2]  ( .D(n132), .CLK(clock), .Q(address[2]) );
  DFFX1 \address_count_reg[8]  ( .D(n126), .CLK(clock), .Q(address[8]) );
  DFFX1 \address_count_reg[6]  ( .D(n128), .CLK(clock), .Q(address[6]) );
  DFFX1 \k_reg[3]  ( .D(n180), .CLK(clock), .Q(k[3]) );
  DFFX1 \k_reg[1]  ( .D(n182), .CLK(clock), .Q(k[1]) );
  DFFX1 \address_count_reg[10]  ( .D(n124), .CLK(clock), .Q(address[10]) );
  DFFX1 \address_count_reg[9]  ( .D(n125), .CLK(clock), .Q(address[9]) );
  DFFX1 \address_count_reg[1]  ( .D(n133), .CLK(clock), .Q(address[1]) );
  DFFX1 \address_count_reg[7]  ( .D(n127), .CLK(clock), .Q(address[7]) );
  DFFX1 \address_count_reg[3]  ( .D(n131), .CLK(clock), .Q(address[3]) );
  DFFX1 \kTemp_reg[7]  ( .D(n196), .CLK(clock), .Q(kTemp[7]) );
  DFFX1 \kTemp_reg[6]  ( .D(n197), .CLK(clock), .Q(kTemp[6]) );
  DFFX1 \kTemp_reg[5]  ( .D(n198), .CLK(clock), .Q(kTemp[5]) );
  DFFX1 \kTemp_reg[4]  ( .D(n199), .CLK(clock), .Q(kTemp[4]) );
  DFFX1 \kTemp_reg[3]  ( .D(n200), .CLK(clock), .Q(kTemp[3]) );
  DFFX1 \kTemp_reg[2]  ( .D(n201), .CLK(clock), .Q(kTemp[2]) );
  DFFX1 \kTemp_reg[1]  ( .D(n202), .CLK(clock), .Q(kTemp[1]) );
  DFFX1 \kTemp_reg[8]  ( .D(n195), .CLK(clock), .Q(kTemp[8]) );
  DFFX1 \kTemp_reg[9]  ( .D(n194), .CLK(clock), .Q(kTemp[9]) );
  DFFX1 \kTemp_reg[10]  ( .D(n193), .CLK(clock), .Q(kTemp[10]) );
  DFFX1 \kTemp_reg[11]  ( .D(n192), .CLK(clock), .Q(kTemp[11]) );
  DFFX1 \kTemp_reg[12]  ( .D(n191), .CLK(clock), .Q(kTemp[12]) );
  DFFX1 \kTemp_reg[13]  ( .D(n190), .CLK(clock), .Q(kTemp[13]) );
  DFFX1 \kTemp_reg[14]  ( .D(n189), .CLK(clock), .Q(kTemp[14]) );
  DFFX1 \kTemp_reg[15]  ( .D(n188), .CLK(clock), .Q(kTemp[15]), .QN(N122) );
  DFFX1 \kTemp_reg[16]  ( .D(n187), .CLK(clock), .Q(kTemp[16]) );
  DFFX1 \kTemp_reg[17]  ( .D(n186), .CLK(clock), .Q(kTemp[17]) );
  DFFX1 \kTemp_reg[19]  ( .D(n184), .CLK(clock), .Q(kTemp[19]) );
  DFFX1 \kTemp_reg[18]  ( .D(n185), .CLK(clock), .Q(kTemp[18]) );
  DFFX1 \mybest_buf_reg[0]  ( .D(n166), .CLK(clock), .Q(mybest[0]), .QN(n237)
         );
  DFFX1 \mybest_buf_reg[1]  ( .D(n165), .CLK(clock), .Q(mybest[1]) );
  DFFX1 \mybest_buf_reg[2]  ( .D(n164), .CLK(clock), .Q(mybest[2]) );
  DFFX1 \mybest_buf_reg[3]  ( .D(n163), .CLK(clock), .Q(mybest[3]) );
  DFFX1 \mybest_buf_reg[4]  ( .D(n162), .CLK(clock), .Q(mybest[4]) );
  DFFX1 \mybest_buf_reg[5]  ( .D(n161), .CLK(clock), .Q(mybest[5]) );
  DFFX1 \mybest_buf_reg[6]  ( .D(n160), .CLK(clock), .Q(mybest[6]) );
  DFFX1 \mybest_buf_reg[7]  ( .D(n159), .CLK(clock), .Q(mybest[7]) );
  DFFX1 \mybest_buf_reg[8]  ( .D(n158), .CLK(clock), .Q(mybest[8]) );
  DFFX1 \mybest_buf_reg[9]  ( .D(n157), .CLK(clock), .Q(mybest[9]) );
  DFFX1 \mybest_buf_reg[10]  ( .D(n156), .CLK(clock), .Q(mybest[10]) );
  DFFX1 \mybest_buf_reg[11]  ( .D(n155), .CLK(clock), .Q(mybest[11]) );
  DFFX1 \mybest_buf_reg[12]  ( .D(n154), .CLK(clock), .Q(mybest[12]) );
  DFFX1 \mybest_buf_reg[13]  ( .D(n153), .CLK(clock), .Q(mybest[13]) );
  DFFX1 \mybest_buf_reg[14]  ( .D(n152), .CLK(clock), .Q(mybest[14]) );
  DFFX1 \mybest_buf_reg[15]  ( .D(n151), .CLK(clock), .Q(mybest[15]) );
  NOR2X0 U219 ( .IN1(n76), .IN2(n289), .QN(n55) );
  INVX0 U220 ( .INP(n72), .ZN(n289) );
  AND2X1 U221 ( .IN1(n72), .IN2(n47), .Q(n57) );
  NOR2X0 U222 ( .IN1(n287), .IN2(n93), .QN(n94) );
  AND3X1 U223 ( .IN1(n85), .IN2(n86), .IN3(n54), .Q(n81) );
  NAND2X1 U224 ( .IN1(N154), .IN2(n294), .QN(n85) );
  NOR2X0 U225 ( .IN1(n287), .IN2(n76), .QN(n35) );
  NOR2X0 U226 ( .IN1(n287), .IN2(n98), .QN(n93) );
  NOR2X0 U227 ( .IN1(n45), .IN2(n287), .QN(n53) );
  NOR2X0 U228 ( .IN1(n51), .IN2(n287), .QN(n43) );
  NOR2X0 U229 ( .IN1(n86), .IN2(n287), .QN(n87) );
  AND2X1 U230 ( .IN1(n54), .IN2(n76), .Q(n34) );
  AND2X1 U231 ( .IN1(n54), .IN2(n45), .Q(n52) );
  INVX0 U232 ( .INP(n49), .ZN(n288) );
  NOR2X0 U233 ( .IN1(n287), .IN2(n100), .QN(n96) );
  NOR2X0 U234 ( .IN1(n284), .IN2(n88), .QN(n79) );
  INVX0 U235 ( .INP(n87), .ZN(n284) );
  OA21X1 U236 ( .IN1(n47), .IN2(n48), .IN3(n49), .Q(n37) );
  AND2X1 U237 ( .IN1(n208), .IN2(n96), .Q(n204) );
  OR3X1 U238 ( .IN1(n97), .IN2(n294), .IN3(n98), .Q(n208) );
  INVX0 U239 ( .INP(n100), .ZN(n285) );
  INVX0 U240 ( .INP(N154), .ZN(n296) );
  INVX0 U241 ( .INP(n76), .ZN(n292) );
  INVX0 U242 ( .INP(n75), .ZN(n291) );
  INVX0 U243 ( .INP(n51), .ZN(n294) );
  NAND2X1 U244 ( .IN1(n101), .IN2(n76), .QN(n99) );
  INVX0 U245 ( .INP(n45), .ZN(n293) );
  NAND2X1 U246 ( .IN1(n86), .IN2(n75), .QN(n97) );
  INVX0 U247 ( .INP(N89), .ZN(n277) );
  INVX0 U248 ( .INP(N181), .ZN(N197) );
  INVX0 U249 ( .INP(data_in[1]), .ZN(n238) );
  NAND2X1 U250 ( .IN1(N98), .IN2(n292), .QN(n77) );
  INVX0 U251 ( .INP(data_in[4]), .ZN(n241) );
  INVX0 U252 ( .INP(data_in[10]), .ZN(n247) );
  INVX0 U253 ( .INP(data_in[7]), .ZN(n244) );
  INVX0 U254 ( .INP(data_in[13]), .ZN(n250) );
  INVX0 U255 ( .INP(data_in[3]), .ZN(n240) );
  INVX0 U256 ( .INP(data_in[5]), .ZN(n242) );
  INVX0 U257 ( .INP(data_in[2]), .ZN(n239) );
  INVX0 U258 ( .INP(data_in[6]), .ZN(n243) );
  INVX0 U259 ( .INP(nrst), .ZN(n287) );
  NAND2X1 U260 ( .IN1(start), .IN2(n48), .QN(n50) );
  NAND2X1 U261 ( .IN1(state[3]), .IN2(n105), .QN(n107) );
  OA21X1 U262 ( .IN1(n290), .IN2(n73), .IN3(nrst), .Q(n54) );
  INVX0 U263 ( .INP(en), .ZN(n290) );
  INVX0 U264 ( .INP(n93), .ZN(n286) );
  NAND2X1 U265 ( .IN1(nrst), .IN2(n73), .QN(n47) );
  INVX0 U266 ( .INP(N73), .ZN(N90) );
  INVX0 U267 ( .INP(N458), .ZN(N168) );
  INVX0 U268 ( .INP(n78), .ZN(n295) );
  OA21X1 U269 ( .IN1(n97), .IN2(n102), .IN3(n96), .Q(n205) );
  NAND2X1 U270 ( .IN1(n301), .IN2(n302), .QN(n178) );
  NAND2X1 U271 ( .IN1(N127), .IN2(n79), .QN(n301) );
  NAND2X1 U272 ( .IN1(k[5]), .IN2(n81), .QN(n302) );
  AND2X1 U273 ( .IN1(k[6]), .IN2(n81), .Q(n209) );
  AND2X1 U274 ( .IN1(k[7]), .IN2(n81), .Q(n210) );
  AND2X1 U275 ( .IN1(k[8]), .IN2(n81), .Q(n211) );
  AND2X1 U276 ( .IN1(k[9]), .IN2(n81), .Q(n212) );
  AND2X1 U277 ( .IN1(k[10]), .IN2(n81), .Q(n213) );
  AND2X1 U278 ( .IN1(k[11]), .IN2(n81), .Q(n214) );
  AND2X1 U279 ( .IN1(k[12]), .IN2(n81), .Q(n215) );
  AND2X1 U280 ( .IN1(k[13]), .IN2(n81), .Q(n216) );
  AND2X1 U281 ( .IN1(k[14]), .IN2(n81), .Q(n217) );
  AND2X1 U282 ( .IN1(k[15]), .IN2(n81), .Q(n218) );
  INVX0 U283 ( .INP(data_in[11]), .ZN(n248) );
  INVX0 U284 ( .INP(data_in[9]), .ZN(n246) );
  INVX0 U285 ( .INP(data_in[15]), .ZN(n252) );
  INVX0 U286 ( .INP(data_in[8]), .ZN(n245) );
  INVX0 U287 ( .INP(data_in[12]), .ZN(n249) );
  INVX0 U288 ( .INP(data_in[14]), .ZN(n251) );
  NOR2X0 U289 ( .IN1(n105), .IN2(state[3]), .QN(n48) );
  NOR2X0 U290 ( .IN1(n29), .IN2(state[3]), .QN(n106) );
  NOR2X0 U291 ( .IN1(state[3]), .IN2(state[1]), .QN(n104) );
  OR2X1 U292 ( .IN1(n219), .IN2(n105), .Q(n73) );
  XNOR2X1 U293 ( .IN1(N444), .IN2(\add_84/carry[10] ), .Q(N175) );
  XOR2X1 U294 ( .IN1(N80), .IN2(\add_55/carry[10] ), .Q(N97) );
  OR2X1 U295 ( .IN1(N446), .IN2(\add_84/carry[9] ), .Q(\add_84/carry[10] ) );
  XNOR2X1 U296 ( .IN1(\add_84/carry[9] ), .IN2(N446), .Q(N174) );
  AND2X1 U297 ( .IN1(\add_84/carry[8] ), .IN2(N448), .Q(\add_84/carry[9] ) );
  XOR2X1 U298 ( .IN1(N448), .IN2(\add_84/carry[8] ), .Q(N173) );
  AND2X1 U299 ( .IN1(\add_84/carry[7] ), .IN2(N450), .Q(\add_84/carry[8] ) );
  XOR2X1 U300 ( .IN1(N450), .IN2(\add_84/carry[7] ), .Q(N172) );
  OR2X1 U301 ( .IN1(N452), .IN2(\add_84/carry[6] ), .Q(\add_84/carry[7] ) );
  XNOR2X1 U302 ( .IN1(\add_84/carry[6] ), .IN2(N452), .Q(N171) );
  AND2X1 U303 ( .IN1(\add_55/carry[9] ), .IN2(N79), .Q(\add_55/carry[10] ) );
  XOR2X1 U304 ( .IN1(N79), .IN2(\add_55/carry[9] ), .Q(N96) );
  OR2X1 U305 ( .IN1(N78), .IN2(\add_55/carry[8] ), .Q(\add_55/carry[9] ) );
  XNOR2X1 U306 ( .IN1(\add_55/carry[8] ), .IN2(N78), .Q(N95) );
  OR2X1 U307 ( .IN1(N77), .IN2(\add_55/carry[7] ), .Q(\add_55/carry[8] ) );
  XNOR2X1 U308 ( .IN1(\add_55/carry[7] ), .IN2(N77), .Q(N94) );
  OR2X1 U309 ( .IN1(N76), .IN2(\add_55/carry[6] ), .Q(\add_55/carry[7] ) );
  XNOR2X1 U310 ( .IN1(\add_55/carry[6] ), .IN2(N76), .Q(N93) );
  AND2X1 U311 ( .IN1(\add_84/carry[5] ), .IN2(N454), .Q(\add_84/carry[6] ) );
  XOR2X1 U312 ( .IN1(N454), .IN2(\add_84/carry[5] ), .Q(N170) );
  AND2X1 U313 ( .IN1(\add_55/carry[5] ), .IN2(N75), .Q(\add_55/carry[6] ) );
  XOR2X1 U314 ( .IN1(N75), .IN2(\add_55/carry[5] ), .Q(N92) );
  AND2X1 U315 ( .IN1(N458), .IN2(N161), .Q(\add_84/carry[5] ) );
  XOR2X1 U316 ( .IN1(N161), .IN2(N458), .Q(N169) );
  AND2X1 U317 ( .IN1(N73), .IN2(N74), .Q(\add_55/carry[5] ) );
  XOR2X1 U318 ( .IN1(N74), .IN2(N73), .Q(N91) );
  XOR2X1 U319 ( .IN1(\add_93/carry[15] ), .IN2(N191), .Q(N207) );
  AND2X1 U320 ( .IN1(N190), .IN2(\add_93/carry[14] ), .Q(\add_93/carry[15] )
         );
  XOR2X1 U321 ( .IN1(\add_93/carry[14] ), .IN2(N190), .Q(N206) );
  AND2X1 U322 ( .IN1(N189), .IN2(\add_93/carry[13] ), .Q(\add_93/carry[14] )
         );
  XOR2X1 U323 ( .IN1(\add_93/carry[13] ), .IN2(N189), .Q(N205) );
  AND2X1 U324 ( .IN1(N188), .IN2(\add_93/carry[12] ), .Q(\add_93/carry[13] )
         );
  XOR2X1 U325 ( .IN1(\add_93/carry[12] ), .IN2(N188), .Q(N204) );
  AND2X1 U326 ( .IN1(N187), .IN2(\add_93/carry[11] ), .Q(\add_93/carry[12] )
         );
  XOR2X1 U327 ( .IN1(\add_93/carry[11] ), .IN2(N187), .Q(N203) );
  AND2X1 U328 ( .IN1(N186), .IN2(\add_93/carry[10] ), .Q(\add_93/carry[11] )
         );
  XOR2X1 U329 ( .IN1(\add_93/carry[10] ), .IN2(N186), .Q(N202) );
  AND2X1 U330 ( .IN1(N185), .IN2(\add_93/carry[9] ), .Q(\add_93/carry[10] ) );
  XOR2X1 U331 ( .IN1(\add_93/carry[9] ), .IN2(N185), .Q(N201) );
  AND2X1 U332 ( .IN1(N184), .IN2(\add_93/carry[8] ), .Q(\add_93/carry[9] ) );
  XOR2X1 U333 ( .IN1(\add_93/carry[8] ), .IN2(N184), .Q(N200) );
  AND2X1 U334 ( .IN1(N183), .IN2(\add_93/carry[7] ), .Q(\add_93/carry[8] ) );
  XOR2X1 U335 ( .IN1(\add_93/carry[7] ), .IN2(N183), .Q(N199) );
  AND2X1 U336 ( .IN1(N182), .IN2(N181), .Q(\add_93/carry[7] ) );
  XOR2X1 U337 ( .IN1(N181), .IN2(N182), .Q(N198) );
  AND2X1 U338 ( .IN1(n251), .IN2(mybest[14]), .Q(n235) );
  NOR2X0 U339 ( .IN1(n237), .IN2(data_in[0]), .QN(n220) );
  AND2X1 U340 ( .IN1(n238), .IN2(n220), .Q(n221) );
  OA222X1 U341 ( .IN1(mybest[2]), .IN2(n239), .IN3(mybest[1]), .IN4(n221), 
        .IN5(n220), .IN6(n238), .Q(n222) );
  AO221X1 U342 ( .IN1(mybest[2]), .IN2(n239), .IN3(mybest[3]), .IN4(n240), 
        .IN5(n222), .Q(n223) );
  OA221X1 U343 ( .IN1(mybest[4]), .IN2(n241), .IN3(mybest[3]), .IN4(n240), 
        .IN5(n223), .Q(n224) );
  AO221X1 U344 ( .IN1(mybest[4]), .IN2(n241), .IN3(mybest[5]), .IN4(n242), 
        .IN5(n224), .Q(n225) );
  OA221X1 U345 ( .IN1(mybest[6]), .IN2(n243), .IN3(mybest[5]), .IN4(n242), 
        .IN5(n225), .Q(n226) );
  AO221X1 U346 ( .IN1(mybest[6]), .IN2(n243), .IN3(mybest[7]), .IN4(n244), 
        .IN5(n226), .Q(n227) );
  OA221X1 U347 ( .IN1(mybest[8]), .IN2(n245), .IN3(mybest[7]), .IN4(n244), 
        .IN5(n227), .Q(n228) );
  AO221X1 U348 ( .IN1(mybest[8]), .IN2(n245), .IN3(mybest[9]), .IN4(n246), 
        .IN5(n228), .Q(n229) );
  OA221X1 U349 ( .IN1(mybest[9]), .IN2(n246), .IN3(mybest[10]), .IN4(n247), 
        .IN5(n229), .Q(n230) );
  AO221X1 U350 ( .IN1(mybest[10]), .IN2(n247), .IN3(mybest[11]), .IN4(n248), 
        .IN5(n230), .Q(n231) );
  OA221X1 U351 ( .IN1(mybest[12]), .IN2(n249), .IN3(mybest[11]), .IN4(n248), 
        .IN5(n231), .Q(n232) );
  AO221X1 U352 ( .IN1(mybest[12]), .IN2(n249), .IN3(mybest[13]), .IN4(n250), 
        .IN5(n232), .Q(n233) );
  OA221X1 U353 ( .IN1(mybest[14]), .IN2(n251), .IN3(mybest[13]), .IN4(n250), 
        .IN5(n233), .Q(n234) );
  OA22X1 U354 ( .IN1(mybest[15]), .IN2(n252), .IN3(n235), .IN4(n234), .Q(n236)
         );
  AO21X1 U355 ( .IN1(mybest[15]), .IN2(n252), .IN3(n236), .Q(N98) );
  XOR2X1 U356 ( .IN1(neighborCount[15]), .IN2(N86), .Q(n258) );
  XOR2X1 U357 ( .IN1(neighborCount[2]), .IN2(N73), .Q(n257) );
  NOR2X0 U358 ( .IN1(n275), .IN2(N88), .QN(n253) );
  OA22X1 U359 ( .IN1(neighborCount[1]), .IN2(n253), .IN3(n253), .IN4(n277), 
        .Q(n256) );
  AND2X1 U360 ( .IN1(N88), .IN2(n275), .Q(n254) );
  OA22X1 U361 ( .IN1(n254), .IN2(n276), .IN3(N89), .IN4(n254), .Q(n255) );
  OR4X1 U362 ( .IN1(n258), .IN2(n257), .IN3(n256), .IN4(n255), .Q(n274) );
  XNOR2X1 U363 ( .IN1(neighborCount[6]), .IN2(N77), .Q(n262) );
  XNOR2X1 U364 ( .IN1(neighborCount[5]), .IN2(N76), .Q(n261) );
  XNOR2X1 U365 ( .IN1(neighborCount[4]), .IN2(N75), .Q(n260) );
  XNOR2X1 U366 ( .IN1(neighborCount[3]), .IN2(N74), .Q(n259) );
  NAND4X0 U367 ( .IN1(n262), .IN2(n261), .IN3(n260), .IN4(n259), .QN(n273) );
  XNOR2X1 U368 ( .IN1(neighborCount[10]), .IN2(N81), .Q(n266) );
  XNOR2X1 U369 ( .IN1(neighborCount[9]), .IN2(N80), .Q(n265) );
  XNOR2X1 U370 ( .IN1(neighborCount[8]), .IN2(N79), .Q(n264) );
  XNOR2X1 U371 ( .IN1(neighborCount[7]), .IN2(N78), .Q(n263) );
  NAND4X0 U372 ( .IN1(n266), .IN2(n265), .IN3(n264), .IN4(n263), .QN(n272) );
  XNOR2X1 U373 ( .IN1(neighborCount[14]), .IN2(N85), .Q(n270) );
  XNOR2X1 U374 ( .IN1(neighborCount[13]), .IN2(N84), .Q(n269) );
  XNOR2X1 U375 ( .IN1(neighborCount[12]), .IN2(N83), .Q(n268) );
  XNOR2X1 U376 ( .IN1(neighborCount[11]), .IN2(N82), .Q(n267) );
  NAND4X0 U377 ( .IN1(n270), .IN2(n269), .IN3(n268), .IN4(n267), .QN(n271) );
  NOR4X0 U378 ( .IN1(n274), .IN2(n273), .IN3(n272), .IN4(n271), .QN(N99) );
  NOR2X0 U379 ( .IN1(k[11]), .IN2(k[10]), .QN(n283) );
  AO21X1 U380 ( .IN1(k[1]), .IN2(k[0]), .IN3(k[2]), .Q(n278) );
  NAND2X0 U381 ( .IN1(k[3]), .IN2(n278), .QN(n282) );
  NOR3X0 U382 ( .IN1(k[12]), .IN2(k[14]), .IN3(k[13]), .QN(n281) );
  OR4X1 U383 ( .IN1(k[7]), .IN2(k[6]), .IN3(k[9]), .IN4(k[8]), .Q(n279) );
  NOR4X0 U384 ( .IN1(n279), .IN2(k[15]), .IN3(k[5]), .IN4(k[4]), .QN(n280) );
  NAND4X0 U385 ( .IN1(n283), .IN2(n282), .IN3(n281), .IN4(n280), .QN(N154) );
  AND2X1 U386 ( .IN1(address[0]), .IN2(n288), .Q(n134) );
  AND2X1 U387 ( .IN1(kTemp[0]), .IN2(n93), .Q(n203) );
endmodule

