
module amISink ( clock, nrst, en, start, address, wr_en, data_in, data_out, 
        forAggregation, done );
  output [10:0] address;
  input [15:0] data_in;
  output [15:0] data_out;
  input clock, nrst, en, start;
  output wr_en, forAggregation, done;
  wire   N52, N55, N57, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40;
  wire   [2:0] state;
  assign data_out[1] = 1'b0;
  assign data_out[2] = 1'b0;
  assign data_out[3] = 1'b0;
  assign data_out[4] = 1'b0;
  assign data_out[5] = 1'b0;
  assign data_out[6] = 1'b0;
  assign data_out[7] = 1'b0;
  assign data_out[8] = 1'b0;
  assign data_out[9] = 1'b0;
  assign data_out[10] = 1'b0;
  assign data_out[11] = 1'b0;
  assign data_out[12] = 1'b0;
  assign data_out[13] = 1'b0;
  assign data_out[14] = 1'b0;
  assign data_out[15] = 1'b0;
  assign address[10] = 1'b0;
  assign address[9] = 1'b0;
  assign address[8] = 1'b0;
  assign address[7] = 1'b0;
  assign address[6] = 1'b0;
  assign address[5] = 1'b0;
  assign address[4] = 1'b0;
  assign address[3] = 1'b0;
  assign address[2] = 1'b0;
  assign address[0] = 1'b0;

  DFFX1 \state_reg[0]  ( .D(N55), .CLK(clock), .Q(state[0]), .QN(n10) );
  DFFX1 \state_reg[2]  ( .D(N57), .CLK(clock), .Q(state[2]), .QN(n8) );
  DFFSSRX1 \state_reg[1]  ( .D(n2), .RSTB(nrst), .SETB(n1), .CLK(clock), .Q(
        state[1]), .QN(n9) );
  DFFX1 forAggregation_buf_reg ( .D(n40), .CLK(clock), .Q(forAggregation) );
  DFFX1 done_buf_reg ( .D(n39), .CLK(clock), .Q(done) );
  DFFX1 data_out_buf_reg ( .D(n38), .CLK(clock), .Q(data_out[0]) );
  DFFX1 \address_count_reg[1]  ( .D(n37), .CLK(clock), .Q(address[1]) );
  DFFX1 wr_en_buf_reg ( .D(n36), .CLK(clock), .Q(wr_en) );
  INVX0 U13 ( .INP(n15), .ZN(n1) );
  AO22X1 U35 ( .IN1(wr_en), .IN2(n3), .IN3(n15), .IN4(n16), .Q(n36) );
  NAND3X0 U36 ( .IN1(n17), .IN2(n18), .IN3(n7), .QN(n16) );
  AO22X1 U37 ( .IN1(address[1]), .IN2(n4), .IN3(n15), .IN4(N52), .Q(n37) );
  AO22X1 U38 ( .IN1(done), .IN2(n19), .IN3(n20), .IN4(n21), .Q(n39) );
  AOI21X1 U39 ( .IN1(n21), .IN2(state[0]), .IN3(n22), .QN(n19) );
  AO22X1 U40 ( .IN1(n23), .IN2(forAggregation), .IN3(n5), .IN4(nrst), .Q(n40)
         );
  AO221X1 U41 ( .IN1(state[2]), .IN2(n24), .IN3(n25), .IN4(n12), .IN5(n26), 
        .Q(N57) );
  AO21X1 U42 ( .IN1(state[1]), .IN2(state[0]), .IN3(n11), .Q(n26) );
  OA221X1 U43 ( .IN1(n29), .IN2(n27), .IN3(n13), .IN4(n30), .IN5(n18), .Q(n28)
         );
  NAND3X0 U44 ( .IN1(n31), .IN2(n17), .IN3(n7), .QN(N52) );
  AO21X1 U45 ( .IN1(en), .IN2(n25), .IN3(n11), .Q(n22) );
  NAND3X0 U46 ( .IN1(n9), .IN2(n8), .IN3(state[0]), .QN(n27) );
  AND4X1 U47 ( .IN1(n32), .IN2(n33), .IN3(n34), .IN4(n35), .Q(n29) );
  NOR4X0 U48 ( .IN1(data_in[9]), .IN2(data_in[8]), .IN3(data_in[7]), .IN4(
        data_in[6]), .QN(n35) );
  NOR4X0 U49 ( .IN1(data_in[5]), .IN2(data_in[4]), .IN3(data_in[3]), .IN4(
        data_in[2]), .QN(n34) );
  NOR4X0 U50 ( .IN1(data_in[1]), .IN2(data_in[15]), .IN3(data_in[14]), .IN4(
        data_in[13]), .QN(n33) );
  NOR4X0 U51 ( .IN1(data_in[12]), .IN2(data_in[11]), .IN3(data_in[10]), .IN4(
        n14), .QN(n32) );
  OR3X1 U52 ( .IN1(n24), .IN2(state[2]), .IN3(n13), .Q(n31) );
  INVX0 U53 ( .INP(n17), .ZN(n5) );
  NOR2X0 U54 ( .IN1(n11), .IN2(n27), .QN(n15) );
  NAND2X1 U55 ( .IN1(n29), .IN2(n6), .QN(n17) );
  INVX0 U56 ( .INP(n22), .ZN(n7) );
  INVX0 U57 ( .INP(n27), .ZN(n6) );
  INVX0 U58 ( .INP(n18), .ZN(n2) );
  INVX0 U59 ( .INP(nrst), .ZN(n11) );
  INVX0 U60 ( .INP(N52), .ZN(n4) );
  INVX0 U61 ( .INP(en), .ZN(n12) );
  NOR2X0 U62 ( .IN1(n19), .IN2(n11), .QN(n20) );
  NOR2X0 U63 ( .IN1(n28), .IN2(n11), .QN(N55) );
  NAND2X1 U64 ( .IN1(n10), .IN2(n8), .QN(n30) );
  NOR2X0 U65 ( .IN1(n6), .IN2(n22), .QN(n23) );
  OA21X1 U66 ( .IN1(n5), .IN2(data_out[0]), .IN3(nrst), .Q(n38) );
  INVX0 U67 ( .INP(n16), .ZN(n3) );
  INVX0 U68 ( .INP(start), .ZN(n13) );
  INVX0 U69 ( .INP(data_in[0]), .ZN(n14) );
  NOR2X0 U70 ( .IN1(n9), .IN2(state[2]), .QN(n21) );
  NAND2X1 U71 ( .IN1(n9), .IN2(n10), .QN(n24) );
  NAND2X1 U72 ( .IN1(n21), .IN2(n10), .QN(n18) );
  NOR2X0 U73 ( .IN1(n8), .IN2(n24), .QN(n25) );
endmodule

