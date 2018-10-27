
module mux_11bit ( select, out, in0, in1, in2, in3, in4, in5, in6, in7 );
  input [2:0] select;
  output [10:0] out;
  input [10:0] in0;
  input [10:0] in1;
  input [10:0] in2;
  input [10:0] in3;
  input [10:0] in4;
  input [10:0] in5;
  input [10:0] in6;
  input [10:0] in7;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n1, n2, n3;

  HS65_GS_NOR3X4 U1 ( .A(n3), .B(select[1]), .C(n1), .Z(n14) );
  HS65_GS_NOR3X4 U2 ( .A(n2), .B(select[0]), .C(n1), .Z(n13) );
  HS65_GS_NOR3X4 U3 ( .A(select[0]), .B(select[1]), .C(n1), .Z(n15) );
  HS65_GS_NOR3X4 U4 ( .A(select[0]), .B(select[2]), .C(n2), .Z(n8) );
  HS65_GS_NOR3X4 U5 ( .A(n3), .B(select[2]), .C(n2), .Z(n7) );
  HS65_GS_NOR3X4 U6 ( .A(select[1]), .B(select[2]), .C(select[0]), .Z(n10) );
  HS65_GS_NOR3X4 U7 ( .A(select[1]), .B(select[2]), .C(n3), .Z(n11) );
  HS65_GS_NOR3X4 U8 ( .A(n2), .B(n3), .C(n1), .Z(n12) );
  HS65_GS_NAND3X5 U9 ( .A(n52), .B(n53), .C(n54), .Z(out[0]) );
  HS65_GS_AOI22X6 U10 ( .A(in5[0]), .B(n14), .C(in4[0]), .D(n15), .Z(n52) );
  HS65_GS_AOI212X4 U11 ( .A(in3[0]), .B(n7), .C(in2[0]), .D(n8), .E(n55), .Z(
        n54) );
  HS65_GS_AOI22X6 U12 ( .A(in7[0]), .B(n12), .C(in6[0]), .D(n13), .Z(n53) );
  HS65_GS_NAND3X5 U13 ( .A(n40), .B(n41), .C(n42), .Z(out[2]) );
  HS65_GS_AOI22X6 U14 ( .A(in5[2]), .B(n14), .C(in4[2]), .D(n15), .Z(n40) );
  HS65_GS_AOI212X4 U15 ( .A(in3[2]), .B(n7), .C(in2[2]), .D(n8), .E(n43), .Z(
        n42) );
  HS65_GS_AOI22X6 U16 ( .A(in7[2]), .B(n12), .C(in6[2]), .D(n13), .Z(n41) );
  HS65_GS_NAND3X5 U17 ( .A(n32), .B(n33), .C(n34), .Z(out[4]) );
  HS65_GS_AOI22X6 U18 ( .A(in5[4]), .B(n14), .C(in4[4]), .D(n15), .Z(n32) );
  HS65_GS_AOI212X4 U19 ( .A(in3[4]), .B(n7), .C(in2[4]), .D(n8), .E(n35), .Z(
        n34) );
  HS65_GS_AOI22X6 U20 ( .A(in7[4]), .B(n12), .C(in6[4]), .D(n13), .Z(n33) );
  HS65_GS_NAND3X5 U21 ( .A(n28), .B(n29), .C(n30), .Z(out[5]) );
  HS65_GS_AOI22X6 U22 ( .A(in5[5]), .B(n14), .C(in4[5]), .D(n15), .Z(n28) );
  HS65_GS_AOI212X4 U23 ( .A(in3[5]), .B(n7), .C(in2[5]), .D(n8), .E(n31), .Z(
        n30) );
  HS65_GS_AOI22X6 U24 ( .A(in7[5]), .B(n12), .C(in6[5]), .D(n13), .Z(n29) );
  HS65_GS_NAND3X5 U25 ( .A(n24), .B(n25), .C(n26), .Z(out[6]) );
  HS65_GS_AOI22X6 U26 ( .A(in5[6]), .B(n14), .C(in4[6]), .D(n15), .Z(n24) );
  HS65_GS_AOI212X4 U27 ( .A(in3[6]), .B(n7), .C(in2[6]), .D(n8), .E(n27), .Z(
        n26) );
  HS65_GS_AOI22X6 U28 ( .A(in7[6]), .B(n12), .C(in6[6]), .D(n13), .Z(n25) );
  HS65_GS_NAND3X5 U29 ( .A(n16), .B(n17), .C(n18), .Z(out[8]) );
  HS65_GS_AOI22X6 U30 ( .A(in5[8]), .B(n14), .C(in4[8]), .D(n15), .Z(n16) );
  HS65_GS_AOI212X4 U31 ( .A(in3[8]), .B(n7), .C(in2[8]), .D(n8), .E(n19), .Z(
        n18) );
  HS65_GS_AOI22X6 U32 ( .A(in7[8]), .B(n12), .C(in6[8]), .D(n13), .Z(n17) );
  HS65_GS_NAND3X5 U33 ( .A(n44), .B(n45), .C(n46), .Z(out[1]) );
  HS65_GS_AOI22X6 U34 ( .A(in5[1]), .B(n14), .C(in4[1]), .D(n15), .Z(n44) );
  HS65_GS_AOI212X4 U35 ( .A(in3[1]), .B(n7), .C(in2[1]), .D(n8), .E(n47), .Z(
        n46) );
  HS65_GS_AOI22X6 U36 ( .A(in7[1]), .B(n12), .C(in6[1]), .D(n13), .Z(n45) );
  HS65_GS_NAND3X5 U37 ( .A(n36), .B(n37), .C(n38), .Z(out[3]) );
  HS65_GS_AOI22X6 U38 ( .A(in5[3]), .B(n14), .C(in4[3]), .D(n15), .Z(n36) );
  HS65_GS_AOI212X4 U39 ( .A(in3[3]), .B(n7), .C(in2[3]), .D(n8), .E(n39), .Z(
        n38) );
  HS65_GS_AOI22X6 U40 ( .A(in7[3]), .B(n12), .C(in6[3]), .D(n13), .Z(n37) );
  HS65_GS_NAND3X5 U41 ( .A(n20), .B(n21), .C(n22), .Z(out[7]) );
  HS65_GS_AOI22X6 U42 ( .A(in5[7]), .B(n14), .C(in4[7]), .D(n15), .Z(n20) );
  HS65_GS_AOI212X4 U43 ( .A(in3[7]), .B(n7), .C(in2[7]), .D(n8), .E(n23), .Z(
        n22) );
  HS65_GS_AOI22X6 U44 ( .A(in7[7]), .B(n12), .C(in6[7]), .D(n13), .Z(n21) );
  HS65_GS_NAND3X5 U45 ( .A(n4), .B(n5), .C(n6), .Z(out[9]) );
  HS65_GS_AOI22X6 U46 ( .A(in5[9]), .B(n14), .C(in4[9]), .D(n15), .Z(n4) );
  HS65_GS_AOI212X4 U47 ( .A(in3[9]), .B(n7), .C(in2[9]), .D(n8), .E(n9), .Z(n6) );
  HS65_GS_AOI22X6 U48 ( .A(in7[9]), .B(n12), .C(in6[9]), .D(n13), .Z(n5) );
  HS65_GS_NAND3X5 U49 ( .A(n48), .B(n49), .C(n50), .Z(out[10]) );
  HS65_GS_AOI22X6 U50 ( .A(in5[10]), .B(n14), .C(in4[10]), .D(n15), .Z(n48) );
  HS65_GS_AOI212X4 U51 ( .A(in3[10]), .B(n7), .C(in2[10]), .D(n8), .E(n51), 
        .Z(n50) );
  HS65_GS_AOI22X6 U52 ( .A(in7[10]), .B(n12), .C(in6[10]), .D(n13), .Z(n49) );
  HS65_GS_AO22X9 U53 ( .A(in0[0]), .B(n10), .C(in1[0]), .D(n11), .Z(n55) );
  HS65_GS_AO22X9 U54 ( .A(in0[1]), .B(n10), .C(in1[1]), .D(n11), .Z(n47) );
  HS65_GS_AO22X9 U55 ( .A(in0[2]), .B(n10), .C(in1[2]), .D(n11), .Z(n43) );
  HS65_GS_AO22X9 U56 ( .A(in0[3]), .B(n10), .C(in1[3]), .D(n11), .Z(n39) );
  HS65_GS_AO22X9 U57 ( .A(in0[4]), .B(n10), .C(in1[4]), .D(n11), .Z(n35) );
  HS65_GS_AO22X9 U58 ( .A(in0[5]), .B(n10), .C(in1[5]), .D(n11), .Z(n31) );
  HS65_GS_AO22X9 U59 ( .A(in0[6]), .B(n10), .C(in1[6]), .D(n11), .Z(n27) );
  HS65_GS_AO22X9 U60 ( .A(in0[7]), .B(n10), .C(in1[7]), .D(n11), .Z(n23) );
  HS65_GS_AO22X9 U61 ( .A(in0[8]), .B(n10), .C(in1[8]), .D(n11), .Z(n19) );
  HS65_GS_AO22X9 U62 ( .A(in0[9]), .B(n10), .C(in1[9]), .D(n11), .Z(n9) );
  HS65_GS_AO22X9 U63 ( .A(in0[10]), .B(n10), .C(in1[10]), .D(n11), .Z(n51) );
  HS65_GS_IVX9 U64 ( .A(select[2]), .Z(n1) );
  HS65_GS_IVX9 U65 ( .A(select[1]), .Z(n2) );
  HS65_GS_IVX9 U66 ( .A(select[0]), .Z(n3) );
endmodule


module mux_16bit ( select, out, in0, in1, in2, in3, in4, in5, in6, in7 );
  input [2:0] select;
  output [15:0] out;
  input [15:0] in0;
  input [15:0] in1;
  input [15:0] in2;
  input [15:0] in3;
  input [15:0] in4;
  input [15:0] in5;
  input [15:0] in6;
  input [15:0] in7;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n1, n2, n3;

  HS65_GS_NOR3X4 U1 ( .A(select[0]), .B(select[1]), .C(n1), .Z(n15) );
  HS65_GS_NOR3X4 U2 ( .A(n2), .B(select[0]), .C(n1), .Z(n13) );
  HS65_GS_NOR3X4 U3 ( .A(select[0]), .B(select[2]), .C(n2), .Z(n8) );
  HS65_GS_NOR3X4 U4 ( .A(n3), .B(select[2]), .C(n2), .Z(n7) );
  HS65_GS_NOR3X4 U5 ( .A(select[1]), .B(select[2]), .C(select[0]), .Z(n10) );
  HS65_GS_NOR3X4 U6 ( .A(select[1]), .B(select[2]), .C(n3), .Z(n11) );
  HS65_GS_AND3ABCX9 U7 ( .A(n2), .B(n3), .C(n1), .Z(n12) );
  HS65_GS_NAND3X5 U8 ( .A(n72), .B(n73), .C(n74), .Z(out[0]) );
  HS65_GS_AOI22X6 U9 ( .A(in7[0]), .B(n12), .C(in6[0]), .D(n13), .Z(n73) );
  HS65_GS_AOI22X6 U10 ( .A(in5[0]), .B(n14), .C(in4[0]), .D(n15), .Z(n72) );
  HS65_GS_AOI212X4 U11 ( .A(in3[0]), .B(n7), .C(in2[0]), .D(n8), .E(n75), .Z(
        n74) );
  HS65_GS_NAND3X5 U12 ( .A(n44), .B(n45), .C(n46), .Z(out[1]) );
  HS65_GS_AOI22X6 U13 ( .A(in7[1]), .B(n12), .C(in6[1]), .D(n13), .Z(n45) );
  HS65_GS_AOI22X6 U14 ( .A(in5[1]), .B(n14), .C(in4[1]), .D(n15), .Z(n44) );
  HS65_GS_AOI212X4 U15 ( .A(in3[1]), .B(n7), .C(in2[1]), .D(n8), .E(n47), .Z(
        n46) );
  HS65_GS_NAND3X5 U16 ( .A(n40), .B(n41), .C(n42), .Z(out[2]) );
  HS65_GS_AOI22X6 U17 ( .A(in7[2]), .B(n12), .C(in6[2]), .D(n13), .Z(n41) );
  HS65_GS_AOI22X6 U18 ( .A(in5[2]), .B(n14), .C(in4[2]), .D(n15), .Z(n40) );
  HS65_GS_AOI212X4 U19 ( .A(in3[2]), .B(n7), .C(in2[2]), .D(n8), .E(n43), .Z(
        n42) );
  HS65_GS_NAND3X5 U20 ( .A(n36), .B(n37), .C(n38), .Z(out[3]) );
  HS65_GS_AOI22X6 U21 ( .A(in7[3]), .B(n12), .C(in6[3]), .D(n13), .Z(n37) );
  HS65_GS_AOI22X6 U22 ( .A(in5[3]), .B(n14), .C(in4[3]), .D(n15), .Z(n36) );
  HS65_GS_AOI212X4 U23 ( .A(in3[3]), .B(n7), .C(in2[3]), .D(n8), .E(n39), .Z(
        n38) );
  HS65_GS_NAND3X5 U24 ( .A(n32), .B(n33), .C(n34), .Z(out[4]) );
  HS65_GS_AOI22X6 U25 ( .A(in7[4]), .B(n12), .C(in6[4]), .D(n13), .Z(n33) );
  HS65_GS_AOI22X6 U26 ( .A(in5[4]), .B(n14), .C(in4[4]), .D(n15), .Z(n32) );
  HS65_GS_AOI212X4 U27 ( .A(in3[4]), .B(n7), .C(in2[4]), .D(n8), .E(n35), .Z(
        n34) );
  HS65_GS_NAND3X5 U28 ( .A(n28), .B(n29), .C(n30), .Z(out[5]) );
  HS65_GS_AOI22X6 U29 ( .A(in7[5]), .B(n12), .C(in6[5]), .D(n13), .Z(n29) );
  HS65_GS_AOI22X6 U30 ( .A(in5[5]), .B(n14), .C(in4[5]), .D(n15), .Z(n28) );
  HS65_GS_AOI212X4 U31 ( .A(in3[5]), .B(n7), .C(in2[5]), .D(n8), .E(n31), .Z(
        n30) );
  HS65_GS_NAND3X5 U32 ( .A(n24), .B(n25), .C(n26), .Z(out[6]) );
  HS65_GS_AOI22X6 U33 ( .A(in7[6]), .B(n12), .C(in6[6]), .D(n13), .Z(n25) );
  HS65_GS_AOI22X6 U34 ( .A(in5[6]), .B(n14), .C(in4[6]), .D(n15), .Z(n24) );
  HS65_GS_AOI212X4 U35 ( .A(in3[6]), .B(n7), .C(in2[6]), .D(n8), .E(n27), .Z(
        n26) );
  HS65_GS_NAND3X5 U36 ( .A(n20), .B(n21), .C(n22), .Z(out[7]) );
  HS65_GS_AOI22X6 U37 ( .A(in7[7]), .B(n12), .C(in6[7]), .D(n13), .Z(n21) );
  HS65_GS_AOI22X6 U38 ( .A(in5[7]), .B(n14), .C(in4[7]), .D(n15), .Z(n20) );
  HS65_GS_AOI212X4 U39 ( .A(in3[7]), .B(n7), .C(in2[7]), .D(n8), .E(n23), .Z(
        n22) );
  HS65_GS_NAND3X5 U40 ( .A(n16), .B(n17), .C(n18), .Z(out[8]) );
  HS65_GS_AOI22X6 U41 ( .A(in7[8]), .B(n12), .C(in6[8]), .D(n13), .Z(n17) );
  HS65_GS_AOI22X6 U42 ( .A(in5[8]), .B(n14), .C(in4[8]), .D(n15), .Z(n16) );
  HS65_GS_AOI212X4 U43 ( .A(in3[8]), .B(n7), .C(in2[8]), .D(n8), .E(n19), .Z(
        n18) );
  HS65_GS_NAND3X5 U44 ( .A(n4), .B(n5), .C(n6), .Z(out[9]) );
  HS65_GS_AOI22X6 U45 ( .A(in7[9]), .B(n12), .C(in6[9]), .D(n13), .Z(n5) );
  HS65_GS_AOI22X6 U46 ( .A(in5[9]), .B(n14), .C(in4[9]), .D(n15), .Z(n4) );
  HS65_GS_AOI212X4 U47 ( .A(in3[9]), .B(n7), .C(in2[9]), .D(n8), .E(n9), .Z(n6) );
  HS65_GS_NAND3X5 U48 ( .A(n68), .B(n69), .C(n70), .Z(out[10]) );
  HS65_GS_AOI22X6 U49 ( .A(in7[10]), .B(n12), .C(in6[10]), .D(n13), .Z(n69) );
  HS65_GS_AOI22X6 U50 ( .A(in5[10]), .B(n14), .C(in4[10]), .D(n15), .Z(n68) );
  HS65_GS_AOI212X4 U51 ( .A(in3[10]), .B(n7), .C(in2[10]), .D(n8), .E(n71), 
        .Z(n70) );
  HS65_GS_NAND3X5 U52 ( .A(n64), .B(n65), .C(n66), .Z(out[11]) );
  HS65_GS_AOI22X6 U53 ( .A(in7[11]), .B(n12), .C(in6[11]), .D(n13), .Z(n65) );
  HS65_GS_AOI22X6 U54 ( .A(in5[11]), .B(n14), .C(in4[11]), .D(n15), .Z(n64) );
  HS65_GS_AOI212X4 U55 ( .A(in3[11]), .B(n7), .C(in2[11]), .D(n8), .E(n67), 
        .Z(n66) );
  HS65_GS_NAND3X5 U56 ( .A(n60), .B(n61), .C(n62), .Z(out[12]) );
  HS65_GS_AOI22X6 U57 ( .A(in7[12]), .B(n12), .C(in6[12]), .D(n13), .Z(n61) );
  HS65_GS_AOI22X6 U58 ( .A(in5[12]), .B(n14), .C(in4[12]), .D(n15), .Z(n60) );
  HS65_GS_AOI212X4 U59 ( .A(in3[12]), .B(n7), .C(in2[12]), .D(n8), .E(n63), 
        .Z(n62) );
  HS65_GS_NAND3X5 U60 ( .A(n56), .B(n57), .C(n58), .Z(out[13]) );
  HS65_GS_AOI22X6 U61 ( .A(in7[13]), .B(n12), .C(in6[13]), .D(n13), .Z(n57) );
  HS65_GS_AOI22X6 U62 ( .A(in5[13]), .B(n14), .C(in4[13]), .D(n15), .Z(n56) );
  HS65_GS_AOI212X4 U63 ( .A(in3[13]), .B(n7), .C(in2[13]), .D(n8), .E(n59), 
        .Z(n58) );
  HS65_GS_NAND3X5 U64 ( .A(n52), .B(n53), .C(n54), .Z(out[14]) );
  HS65_GS_AOI22X6 U65 ( .A(in7[14]), .B(n12), .C(in6[14]), .D(n13), .Z(n53) );
  HS65_GS_AOI22X6 U66 ( .A(in5[14]), .B(n14), .C(in4[14]), .D(n15), .Z(n52) );
  HS65_GS_AOI212X4 U67 ( .A(in3[14]), .B(n7), .C(in2[14]), .D(n8), .E(n55), 
        .Z(n54) );
  HS65_GS_NAND3X5 U68 ( .A(n48), .B(n49), .C(n50), .Z(out[15]) );
  HS65_GS_AOI22X6 U69 ( .A(in7[15]), .B(n12), .C(in6[15]), .D(n13), .Z(n49) );
  HS65_GS_AOI22X6 U70 ( .A(in5[15]), .B(n14), .C(in4[15]), .D(n15), .Z(n48) );
  HS65_GS_AOI212X4 U71 ( .A(in3[15]), .B(n7), .C(in2[15]), .D(n8), .E(n51), 
        .Z(n50) );
  HS65_GS_AO22X9 U72 ( .A(in0[0]), .B(n10), .C(in1[0]), .D(n11), .Z(n75) );
  HS65_GS_AO22X9 U73 ( .A(in0[1]), .B(n10), .C(in1[1]), .D(n11), .Z(n47) );
  HS65_GS_AO22X9 U74 ( .A(in0[2]), .B(n10), .C(in1[2]), .D(n11), .Z(n43) );
  HS65_GS_AO22X9 U75 ( .A(in0[3]), .B(n10), .C(in1[3]), .D(n11), .Z(n39) );
  HS65_GS_AO22X9 U76 ( .A(in0[4]), .B(n10), .C(in1[4]), .D(n11), .Z(n35) );
  HS65_GS_AO22X9 U77 ( .A(in0[5]), .B(n10), .C(in1[5]), .D(n11), .Z(n31) );
  HS65_GS_AO22X9 U78 ( .A(in0[6]), .B(n10), .C(in1[6]), .D(n11), .Z(n27) );
  HS65_GS_AO22X9 U79 ( .A(in0[7]), .B(n10), .C(in1[7]), .D(n11), .Z(n23) );
  HS65_GS_AO22X9 U80 ( .A(in0[8]), .B(n10), .C(in1[8]), .D(n11), .Z(n19) );
  HS65_GS_AO22X9 U81 ( .A(in0[9]), .B(n10), .C(in1[9]), .D(n11), .Z(n9) );
  HS65_GS_AO22X9 U82 ( .A(in0[10]), .B(n10), .C(in1[10]), .D(n11), .Z(n71) );
  HS65_GS_AO22X9 U83 ( .A(in0[11]), .B(n10), .C(in1[11]), .D(n11), .Z(n67) );
  HS65_GS_AO22X9 U84 ( .A(in0[12]), .B(n10), .C(in1[12]), .D(n11), .Z(n63) );
  HS65_GS_AO22X9 U85 ( .A(in0[13]), .B(n10), .C(in1[13]), .D(n11), .Z(n59) );
  HS65_GS_AO22X9 U86 ( .A(in0[14]), .B(n10), .C(in1[14]), .D(n11), .Z(n55) );
  HS65_GS_AO22X9 U87 ( .A(in0[15]), .B(n10), .C(in1[15]), .D(n11), .Z(n51) );
  HS65_GS_AND3ABCX9 U88 ( .A(n3), .B(select[1]), .C(n1), .Z(n14) );
  HS65_GS_IVX9 U89 ( .A(select[2]), .Z(n1) );
  HS65_GS_IVX9 U90 ( .A(select[1]), .Z(n2) );
  HS65_GS_IVX9 U91 ( .A(select[0]), .Z(n3) );
endmodule


module mux_1bit ( select, out, in0, in1, in2, in3, in4, in5, in6, in7 );
  input [2:0] select;
  input in0, in1, in2, in3, in4, in5, in6, in7;
  output out;
  wire   n4, n5, n6, n7, n8, n9, n1, n2, n3;

  HS65_GS_AOI22X6 U1 ( .A(in4), .B(n3), .C(in5), .D(select[0]), .Z(n9) );
  HS65_GS_AOI22X6 U2 ( .A(in0), .B(n3), .C(select[0]), .D(in1), .Z(n7) );
  HS65_GS_AOI22X6 U3 ( .A(in6), .B(n3), .C(in7), .D(select[0]), .Z(n8) );
  HS65_GS_AOI22X6 U4 ( .A(in2), .B(n3), .C(in3), .D(select[0]), .Z(n6) );
  HS65_GS_AO22X9 U5 ( .A(select[2]), .B(n4), .C(n5), .D(n1), .Z(out) );
  HS65_GS_IVX9 U6 ( .A(select[2]), .Z(n1) );
  HS65_GS_OAI22X6 U7 ( .A(n6), .B(n2), .C(select[1]), .D(n7), .Z(n5) );
  HS65_GS_OAI22X6 U8 ( .A(n8), .B(n2), .C(select[1]), .D(n9), .Z(n4) );
  HS65_GS_IVX9 U9 ( .A(select[0]), .Z(n3) );
  HS65_GS_IVX9 U10 ( .A(select[1]), .Z(n2) );
endmodule


module learnCosts_DW01_inc_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HS65_GS_HA1X4 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .CO(carry[15]), .S0(
        SUM[14]) );
  HS65_GS_HA1X4 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .CO(carry[7]), .S0(SUM[6])
         );
  HS65_GS_HA1X4 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .CO(carry[5]), .S0(SUM[4])
         );
  HS65_GS_HA1X4 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .CO(carry[4]), .S0(SUM[3])
         );
  HS65_GS_HA1X4 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .CO(carry[6]), .S0(SUM[5])
         );
  HS65_GS_HA1X4 U1_1_1 ( .A0(A[1]), .B0(A[0]), .CO(carry[2]), .S0(SUM[1]) );
  HS65_GS_HA1X4 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .CO(carry[9]), .S0(SUM[8])
         );
  HS65_GS_HA1X4 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .CO(carry[8]), .S0(SUM[7])
         );
  HS65_GS_HA1X4 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .CO(carry[3]), .S0(SUM[2])
         );
  HS65_GS_HA1X4 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .CO(carry[14]), .S0(
        SUM[13]) );
  HS65_GS_HA1X4 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .CO(carry[11]), .S0(
        SUM[10]) );
  HS65_GS_HA1X4 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .CO(carry[13]), .S0(
        SUM[12]) );
  HS65_GS_HA1X4 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .CO(carry[12]), .S0(
        SUM[11]) );
  HS65_GS_HA1X4 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .CO(carry[10]), .S0(SUM[9])
         );
  HS65_GS_IVX9 U1 ( .A(A[0]), .Z(SUM[0]) );
  HS65_GSS_XOR2X3 U2 ( .A(carry[15]), .B(A[15]), .Z(SUM[15]) );
endmodule


module learnCosts_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HS65_GS_HA1X4 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .CO(carry[15]), .S0(
        SUM[14]) );
  HS65_GS_HA1X4 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .CO(carry[9]), .S0(SUM[8])
         );
  HS65_GS_HA1X4 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .CO(carry[8]), .S0(SUM[7])
         );
  HS65_GS_HA1X4 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .CO(carry[7]), .S0(SUM[6])
         );
  HS65_GS_HA1X4 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .CO(carry[5]), .S0(SUM[4])
         );
  HS65_GS_HA1X4 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .CO(carry[4]), .S0(SUM[3])
         );
  HS65_GS_HA1X4 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .CO(carry[6]), .S0(SUM[5])
         );
  HS65_GS_HA1X4 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .CO(carry[3]), .S0(SUM[2])
         );
  HS65_GS_HA1X4 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .CO(carry[13]), .S0(
        SUM[12]) );
  HS65_GS_HA1X4 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .CO(carry[12]), .S0(
        SUM[11]) );
  HS65_GS_HA1X4 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .CO(carry[14]), .S0(
        SUM[13]) );
  HS65_GS_HA1X4 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .CO(carry[11]), .S0(
        SUM[10]) );
  HS65_GS_HA1X4 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .CO(carry[10]), .S0(SUM[9])
         );
  HS65_GS_HA1X4 U1_1_1 ( .A0(A[1]), .B0(A[0]), .CO(carry[2]), .S0(SUM[1]) );
  HS65_GS_IVX9 U1 ( .A(A[0]), .Z(SUM[0]) );
  HS65_GSS_XOR2X3 U2 ( .A(carry[15]), .B(A[15]), .Z(SUM[15]) );
endmodule


module learnCosts_DW01_inc_2 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HS65_GS_HA1X4 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .CO(carry[15]), .S0(
        SUM[14]) );
  HS65_GS_HA1X4 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .CO(carry[3]), .S0(SUM[2])
         );
  HS65_GS_HA1X4 U1_1_1 ( .A0(A[1]), .B0(A[0]), .CO(carry[2]), .S0(SUM[1]) );
  HS65_GS_HA1X4 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .CO(carry[8]), .S0(SUM[7])
         );
  HS65_GS_HA1X4 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .CO(carry[5]), .S0(SUM[4])
         );
  HS65_GS_HA1X4 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .CO(carry[4]), .S0(SUM[3])
         );
  HS65_GS_HA1X4 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .CO(carry[9]), .S0(SUM[8])
         );
  HS65_GS_HA1X4 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .CO(carry[6]), .S0(SUM[5])
         );
  HS65_GS_HA1X4 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .CO(carry[7]), .S0(SUM[6])
         );
  HS65_GS_HA1X4 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .CO(carry[13]), .S0(
        SUM[12]) );
  HS65_GS_HA1X4 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .CO(carry[12]), .S0(
        SUM[11]) );
  HS65_GS_HA1X4 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .CO(carry[14]), .S0(
        SUM[13]) );
  HS65_GS_HA1X4 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .CO(carry[11]), .S0(
        SUM[10]) );
  HS65_GS_HA1X4 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .CO(carry[10]), .S0(SUM[9])
         );
  HS65_GS_IVX9 U1 ( .A(A[0]), .Z(SUM[0]) );
  HS65_GSS_XOR2X3 U2 ( .A(carry[15]), .B(A[15]), .Z(SUM[15]) );
endmodule


module learnCosts_DW01_add_11 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [10:1] carry;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  HS65_GS_FA1X4 U1_3 ( .A0(A[3]), .B0(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S0(SUM[3]) );
  HS65_GS_FA1X4 U1_4 ( .A0(A[4]), .B0(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S0(SUM[4]) );
  HS65_GS_FA1X4 U1_5 ( .A0(A[5]), .B0(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S0(SUM[5]) );
  HS65_GS_FA1X4 U1_6 ( .A0(A[6]), .B0(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S0(SUM[6]) );
  HS65_GS_FA1X4 U1_9 ( .A0(A[9]), .B0(B[9]), .CI(carry[9]), .CO(carry[10]), 
        .S0(SUM[9]) );
  HS65_GS_FA1X4 U1_8 ( .A0(A[8]), .B0(B[8]), .CI(carry[8]), .CO(carry[9]), 
        .S0(SUM[8]) );
  HS65_GS_FA1X4 U1_7 ( .A0(A[7]), .B0(B[7]), .CI(carry[7]), .CO(carry[8]), 
        .S0(SUM[7]) );
  HS65_GS_FA1X4 U1_2 ( .A0(A[2]), .B0(B[2]), .CI(n1), .CO(carry[3]), .S0(
        SUM[2]) );
  HS65_GSS_XOR3X2 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .Z(SUM[10]) );
  HS65_GS_AND2X4 U1 ( .A(A[1]), .B(B[1]), .Z(n1) );
  HS65_GSS_XOR2X6 U2 ( .A(A[1]), .B(B[1]), .Z(SUM[1]) );
endmodule


module learnCosts ( clock, nrst, en, fsourceID, fbatteryStat, fValue, 
        fclusterID, initial_epsilon, address, wr_en, data_in, data_out, done
 );
  input [15:0] fsourceID;
  input [15:0] fbatteryStat;
  input [15:0] fValue;
  input [15:0] fclusterID;
  input [15:0] initial_epsilon;
  output [10:0] address;
  input [15:0] data_in;
  output [15:0] data_out;
  input clock, nrst, en;
  output wr_en, done;
  wire   reinit, found, N188, N191, N192, N193, N194, N195, N196, N197, N198,
         N199, N200, N203, N212, N213, N214, N215, N216, N217, N218, N219,
         N220, N221, N222, N223, N224, N225, N226, N227, N228, N229, N230,
         N231, N234, N237, N238, N239, N240, N241, N242, N243, N244, N245,
         N246, N248, N249, N250, N251, N252, N253, N254, N255, N256, N257,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, N279, N280,
         N281, N282, N283, N284, N285, N286, N287, N288, N289, N290, N291,
         N292, N293, N294, N295, N296, N301, N302, N303, N304, N305, N306,
         N307, N312, N313, N314, N315, N316, N317, N318, N319, N325, N326,
         N328, N329, N330, N331, N332, N333, N334, N339, N340, N341, N342,
         N343, N344, N345, N350, N351, N352, N353, N354, N355, N356, N360,
         N361, N362, N363, N364, N365, N366, N367, N375, N376, N377, N378,
         N383, N384, N385, N386, N387, N388, N389, N390, N391, N392, N442,
         N443, N444, N445, N446, N447, N448, N449, N450, N451, N452, N453,
         N454, N455, N456, N457, N582, N583, N584, N585, N586, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, \add_176/carry[10] ,
         \add_176/carry[9] , \add_176/carry[8] , \add_176/carry[7] ,
         \add_176/carry[6] , \add_176/carry[5] , \add_176/carry[4] ,
         \add_176/carry[3] , \add_169/carry[10] , \add_169/carry[9] ,
         \add_169/carry[8] , \add_163/carry[10] , \add_163/carry[9] ,
         \add_163/carry[8] , \add_163/carry[7] , \add_163/carry[6] ,
         \add_163/carry[5] , \add_157/carry[10] , \add_157/carry[9] ,
         \add_157/carry[8] , \add_157/carry[7] , \add_157/carry[6] ,
         \add_157/carry[5] , \add_151/carry[10] , \add_151/carry[9] ,
         \add_151/carry[8] , \add_151/carry[7] , \add_151/carry[6] ,
         \add_151/carry[5] , \add_144/carry[10] , \add_144/carry[9] ,
         \add_144/carry[8] , \add_144/carry[7] , \add_144/carry[6] ,
         \add_144/carry[5] , \add_114/carry[10] , \add_114/carry[9] ,
         \add_114/carry[8] , \add_114/carry[7] , \add_114/carry[6] ,
         \add_114/carry[5] , \add_108/carry[10] , \add_108/carry[9] ,
         \add_108/carry[8] , \add_108/carry[7] , \add_108/carry[6] ,
         \add_108/carry[5] , \add_84/carry[10] , \add_84/carry[9] ,
         \add_84/carry[8] , \add_84/carry[7] , \add_84/carry[6] ,
         \add_84/carry[5] , \add_84/carry[4] , \add_84/carry[3] ,
         \add_72/carry[10] , \add_72/carry[9] , \add_72/carry[8] ,
         \add_59/carry[10] , \add_59/carry[9] , \add_59/carry[8] ,
         \add_59/carry[7] , \add_59/carry[6] , \add_59/carry[5] ,
         \r158/carry[10] , \r158/carry[9] , \r158/carry[8] , \r158/carry[7] ,
         \r158/carry[6] , \r158/carry[5] , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n139, n140, n141, n142, n143, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429;
  wire   [4:0] state;
  wire   [15:0] n;
  wire   [15:0] neighborCount;
  wire   [15:0] k;
  wire   [15:0] knownSinkCount;
  wire   [10:0] sinkID_address_buf;

  HS65_GS_DFPQX9 \n_reg[0]  ( .D(n366), .CP(clock), .Q(N191) );
  HS65_GS_DFPQX9 \n_reg[15]  ( .D(n365), .CP(clock), .Q(n[15]) );
  HS65_GS_DFPQX9 \state_reg[3]  ( .D(N585), .CP(clock), .Q(state[3]) );
  HS65_GS_DFPQX9 \state_reg[0]  ( .D(N582), .CP(clock), .Q(state[0]) );
  HS65_GS_DFPQX9 \state_reg[1]  ( .D(N583), .CP(clock), .Q(state[1]) );
  HS65_GS_DFPQX9 \state_reg[4]  ( .D(N586), .CP(clock), .Q(state[4]) );
  HS65_GS_DFPQX9 found_reg ( .D(n300), .CP(clock), .Q(found) );
  HS65_GS_DFPQX9 done_buf_reg ( .D(n347), .CP(clock), .Q(done) );
  HS65_GS_DFPQX9 reinit_reg ( .D(n348), .CP(clock), .Q(reinit) );
  HS65_GS_DFPQX9 \n_reg[14]  ( .D(n301), .CP(clock), .Q(n[14]) );
  HS65_GS_DFPQX9 \n_reg[13]  ( .D(n302), .CP(clock), .Q(n[13]) );
  HS65_GS_DFPQX9 \n_reg[12]  ( .D(n303), .CP(clock), .Q(n[12]) );
  HS65_GS_DFPQX9 \n_reg[11]  ( .D(n304), .CP(clock), .Q(n[11]) );
  HS65_GS_DFPQX9 \n_reg[10]  ( .D(n305), .CP(clock), .Q(n[10]) );
  HS65_GS_DFPQX9 \n_reg[9]  ( .D(n306), .CP(clock), .Q(n[9]) );
  HS65_GS_DFPQX9 \n_reg[1]  ( .D(n314), .CP(clock), .Q(N192) );
  HS65_GS_DFPQX9 \state_reg[2]  ( .D(N584), .CP(clock), .Q(state[2]) );
  HS65_GS_DFPQX9 \neighborCount_reg[15]  ( .D(n331), .CP(clock), .Q(
        neighborCount[15]) );
  HS65_GS_DFPQX9 \neighborCount_reg[14]  ( .D(n332), .CP(clock), .Q(
        neighborCount[14]) );
  HS65_GS_DFPQX9 \neighborCount_reg[13]  ( .D(n333), .CP(clock), .Q(
        neighborCount[13]) );
  HS65_GS_DFPQX9 \neighborCount_reg[12]  ( .D(n334), .CP(clock), .Q(
        neighborCount[12]) );
  HS65_GS_DFPQX9 \neighborCount_reg[11]  ( .D(n335), .CP(clock), .Q(
        neighborCount[11]) );
  HS65_GS_DFPQX9 \neighborCount_reg[10]  ( .D(n336), .CP(clock), .Q(
        neighborCount[10]) );
  HS65_GS_DFPQX9 \neighborCount_reg[9]  ( .D(n337), .CP(clock), .Q(
        neighborCount[9]) );
  HS65_GS_DFPQX9 \sinkID_address_buf_reg[0]  ( .D(n282), .CP(clock), .Q(
        sinkID_address_buf[0]) );
  HS65_GS_DFPQX9 \sinkID_address_buf_reg[1]  ( .D(n281), .CP(clock), .Q(
        sinkID_address_buf[1]) );
  HS65_GS_DFPQX9 \sinkID_address_buf_reg[2]  ( .D(n280), .CP(clock), .Q(
        sinkID_address_buf[2]) );
  HS65_GS_DFPQX9 \sinkID_address_buf_reg[3]  ( .D(n279), .CP(clock), .Q(
        sinkID_address_buf[3]) );
  HS65_GS_DFPQX9 \sinkID_address_buf_reg[4]  ( .D(n278), .CP(clock), .Q(
        sinkID_address_buf[4]) );
  HS65_GS_DFPQX9 \sinkID_address_buf_reg[5]  ( .D(n277), .CP(clock), .Q(
        sinkID_address_buf[5]) );
  HS65_GS_DFPQX9 \sinkID_address_buf_reg[6]  ( .D(n276), .CP(clock), .Q(
        sinkID_address_buf[6]) );
  HS65_GS_DFPQX9 \sinkID_address_buf_reg[7]  ( .D(n275), .CP(clock), .Q(
        sinkID_address_buf[7]) );
  HS65_GS_DFPQX9 \sinkID_address_buf_reg[8]  ( .D(n274), .CP(clock), .Q(
        sinkID_address_buf[8]) );
  HS65_GS_DFPQX9 \sinkID_address_buf_reg[9]  ( .D(n273), .CP(clock), .Q(
        sinkID_address_buf[9]) );
  HS65_GS_DFPQX9 \sinkID_address_buf_reg[10]  ( .D(n272), .CP(clock), .Q(
        sinkID_address_buf[10]) );
  HS65_GS_DFPQX9 \k_reg[15]  ( .D(n364), .CP(clock), .Q(k[15]) );
  HS65_GS_DFPQX9 \k_reg[9]  ( .D(n354), .CP(clock), .Q(k[9]) );
  HS65_GS_DFPQX9 \k_reg[10]  ( .D(n353), .CP(clock), .Q(k[10]) );
  HS65_GS_DFPQX9 \k_reg[11]  ( .D(n352), .CP(clock), .Q(k[11]) );
  HS65_GS_DFPQX9 \k_reg[12]  ( .D(n351), .CP(clock), .Q(k[12]) );
  HS65_GS_DFPQX9 \k_reg[13]  ( .D(n350), .CP(clock), .Q(k[13]) );
  HS65_GS_DFPQX9 \k_reg[14]  ( .D(n349), .CP(clock), .Q(k[14]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[15]  ( .D(n315), .CP(clock), .Q(
        knownSinkCount[15]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[14]  ( .D(n316), .CP(clock), .Q(
        knownSinkCount[14]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[13]  ( .D(n317), .CP(clock), .Q(
        knownSinkCount[13]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[12]  ( .D(n318), .CP(clock), .Q(
        knownSinkCount[12]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[11]  ( .D(n319), .CP(clock), .Q(
        knownSinkCount[11]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[10]  ( .D(n320), .CP(clock), .Q(
        knownSinkCount[10]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[9]  ( .D(n321), .CP(clock), .Q(
        knownSinkCount[9]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[8]  ( .D(n322), .CP(clock), .Q(
        knownSinkCount[8]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[7]  ( .D(n323), .CP(clock), .Q(
        knownSinkCount[7]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[6]  ( .D(n324), .CP(clock), .Q(
        knownSinkCount[6]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[5]  ( .D(n325), .CP(clock), .Q(
        knownSinkCount[5]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[4]  ( .D(n326), .CP(clock), .Q(
        knownSinkCount[4]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[3]  ( .D(n327), .CP(clock), .Q(
        knownSinkCount[3]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[2]  ( .D(n328), .CP(clock), .Q(
        knownSinkCount[2]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[1]  ( .D(n329), .CP(clock), .Q(
        knownSinkCount[1]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[0]  ( .D(n330), .CP(clock), .Q(
        knownSinkCount[0]) );
  HS65_GS_DFPQX9 wr_en_buf_reg ( .D(n283), .CP(clock), .Q(wr_en) );
  HS65_GS_DFPQX9 \data_out_buf_reg[15]  ( .D(n284), .CP(clock), .Q(
        data_out[15]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[14]  ( .D(n285), .CP(clock), .Q(
        data_out[14]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[13]  ( .D(n286), .CP(clock), .Q(
        data_out[13]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[12]  ( .D(n287), .CP(clock), .Q(
        data_out[12]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[11]  ( .D(n288), .CP(clock), .Q(
        data_out[11]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[10]  ( .D(n289), .CP(clock), .Q(
        data_out[10]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[9]  ( .D(n290), .CP(clock), .Q(data_out[9])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[8]  ( .D(n291), .CP(clock), .Q(data_out[8])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[7]  ( .D(n292), .CP(clock), .Q(data_out[7])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[6]  ( .D(n293), .CP(clock), .Q(data_out[6])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[5]  ( .D(n294), .CP(clock), .Q(data_out[5])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[4]  ( .D(n295), .CP(clock), .Q(data_out[4])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[3]  ( .D(n296), .CP(clock), .Q(data_out[3])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[2]  ( .D(n297), .CP(clock), .Q(data_out[2])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[1]  ( .D(n298), .CP(clock), .Q(data_out[1])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[0]  ( .D(n299), .CP(clock), .Q(data_out[0])
         );
  HS65_GS_DFPQX9 \address_count_reg[0]  ( .D(n271), .CP(clock), .Q(address[0])
         );
  HS65_GS_DFPQX9 \address_count_reg[1]  ( .D(n270), .CP(clock), .Q(address[1])
         );
  HS65_GS_DFPQX9 \address_count_reg[2]  ( .D(n269), .CP(clock), .Q(address[2])
         );
  HS65_GS_DFPQX9 \address_count_reg[3]  ( .D(n268), .CP(clock), .Q(address[3])
         );
  HS65_GS_DFPQX9 \address_count_reg[4]  ( .D(n267), .CP(clock), .Q(address[4])
         );
  HS65_GS_DFPQX9 \address_count_reg[5]  ( .D(n266), .CP(clock), .Q(address[5])
         );
  HS65_GS_DFPQX9 \address_count_reg[6]  ( .D(n265), .CP(clock), .Q(address[6])
         );
  HS65_GS_DFPQX9 \address_count_reg[7]  ( .D(n264), .CP(clock), .Q(address[7])
         );
  HS65_GS_DFPQX9 \address_count_reg[8]  ( .D(n263), .CP(clock), .Q(address[8])
         );
  HS65_GS_DFPQX9 \address_count_reg[9]  ( .D(n262), .CP(clock), .Q(address[9])
         );
  HS65_GS_DFPQX9 \address_count_reg[10]  ( .D(n261), .CP(clock), .Q(
        address[10]) );
  learnCosts_DW01_inc_0 add_198 ( .A({neighborCount[15:2], N326, N325}), .SUM(
        {N457, N456, N455, N454, N453, N452, N451, N450, N449, N448, N447, 
        N446, N445, N444, N443, N442}) );
  learnCosts_DW01_inc_1 add_75 ( .A({n[15:2], N192, N191}), .SUM({N231, N230, 
        N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, 
        N217, N216}) );
  learnCosts_DW01_inc_2 r160 ( .A({k[15:2], N249, N248}), .SUM({N296, N295, 
        N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, 
        N282, N281}) );
  learnCosts_DW01_add_11 r159 ( .A(sinkID_address_buf), .B({k[9:2], N249, N248, 
        1'b0}), .CI(1'b0), .SUM({N280, N279, N278, N277, N276, N275, N274, 
        N273, N272, N271, N270}) );
  HS65_GS_DFPQX9 \n_reg[8]  ( .D(n307), .CP(clock), .Q(n[8]) );
  HS65_GS_DFPQX9 \n_reg[7]  ( .D(n308), .CP(clock), .Q(n[7]) );
  HS65_GS_DFPQX9 \neighborCount_reg[6]  ( .D(n340), .CP(clock), .Q(
        neighborCount[6]) );
  HS65_GS_DFPQX9 \n_reg[6]  ( .D(n309), .CP(clock), .Q(n[6]) );
  HS65_GS_DFPQX9 \neighborCount_reg[4]  ( .D(n342), .CP(clock), .Q(
        neighborCount[4]) );
  HS65_GS_DFPQX9 \neighborCount_reg[3]  ( .D(n343), .CP(clock), .Q(
        neighborCount[3]) );
  HS65_GS_DFPQX9 \k_reg[2]  ( .D(n361), .CP(clock), .Q(k[2]) );
  HS65_GS_DFPQX9 \neighborCount_reg[5]  ( .D(n341), .CP(clock), .Q(
        neighborCount[5]) );
  HS65_GS_DFPQX9 \n_reg[4]  ( .D(n311), .CP(clock), .Q(n[4]) );
  HS65_GS_DFPQX9 \n_reg[3]  ( .D(n312), .CP(clock), .Q(n[3]) );
  HS65_GS_DFPQX9 \k_reg[1]  ( .D(n362), .CP(clock), .Q(N249) );
  HS65_GS_DFPQX9 \n_reg[5]  ( .D(n310), .CP(clock), .Q(n[5]) );
  HS65_GS_DFPQX9 \neighborCount_reg[1]  ( .D(n345), .CP(clock), .Q(N326) );
  HS65_GS_DFPQX9 \k_reg[3]  ( .D(n360), .CP(clock), .Q(k[3]) );
  HS65_GS_DFPQX9 \k_reg[4]  ( .D(n359), .CP(clock), .Q(k[4]) );
  HS65_GS_DFPQX9 \k_reg[7]  ( .D(n356), .CP(clock), .Q(k[7]) );
  HS65_GS_DFPQX9 \k_reg[5]  ( .D(n358), .CP(clock), .Q(k[5]) );
  HS65_GS_DFPQX9 \k_reg[8]  ( .D(n355), .CP(clock), .Q(k[8]) );
  HS65_GS_DFPQX9 \k_reg[6]  ( .D(n357), .CP(clock), .Q(k[6]) );
  HS65_GS_DFPQX9 \neighborCount_reg[8]  ( .D(n338), .CP(clock), .Q(
        neighborCount[8]) );
  HS65_GS_DFPQX9 \neighborCount_reg[7]  ( .D(n339), .CP(clock), .Q(
        neighborCount[7]) );
  HS65_GS_DFPQX9 \n_reg[2]  ( .D(n313), .CP(clock), .Q(n[2]) );
  HS65_GS_DFPQX9 \k_reg[0]  ( .D(n363), .CP(clock), .Q(N248) );
  HS65_GS_DFPQX9 \neighborCount_reg[0]  ( .D(n346), .CP(clock), .Q(N325) );
  HS65_GS_DFPQX9 \neighborCount_reg[2]  ( .D(n344), .CP(clock), .Q(
        neighborCount[2]) );
  HS65_GS_AND2X4 U3 ( .A(N270), .B(n84), .Z(n1) );
  HS65_GS_AOI12X2 U4 ( .A(n416), .B(en), .C(n26), .Z(n217) );
  HS65_GS_NOR2X6 U5 ( .A(n26), .B(n413), .Z(n226) );
  HS65_GS_IVX9 U6 ( .A(n25), .Z(n26) );
  HS65_GS_NOR2X6 U7 ( .A(n26), .B(n153), .Z(n154) );
  HS65_GS_IVX9 U8 ( .A(n127), .Z(n421) );
  HS65_GS_IVX9 U9 ( .A(n214), .Z(n408) );
  HS65_GS_IVX9 U10 ( .A(n227), .Z(n413) );
  HS65_GS_IVX9 U11 ( .A(n147), .Z(n419) );
  HS65_GS_IVX9 U12 ( .A(n241), .Z(n407) );
  HS65_GS_NOR2AX3 U13 ( .A(n154), .B(n155), .Z(n151) );
  HS65_GS_NOR2X6 U14 ( .A(n125), .B(n26), .Z(n223) );
  HS65_GS_NOR2X6 U15 ( .A(n222), .B(n26), .Z(n221) );
  HS65_GS_IVX9 U16 ( .A(N203), .Z(n429) );
  HS65_GS_NOR2X6 U17 ( .A(n156), .B(n5), .Z(n153) );
  HS65_GS_NOR2X6 U18 ( .A(n26), .B(n73), .Z(n74) );
  HS65_GS_AND2X4 U19 ( .A(n161), .B(n25), .Z(n165) );
  HS65_GS_IVX9 U20 ( .A(n146), .Z(n414) );
  HS65_GS_AND2X4 U21 ( .A(n154), .B(n5), .Z(n152) );
  HS65_GS_AOI13X5 U22 ( .A(n238), .B(n214), .C(n239), .D(n26), .Z(N585) );
  HS65_GS_AOI12X2 U23 ( .A(N188), .B(n422), .C(n407), .Z(n238) );
  HS65_GS_NOR3X4 U24 ( .A(n409), .B(n80), .C(n411), .Z(n239) );
  HS65_GS_BFX9 U25 ( .A(nrst), .Z(n25) );
  HS65_GS_NAND4ABX3 U26 ( .A(n233), .B(n242), .C(n243), .D(n244), .Z(N584) );
  HS65_GS_OAI21X3 U27 ( .A(n155), .B(n429), .C(n149), .Z(n242) );
  HS65_GS_BFX9 U28 ( .A(n219), .Z(n2) );
  HS65_GS_NOR3X4 U29 ( .A(n26), .B(n218), .C(n155), .Z(n219) );
  HS65_GS_NAND4ABX3 U30 ( .A(n6), .B(n423), .C(n231), .D(n232), .Z(N586) );
  HS65_GS_IVX9 U31 ( .A(n216), .Z(n423) );
  HS65_GS_NOR3AX2 U32 ( .A(n229), .B(n233), .C(n162), .Z(n232) );
  HS65_GS_NOR4ABX2 U33 ( .A(n214), .B(n127), .C(n407), .D(n5), .Z(n144) );
  HS65_GS_NOR2X6 U34 ( .A(n428), .B(n216), .Z(n82) );
  HS65_GS_NOR2X6 U35 ( .A(n215), .B(n428), .Z(n80) );
  HS65_GS_NAND2AX7 U37 ( .A(n253), .B(n231), .Z(n84) );
  HS65_GS_IVX9 U38 ( .A(N234), .Z(n428) );
  HS65_GS_NOR2X6 U39 ( .A(n419), .B(N234), .Z(n81) );
  HS65_GS_NOR2X6 U40 ( .A(n86), .B(n89), .Z(n214) );
  HS65_GS_NAND2X7 U41 ( .A(n215), .B(n216), .Z(n147) );
  HS65_GS_AOI12X2 U42 ( .A(n428), .B(n418), .C(n89), .Z(n244) );
  HS65_GS_IVX9 U43 ( .A(n215), .Z(n418) );
  HS65_GS_NAND2X7 U44 ( .A(n234), .B(n425), .Z(n127) );
  HS65_GS_IVX9 U45 ( .A(n149), .Z(n422) );
  HS65_GS_IVX9 U46 ( .A(n222), .Z(n420) );
  HS65_GS_NOR4ABX2 U47 ( .A(n241), .B(n228), .C(n253), .D(n162), .Z(n243) );
  HS65_GS_IVX9 U48 ( .A(n126), .Z(n424) );
  HS65_GS_NAND3X5 U49 ( .A(n125), .B(n126), .C(n127), .Z(n87) );
  HS65_GS_IVX9 U50 ( .A(n160), .Z(n411) );
  HS65_GS_NAND2X7 U51 ( .A(n228), .B(n229), .Z(n227) );
  HS65_GS_NOR2X6 U52 ( .A(n3), .B(n7), .Z(n241) );
  HS65_GS_IVX9 U53 ( .A(n155), .Z(n417) );
  HS65_GS_BFX9 U54 ( .A(n88), .Z(n3) );
  HS65_GS_BFX9 U55 ( .A(n88), .Z(n4) );
  HS65_GS_NOR3AX4 U56 ( .A(n217), .B(n5), .C(n227), .Z(n225) );
  HS65_GS_NOR4ABX4 U57 ( .A(n144), .B(n145), .C(n146), .D(n147), .Z(n73) );
  HS65_GS_NOR3X4 U58 ( .A(n148), .B(n424), .C(n411), .Z(n145) );
  HS65_GS_OAI21X3 U59 ( .A(N188), .B(n149), .C(n150), .Z(n148) );
  HS65_GS_NOR2AX6 U60 ( .A(n217), .B(n420), .Z(n220) );
  HS65_GS_NAND3X5 U61 ( .A(n212), .B(n144), .C(n213), .Z(n161) );
  HS65_GS_OA12X9 U62 ( .A(n428), .B(n419), .C(n150), .Z(n213) );
  HS65_GS_OA12X9 U63 ( .A(N203), .B(n155), .C(n217), .Z(n218) );
  HS65_GS_OAI21X3 U64 ( .A(n155), .B(n429), .C(n217), .Z(n156) );
  HS65_GS_NOR2AX3 U65 ( .A(n217), .B(n409), .Z(n212) );
  HS65_GS_NAND2X7 U66 ( .A(n217), .B(n125), .Z(n146) );
  HS65_GS_OR3X9 U67 ( .A(n245), .B(n410), .C(n421), .Z(n233) );
  HS65_GS_NAND4ABX3 U68 ( .A(n245), .B(n247), .C(n244), .D(n248), .Z(N583) );
  HS65_GS_NOR3AX2 U69 ( .A(n125), .B(n249), .C(n420), .Z(n248) );
  HS65_GS_AO12X9 U70 ( .A(n417), .B(n429), .C(n159), .Z(n247) );
  HS65_GS_OR3X9 U71 ( .A(n82), .B(n411), .C(n8), .Z(n249) );
  HS65_GS_NAND2X7 U72 ( .A(n224), .B(n259), .Z(n155) );
  HS65_GS_NAND3X5 U73 ( .A(n252), .B(n426), .C(n235), .Z(n216) );
  HS65_GS_NAND2AX7 U74 ( .A(n84), .B(n240), .Z(n159) );
  HS65_GS_NAND2X7 U75 ( .A(n224), .B(n236), .Z(n215) );
  HS65_GS_AND3X9 U76 ( .A(n259), .B(n426), .C(n250), .Z(n86) );
  HS65_GS_NOR2AX3 U77 ( .A(n252), .B(n426), .Z(n234) );
  HS65_GS_NAND2X7 U78 ( .A(n251), .B(n252), .Z(n125) );
  HS65_GS_NAND2X7 U79 ( .A(n234), .B(n236), .Z(n149) );
  HS65_GS_IVX9 U80 ( .A(n246), .Z(n410) );
  HS65_GS_NOR2X6 U81 ( .A(n427), .B(n412), .Z(n237) );
  HS65_GS_NAND2X7 U82 ( .A(n234), .B(n259), .Z(n222) );
  HS65_GS_AND2X4 U83 ( .A(n237), .B(n251), .Z(n89) );
  HS65_GS_AND3X9 U84 ( .A(n259), .B(n426), .C(n237), .Z(n88) );
  HS65_GS_NAND3X5 U85 ( .A(n252), .B(n426), .C(n425), .Z(n231) );
  HS65_GS_NAND2X7 U86 ( .A(n250), .B(n251), .Z(n160) );
  HS65_GS_NAND3X5 U87 ( .A(n259), .B(n426), .C(n252), .Z(n126) );
  HS65_GS_IVX9 U88 ( .A(n240), .Z(n409) );
  HS65_GS_NAND2X7 U89 ( .A(n256), .B(n236), .Z(n228) );
  HS65_GS_IVX9 U90 ( .A(n254), .Z(n425) );
  HS65_GS_NAND2X7 U91 ( .A(n256), .B(n235), .Z(n230) );
  HS65_GS_AND2X4 U92 ( .A(n224), .B(n235), .Z(n162) );
  HS65_GS_BFX9 U93 ( .A(n85), .Z(n5) );
  HS65_GS_NAND2X7 U94 ( .A(n234), .B(n235), .Z(n229) );
  HS65_GS_BFX9 U95 ( .A(n83), .Z(n7) );
  HS65_GS_BFX9 U96 ( .A(n85), .Z(n6) );
  HS65_GS_AND2X4 U97 ( .A(n256), .B(n259), .Z(n253) );
  HS65_GS_BFX9 U98 ( .A(n83), .Z(n8) );
  HS65_GS_IVX9 U99 ( .A(fsourceID[1]), .Z(n386) );
  HS65_GS_IVX9 U100 ( .A(n230), .Z(n416) );
  HS65_GS_IVX9 U101 ( .A(fValue[14]), .Z(n404) );
  HS65_GS_OAI212X5 U102 ( .A(n427), .B(n254), .C(en), .D(n230), .E(n255), .Z(
        n245) );
  HS65_GS_AOI12X2 U103 ( .A(state[4]), .B(state[3]), .C(n26), .Z(n255) );
  HS65_GS_AO32X4 U104 ( .A(n409), .B(n25), .C(N319), .D(n212), .E(reinit), .Z(
        n348) );
  HS65_GS_IVX9 U105 ( .A(fValue[15]), .Z(n405) );
  HS65_GS_IVX9 U106 ( .A(data_in[13]), .Z(n22) );
  HS65_GS_IVX9 U107 ( .A(data_in[10]), .Z(n19) );
  HS65_GS_IVX9 U108 ( .A(data_in[2]), .Z(n10) );
  HS65_GS_IVX9 U109 ( .A(data_in[3]), .Z(n11) );
  HS65_GS_IVX9 U110 ( .A(data_in[5]), .Z(n13) );
  HS65_GS_IVX9 U111 ( .A(data_in[7]), .Z(n16) );
  HS65_GS_IVX9 U112 ( .A(data_in[11]), .Z(n20) );
  HS65_GS_IVX9 U113 ( .A(data_in[4]), .Z(n12) );
  HS65_GS_IVX9 U114 ( .A(data_in[6]), .Z(n14) );
  HS65_GS_IVX9 U115 ( .A(data_in[8]), .Z(n17) );
  HS65_GS_IVX9 U116 ( .A(data_in[12]), .Z(n21) );
  HS65_GS_IVX9 U117 ( .A(data_in[9]), .Z(n18) );
  HS65_GS_IVX9 U118 ( .A(data_in[1]), .Z(n9) );
  HS65_GS_IVX9 U119 ( .A(data_in[14]), .Z(n23) );
  HS65_GS_IVX9 U120 ( .A(data_in[15]), .Z(n24) );
  HS65_GS_AOI12X2 U121 ( .A(n257), .B(n258), .C(n26), .Z(N582) );
  HS65_GS_NOR4ABX2 U122 ( .A(n155), .B(n216), .C(n424), .D(n86), .Z(n258) );
  HS65_GS_NOR4ABX2 U123 ( .A(n240), .B(n243), .C(n420), .D(n260), .Z(n257) );
  HS65_GS_AOI12X2 U124 ( .A(reinit), .B(found), .C(n246), .Z(n260) );
  HS65_GS_AO222X4 U125 ( .A(N191), .B(n151), .C(N325), .D(n152), .E(
        sinkID_address_buf[4]), .F(n153), .Z(n278) );
  HS65_GS_AO222X4 U126 ( .A(N192), .B(n151), .C(N326), .D(n152), .E(
        sinkID_address_buf[5]), .F(n153), .Z(n277) );
  HS65_GS_AO222X4 U127 ( .A(N214), .B(n151), .C(N377), .D(n152), .E(
        sinkID_address_buf[9]), .F(n153), .Z(n273) );
  HS65_GS_AO222X4 U128 ( .A(N212), .B(n151), .C(N375), .D(n152), .E(
        sinkID_address_buf[7]), .F(n153), .Z(n275) );
  HS65_GS_AO222X4 U129 ( .A(N213), .B(n151), .C(N376), .D(n152), .E(
        sinkID_address_buf[8]), .F(n153), .Z(n274) );
  HS65_GS_AO222X4 U130 ( .A(N215), .B(n151), .C(N378), .D(n152), .E(
        sinkID_address_buf[10]), .F(n153), .Z(n272) );
  HS65_GS_AO222X4 U131 ( .A(N193), .B(n151), .C(N360), .D(n152), .E(
        sinkID_address_buf[6]), .F(n153), .Z(n276) );
  HS65_GS_AO112X9 U132 ( .A(sinkID_address_buf[3]), .B(n153), .C(n151), .D(
        n152), .Z(n279) );
  HS65_GS_CB4I6X9 U133 ( .A(n209), .B(n210), .C(n165), .D(n211), .Z(n299) );
  HS65_GS_MX41X7 U134 ( .D0(fsourceID[0]), .S0(n3), .D1(fValue[0]), .S1(n8), 
        .D2(initial_epsilon[0]), .S2(n410), .D3(fclusterID[0]), .S3(n6), .Z(
        n210) );
  HS65_GS_MX41X7 U135 ( .D0(N442), .S0(n421), .D1(N248), .S1(n147), .D2(
        data_in[0]), .S2(n159), .D3(fbatteryStat[0]), .S3(n408), .Z(n209) );
  HS65_GS_NOR2AX3 U136 ( .A(data_out[0]), .B(n161), .Z(n211) );
  HS65_GS_CB4I6X9 U137 ( .A(n206), .B(n207), .C(n165), .D(n208), .Z(n298) );
  HS65_GS_MX41X7 U138 ( .D0(fsourceID[1]), .S0(n3), .D1(fValue[1]), .S1(n8), 
        .D2(initial_epsilon[1]), .S2(n410), .D3(fclusterID[1]), .S3(n6), .Z(
        n207) );
  HS65_GS_MX41X7 U139 ( .D0(N443), .S0(n421), .D1(N249), .S1(n147), .D2(
        data_in[1]), .S2(n159), .D3(fbatteryStat[1]), .S3(n408), .Z(n206) );
  HS65_GS_NOR2AX3 U140 ( .A(data_out[1]), .B(n161), .Z(n208) );
  HS65_GS_CB4I6X9 U141 ( .A(n203), .B(n204), .C(n165), .D(n205), .Z(n297) );
  HS65_GS_MX41X7 U142 ( .D0(fsourceID[2]), .S0(n3), .D1(fValue[2]), .S1(n8), 
        .D2(initial_epsilon[2]), .S2(n410), .D3(fclusterID[2]), .S3(n6), .Z(
        n204) );
  HS65_GS_MX41X7 U143 ( .D0(N444), .S0(n421), .D1(k[2]), .S1(n147), .D2(
        data_in[2]), .S2(n159), .D3(fbatteryStat[2]), .S3(n408), .Z(n203) );
  HS65_GS_NOR2AX3 U144 ( .A(data_out[2]), .B(n161), .Z(n205) );
  HS65_GS_CB4I6X9 U145 ( .A(n200), .B(n201), .C(n165), .D(n202), .Z(n296) );
  HS65_GS_MX41X7 U146 ( .D0(fsourceID[3]), .S0(n3), .D1(fValue[3]), .S1(n8), 
        .D2(initial_epsilon[3]), .S2(n410), .D3(fclusterID[3]), .S3(n6), .Z(
        n201) );
  HS65_GS_MX41X7 U147 ( .D0(N445), .S0(n421), .D1(k[3]), .S1(n147), .D2(
        data_in[3]), .S2(n159), .D3(fbatteryStat[3]), .S3(n408), .Z(n200) );
  HS65_GS_NOR2AX3 U148 ( .A(data_out[3]), .B(n161), .Z(n202) );
  HS65_GS_CB4I6X9 U149 ( .A(n197), .B(n198), .C(n165), .D(n199), .Z(n295) );
  HS65_GS_MX41X7 U150 ( .D0(fsourceID[4]), .S0(n3), .D1(fValue[4]), .S1(n7), 
        .D2(initial_epsilon[4]), .S2(n410), .D3(fclusterID[4]), .S3(n6), .Z(
        n198) );
  HS65_GS_MX41X7 U151 ( .D0(N446), .S0(n421), .D1(k[4]), .S1(n147), .D2(
        data_in[4]), .S2(n159), .D3(fbatteryStat[4]), .S3(n408), .Z(n197) );
  HS65_GS_NOR2AX3 U152 ( .A(data_out[4]), .B(n161), .Z(n199) );
  HS65_GS_CB4I6X9 U153 ( .A(n194), .B(n195), .C(n165), .D(n196), .Z(n294) );
  HS65_GS_MX41X7 U154 ( .D0(fsourceID[5]), .S0(n3), .D1(fValue[5]), .S1(n8), 
        .D2(initial_epsilon[5]), .S2(n410), .D3(fclusterID[5]), .S3(n6), .Z(
        n195) );
  HS65_GS_MX41X7 U155 ( .D0(N447), .S0(n421), .D1(k[5]), .S1(n147), .D2(
        data_in[5]), .S2(n159), .D3(fbatteryStat[5]), .S3(n408), .Z(n194) );
  HS65_GS_NOR2AX3 U156 ( .A(data_out[5]), .B(n161), .Z(n196) );
  HS65_GS_CB4I6X9 U157 ( .A(n191), .B(n192), .C(n165), .D(n193), .Z(n293) );
  HS65_GS_MX41X7 U158 ( .D0(fsourceID[6]), .S0(n3), .D1(fValue[6]), .S1(n8), 
        .D2(initial_epsilon[6]), .S2(n410), .D3(fclusterID[6]), .S3(n6), .Z(
        n192) );
  HS65_GS_MX41X7 U159 ( .D0(N448), .S0(n421), .D1(k[6]), .S1(n147), .D2(
        data_in[6]), .S2(n159), .D3(fbatteryStat[6]), .S3(n408), .Z(n191) );
  HS65_GS_NOR2AX3 U160 ( .A(data_out[6]), .B(n161), .Z(n193) );
  HS65_GS_CB4I6X9 U161 ( .A(n188), .B(n189), .C(n165), .D(n190), .Z(n292) );
  HS65_GS_MX41X7 U162 ( .D0(fsourceID[7]), .S0(n3), .D1(fValue[7]), .S1(n8), 
        .D2(initial_epsilon[7]), .S2(n410), .D3(fclusterID[7]), .S3(n6), .Z(
        n189) );
  HS65_GS_MX41X7 U163 ( .D0(N449), .S0(n421), .D1(k[7]), .S1(n147), .D2(
        data_in[7]), .S2(n159), .D3(fbatteryStat[7]), .S3(n408), .Z(n188) );
  HS65_GS_NOR2AX3 U164 ( .A(data_out[7]), .B(n161), .Z(n190) );
  HS65_GS_CB4I6X9 U165 ( .A(n185), .B(n186), .C(n165), .D(n187), .Z(n291) );
  HS65_GS_MX41X7 U166 ( .D0(fsourceID[8]), .S0(n3), .D1(fValue[8]), .S1(n8), 
        .D2(initial_epsilon[8]), .S2(n410), .D3(fclusterID[8]), .S3(n6), .Z(
        n186) );
  HS65_GS_MX41X7 U167 ( .D0(N450), .S0(n421), .D1(k[8]), .S1(n147), .D2(
        data_in[8]), .S2(n159), .D3(fbatteryStat[8]), .S3(n408), .Z(n185) );
  HS65_GS_NOR2AX3 U168 ( .A(data_out[8]), .B(n161), .Z(n187) );
  HS65_GS_CB4I6X9 U169 ( .A(n182), .B(n183), .C(n165), .D(n184), .Z(n290) );
  HS65_GS_MX41X7 U170 ( .D0(fsourceID[9]), .S0(n3), .D1(fValue[9]), .S1(n8), 
        .D2(initial_epsilon[9]), .S2(n410), .D3(fclusterID[9]), .S3(n6), .Z(
        n183) );
  HS65_GS_MX41X7 U171 ( .D0(N451), .S0(n421), .D1(k[9]), .S1(n147), .D2(
        data_in[9]), .S2(n159), .D3(fbatteryStat[9]), .S3(n408), .Z(n182) );
  HS65_GS_NOR2AX3 U172 ( .A(data_out[9]), .B(n161), .Z(n184) );
  HS65_GS_CB4I6X9 U173 ( .A(n179), .B(n180), .C(n165), .D(n181), .Z(n289) );
  HS65_GS_MX41X7 U174 ( .D0(fsourceID[10]), .S0(n3), .D1(fValue[10]), .S1(n8), 
        .D2(initial_epsilon[10]), .S2(n410), .D3(fclusterID[10]), .S3(n6), .Z(
        n180) );
  HS65_GS_MX41X7 U175 ( .D0(N452), .S0(n421), .D1(k[10]), .S1(n147), .D2(
        data_in[10]), .S2(n159), .D3(fbatteryStat[10]), .S3(n408), .Z(n179) );
  HS65_GS_NOR2AX3 U176 ( .A(data_out[10]), .B(n161), .Z(n181) );
  HS65_GS_CB4I6X9 U177 ( .A(n176), .B(n177), .C(n165), .D(n178), .Z(n288) );
  HS65_GS_MX41X7 U178 ( .D0(fsourceID[11]), .S0(n3), .D1(fValue[11]), .S1(n8), 
        .D2(initial_epsilon[11]), .S2(n410), .D3(fclusterID[11]), .S3(n6), .Z(
        n177) );
  HS65_GS_MX41X7 U179 ( .D0(N453), .S0(n421), .D1(k[11]), .S1(n147), .D2(
        data_in[11]), .S2(n159), .D3(fbatteryStat[11]), .S3(n408), .Z(n176) );
  HS65_GS_NOR2AX3 U180 ( .A(data_out[11]), .B(n161), .Z(n178) );
  HS65_GS_CB4I6X9 U181 ( .A(n173), .B(n174), .C(n165), .D(n175), .Z(n287) );
  HS65_GS_MX41X7 U182 ( .D0(fsourceID[12]), .S0(n3), .D1(fValue[12]), .S1(n7), 
        .D2(initial_epsilon[12]), .S2(n410), .D3(fclusterID[12]), .S3(n6), .Z(
        n174) );
  HS65_GS_MX41X7 U183 ( .D0(N454), .S0(n421), .D1(k[12]), .S1(n147), .D2(
        data_in[12]), .S2(n159), .D3(fbatteryStat[12]), .S3(n408), .Z(n173) );
  HS65_GS_NOR2AX3 U184 ( .A(data_out[12]), .B(n161), .Z(n175) );
  HS65_GS_CB4I6X9 U185 ( .A(n170), .B(n171), .C(n165), .D(n172), .Z(n286) );
  HS65_GS_MX41X7 U186 ( .D0(fsourceID[13]), .S0(n3), .D1(fValue[13]), .S1(n7), 
        .D2(initial_epsilon[13]), .S2(n410), .D3(fclusterID[13]), .S3(n6), .Z(
        n171) );
  HS65_GS_MX41X7 U187 ( .D0(N455), .S0(n421), .D1(k[13]), .S1(n147), .D2(
        data_in[13]), .S2(n159), .D3(fbatteryStat[13]), .S3(n408), .Z(n170) );
  HS65_GS_NOR2AX3 U188 ( .A(data_out[13]), .B(n161), .Z(n172) );
  HS65_GS_CB4I6X9 U189 ( .A(n167), .B(n168), .C(n165), .D(n169), .Z(n285) );
  HS65_GS_MX41X7 U190 ( .D0(fsourceID[14]), .S0(n3), .D1(fValue[14]), .S1(n7), 
        .D2(initial_epsilon[14]), .S2(n410), .D3(fclusterID[14]), .S3(n5), .Z(
        n168) );
  HS65_GS_MX41X7 U191 ( .D0(N456), .S0(n421), .D1(k[14]), .S1(n147), .D2(
        data_in[14]), .S2(n159), .D3(fbatteryStat[14]), .S3(n408), .Z(n167) );
  HS65_GS_NOR2AX3 U192 ( .A(data_out[14]), .B(n161), .Z(n169) );
  HS65_GS_CB4I6X9 U193 ( .A(n163), .B(n164), .C(n165), .D(n166), .Z(n284) );
  HS65_GS_MX41X7 U194 ( .D0(fsourceID[15]), .S0(n3), .D1(fValue[15]), .S1(n7), 
        .D2(initial_epsilon[15]), .S2(n410), .D3(fclusterID[15]), .S3(n5), .Z(
        n164) );
  HS65_GS_MX41X7 U195 ( .D0(N457), .S0(n421), .D1(k[15]), .S1(n147), .D2(
        data_in[15]), .S2(n159), .D3(fbatteryStat[15]), .S3(n408), .Z(n163) );
  HS65_GS_NOR2AX3 U196 ( .A(data_out[15]), .B(n161), .Z(n166) );
  HS65_GS_AO32X4 U197 ( .A(n25), .B(n224), .C(n425), .D(done), .E(n217), .Z(
        n347) );
  HS65_GS_AO32X4 U198 ( .A(n417), .B(n156), .C(n25), .D(found), .E(n415), .Z(
        n300) );
  HS65_GS_IVX9 U199 ( .A(n156), .Z(n415) );
  HS65_GS_AO32X4 U200 ( .A(n406), .B(n157), .C(n25), .D(wr_en), .E(n158), .Z(
        n283) );
  HS65_GS_NAND4ABX3 U201 ( .A(n410), .B(n159), .C(n419), .D(n144), .Z(n157) );
  HS65_GS_IVX9 U202 ( .A(n158), .Z(n406) );
  HS65_GS_NOR4ABX2 U203 ( .A(n160), .B(n413), .C(n161), .D(n162), .Z(n158) );
  HS65_GS_AO22X9 U204 ( .A(address[10]), .B(n73), .C(n74), .D(n75), .Z(n261)
         );
  HS65_GS_NAND4ABX3 U205 ( .A(n76), .B(n77), .C(n78), .D(n79), .Z(n75) );
  HS65_GS_AO212X4 U206 ( .A(N307), .B(n86), .C(N200), .D(n422), .E(n87), .Z(
        n77) );
  HS65_GS_AO222X4 U207 ( .A(N334), .B(n3), .C(N345), .D(n89), .E(N318), .F(
        n411), .Z(n76) );
  HS65_GS_AO22X9 U208 ( .A(address[9]), .B(n73), .C(n74), .D(n90), .Z(n262) );
  HS65_GS_NAND4ABX3 U209 ( .A(n91), .B(n92), .C(n93), .D(n94), .Z(n90) );
  HS65_GS_AO212X4 U210 ( .A(N306), .B(n86), .C(N199), .D(n422), .E(n87), .Z(
        n92) );
  HS65_GS_AO222X4 U211 ( .A(N333), .B(n4), .C(N344), .D(n89), .E(N317), .F(
        n411), .Z(n91) );
  HS65_GS_AO22X9 U212 ( .A(address[8]), .B(n73), .C(n74), .D(n95), .Z(n263) );
  HS65_GS_NAND3X5 U213 ( .A(n96), .B(n97), .C(n98), .Z(n95) );
  HS65_GS_AOI212X4 U214 ( .A(N305), .B(n86), .C(N198), .D(n422), .E(n99), .Z(
        n98) );
  HS65_GS_AOI222X2 U215 ( .A(N244), .B(n80), .C(N255), .D(n81), .E(N390), .F(
        n82), .Z(n97) );
  HS65_GS_AO22X9 U216 ( .A(address[7]), .B(n73), .C(n74), .D(n100), .Z(n264)
         );
  HS65_GS_NAND4ABX3 U217 ( .A(n101), .B(n102), .C(n103), .D(n104), .Z(n100) );
  HS65_GS_AO212X4 U218 ( .A(N304), .B(n86), .C(N197), .D(n422), .E(n87), .Z(
        n102) );
  HS65_GS_AO222X4 U219 ( .A(N331), .B(n4), .C(N342), .D(n89), .E(N315), .F(
        n411), .Z(n101) );
  HS65_GS_AO22X9 U220 ( .A(address[6]), .B(n73), .C(n74), .D(n105), .Z(n265)
         );
  HS65_GS_NAND3X5 U221 ( .A(n106), .B(n107), .C(n108), .Z(n105) );
  HS65_GS_AOI212X4 U222 ( .A(N303), .B(n86), .C(N196), .D(n422), .E(n109), .Z(
        n108) );
  HS65_GS_AOI222X2 U223 ( .A(N352), .B(n7), .C(N276), .D(n84), .E(N363), .F(n5), .Z(n106) );
  HS65_GS_AO22X9 U224 ( .A(address[5]), .B(n73), .C(n74), .D(n110), .Z(n266)
         );
  HS65_GS_NAND3X5 U225 ( .A(n111), .B(n112), .C(n113), .Z(n110) );
  HS65_GS_AOI212X4 U226 ( .A(N302), .B(n86), .C(N195), .D(n422), .E(n114), .Z(
        n113) );
  HS65_GS_AOI222X2 U227 ( .A(N351), .B(n7), .C(N275), .D(n84), .E(N362), .F(n5), .Z(n111) );
  HS65_GS_AO22X9 U228 ( .A(address[4]), .B(n73), .C(n74), .D(n115), .Z(n267)
         );
  HS65_GS_NAND3X5 U229 ( .A(n116), .B(n117), .C(n118), .Z(n115) );
  HS65_GS_AOI212X4 U230 ( .A(N301), .B(n86), .C(N194), .D(n422), .E(n119), .Z(
        n118) );
  HS65_GS_AOI222X2 U231 ( .A(N350), .B(n7), .C(N274), .D(n84), .E(N361), .F(n5), .Z(n116) );
  HS65_GS_AO22X9 U232 ( .A(address[3]), .B(n73), .C(n74), .D(n120), .Z(n268)
         );
  HS65_GS_NAND4ABX3 U233 ( .A(n121), .B(n122), .C(n123), .D(n124), .Z(n120) );
  HS65_GS_AO222X4 U234 ( .A(N360), .B(n4), .C(N360), .D(n89), .E(N193), .F(
        n411), .Z(n121) );
  HS65_GS_AO212X4 U235 ( .A(N193), .B(n86), .C(N193), .D(n422), .E(n87), .Z(
        n122) );
  HS65_GS_AO22X9 U236 ( .A(address[2]), .B(n73), .C(n74), .D(n128), .Z(n269)
         );
  HS65_GS_NAND4ABX3 U237 ( .A(n129), .B(n130), .C(n131), .D(n132), .Z(n128) );
  HS65_GS_AOI222X2 U238 ( .A(N192), .B(n422), .C(N192), .D(n411), .E(N192), 
        .F(n86), .Z(n131) );
  HS65_GS_AO222X4 U239 ( .A(N326), .B(n89), .C(N326), .D(n8), .E(N326), .F(n3), 
        .Z(n129) );
  HS65_GS_AO22X9 U240 ( .A(address[1]), .B(n73), .C(n74), .D(n133), .Z(n270)
         );
  HS65_GS_NAND3X5 U241 ( .A(n134), .B(n135), .C(n136), .Z(n133) );
  HS65_GS_AOI222X2 U242 ( .A(N325), .B(n3), .C(N325), .D(n7), .E(N325), .F(n89), .Z(n135) );
  HS65_GS_AOI222X2 U243 ( .A(N191), .B(n422), .C(N191), .D(n411), .E(N191), 
        .F(n86), .Z(n134) );
  HS65_GS_AO22X9 U244 ( .A(address[0]), .B(n73), .C(n74), .D(n1), .Z(n271) );
  HS65_GS_AO22X9 U245 ( .A(N191), .B(n218), .C(N216), .D(n2), .Z(n366) );
  HS65_GS_AO22X9 U246 ( .A(n225), .B(k[2]), .C(N283), .D(n226), .Z(n361) );
  HS65_GS_AO22X9 U247 ( .A(n225), .B(N249), .C(N282), .D(n226), .Z(n362) );
  HS65_GS_AO22X9 U248 ( .A(n225), .B(N248), .C(N281), .D(n226), .Z(n363) );
  HS65_GS_AO22X9 U249 ( .A(n225), .B(k[8]), .C(N289), .D(n226), .Z(n355) );
  HS65_GS_AO22X9 U250 ( .A(n225), .B(k[7]), .C(N288), .D(n226), .Z(n356) );
  HS65_GS_AO22X9 U251 ( .A(n225), .B(k[6]), .C(N287), .D(n226), .Z(n357) );
  HS65_GS_AO22X9 U252 ( .A(n225), .B(k[5]), .C(N286), .D(n226), .Z(n358) );
  HS65_GS_AO22X9 U253 ( .A(n225), .B(k[4]), .C(N285), .D(n226), .Z(n359) );
  HS65_GS_AO22X9 U254 ( .A(n225), .B(k[3]), .C(N284), .D(n226), .Z(n360) );
  HS65_GS_AO22X9 U255 ( .A(n225), .B(k[14]), .C(N295), .D(n226), .Z(n349) );
  HS65_GS_AO22X9 U256 ( .A(n225), .B(k[13]), .C(N294), .D(n226), .Z(n350) );
  HS65_GS_AO22X9 U257 ( .A(n225), .B(k[12]), .C(N293), .D(n226), .Z(n351) );
  HS65_GS_AO22X9 U258 ( .A(n225), .B(k[11]), .C(N292), .D(n226), .Z(n352) );
  HS65_GS_AO22X9 U259 ( .A(n225), .B(k[10]), .C(N291), .D(n226), .Z(n353) );
  HS65_GS_AO22X9 U260 ( .A(n225), .B(k[9]), .C(N290), .D(n226), .Z(n354) );
  HS65_GS_AO22X9 U261 ( .A(n225), .B(k[15]), .C(N296), .D(n226), .Z(n364) );
  HS65_GS_AO22X9 U262 ( .A(N192), .B(n218), .C(N217), .D(n2), .Z(n314) );
  HS65_GS_AO22X9 U263 ( .A(neighborCount[9]), .B(n414), .C(n223), .D(
        data_in[9]), .Z(n337) );
  HS65_GS_AO22X9 U264 ( .A(n[9]), .B(n218), .C(N225), .D(n2), .Z(n306) );
  HS65_GS_AO22X9 U265 ( .A(n[15]), .B(n218), .C(N231), .D(n2), .Z(n365) );
  HS65_GS_AO22X9 U266 ( .A(neighborCount[11]), .B(n414), .C(n223), .D(
        data_in[11]), .Z(n335) );
  HS65_GS_AO22X9 U267 ( .A(neighborCount[12]), .B(n414), .C(n223), .D(
        data_in[12]), .Z(n334) );
  HS65_GS_AO22X9 U268 ( .A(n[10]), .B(n218), .C(N226), .D(n2), .Z(n305) );
  HS65_GS_AO22X9 U269 ( .A(n[13]), .B(n218), .C(N229), .D(n2), .Z(n302) );
  HS65_GS_AO22X9 U270 ( .A(n[14]), .B(n218), .C(N230), .D(n2), .Z(n301) );
  HS65_GS_AO22X9 U271 ( .A(neighborCount[10]), .B(n414), .C(n223), .D(
        data_in[10]), .Z(n336) );
  HS65_GS_AO22X9 U272 ( .A(neighborCount[13]), .B(n414), .C(n223), .D(
        data_in[13]), .Z(n333) );
  HS65_GS_AO22X9 U273 ( .A(neighborCount[14]), .B(n414), .C(n223), .D(
        data_in[14]), .Z(n332) );
  HS65_GS_AO22X9 U274 ( .A(n[11]), .B(n218), .C(N227), .D(n2), .Z(n304) );
  HS65_GS_AO22X9 U275 ( .A(n[12]), .B(n218), .C(N228), .D(n2), .Z(n303) );
  HS65_GS_AO22X9 U276 ( .A(N325), .B(n414), .C(n223), .D(data_in[0]), .Z(n346)
         );
  HS65_GS_AO22X9 U277 ( .A(N326), .B(n414), .C(n223), .D(data_in[1]), .Z(n345)
         );
  HS65_GS_AO22X9 U278 ( .A(neighborCount[2]), .B(n414), .C(n223), .D(
        data_in[2]), .Z(n344) );
  HS65_GS_AO22X9 U279 ( .A(neighborCount[3]), .B(n414), .C(n223), .D(
        data_in[3]), .Z(n343) );
  HS65_GS_AO22X9 U280 ( .A(neighborCount[4]), .B(n414), .C(n223), .D(
        data_in[4]), .Z(n342) );
  HS65_GS_AO22X9 U281 ( .A(neighborCount[5]), .B(n414), .C(n223), .D(
        data_in[5]), .Z(n341) );
  HS65_GS_AO22X9 U282 ( .A(neighborCount[6]), .B(n414), .C(n223), .D(
        data_in[6]), .Z(n340) );
  HS65_GS_AO22X9 U283 ( .A(neighborCount[7]), .B(n414), .C(n223), .D(
        data_in[7]), .Z(n339) );
  HS65_GS_AO22X9 U284 ( .A(neighborCount[8]), .B(n414), .C(n223), .D(
        data_in[8]), .Z(n338) );
  HS65_GS_AO22X9 U285 ( .A(neighborCount[15]), .B(n414), .C(n223), .D(
        data_in[15]), .Z(n331) );
  HS65_GS_AO22X9 U286 ( .A(knownSinkCount[0]), .B(n220), .C(n221), .D(
        data_in[0]), .Z(n330) );
  HS65_GS_AO22X9 U287 ( .A(knownSinkCount[1]), .B(n220), .C(n221), .D(
        data_in[1]), .Z(n329) );
  HS65_GS_AO22X9 U288 ( .A(knownSinkCount[2]), .B(n220), .C(n221), .D(
        data_in[2]), .Z(n328) );
  HS65_GS_AO22X9 U289 ( .A(knownSinkCount[3]), .B(n220), .C(n221), .D(
        data_in[3]), .Z(n327) );
  HS65_GS_AO22X9 U290 ( .A(knownSinkCount[4]), .B(n220), .C(n221), .D(
        data_in[4]), .Z(n326) );
  HS65_GS_AO22X9 U291 ( .A(knownSinkCount[5]), .B(n220), .C(n221), .D(
        data_in[5]), .Z(n325) );
  HS65_GS_AO22X9 U292 ( .A(knownSinkCount[6]), .B(n220), .C(n221), .D(
        data_in[6]), .Z(n324) );
  HS65_GS_AO22X9 U293 ( .A(knownSinkCount[7]), .B(n220), .C(n221), .D(
        data_in[7]), .Z(n323) );
  HS65_GS_AO22X9 U294 ( .A(knownSinkCount[8]), .B(n220), .C(n221), .D(
        data_in[8]), .Z(n322) );
  HS65_GS_AO22X9 U295 ( .A(knownSinkCount[9]), .B(n220), .C(n221), .D(
        data_in[9]), .Z(n321) );
  HS65_GS_AO22X9 U296 ( .A(knownSinkCount[10]), .B(n220), .C(n221), .D(
        data_in[10]), .Z(n320) );
  HS65_GS_AO22X9 U297 ( .A(knownSinkCount[11]), .B(n220), .C(n221), .D(
        data_in[11]), .Z(n319) );
  HS65_GS_AO22X9 U298 ( .A(knownSinkCount[12]), .B(n220), .C(n221), .D(
        data_in[12]), .Z(n318) );
  HS65_GS_AO22X9 U299 ( .A(knownSinkCount[13]), .B(n220), .C(n221), .D(
        data_in[13]), .Z(n317) );
  HS65_GS_AO22X9 U300 ( .A(knownSinkCount[14]), .B(n220), .C(n221), .D(
        data_in[14]), .Z(n316) );
  HS65_GS_AO22X9 U301 ( .A(knownSinkCount[15]), .B(n220), .C(n221), .D(
        data_in[15]), .Z(n315) );
  HS65_GS_AO22X9 U302 ( .A(n[2]), .B(n218), .C(N218), .D(n2), .Z(n313) );
  HS65_GS_AO22X9 U303 ( .A(n[5]), .B(n218), .C(N221), .D(n2), .Z(n310) );
  HS65_GS_AO22X9 U304 ( .A(n[3]), .B(n218), .C(N219), .D(n2), .Z(n312) );
  HS65_GS_AO22X9 U305 ( .A(n[4]), .B(n218), .C(N220), .D(n2), .Z(n311) );
  HS65_GS_AO22X9 U306 ( .A(n[6]), .B(n218), .C(N222), .D(n2), .Z(n309) );
  HS65_GS_AO22X9 U307 ( .A(n[7]), .B(n218), .C(N223), .D(n2), .Z(n308) );
  HS65_GS_AO22X9 U308 ( .A(n[8]), .B(n218), .C(N224), .D(n2), .Z(n307) );
  HS65_GS_AND2X4 U309 ( .A(sinkID_address_buf[1]), .B(n153), .Z(n281) );
  HS65_GS_AND2X4 U310 ( .A(sinkID_address_buf[2]), .B(n153), .Z(n280) );
  HS65_GS_AND2X4 U311 ( .A(sinkID_address_buf[0]), .B(n153), .Z(n282) );
  HS65_GS_NOR2X6 U312 ( .A(state[4]), .B(state[0]), .Z(n259) );
  HS65_GS_IVX9 U313 ( .A(knownSinkCount[1]), .Z(n49) );
  HS65_GS_IVX9 U314 ( .A(N249), .Z(n50) );
  HS65_GS_IVX9 U315 ( .A(state[1]), .Z(n426) );
  HS65_GS_NOR2AX3 U316 ( .A(state[0]), .B(state[4]), .Z(n236) );
  HS65_GS_NOR3X4 U317 ( .A(state[1]), .B(state[3]), .C(n427), .Z(n224) );
  HS65_GS_NOR2X6 U318 ( .A(state[3]), .B(state[2]), .Z(n252) );
  HS65_GS_AOI222X2 U319 ( .A(N246), .B(n80), .C(N257), .D(n81), .E(N392), .F(
        n82), .Z(n79) );
  HS65_GS_AOI222X2 U320 ( .A(N239), .B(n80), .C(N250), .D(n81), .E(N385), .F(
        n82), .Z(n124) );
  HS65_GS_IVX9 U321 ( .A(k[2]), .Z(N250) );
  HS65_GS_AOI222X2 U322 ( .A(N243), .B(n80), .C(N254), .D(n81), .E(N389), .F(
        n82), .Z(n104) );
  HS65_GS_AOI222X2 U323 ( .A(N245), .B(n80), .C(N256), .D(n81), .E(N391), .F(
        n82), .Z(n94) );
  HS65_GS_AOI222X2 U324 ( .A(N242), .B(n80), .C(N253), .D(n81), .E(N388), .F(
        n82), .Z(n107) );
  HS65_GS_AOI222X2 U325 ( .A(N241), .B(n80), .C(N252), .D(n81), .E(N387), .F(
        n82), .Z(n112) );
  HS65_GS_AOI222X2 U326 ( .A(N240), .B(n80), .C(N251), .D(n81), .E(N386), .F(
        n82), .Z(n117) );
  HS65_GS_AOI222X2 U327 ( .A(N356), .B(n7), .C(N280), .D(n84), .E(N367), .F(n5), .Z(n78) );
  HS65_GS_AOI222X2 U328 ( .A(N354), .B(n7), .C(N278), .D(n84), .E(N365), .F(n5), .Z(n96) );
  HS65_GS_AOI222X2 U329 ( .A(N353), .B(n7), .C(N277), .D(n84), .E(N364), .F(n5), .Z(n103) );
  HS65_GS_AOI222X2 U330 ( .A(N355), .B(n7), .C(N279), .D(n84), .E(N366), .F(n5), .Z(n93) );
  HS65_GS_NOR3X4 U331 ( .A(n427), .B(state[3]), .C(n426), .Z(n256) );
  HS65_GS_AOI222X2 U332 ( .A(N360), .B(n7), .C(N273), .D(n84), .E(N360), .F(n5), .Z(n123) );
  HS65_GS_IVX9 U333 ( .A(neighborCount[2]), .Z(N360) );
  HS65_GS_NOR2X6 U334 ( .A(n412), .B(state[2]), .Z(n250) );
  HS65_GS_AOI212X4 U335 ( .A(N384), .B(n82), .C(N249), .D(n81), .E(n410), .Z(
        n132) );
  HS65_GS_NAND3X5 U336 ( .A(n250), .B(n236), .C(state[1]), .Z(n246) );
  HS65_GS_NOR2AX3 U337 ( .A(state[4]), .B(state[0]), .Z(n235) );
  HS65_GS_NAND3X5 U338 ( .A(n250), .B(n259), .C(state[1]), .Z(n240) );
  HS65_GS_IVX9 U339 ( .A(N326), .Z(n139) );
  HS65_GS_AOI13X5 U340 ( .A(reinit), .B(n410), .C(found), .D(n84), .Z(n150) );
  HS65_GS_NOR2AX3 U341 ( .A(n236), .B(state[1]), .Z(n251) );
  HS65_GS_IVX9 U342 ( .A(state[2]), .Z(n427) );
  HS65_GS_AND3X9 U343 ( .A(state[1]), .B(n259), .C(n237), .Z(n83) );
  HS65_GS_AND3X9 U344 ( .A(state[1]), .B(n236), .C(n237), .Z(n85) );
  HS65_GS_NOR4ABX2 U345 ( .A(n137), .B(n138), .C(n424), .D(n421), .Z(n136) );
  HS65_GS_AOI22X6 U346 ( .A(N248), .B(n81), .C(N383), .D(n82), .Z(n137) );
  HS65_GS_AOI222X2 U347 ( .A(N325), .B(n5), .C(N237), .D(n80), .E(N271), .F(
        n84), .Z(n138) );
  HS65_GS_IVX9 U348 ( .A(N325), .Z(N383) );
  HS65_GS_IVX9 U349 ( .A(state[3]), .Z(n412) );
  HS65_GS_NAND2X7 U350 ( .A(state[4]), .B(state[0]), .Z(n254) );
  HS65_GS_IVX9 U351 ( .A(N192), .Z(n140) );
  HS65_GS_AO222X4 U352 ( .A(N332), .B(n4), .C(N343), .D(n89), .E(N316), .F(
        n411), .Z(n99) );
  HS65_GS_AO222X4 U353 ( .A(N330), .B(n4), .C(N341), .D(n89), .E(N314), .F(
        n411), .Z(n109) );
  HS65_GS_AO222X4 U354 ( .A(N328), .B(n4), .C(N339), .D(n89), .E(N312), .F(
        n411), .Z(n119) );
  HS65_GS_AO222X4 U355 ( .A(N329), .B(n4), .C(N340), .D(n89), .E(N313), .F(
        n411), .Z(n114) );
  HS65_GS_AO222X4 U356 ( .A(N272), .B(n84), .C(N238), .D(n80), .E(N326), .F(n6), .Z(n130) );
  HS65_GS_IVX9 U357 ( .A(N248), .Z(N237) );
  HS65_GS_IVX9 U358 ( .A(n[2]), .Z(N193) );
  HS65_GSS_XNOR2X3 U359 ( .A(neighborCount[9]), .B(\add_176/carry[10] ), .Z(
        N392) );
  HS65_GSS_XOR2X3 U360 ( .A(k[9]), .B(\r158/carry[10] ), .Z(N257) );
  HS65_GSS_XNOR2X3 U361 ( .A(k[9]), .B(\add_84/carry[10] ), .Z(N246) );
  HS65_GSS_XOR2X3 U362 ( .A(neighborCount[9]), .B(\add_163/carry[10] ), .Z(
        N367) );
  HS65_GSS_XOR2X3 U363 ( .A(neighborCount[9]), .B(\add_157/carry[10] ), .Z(
        N356) );
  HS65_GSS_XOR2X3 U364 ( .A(n[9]), .B(\add_59/carry[10] ), .Z(N200) );
  HS65_GSS_XOR2X3 U365 ( .A(n[9]), .B(\add_108/carry[10] ), .Z(N307) );
  HS65_GSS_XOR2X3 U366 ( .A(n[9]), .B(\add_114/carry[10] ), .Z(N318) );
  HS65_GSS_XOR2X3 U367 ( .A(neighborCount[9]), .B(\add_151/carry[10] ), .Z(
        N345) );
  HS65_GSS_XOR2X3 U368 ( .A(neighborCount[9]), .B(\add_144/carry[10] ), .Z(
        N334) );
  HS65_GS_OR2X4 U369 ( .A(\add_176/carry[9] ), .B(neighborCount[8]), .Z(
        \add_176/carry[10] ) );
  HS65_GSS_XNOR2X3 U370 ( .A(neighborCount[8]), .B(\add_176/carry[9] ), .Z(
        N391) );
  HS65_GS_AND2X4 U371 ( .A(k[8]), .B(\r158/carry[9] ), .Z(\r158/carry[10] ) );
  HS65_GSS_XOR2X3 U372 ( .A(\r158/carry[9] ), .B(k[8]), .Z(N256) );
  HS65_GS_OR2X4 U373 ( .A(\add_84/carry[9] ), .B(k[8]), .Z(\add_84/carry[10] )
         );
  HS65_GSS_XNOR2X3 U374 ( .A(k[8]), .B(\add_84/carry[9] ), .Z(N245) );
  HS65_GS_AND2X4 U375 ( .A(neighborCount[8]), .B(\add_163/carry[9] ), .Z(
        \add_163/carry[10] ) );
  HS65_GSS_XOR2X3 U376 ( .A(\add_163/carry[9] ), .B(neighborCount[8]), .Z(N366) );
  HS65_GS_AND2X4 U377 ( .A(neighborCount[8]), .B(\add_157/carry[9] ), .Z(
        \add_157/carry[10] ) );
  HS65_GSS_XOR2X3 U378 ( .A(\add_157/carry[9] ), .B(neighborCount[8]), .Z(N355) );
  HS65_GS_AND2X4 U379 ( .A(n[8]), .B(\add_59/carry[9] ), .Z(\add_59/carry[10] ) );
  HS65_GSS_XOR2X3 U380 ( .A(\add_59/carry[9] ), .B(n[8]), .Z(N199) );
  HS65_GS_AND2X4 U381 ( .A(n[8]), .B(\add_108/carry[9] ), .Z(
        \add_108/carry[10] ) );
  HS65_GSS_XOR2X3 U382 ( .A(\add_108/carry[9] ), .B(n[8]), .Z(N306) );
  HS65_GS_AND2X4 U383 ( .A(n[8]), .B(\add_114/carry[9] ), .Z(
        \add_114/carry[10] ) );
  HS65_GSS_XOR2X3 U384 ( .A(\add_114/carry[9] ), .B(n[8]), .Z(N317) );
  HS65_GS_AND2X4 U385 ( .A(neighborCount[8]), .B(\add_151/carry[9] ), .Z(
        \add_151/carry[10] ) );
  HS65_GSS_XOR2X3 U386 ( .A(\add_151/carry[9] ), .B(neighborCount[8]), .Z(N344) );
  HS65_GS_AND2X4 U387 ( .A(neighborCount[8]), .B(\add_144/carry[9] ), .Z(
        \add_144/carry[10] ) );
  HS65_GSS_XOR2X3 U388 ( .A(\add_144/carry[9] ), .B(neighborCount[8]), .Z(N333) );
  HS65_GS_OR2X4 U389 ( .A(\add_114/carry[8] ), .B(n[7]), .Z(\add_114/carry[9] ) );
  HS65_GSS_XNOR2X3 U390 ( .A(n[7]), .B(\add_114/carry[8] ), .Z(N316) );
  HS65_GS_OR2X4 U391 ( .A(\add_151/carry[8] ), .B(neighborCount[7]), .Z(
        \add_151/carry[9] ) );
  HS65_GSS_XNOR2X3 U392 ( .A(neighborCount[7]), .B(\add_151/carry[8] ), .Z(
        N343) );
  HS65_GS_AND2X4 U393 ( .A(neighborCount[7]), .B(\add_144/carry[8] ), .Z(
        \add_144/carry[9] ) );
  HS65_GSS_XOR2X3 U394 ( .A(\add_144/carry[8] ), .B(neighborCount[7]), .Z(N332) );
  HS65_GS_AND2X4 U395 ( .A(n[7]), .B(\add_59/carry[8] ), .Z(\add_59/carry[9] )
         );
  HS65_GSS_XOR2X3 U396 ( .A(\add_59/carry[8] ), .B(n[7]), .Z(N198) );
  HS65_GS_OR2X4 U397 ( .A(\add_108/carry[8] ), .B(n[7]), .Z(\add_108/carry[9] ) );
  HS65_GSS_XNOR2X3 U398 ( .A(n[7]), .B(\add_108/carry[8] ), .Z(N305) );
  HS65_GS_AND2X4 U399 ( .A(neighborCount[7]), .B(\add_176/carry[8] ), .Z(
        \add_176/carry[9] ) );
  HS65_GSS_XOR2X3 U400 ( .A(\add_176/carry[8] ), .B(neighborCount[7]), .Z(N390) );
  HS65_GS_AND2X4 U401 ( .A(k[7]), .B(\r158/carry[8] ), .Z(\r158/carry[9] ) );
  HS65_GSS_XOR2X3 U402 ( .A(\r158/carry[8] ), .B(k[7]), .Z(N255) );
  HS65_GS_AND2X4 U403 ( .A(k[7]), .B(\add_84/carry[8] ), .Z(\add_84/carry[9] )
         );
  HS65_GSS_XOR2X3 U404 ( .A(\add_84/carry[8] ), .B(k[7]), .Z(N244) );
  HS65_GS_AND2X4 U405 ( .A(neighborCount[7]), .B(\add_163/carry[8] ), .Z(
        \add_163/carry[9] ) );
  HS65_GSS_XOR2X3 U406 ( .A(\add_163/carry[8] ), .B(neighborCount[7]), .Z(N365) );
  HS65_GS_OR2X4 U407 ( .A(\add_157/carry[8] ), .B(neighborCount[7]), .Z(
        \add_157/carry[9] ) );
  HS65_GSS_XNOR2X3 U408 ( .A(neighborCount[7]), .B(\add_157/carry[8] ), .Z(
        N354) );
  HS65_GS_OR2X4 U409 ( .A(\add_176/carry[7] ), .B(neighborCount[6]), .Z(
        \add_176/carry[8] ) );
  HS65_GSS_XNOR2X3 U410 ( .A(neighborCount[6]), .B(\add_176/carry[7] ), .Z(
        N389) );
  HS65_GS_AND2X4 U411 ( .A(k[6]), .B(\r158/carry[7] ), .Z(\r158/carry[8] ) );
  HS65_GSS_XOR2X3 U412 ( .A(\r158/carry[7] ), .B(k[6]), .Z(N254) );
  HS65_GS_OR2X4 U413 ( .A(\add_84/carry[7] ), .B(k[6]), .Z(\add_84/carry[8] )
         );
  HS65_GSS_XNOR2X3 U414 ( .A(k[6]), .B(\add_84/carry[7] ), .Z(N243) );
  HS65_GS_OR2X4 U415 ( .A(\add_163/carry[7] ), .B(neighborCount[6]), .Z(
        \add_163/carry[8] ) );
  HS65_GSS_XNOR2X3 U416 ( .A(neighborCount[6]), .B(\add_163/carry[7] ), .Z(
        N364) );
  HS65_GS_OR2X4 U417 ( .A(\add_157/carry[7] ), .B(neighborCount[6]), .Z(
        \add_157/carry[8] ) );
  HS65_GSS_XNOR2X3 U418 ( .A(neighborCount[6]), .B(\add_157/carry[7] ), .Z(
        N353) );
  HS65_GS_AND2X4 U419 ( .A(n[6]), .B(\add_59/carry[7] ), .Z(\add_59/carry[8] )
         );
  HS65_GSS_XOR2X3 U420 ( .A(\add_59/carry[7] ), .B(n[6]), .Z(N197) );
  HS65_GS_AND2X4 U421 ( .A(n[6]), .B(\add_108/carry[7] ), .Z(
        \add_108/carry[8] ) );
  HS65_GSS_XOR2X3 U422 ( .A(\add_108/carry[7] ), .B(n[6]), .Z(N304) );
  HS65_GS_OR2X4 U423 ( .A(\add_114/carry[7] ), .B(n[6]), .Z(\add_114/carry[8] ) );
  HS65_GSS_XNOR2X3 U424 ( .A(n[6]), .B(\add_114/carry[7] ), .Z(N315) );
  HS65_GS_AND2X4 U425 ( .A(neighborCount[6]), .B(\add_151/carry[7] ), .Z(
        \add_151/carry[8] ) );
  HS65_GSS_XOR2X3 U426 ( .A(\add_151/carry[7] ), .B(neighborCount[6]), .Z(N342) );
  HS65_GS_AND2X4 U427 ( .A(neighborCount[6]), .B(\add_144/carry[7] ), .Z(
        \add_144/carry[8] ) );
  HS65_GSS_XOR2X3 U428 ( .A(\add_144/carry[7] ), .B(neighborCount[6]), .Z(N331) );
  HS65_GS_OR2X4 U429 ( .A(\add_114/carry[6] ), .B(n[5]), .Z(\add_114/carry[7] ) );
  HS65_GSS_XNOR2X3 U430 ( .A(n[5]), .B(\add_114/carry[6] ), .Z(N314) );
  HS65_GS_OR2X4 U431 ( .A(\add_151/carry[6] ), .B(neighborCount[5]), .Z(
        \add_151/carry[7] ) );
  HS65_GSS_XNOR2X3 U432 ( .A(neighborCount[5]), .B(\add_151/carry[6] ), .Z(
        N341) );
  HS65_GS_OR2X4 U433 ( .A(\add_144/carry[6] ), .B(neighborCount[5]), .Z(
        \add_144/carry[7] ) );
  HS65_GSS_XNOR2X3 U434 ( .A(neighborCount[5]), .B(\add_144/carry[6] ), .Z(
        N330) );
  HS65_GS_OR2X4 U435 ( .A(\add_59/carry[6] ), .B(n[5]), .Z(\add_59/carry[7] )
         );
  HS65_GSS_XNOR2X3 U436 ( .A(n[5]), .B(\add_59/carry[6] ), .Z(N196) );
  HS65_GS_OR2X4 U437 ( .A(\add_108/carry[6] ), .B(n[5]), .Z(\add_108/carry[7] ) );
  HS65_GSS_XNOR2X3 U438 ( .A(n[5]), .B(\add_108/carry[6] ), .Z(N303) );
  HS65_GS_AND2X4 U439 ( .A(neighborCount[5]), .B(\add_176/carry[6] ), .Z(
        \add_176/carry[7] ) );
  HS65_GSS_XOR2X3 U440 ( .A(\add_176/carry[6] ), .B(neighborCount[5]), .Z(N388) );
  HS65_GS_AND2X4 U441 ( .A(k[5]), .B(\r158/carry[6] ), .Z(\r158/carry[7] ) );
  HS65_GSS_XOR2X3 U442 ( .A(\r158/carry[6] ), .B(k[5]), .Z(N253) );
  HS65_GS_AND2X4 U443 ( .A(k[5]), .B(\add_84/carry[6] ), .Z(\add_84/carry[7] )
         );
  HS65_GSS_XOR2X3 U444 ( .A(\add_84/carry[6] ), .B(k[5]), .Z(N242) );
  HS65_GS_OR2X4 U445 ( .A(\add_163/carry[6] ), .B(neighborCount[5]), .Z(
        \add_163/carry[7] ) );
  HS65_GSS_XNOR2X3 U446 ( .A(neighborCount[5]), .B(\add_163/carry[6] ), .Z(
        N363) );
  HS65_GS_OR2X4 U447 ( .A(\add_157/carry[6] ), .B(neighborCount[5]), .Z(
        \add_157/carry[7] ) );
  HS65_GSS_XNOR2X3 U448 ( .A(neighborCount[5]), .B(\add_157/carry[6] ), .Z(
        N352) );
  HS65_GS_AND2X4 U449 ( .A(n[4]), .B(\add_114/carry[5] ), .Z(
        \add_114/carry[6] ) );
  HS65_GSS_XOR2X3 U450 ( .A(\add_114/carry[5] ), .B(n[4]), .Z(N313) );
  HS65_GS_AND2X4 U451 ( .A(neighborCount[4]), .B(\add_151/carry[5] ), .Z(
        \add_151/carry[6] ) );
  HS65_GSS_XOR2X3 U452 ( .A(\add_151/carry[5] ), .B(neighborCount[4]), .Z(N340) );
  HS65_GS_AND2X4 U453 ( .A(neighborCount[4]), .B(\add_144/carry[5] ), .Z(
        \add_144/carry[6] ) );
  HS65_GSS_XOR2X3 U454 ( .A(\add_144/carry[5] ), .B(neighborCount[4]), .Z(N329) );
  HS65_GS_AND2X4 U455 ( .A(n[4]), .B(\add_59/carry[5] ), .Z(\add_59/carry[6] )
         );
  HS65_GSS_XOR2X3 U456 ( .A(\add_59/carry[5] ), .B(n[4]), .Z(N195) );
  HS65_GS_AND2X4 U457 ( .A(n[4]), .B(\add_108/carry[5] ), .Z(
        \add_108/carry[6] ) );
  HS65_GSS_XOR2X3 U458 ( .A(\add_108/carry[5] ), .B(n[4]), .Z(N302) );
  HS65_GS_AND2X4 U459 ( .A(neighborCount[4]), .B(\add_176/carry[5] ), .Z(
        \add_176/carry[6] ) );
  HS65_GSS_XOR2X3 U460 ( .A(\add_176/carry[5] ), .B(neighborCount[4]), .Z(N387) );
  HS65_GS_AND2X4 U461 ( .A(k[4]), .B(\r158/carry[5] ), .Z(\r158/carry[6] ) );
  HS65_GSS_XOR2X3 U462 ( .A(\r158/carry[5] ), .B(k[4]), .Z(N252) );
  HS65_GS_AND2X4 U463 ( .A(k[4]), .B(\add_84/carry[5] ), .Z(\add_84/carry[6] )
         );
  HS65_GSS_XOR2X3 U464 ( .A(\add_84/carry[5] ), .B(k[4]), .Z(N241) );
  HS65_GS_AND2X4 U465 ( .A(neighborCount[4]), .B(\add_163/carry[5] ), .Z(
        \add_163/carry[6] ) );
  HS65_GSS_XOR2X3 U466 ( .A(\add_163/carry[5] ), .B(neighborCount[4]), .Z(N362) );
  HS65_GS_AND2X4 U467 ( .A(neighborCount[4]), .B(\add_157/carry[5] ), .Z(
        \add_157/carry[6] ) );
  HS65_GSS_XOR2X3 U468 ( .A(\add_157/carry[5] ), .B(neighborCount[4]), .Z(N351) );
  HS65_GS_AND2X4 U469 ( .A(n[3]), .B(n[2]), .Z(\add_114/carry[5] ) );
  HS65_GSS_XOR2X3 U470 ( .A(n[2]), .B(n[3]), .Z(N312) );
  HS65_GS_AND2X4 U471 ( .A(neighborCount[3]), .B(neighborCount[2]), .Z(
        \add_151/carry[5] ) );
  HS65_GSS_XOR2X3 U472 ( .A(neighborCount[2]), .B(neighborCount[3]), .Z(N339)
         );
  HS65_GS_AND2X4 U473 ( .A(neighborCount[3]), .B(neighborCount[2]), .Z(
        \add_144/carry[5] ) );
  HS65_GSS_XOR2X3 U474 ( .A(neighborCount[2]), .B(neighborCount[3]), .Z(N328)
         );
  HS65_GS_AND2X4 U475 ( .A(n[3]), .B(n[2]), .Z(\add_59/carry[5] ) );
  HS65_GSS_XOR2X3 U476 ( .A(n[2]), .B(n[3]), .Z(N194) );
  HS65_GS_AND2X4 U477 ( .A(n[3]), .B(n[2]), .Z(\add_108/carry[5] ) );
  HS65_GSS_XOR2X3 U478 ( .A(n[2]), .B(n[3]), .Z(N301) );
  HS65_GS_AND2X4 U479 ( .A(neighborCount[3]), .B(\add_176/carry[4] ), .Z(
        \add_176/carry[5] ) );
  HS65_GSS_XOR2X3 U480 ( .A(\add_176/carry[4] ), .B(neighborCount[3]), .Z(N386) );
  HS65_GS_AND2X4 U481 ( .A(k[3]), .B(k[2]), .Z(\r158/carry[5] ) );
  HS65_GSS_XOR2X3 U482 ( .A(k[2]), .B(k[3]), .Z(N251) );
  HS65_GS_AND2X4 U483 ( .A(k[3]), .B(\add_84/carry[4] ), .Z(\add_84/carry[5] )
         );
  HS65_GSS_XOR2X3 U484 ( .A(\add_84/carry[4] ), .B(k[3]), .Z(N240) );
  HS65_GS_AND2X4 U485 ( .A(neighborCount[3]), .B(neighborCount[2]), .Z(
        \add_163/carry[5] ) );
  HS65_GSS_XOR2X3 U486 ( .A(neighborCount[2]), .B(neighborCount[3]), .Z(N361)
         );
  HS65_GS_AND2X4 U487 ( .A(neighborCount[3]), .B(neighborCount[2]), .Z(
        \add_157/carry[5] ) );
  HS65_GSS_XOR2X3 U488 ( .A(neighborCount[2]), .B(neighborCount[3]), .Z(N350)
         );
  HS65_GS_OR2X4 U489 ( .A(\add_176/carry[3] ), .B(neighborCount[2]), .Z(
        \add_176/carry[4] ) );
  HS65_GSS_XNOR2X3 U490 ( .A(neighborCount[2]), .B(\add_176/carry[3] ), .Z(
        N385) );
  HS65_GS_OR2X4 U491 ( .A(\add_84/carry[3] ), .B(k[2]), .Z(\add_84/carry[4] )
         );
  HS65_GSS_XNOR2X3 U492 ( .A(k[2]), .B(\add_84/carry[3] ), .Z(N239) );
  HS65_GS_OR2X4 U493 ( .A(N325), .B(N326), .Z(\add_176/carry[3] ) );
  HS65_GSS_XNOR2X3 U494 ( .A(N326), .B(N325), .Z(N384) );
  HS65_GS_OR2X4 U495 ( .A(N248), .B(N249), .Z(\add_84/carry[3] ) );
  HS65_GSS_XNOR2X3 U496 ( .A(N249), .B(N248), .Z(N238) );
  HS65_GSS_XOR2X3 U497 ( .A(neighborCount[6]), .B(\add_169/carry[10] ), .Z(
        N378) );
  HS65_GSS_XOR2X3 U498 ( .A(n[6]), .B(\add_72/carry[10] ), .Z(N215) );
  HS65_GS_OR2X4 U499 ( .A(\add_169/carry[9] ), .B(neighborCount[5]), .Z(
        \add_169/carry[10] ) );
  HS65_GSS_XNOR2X3 U500 ( .A(neighborCount[5]), .B(\add_169/carry[9] ), .Z(
        N377) );
  HS65_GS_OR2X4 U501 ( .A(\add_72/carry[9] ), .B(n[5]), .Z(\add_72/carry[10] )
         );
  HS65_GSS_XNOR2X3 U502 ( .A(n[5]), .B(\add_72/carry[9] ), .Z(N214) );
  HS65_GS_AND2X4 U503 ( .A(neighborCount[4]), .B(\add_169/carry[8] ), .Z(
        \add_169/carry[9] ) );
  HS65_GSS_XOR2X3 U504 ( .A(\add_169/carry[8] ), .B(neighborCount[4]), .Z(N376) );
  HS65_GS_AND2X4 U505 ( .A(n[4]), .B(\add_72/carry[8] ), .Z(\add_72/carry[9] )
         );
  HS65_GSS_XOR2X3 U506 ( .A(\add_72/carry[8] ), .B(n[4]), .Z(N213) );
  HS65_GS_AND2X4 U507 ( .A(neighborCount[3]), .B(neighborCount[2]), .Z(
        \add_169/carry[8] ) );
  HS65_GSS_XOR2X3 U508 ( .A(neighborCount[2]), .B(neighborCount[3]), .Z(N375)
         );
  HS65_GS_AND2X4 U509 ( .A(n[3]), .B(n[2]), .Z(\add_72/carry[8] ) );
  HS65_GSS_XOR2X3 U510 ( .A(n[2]), .B(n[3]), .Z(N212) );
  HS65_GSS_XNOR2X3 U511 ( .A(knownSinkCount[14]), .B(k[14]), .Z(n30) );
  HS65_GSS_XNOR2X3 U512 ( .A(knownSinkCount[13]), .B(k[13]), .Z(n29) );
  HS65_GSS_XOR2X3 U513 ( .A(knownSinkCount[11]), .B(k[11]), .Z(n28) );
  HS65_GSS_XOR2X3 U514 ( .A(knownSinkCount[12]), .B(k[12]), .Z(n27) );
  HS65_GS_NOR4ABX2 U515 ( .A(n30), .B(n29), .C(n28), .D(n27), .Z(n48) );
  HS65_GSS_XNOR2X3 U516 ( .A(knownSinkCount[10]), .B(k[10]), .Z(n34) );
  HS65_GSS_XNOR2X3 U517 ( .A(knownSinkCount[9]), .B(k[9]), .Z(n33) );
  HS65_GSS_XOR2X3 U518 ( .A(knownSinkCount[7]), .B(k[7]), .Z(n32) );
  HS65_GSS_XOR2X3 U519 ( .A(knownSinkCount[8]), .B(k[8]), .Z(n31) );
  HS65_GS_NOR4ABX2 U520 ( .A(n34), .B(n33), .C(n32), .D(n31), .Z(n47) );
  HS65_GSS_XOR2X3 U521 ( .A(knownSinkCount[15]), .B(k[15]), .Z(n40) );
  HS65_GSS_XOR2X3 U522 ( .A(knownSinkCount[2]), .B(k[2]), .Z(n39) );
  HS65_GS_NOR2AX3 U523 ( .A(N248), .B(knownSinkCount[0]), .Z(n35) );
  HS65_GS_OAI22X1 U524 ( .A(N249), .B(n35), .C(n35), .D(n49), .Z(n38) );
  HS65_GS_NOR2AX3 U525 ( .A(knownSinkCount[0]), .B(N248), .Z(n36) );
  HS65_GS_OAI22X1 U526 ( .A(n36), .B(n50), .C(knownSinkCount[1]), .D(n36), .Z(
        n37) );
  HS65_GS_NAND4ABX3 U527 ( .A(n40), .B(n39), .C(n38), .D(n37), .Z(n46) );
  HS65_GSS_XOR2X3 U528 ( .A(knownSinkCount[3]), .B(k[3]), .Z(n44) );
  HS65_GSS_XOR2X3 U529 ( .A(knownSinkCount[4]), .B(k[4]), .Z(n43) );
  HS65_GSS_XNOR2X3 U530 ( .A(knownSinkCount[6]), .B(k[6]), .Z(n42) );
  HS65_GSS_XNOR2X3 U531 ( .A(knownSinkCount[5]), .B(k[5]), .Z(n41) );
  HS65_GS_NAND4ABX3 U532 ( .A(n44), .B(n43), .C(n42), .D(n41), .Z(n45) );
  HS65_GS_NOR4ABX2 U533 ( .A(n48), .B(n47), .C(n46), .D(n45), .Z(N234) );
  HS65_GSS_XNOR2X3 U534 ( .A(neighborCount[14]), .B(n[14]), .Z(n54) );
  HS65_GSS_XNOR2X3 U535 ( .A(neighborCount[13]), .B(n[13]), .Z(n53) );
  HS65_GSS_XOR2X3 U536 ( .A(neighborCount[11]), .B(n[11]), .Z(n52) );
  HS65_GSS_XOR2X3 U537 ( .A(neighborCount[12]), .B(n[12]), .Z(n51) );
  HS65_GS_NOR4ABX2 U538 ( .A(n54), .B(n53), .C(n52), .D(n51), .Z(n72) );
  HS65_GSS_XNOR2X3 U539 ( .A(neighborCount[10]), .B(n[10]), .Z(n58) );
  HS65_GSS_XNOR2X3 U540 ( .A(neighborCount[9]), .B(n[9]), .Z(n57) );
  HS65_GSS_XOR2X3 U541 ( .A(neighborCount[7]), .B(n[7]), .Z(n56) );
  HS65_GSS_XOR2X3 U542 ( .A(neighborCount[8]), .B(n[8]), .Z(n55) );
  HS65_GS_NOR4ABX2 U543 ( .A(n58), .B(n57), .C(n56), .D(n55), .Z(n71) );
  HS65_GSS_XOR2X3 U544 ( .A(neighborCount[15]), .B(n[15]), .Z(n64) );
  HS65_GSS_XOR2X3 U545 ( .A(neighborCount[2]), .B(n[2]), .Z(n63) );
  HS65_GS_NOR2AX3 U546 ( .A(N191), .B(N325), .Z(n59) );
  HS65_GS_OAI22X1 U547 ( .A(N192), .B(n59), .C(n59), .D(n139), .Z(n62) );
  HS65_GS_NOR2AX3 U548 ( .A(N325), .B(N191), .Z(n60) );
  HS65_GS_OAI22X1 U549 ( .A(n60), .B(n140), .C(N326), .D(n60), .Z(n61) );
  HS65_GS_NAND4ABX3 U550 ( .A(n64), .B(n63), .C(n62), .D(n61), .Z(n70) );
  HS65_GSS_XOR2X3 U551 ( .A(neighborCount[3]), .B(n[3]), .Z(n68) );
  HS65_GSS_XOR2X3 U552 ( .A(neighborCount[4]), .B(n[4]), .Z(n67) );
  HS65_GSS_XNOR2X3 U553 ( .A(neighborCount[6]), .B(n[6]), .Z(n66) );
  HS65_GSS_XNOR2X3 U554 ( .A(neighborCount[5]), .B(n[5]), .Z(n65) );
  HS65_GS_NAND4ABX3 U555 ( .A(n68), .B(n67), .C(n66), .D(n65), .Z(n69) );
  HS65_GS_NOR4ABX2 U556 ( .A(n72), .B(n71), .C(n70), .D(n69), .Z(N188) );
  HS65_GSS_XNOR2X3 U557 ( .A(fsourceID[14]), .B(data_in[14]), .Z(n367) );
  HS65_GSS_XNOR2X3 U558 ( .A(fsourceID[13]), .B(data_in[13]), .Z(n143) );
  HS65_GSS_XOR2X3 U559 ( .A(fsourceID[11]), .B(data_in[11]), .Z(n142) );
  HS65_GSS_XOR2X3 U560 ( .A(fsourceID[12]), .B(data_in[12]), .Z(n141) );
  HS65_GS_NOR4ABX2 U561 ( .A(n367), .B(n143), .C(n142), .D(n141), .Z(n385) );
  HS65_GSS_XNOR2X3 U562 ( .A(fsourceID[10]), .B(data_in[10]), .Z(n371) );
  HS65_GSS_XNOR2X3 U563 ( .A(fsourceID[9]), .B(data_in[9]), .Z(n370) );
  HS65_GSS_XOR2X3 U564 ( .A(fsourceID[7]), .B(data_in[7]), .Z(n369) );
  HS65_GSS_XOR2X3 U565 ( .A(fsourceID[8]), .B(data_in[8]), .Z(n368) );
  HS65_GS_NOR4ABX2 U566 ( .A(n371), .B(n370), .C(n369), .D(n368), .Z(n384) );
  HS65_GSS_XOR2X3 U567 ( .A(fsourceID[15]), .B(data_in[15]), .Z(n377) );
  HS65_GSS_XOR2X3 U568 ( .A(fsourceID[2]), .B(data_in[2]), .Z(n376) );
  HS65_GS_NOR2AX3 U569 ( .A(data_in[0]), .B(fsourceID[0]), .Z(n372) );
  HS65_GS_OAI22X1 U570 ( .A(data_in[1]), .B(n372), .C(n372), .D(n386), .Z(n375) );
  HS65_GS_NOR2AX3 U571 ( .A(fsourceID[0]), .B(data_in[0]), .Z(n373) );
  HS65_GS_OAI22X1 U572 ( .A(n373), .B(n9), .C(fsourceID[1]), .D(n373), .Z(n374) );
  HS65_GS_NAND4ABX3 U573 ( .A(n377), .B(n376), .C(n375), .D(n374), .Z(n383) );
  HS65_GSS_XOR2X3 U574 ( .A(fsourceID[3]), .B(data_in[3]), .Z(n381) );
  HS65_GSS_XOR2X3 U575 ( .A(fsourceID[4]), .B(data_in[4]), .Z(n380) );
  HS65_GSS_XNOR2X3 U576 ( .A(fsourceID[6]), .B(data_in[6]), .Z(n379) );
  HS65_GSS_XNOR2X3 U577 ( .A(fsourceID[5]), .B(data_in[5]), .Z(n378) );
  HS65_GS_NAND4ABX3 U578 ( .A(n381), .B(n380), .C(n379), .D(n378), .Z(n382) );
  HS65_GS_NOR4ABX2 U579 ( .A(n385), .B(n384), .C(n383), .D(n382), .Z(N203) );
  HS65_GS_NOR2AX3 U580 ( .A(fValue[0]), .B(data_in[0]), .Z(n388) );
  HS65_GS_NOR2AX3 U581 ( .A(n388), .B(data_in[1]), .Z(n387) );
  HS65_GS_OA222X4 U582 ( .A(n388), .B(n9), .C(fValue[1]), .D(n387), .E(
        fValue[2]), .F(n10), .Z(n389) );
  HS65_GS_AO212X4 U583 ( .A(n10), .B(fValue[2]), .C(n11), .D(fValue[3]), .E(
        n389), .Z(n390) );
  HS65_GS_OA212X4 U584 ( .A(fValue[3]), .B(n11), .C(fValue[4]), .D(n12), .E(
        n390), .Z(n391) );
  HS65_GS_AO212X4 U585 ( .A(n12), .B(fValue[4]), .C(n13), .D(fValue[5]), .E(
        n391), .Z(n392) );
  HS65_GS_OA212X4 U586 ( .A(fValue[5]), .B(n13), .C(fValue[6]), .D(n14), .E(
        n392), .Z(n393) );
  HS65_GS_AO212X4 U587 ( .A(n14), .B(fValue[6]), .C(n16), .D(fValue[7]), .E(
        n393), .Z(n394) );
  HS65_GS_OA212X4 U588 ( .A(fValue[7]), .B(n16), .C(fValue[8]), .D(n17), .E(
        n394), .Z(n395) );
  HS65_GS_AO212X4 U589 ( .A(n17), .B(fValue[8]), .C(n18), .D(fValue[9]), .E(
        n395), .Z(n396) );
  HS65_GS_OA212X4 U590 ( .A(fValue[10]), .B(n19), .C(fValue[9]), .D(n18), .E(
        n396), .Z(n397) );
  HS65_GS_AO212X4 U591 ( .A(n19), .B(fValue[10]), .C(n20), .D(fValue[11]), .E(
        n397), .Z(n398) );
  HS65_GS_OA212X4 U592 ( .A(fValue[11]), .B(n20), .C(fValue[12]), .D(n21), .E(
        n398), .Z(n399) );
  HS65_GS_AO212X4 U593 ( .A(n21), .B(fValue[12]), .C(n22), .D(fValue[13]), .E(
        n399), .Z(n400) );
  HS65_GS_OAI212X3 U594 ( .A(fValue[13]), .B(n22), .C(fValue[14]), .D(n23), 
        .E(n400), .Z(n401) );
  HS65_GS_OAI12X2 U595 ( .A(data_in[14]), .B(n404), .C(n401), .Z(n402) );
  HS65_GS_OAI12X2 U596 ( .A(fValue[15]), .B(n24), .C(n402), .Z(n403) );
  HS65_GS_OAI12X2 U597 ( .A(data_in[15]), .B(n405), .C(n403), .Z(N319) );
endmodule


module amISink ( clock, nrst, en, start, address, wr_en, data_in, data_out, 
        forAggregation, done );
  output [10:0] address;
  input [15:0] data_in;
  output [15:0] data_out;
  input clock, nrst, en, start;
  output wr_en, forAggregation, done;
  wire   N55, N56, N57, n1, n12, n13, n14, n15, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n2, n3, n4, n5, n6,
         n7, n8, n9, n11;
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

  HS65_GS_DFPQX9 \state_reg[0]  ( .D(N55), .CP(clock), .Q(state[0]) );
  HS65_GS_DFPQX9 \state_reg[2]  ( .D(N57), .CP(clock), .Q(state[2]) );
  HS65_GS_DFPQX9 \state_reg[1]  ( .D(N56), .CP(clock), .Q(state[1]) );
  HS65_GS_DFPQX9 forAggregation_buf_reg ( .D(n32), .CP(clock), .Q(
        forAggregation) );
  HS65_GS_DFPQX9 data_out_buf_reg ( .D(n30), .CP(clock), .Q(data_out[0]) );
  HS65_GS_DFPQNX9 done_buf_reg ( .D(n31), .CP(clock), .QN(n1) );
  HS65_GS_DFPHQX4 wr_en_buf_reg ( .D(n12), .E(n2), .CP(clock), .Q(wr_en) );
  HS65_GS_DFPHQX4 \address_count_reg[1]  ( .D(n12), .E(n3), .CP(clock), .Q(
        address[1]) );
  HS65_GS_IVX9 U13 ( .A(n4), .Z(n5) );
  HS65_GS_BFX9 U14 ( .A(nrst), .Z(n4) );
  HS65_GS_NOR2AX3 U15 ( .A(n23), .B(n19), .Z(n13) );
  HS65_GS_NOR2X6 U16 ( .A(n5), .B(n19), .Z(n12) );
  HS65_GS_IVX9 U17 ( .A(n15), .Z(n8) );
  HS65_GS_AO12X9 U18 ( .A(n4), .B(n14), .C(n12), .Z(N56) );
  HS65_GS_OR3X9 U19 ( .A(n13), .B(n14), .C(n15), .Z(n2) );
  HS65_GS_OAI32X5 U20 ( .A(n5), .B(n6), .C(n17), .D(n1), .E(n18), .Z(n31) );
  HS65_GS_IVX9 U21 ( .A(n18), .Z(n6) );
  HS65_GS_OAI21X3 U22 ( .A(n7), .B(n17), .C(n8), .Z(n18) );
  HS65_GS_OAI21X3 U23 ( .A(n21), .B(n11), .C(n4), .Z(n15) );
  HS65_GS_IVX9 U24 ( .A(en), .Z(n11) );
  HS65_GS_OAI212X5 U25 ( .A(n20), .B(n9), .C(en), .D(n21), .E(n22), .Z(N57) );
  HS65_GS_AOI12X2 U26 ( .A(state[1]), .B(state[0]), .C(n5), .Z(n22) );
  HS65_GS_CBI4I6X5 U27 ( .A(n23), .B(n19), .C(n24), .D(n5), .Z(N55) );
  HS65_GS_AOI13X5 U28 ( .A(n7), .B(n9), .C(start), .D(n14), .Z(n24) );
  HS65_GS_OR4X4 U29 ( .A(data_in[14]), .B(data_in[13]), .C(data_in[1]), .D(
        data_in[15]), .Z(n29) );
  HS65_GS_NOR2X6 U30 ( .A(data_in[12]), .B(data_in[11]), .Z(n28) );
  HS65_GS_IVX9 U31 ( .A(n1), .Z(done) );
  HS65_GS_AND3X9 U32 ( .A(n25), .B(n26), .C(n27), .Z(n23) );
  HS65_GS_NOR4X4 U33 ( .A(data_in[9]), .B(data_in[8]), .C(data_in[7]), .D(
        data_in[6]), .Z(n26) );
  HS65_GS_NOR4X4 U34 ( .A(data_in[5]), .B(data_in[4]), .C(data_in[3]), .D(
        data_in[2]), .Z(n25) );
  HS65_GS_NOR4ABX2 U35 ( .A(data_in[0]), .B(n28), .C(n29), .D(data_in[10]), 
        .Z(n27) );
  HS65_GS_AO32X4 U36 ( .A(n8), .B(n19), .C(forAggregation), .D(n13), .E(n4), 
        .Z(n32) );
  HS65_GS_AO311X9 U37 ( .A(start), .B(n9), .C(n20), .D(n13), .E(n15), .Z(n3)
         );
  HS65_GS_OA12X9 U38 ( .A(n13), .B(data_out[0]), .C(n4), .Z(n30) );
  HS65_GS_NOR2X6 U39 ( .A(state[1]), .B(state[0]), .Z(n20) );
  HS65_GS_NOR2X6 U40 ( .A(n17), .B(state[0]), .Z(n14) );
  HS65_GS_IVX9 U41 ( .A(state[2]), .Z(n9) );
  HS65_GS_NAND2X7 U42 ( .A(state[1]), .B(n9), .Z(n17) );
  HS65_GS_IVX9 U43 ( .A(state[0]), .Z(n7) );
  HS65_GS_NAND2X7 U44 ( .A(state[2]), .B(n20), .Z(n21) );
  HS65_GS_OR3X9 U45 ( .A(state[1]), .B(state[2]), .C(n7), .Z(n19) );
endmodule


module amIDestination ( clock, nrst, en, start, MY_NODE_ID, destinationID, 
        iamDestination, done );
  input [15:0] MY_NODE_ID;
  input [15:0] destinationID;
  input clock, nrst, en, start;
  output iamDestination, done;
  wire   N23, N38, N39, n9, n10, n11, n12, n13, n14, n15, n17, n18, n19, n1,
         n2, n3, n4, n5, n6, n7, n8, n16, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42;
  wire   [2:0] state;

  HS65_GS_DFPQX9 \state_reg[0]  ( .D(N38), .CP(clock), .Q(state[0]) );
  HS65_GS_DFPQX9 \state_reg[1]  ( .D(N39), .CP(clock), .Q(state[1]) );
  HS65_GS_DFPQX9 iamDestination_buf_reg ( .D(n18), .CP(clock), .Q(
        iamDestination) );
  HS65_GS_DFPQX9 done_buf_reg ( .D(n19), .CP(clock), .Q(done) );
  HS65_GS_IVX9 U3 ( .A(nrst), .Z(n1) );
  HS65_GS_IVX9 U4 ( .A(n11), .Z(n39) );
  HS65_GS_NAND2X7 U5 ( .A(n37), .B(nrst), .Z(n41) );
  HS65_GS_NAND2X7 U6 ( .A(n11), .B(nrst), .Z(n42) );
  HS65_GS_IVX9 U7 ( .A(n13), .Z(n38) );
  HS65_GS_AO32X4 U8 ( .A(N23), .B(nrst), .C(n9), .D(iamDestination), .E(n10), 
        .Z(n18) );
  HS65_GS_NOR2X6 U9 ( .A(state[1]), .B(n10), .Z(n9) );
  HS65_GS_NAND2X7 U10 ( .A(n41), .B(n42), .Z(n10) );
  HS65_GS_NAND3X5 U11 ( .A(n39), .B(n38), .C(n15), .Z(N39) );
  HS65_GS_AOI12X2 U12 ( .A(state[0]), .B(n40), .C(n1), .Z(n15) );
  HS65_GS_NOR2X6 U13 ( .A(n40), .B(en), .Z(n11) );
  HS65_GS_NAND3X5 U14 ( .A(n39), .B(n38), .C(n17), .Z(N38) );
  HS65_GS_AOI12X2 U15 ( .A(start), .B(n37), .C(n1), .Z(n17) );
  HS65_GS_AO32X4 U16 ( .A(nrst), .B(n12), .C(n13), .D(done), .E(n36), .Z(n19)
         );
  HS65_GS_IVX9 U17 ( .A(n12), .Z(n36) );
  HS65_GS_OAI21X3 U18 ( .A(n40), .B(n14), .C(nrst), .Z(n12) );
  HS65_GS_NOR2X6 U19 ( .A(en), .B(n37), .Z(n14) );
  HS65_GS_IVX9 U20 ( .A(destinationID[1]), .Z(n35) );
  HS65_GS_IVX9 U21 ( .A(state[1]), .Z(n40) );
  HS65_GS_IVX9 U22 ( .A(state[0]), .Z(n37) );
  HS65_GS_NOR2X6 U23 ( .A(n40), .B(state[0]), .Z(n13) );
  HS65_GS_IVX9 U24 ( .A(MY_NODE_ID[1]), .Z(n34) );
  HS65_GSS_XNOR2X3 U25 ( .A(destinationID[14]), .B(MY_NODE_ID[14]), .Z(n5) );
  HS65_GSS_XNOR2X3 U26 ( .A(destinationID[13]), .B(MY_NODE_ID[13]), .Z(n4) );
  HS65_GSS_XOR2X3 U27 ( .A(destinationID[11]), .B(MY_NODE_ID[11]), .Z(n3) );
  HS65_GSS_XOR2X3 U28 ( .A(destinationID[12]), .B(MY_NODE_ID[12]), .Z(n2) );
  HS65_GS_NOR4ABX2 U29 ( .A(n5), .B(n4), .C(n3), .D(n2), .Z(n33) );
  HS65_GSS_XNOR2X3 U30 ( .A(destinationID[10]), .B(MY_NODE_ID[10]), .Z(n16) );
  HS65_GSS_XNOR2X3 U31 ( .A(destinationID[9]), .B(MY_NODE_ID[9]), .Z(n8) );
  HS65_GSS_XOR2X3 U32 ( .A(destinationID[7]), .B(MY_NODE_ID[7]), .Z(n7) );
  HS65_GSS_XOR2X3 U33 ( .A(destinationID[8]), .B(MY_NODE_ID[8]), .Z(n6) );
  HS65_GS_NOR4ABX2 U34 ( .A(n16), .B(n8), .C(n7), .D(n6), .Z(n32) );
  HS65_GSS_XOR2X3 U35 ( .A(destinationID[15]), .B(MY_NODE_ID[15]), .Z(n25) );
  HS65_GSS_XOR2X3 U36 ( .A(destinationID[2]), .B(MY_NODE_ID[2]), .Z(n24) );
  HS65_GS_NOR2AX3 U37 ( .A(MY_NODE_ID[0]), .B(destinationID[0]), .Z(n20) );
  HS65_GS_OAI22X1 U38 ( .A(MY_NODE_ID[1]), .B(n20), .C(n20), .D(n35), .Z(n23)
         );
  HS65_GS_NOR2AX3 U39 ( .A(destinationID[0]), .B(MY_NODE_ID[0]), .Z(n21) );
  HS65_GS_OAI22X1 U40 ( .A(n21), .B(n34), .C(destinationID[1]), .D(n21), .Z(
        n22) );
  HS65_GS_NAND4ABX3 U41 ( .A(n25), .B(n24), .C(n23), .D(n22), .Z(n31) );
  HS65_GSS_XOR2X3 U42 ( .A(destinationID[3]), .B(MY_NODE_ID[3]), .Z(n29) );
  HS65_GSS_XOR2X3 U43 ( .A(destinationID[4]), .B(MY_NODE_ID[4]), .Z(n28) );
  HS65_GSS_XNOR2X3 U44 ( .A(destinationID[6]), .B(MY_NODE_ID[6]), .Z(n27) );
  HS65_GSS_XNOR2X3 U45 ( .A(destinationID[5]), .B(MY_NODE_ID[5]), .Z(n26) );
  HS65_GS_NAND4ABX3 U46 ( .A(n29), .B(n28), .C(n27), .D(n26), .Z(n30) );
  HS65_GS_NOR4ABX2 U47 ( .A(n33), .B(n32), .C(n31), .D(n30), .Z(N23) );
endmodule


module fixSinkList_DW01_inc_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HS65_GS_HA1X4 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .CO(carry[15]), .S0(
        SUM[14]) );
  HS65_GS_HA1X4 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .CO(carry[14]), .S0(
        SUM[13]) );
  HS65_GS_HA1X4 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .CO(carry[11]), .S0(
        SUM[10]) );
  HS65_GS_HA1X4 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .CO(carry[10]), .S0(SUM[9])
         );
  HS65_GS_HA1X4 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .CO(carry[7]), .S0(SUM[6])
         );
  HS65_GS_HA1X4 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .CO(carry[6]), .S0(SUM[5])
         );
  HS65_GS_HA1X4 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .CO(carry[13]), .S0(
        SUM[12]) );
  HS65_GS_HA1X4 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .CO(carry[12]), .S0(
        SUM[11]) );
  HS65_GS_HA1X4 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .CO(carry[9]), .S0(SUM[8])
         );
  HS65_GS_HA1X4 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .CO(carry[8]), .S0(SUM[7])
         );
  HS65_GS_HA1X4 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .CO(carry[5]), .S0(SUM[4])
         );
  HS65_GS_HA1X4 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .CO(carry[4]), .S0(SUM[3])
         );
  HS65_GS_HA1X4 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .CO(carry[3]), .S0(SUM[2])
         );
  HS65_GS_HA1X4 U1_1_1 ( .A0(A[1]), .B0(A[0]), .CO(carry[2]), .S0(SUM[1]) );
  HS65_GS_IVX9 U1 ( .A(A[0]), .Z(SUM[0]) );
  HS65_GSS_XOR2X3 U2 ( .A(carry[15]), .B(A[15]), .Z(SUM[15]) );
endmodule


module fixSinkList_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HS65_GS_HA1X4 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .CO(carry[15]), .S0(
        SUM[14]) );
  HS65_GS_HA1X4 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .CO(carry[14]), .S0(
        SUM[13]) );
  HS65_GS_HA1X4 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .CO(carry[13]), .S0(
        SUM[12]) );
  HS65_GS_HA1X4 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .CO(carry[12]), .S0(
        SUM[11]) );
  HS65_GS_HA1X4 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .CO(carry[11]), .S0(
        SUM[10]) );
  HS65_GS_HA1X4 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .CO(carry[10]), .S0(SUM[9])
         );
  HS65_GS_HA1X4 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .CO(carry[8]), .S0(SUM[7])
         );
  HS65_GS_HA1X4 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .CO(carry[6]), .S0(SUM[5])
         );
  HS65_GS_HA1X4 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .CO(carry[4]), .S0(SUM[3])
         );
  HS65_GS_HA1X4 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .CO(carry[7]), .S0(SUM[6])
         );
  HS65_GS_HA1X4 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .CO(carry[9]), .S0(SUM[8])
         );
  HS65_GS_HA1X4 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .CO(carry[5]), .S0(SUM[4])
         );
  HS65_GS_HA1X4 U1_1_1 ( .A0(A[1]), .B0(A[0]), .CO(carry[2]), .S0(SUM[1]) );
  HS65_GS_HA1X4 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .CO(carry[3]), .S0(SUM[2])
         );
  HS65_GS_IVX9 U1 ( .A(A[0]), .Z(SUM[0]) );
  HS65_GSS_XOR2X3 U2 ( .A(carry[15]), .B(A[15]), .Z(SUM[15]) );
endmodule


module fixSinkList_DW01_inc_2 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HS65_GS_HA1X4 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .CO(carry[15]), .S0(
        SUM[14]) );
  HS65_GS_HA1X4 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .CO(carry[3]), .S0(SUM[2])
         );
  HS65_GS_HA1X4 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .CO(carry[14]), .S0(
        SUM[13]) );
  HS65_GS_HA1X4 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .CO(carry[13]), .S0(
        SUM[12]) );
  HS65_GS_HA1X4 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .CO(carry[12]), .S0(
        SUM[11]) );
  HS65_GS_HA1X4 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .CO(carry[11]), .S0(
        SUM[10]) );
  HS65_GS_HA1X4 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .CO(carry[10]), .S0(SUM[9])
         );
  HS65_GS_HA1X4 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .CO(carry[8]), .S0(SUM[7])
         );
  HS65_GS_HA1X4 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .CO(carry[9]), .S0(SUM[8])
         );
  HS65_GS_HA1X4 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .CO(carry[7]), .S0(SUM[6])
         );
  HS65_GS_HA1X4 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .CO(carry[5]), .S0(SUM[4])
         );
  HS65_GS_HA1X4 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .CO(carry[4]), .S0(SUM[3])
         );
  HS65_GS_HA1X4 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .CO(carry[6]), .S0(SUM[5])
         );
  HS65_GS_HA1X4 U1_1_1 ( .A0(A[1]), .B0(A[0]), .CO(carry[2]), .S0(SUM[1]) );
  HS65_GS_IVX9 U1 ( .A(A[0]), .Z(SUM[0]) );
  HS65_GSS_XOR2X3 U2 ( .A(carry[15]), .B(A[15]), .Z(SUM[15]) );
endmodule


module fixSinkList_DW01_inc_3 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HS65_GS_HA1X4 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .CO(carry[15]), .S0(
        SUM[14]) );
  HS65_GS_HA1X4 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .CO(carry[12]), .S0(
        SUM[11]) );
  HS65_GS_HA1X4 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .CO(carry[13]), .S0(
        SUM[12]) );
  HS65_GS_HA1X4 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .CO(carry[14]), .S0(
        SUM[13]) );
  HS65_GS_HA1X4 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .CO(carry[11]), .S0(
        SUM[10]) );
  HS65_GS_HA1X4 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .CO(carry[10]), .S0(SUM[9])
         );
  HS65_GS_HA1X4 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .CO(carry[9]), .S0(SUM[8])
         );
  HS65_GS_HA1X4 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .CO(carry[8]), .S0(SUM[7])
         );
  HS65_GS_HA1X4 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .CO(carry[7]), .S0(SUM[6])
         );
  HS65_GS_HA1X4 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .CO(carry[6]), .S0(SUM[5])
         );
  HS65_GS_HA1X4 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .CO(carry[5]), .S0(SUM[4])
         );
  HS65_GS_HA1X4 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .CO(carry[4]), .S0(SUM[3])
         );
  HS65_GS_HA1X4 U1_1_1 ( .A0(A[1]), .B0(A[0]), .CO(carry[2]), .S0(SUM[1]) );
  HS65_GS_HA1X4 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .CO(carry[3]), .S0(SUM[2])
         );
  HS65_GS_IVX9 U1 ( .A(A[0]), .Z(SUM[0]) );
  HS65_GSS_XOR2X3 U2 ( .A(carry[15]), .B(A[15]), .Z(SUM[15]) );
endmodule


module fixSinkList_DW01_inc_4 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HS65_GS_HA1X4 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .CO(carry[15]), .S0(
        SUM[14]) );
  HS65_GS_HA1X4 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .CO(carry[14]), .S0(
        SUM[13]) );
  HS65_GS_HA1X4 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .CO(carry[13]), .S0(
        SUM[12]) );
  HS65_GS_HA1X4 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .CO(carry[12]), .S0(
        SUM[11]) );
  HS65_GS_HA1X4 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .CO(carry[11]), .S0(
        SUM[10]) );
  HS65_GS_HA1X4 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .CO(carry[10]), .S0(SUM[9])
         );
  HS65_GS_HA1X4 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .CO(carry[9]), .S0(SUM[8])
         );
  HS65_GS_HA1X4 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .CO(carry[8]), .S0(SUM[7])
         );
  HS65_GS_HA1X4 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .CO(carry[7]), .S0(SUM[6])
         );
  HS65_GS_HA1X4 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .CO(carry[6]), .S0(SUM[5])
         );
  HS65_GS_HA1X4 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .CO(carry[5]), .S0(SUM[4])
         );
  HS65_GS_HA1X4 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .CO(carry[4]), .S0(SUM[3])
         );
  HS65_GS_HA1X4 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .CO(carry[3]), .S0(SUM[2])
         );
  HS65_GS_HA1X4 U1_1_1 ( .A0(A[1]), .B0(A[0]), .CO(carry[2]), .S0(SUM[1]) );
  HS65_GS_IVX9 U1 ( .A(A[0]), .Z(SUM[0]) );
  HS65_GSS_XOR2X3 U2 ( .A(carry[15]), .B(A[15]), .Z(SUM[15]) );
endmodule


module fixSinkList_DW01_add_11 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  HS65_GSS_XOR3X2 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .Z(SUM[15]) );
  HS65_GS_FA1X4 U1_1 ( .A0(A[1]), .B0(B[1]), .CI(n1), .CO(carry[2]), .S0(
        SUM[1]) );
  HS65_GS_FA1X4 U1_14 ( .A0(A[14]), .B0(B[14]), .CI(carry[14]), .CO(carry[15]), 
        .S0(SUM[14]) );
  HS65_GS_FA1X4 U1_13 ( .A0(A[13]), .B0(B[13]), .CI(carry[13]), .CO(carry[14]), 
        .S0(SUM[13]) );
  HS65_GS_FA1X4 U1_12 ( .A0(A[12]), .B0(B[12]), .CI(carry[12]), .CO(carry[13]), 
        .S0(SUM[12]) );
  HS65_GS_FA1X4 U1_11 ( .A0(A[11]), .B0(B[11]), .CI(carry[11]), .CO(carry[12]), 
        .S0(SUM[11]) );
  HS65_GS_FA1X4 U1_10 ( .A0(A[10]), .B0(B[10]), .CI(carry[10]), .CO(carry[11]), 
        .S0(SUM[10]) );
  HS65_GS_FA1X4 U1_9 ( .A0(A[9]), .B0(B[9]), .CI(carry[9]), .CO(carry[10]), 
        .S0(SUM[9]) );
  HS65_GS_FA1X4 U1_8 ( .A0(A[8]), .B0(B[8]), .CI(carry[8]), .CO(carry[9]), 
        .S0(SUM[8]) );
  HS65_GS_FA1X4 U1_7 ( .A0(A[7]), .B0(B[7]), .CI(carry[7]), .CO(carry[8]), 
        .S0(SUM[7]) );
  HS65_GS_FA1X4 U1_6 ( .A0(A[6]), .B0(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S0(SUM[6]) );
  HS65_GS_FA1X4 U1_5 ( .A0(A[5]), .B0(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S0(SUM[5]) );
  HS65_GS_FA1X4 U1_4 ( .A0(A[4]), .B0(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S0(SUM[4]) );
  HS65_GS_FA1X4 U1_3 ( .A0(A[3]), .B0(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S0(SUM[3]) );
  HS65_GS_FA1X4 U1_2 ( .A0(A[2]), .B0(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S0(SUM[2]) );
  HS65_GS_AND2X4 U1 ( .A(A[0]), .B(B[0]), .Z(n1) );
  HS65_GSS_XOR2X6 U2 ( .A(A[0]), .B(B[0]), .Z(SUM[0]) );
endmodule


module fixSinkList ( clock, nrst, en, start, address, wr_en, data_in, data_out, 
        done );
  output [10:0] address;
  input [15:0] data_in;
  output [15:0] data_out;
  input clock, nrst, en, start;
  output wr_en, done;
  wire   N108, N109, N110, N111, N112, N113, N114, N115, N116, N118, N119,
         N120, N121, N122, N123, N124, N125, N126, N127, N132, N133, N135,
         N136, N137, N138, N140, N141, N142, N143, N144, N145, N146, N147,
         N148, N149, N151, N154, N155, N156, N157, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N167, N168, N169, N170, N175, N176,
         N177, N178, N179, N180, N181, N182, N183, N184, N185, N186, N187,
         N188, N189, N192, N193, N195, N196, N197, N198, N199, N200, N201,
         N204, N205, N206, N207, N208, N209, N210, N211, N212, N213, N247,
         N248, N249, N250, N251, N252, N253, N254, N255, N256, N257, N258,
         N259, N260, N261, N309, N310, N311, N312, N313, N314, N315, N316,
         N317, N318, N354, N357, N358, N359, N360, N361, N362, N363, N367,
         N368, N369, N370, N371, N372, N373, N374, N391, N392, N393, N394,
         N395, N396, N397, N398, N399, N400, N401, N402, N403, N404, N405,
         N406, N407, N408, N409, N410, N411, N412, N413, N414, N415, N416,
         N417, N418, N419, N420, N421, N422, N475, N476, N477, N478, N479,
         N480, N481, N482, N486, N487, N488, N489, N490, N491, N492, N493,
         N494, N732, N733, N734, N735, n115, n117, n118, n120, n121, n122,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, N390, N389, N388, N387,
         N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376,
         N375, \add_160/carry[10] , \add_160/carry[9] , \add_160/carry[8] ,
         \add_160/carry[7] , \add_160/carry[6] , \add_160/carry[5] ,
         \add_160/carry[4] , \add_160/carry[3] , \add_155/carry[10] ,
         \add_155/carry[9] , \add_155/carry[8] , \add_155/carry[7] ,
         \add_155/carry[6] , \add_155/carry[5] , \add_121/carry[10] ,
         \add_121/carry[9] , \add_121/carry[8] , \add_121/carry[7] ,
         \add_121/carry[6] , \add_121/carry[5] , \add_115/carry[10] ,
         \add_115/carry[9] , \add_115/carry[8] , \add_115/carry[7] ,
         \add_115/carry[6] , \add_115/carry[5] , \add_92/carry[10] ,
         \add_92/carry[9] , \add_92/carry[8] , \add_92/carry[7] ,
         \add_92/carry[6] , \add_92/carry[5] , \add_92/carry[4] ,
         \add_92/carry[3] , \add_87/carry[10] , \add_87/carry[9] ,
         \add_87/carry[8] , \add_87/carry[7] , \add_87/carry[6] ,
         \add_87/carry[5] , \add_0_root_add_67_2/carry[10] ,
         \add_0_root_add_67_2/carry[9] , \add_0_root_add_67_2/carry[8] ,
         \add_0_root_add_67_2/carry[7] , \add_0_root_add_67_2/carry[6] ,
         \add_0_root_add_67_2/carry[5] , \add_55/carry[10] , \add_55/carry[9] ,
         \add_55/carry[8] , \add_55/carry[7] , \add_55/carry[6] ,
         \add_55/carry[5] , \r239/carry[10] , \r239/carry[9] , \r239/carry[8] ,
         \r239/carry[7] , \r239/carry[6] , \r239/carry[5] , \r228/carry[10] ,
         \r228/carry[9] , \r228/carry[8] , \r227/carry[10] , \r227/carry[9] ,
         \r227/carry[8] , \r227/carry[7] , \r227/carry[6] , \r227/carry[5] ,
         \r227/carry[4] , \r227/carry[3] , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n116, n119,
         n123, n233, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415;
  wire   [3:0] state;
  wire   [15:0] j;
  wire   [15:0] i;
  wire   [15:0] k;
  wire   [15:0] knownSinkCount;
  wire   [15:0] neighborCount;
  wire   [15:0] knownSinks;
  wire   [15:0] sinkIDCount;
  wire   [15:0] worstHops;

  HS65_GS_DFPQX9 \k_reg[0]  ( .D(n384), .CP(clock), .Q(N140) );
  HS65_GS_DFPQX9 \state_reg[0]  ( .D(N732), .CP(clock), .Q(state[0]) );
  HS65_GS_DFPQX9 \state_reg[1]  ( .D(N733), .CP(clock), .Q(state[1]) );
  HS65_GS_DFPQX9 \state_reg[3]  ( .D(N735), .CP(clock), .Q(state[3]) );
  HS65_GS_DFPQX9 \i_reg[15]  ( .D(n319), .CP(clock), .Q(i[15]) );
  HS65_GS_DFPQX9 \i_reg[0]  ( .D(n302), .CP(clock), .Q(N132) );
  HS65_GS_DFPQX9 \i_reg[1]  ( .D(n301), .CP(clock), .Q(N133) );
  HS65_GS_DFPQX9 \i_reg[3]  ( .D(n299), .CP(clock), .Q(i[3]) );
  HS65_GS_DFPQX9 \i_reg[4]  ( .D(n298), .CP(clock), .Q(i[4]) );
  HS65_GS_DFPQX9 \i_reg[5]  ( .D(n297), .CP(clock), .Q(i[5]) );
  HS65_GS_DFPQX9 \i_reg[6]  ( .D(n296), .CP(clock), .Q(i[6]) );
  HS65_GS_DFPQX9 \i_reg[7]  ( .D(n295), .CP(clock), .Q(i[7]) );
  HS65_GS_DFPQX9 \i_reg[8]  ( .D(n294), .CP(clock), .Q(i[8]) );
  HS65_GS_DFPQX9 \i_reg[9]  ( .D(n293), .CP(clock), .Q(i[9]) );
  HS65_GS_DFPQX9 \i_reg[10]  ( .D(n292), .CP(clock), .Q(i[10]) );
  HS65_GS_DFPQX9 \i_reg[11]  ( .D(n291), .CP(clock), .Q(i[11]) );
  HS65_GS_DFPQX9 \i_reg[12]  ( .D(n290), .CP(clock), .Q(i[12]) );
  HS65_GS_DFPQX9 \i_reg[13]  ( .D(n289), .CP(clock), .Q(i[13]) );
  HS65_GS_DFPQX9 \i_reg[14]  ( .D(n288), .CP(clock), .Q(i[14]) );
  HS65_GS_DFPQX9 \state_reg[2]  ( .D(N734), .CP(clock), .Q(state[2]) );
  HS65_GS_DFPQX9 \neighborCount_reg[15]  ( .D(n368), .CP(clock), .Q(
        neighborCount[15]) );
  HS65_GS_DFPQX9 \neighborCount_reg[14]  ( .D(n369), .CP(clock), .Q(
        neighborCount[14]) );
  HS65_GS_DFPQX9 \neighborCount_reg[13]  ( .D(n370), .CP(clock), .Q(
        neighborCount[13]) );
  HS65_GS_DFPQX9 \neighborCount_reg[12]  ( .D(n371), .CP(clock), .Q(
        neighborCount[12]) );
  HS65_GS_DFPQX9 \neighborCount_reg[11]  ( .D(n372), .CP(clock), .Q(
        neighborCount[11]) );
  HS65_GS_DFPQX9 \neighborCount_reg[10]  ( .D(n373), .CP(clock), .Q(
        neighborCount[10]) );
  HS65_GS_DFPQX9 \neighborCount_reg[9]  ( .D(n374), .CP(clock), .Q(
        neighborCount[9]) );
  HS65_GS_DFPQX9 \neighborCount_reg[8]  ( .D(n375), .CP(clock), .Q(
        neighborCount[8]) );
  HS65_GS_DFPQX9 \neighborCount_reg[7]  ( .D(n376), .CP(clock), .Q(
        neighborCount[7]) );
  HS65_GS_DFPQX9 \neighborCount_reg[6]  ( .D(n377), .CP(clock), .Q(
        neighborCount[6]) );
  HS65_GS_DFPQX9 \neighborCount_reg[5]  ( .D(n378), .CP(clock), .Q(
        neighborCount[5]) );
  HS65_GS_DFPQX9 \neighborCount_reg[4]  ( .D(n379), .CP(clock), .Q(
        neighborCount[4]) );
  HS65_GS_DFPQX9 \neighborCount_reg[3]  ( .D(n380), .CP(clock), .Q(
        neighborCount[3]) );
  HS65_GS_DFPQX9 \neighborCount_reg[2]  ( .D(n381), .CP(clock), .Q(
        neighborCount[2]) );
  HS65_GS_DFPQX9 \neighborCount_reg[1]  ( .D(n382), .CP(clock), .Q(
        neighborCount[1]) );
  HS65_GS_DFPQX9 \neighborCount_reg[0]  ( .D(n383), .CP(clock), .Q(
        neighborCount[0]) );
  HS65_GS_DFPQX9 \sinkIDCount_reg[15]  ( .D(n320), .CP(clock), .Q(
        sinkIDCount[15]) );
  HS65_GS_DFPQX9 \sinkIDCount_reg[14]  ( .D(n321), .CP(clock), .Q(
        sinkIDCount[14]) );
  HS65_GS_DFPQX9 \sinkIDCount_reg[13]  ( .D(n322), .CP(clock), .Q(
        sinkIDCount[13]) );
  HS65_GS_DFPQX9 \sinkIDCount_reg[12]  ( .D(n323), .CP(clock), .Q(
        sinkIDCount[12]) );
  HS65_GS_DFPQX9 \sinkIDCount_reg[11]  ( .D(n324), .CP(clock), .Q(
        sinkIDCount[11]) );
  HS65_GS_DFPQX9 \sinkIDCount_reg[10]  ( .D(n325), .CP(clock), .Q(
        sinkIDCount[10]) );
  HS65_GS_DFPQX9 \sinkIDCount_reg[9]  ( .D(n326), .CP(clock), .Q(
        sinkIDCount[9]) );
  HS65_GS_DFPQX9 \sinkIDCount_reg[8]  ( .D(n327), .CP(clock), .Q(
        sinkIDCount[8]) );
  HS65_GS_DFPQX9 \sinkIDCount_reg[7]  ( .D(n328), .CP(clock), .Q(
        sinkIDCount[7]) );
  HS65_GS_DFPQX9 \sinkIDCount_reg[6]  ( .D(n329), .CP(clock), .Q(
        sinkIDCount[6]) );
  HS65_GS_DFPQX9 \sinkIDCount_reg[5]  ( .D(n330), .CP(clock), .Q(
        sinkIDCount[5]) );
  HS65_GS_DFPQX9 \sinkIDCount_reg[4]  ( .D(n331), .CP(clock), .Q(
        sinkIDCount[4]) );
  HS65_GS_DFPQX9 \sinkIDCount_reg[3]  ( .D(n332), .CP(clock), .Q(
        sinkIDCount[3]) );
  HS65_GS_DFPQX9 \sinkIDCount_reg[2]  ( .D(n333), .CP(clock), .Q(
        sinkIDCount[2]) );
  HS65_GS_DFPQX9 \sinkIDCount_reg[1]  ( .D(n334), .CP(clock), .Q(
        sinkIDCount[1]) );
  HS65_GS_DFPQX9 \sinkIDCount_reg[0]  ( .D(n335), .CP(clock), .Q(
        sinkIDCount[0]) );
  HS65_GS_DFPQX9 \knownSinks_reg[15]  ( .D(n336), .CP(clock), .Q(
        knownSinks[15]) );
  HS65_GS_DFPQX9 \knownSinks_reg[14]  ( .D(n337), .CP(clock), .Q(
        knownSinks[14]) );
  HS65_GS_DFPQX9 \knownSinks_reg[13]  ( .D(n338), .CP(clock), .Q(
        knownSinks[13]) );
  HS65_GS_DFPQX9 \knownSinks_reg[12]  ( .D(n339), .CP(clock), .Q(
        knownSinks[12]) );
  HS65_GS_DFPQX9 \knownSinks_reg[11]  ( .D(n340), .CP(clock), .Q(
        knownSinks[11]) );
  HS65_GS_DFPQX9 \knownSinks_reg[10]  ( .D(n341), .CP(clock), .Q(
        knownSinks[10]) );
  HS65_GS_DFPQX9 \knownSinks_reg[9]  ( .D(n342), .CP(clock), .Q(knownSinks[9])
         );
  HS65_GS_DFPQX9 \knownSinks_reg[8]  ( .D(n343), .CP(clock), .Q(knownSinks[8])
         );
  HS65_GS_DFPQX9 \knownSinks_reg[7]  ( .D(n344), .CP(clock), .Q(knownSinks[7])
         );
  HS65_GS_DFPQX9 \knownSinks_reg[6]  ( .D(n345), .CP(clock), .Q(knownSinks[6])
         );
  HS65_GS_DFPQX9 \knownSinks_reg[5]  ( .D(n346), .CP(clock), .Q(knownSinks[5])
         );
  HS65_GS_DFPQX9 \knownSinks_reg[4]  ( .D(n347), .CP(clock), .Q(knownSinks[4])
         );
  HS65_GS_DFPQX9 \knownSinks_reg[3]  ( .D(n348), .CP(clock), .Q(knownSinks[3])
         );
  HS65_GS_DFPQX9 \knownSinks_reg[2]  ( .D(n349), .CP(clock), .Q(knownSinks[2])
         );
  HS65_GS_DFPQX9 \knownSinks_reg[1]  ( .D(n350), .CP(clock), .Q(knownSinks[1])
         );
  HS65_GS_DFPQX9 \knownSinks_reg[0]  ( .D(n351), .CP(clock), .Q(knownSinks[0])
         );
  HS65_GS_DFPQX9 \k_reg[14]  ( .D(n240), .CP(clock), .Q(k[14]) );
  HS65_GS_DFPQX9 \k_reg[13]  ( .D(n241), .CP(clock), .Q(k[13]) );
  HS65_GS_DFPQX9 \k_reg[12]  ( .D(n242), .CP(clock), .Q(k[12]) );
  HS65_GS_DFPQX9 \k_reg[11]  ( .D(n243), .CP(clock), .Q(k[11]) );
  HS65_GS_DFPQX9 \k_reg[10]  ( .D(n244), .CP(clock), .Q(k[10]) );
  HS65_GS_DFPQX9 \k_reg[9]  ( .D(n245), .CP(clock), .Q(k[9]) );
  HS65_GS_DFPQX9 \k_reg[8]  ( .D(n246), .CP(clock), .Q(k[8]) );
  HS65_GS_DFPQX9 \k_reg[7]  ( .D(n247), .CP(clock), .Q(k[7]) );
  HS65_GS_DFPQX9 \k_reg[6]  ( .D(n248), .CP(clock), .Q(k[6]) );
  HS65_GS_DFPQX9 \k_reg[5]  ( .D(n249), .CP(clock), .Q(k[5]) );
  HS65_GS_DFPQX9 \k_reg[4]  ( .D(n250), .CP(clock), .Q(k[4]) );
  HS65_GS_DFPQX9 \k_reg[3]  ( .D(n251), .CP(clock), .Q(k[3]) );
  HS65_GS_DFPQX9 \k_reg[2]  ( .D(n252), .CP(clock), .Q(k[2]) );
  HS65_GS_DFPQX9 \k_reg[1]  ( .D(n253), .CP(clock), .Q(N141) );
  HS65_GS_DFPQX9 done_buf_reg ( .D(n271), .CP(clock), .Q(done) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[15]  ( .D(n352), .CP(clock), .Q(
        knownSinkCount[15]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[14]  ( .D(n353), .CP(clock), .Q(
        knownSinkCount[14]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[13]  ( .D(n354), .CP(clock), .Q(
        knownSinkCount[13]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[12]  ( .D(n355), .CP(clock), .Q(
        knownSinkCount[12]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[11]  ( .D(n356), .CP(clock), .Q(
        knownSinkCount[11]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[10]  ( .D(n357), .CP(clock), .Q(
        knownSinkCount[10]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[9]  ( .D(n358), .CP(clock), .Q(
        knownSinkCount[9]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[8]  ( .D(n359), .CP(clock), .Q(
        knownSinkCount[8]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[7]  ( .D(n360), .CP(clock), .Q(
        knownSinkCount[7]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[6]  ( .D(n361), .CP(clock), .Q(
        knownSinkCount[6]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[5]  ( .D(n362), .CP(clock), .Q(
        knownSinkCount[5]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[4]  ( .D(n363), .CP(clock), .Q(
        knownSinkCount[4]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[3]  ( .D(n364), .CP(clock), .Q(
        knownSinkCount[3]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[2]  ( .D(n365), .CP(clock), .Q(
        knownSinkCount[2]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[1]  ( .D(n366), .CP(clock), .Q(
        knownSinkCount[1]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[0]  ( .D(n367), .CP(clock), .Q(
        knownSinkCount[0]) );
  HS65_GS_DFPQX9 \j_reg[15]  ( .D(n318), .CP(clock), .Q(j[15]) );
  HS65_GS_DFPQX9 \j_reg[0]  ( .D(n317), .CP(clock), .Q(N354) );
  HS65_GS_DFPQX9 \j_reg[1]  ( .D(n316), .CP(clock), .Q(N108) );
  HS65_GS_DFPQX9 \j_reg[2]  ( .D(n315), .CP(clock), .Q(j[2]) );
  HS65_GS_DFPQX9 \j_reg[3]  ( .D(n314), .CP(clock), .Q(j[3]) );
  HS65_GS_DFPQX9 \j_reg[4]  ( .D(n313), .CP(clock), .Q(j[4]) );
  HS65_GS_DFPQX9 \j_reg[5]  ( .D(n312), .CP(clock), .Q(j[5]) );
  HS65_GS_DFPQX9 \j_reg[6]  ( .D(n311), .CP(clock), .Q(j[6]) );
  HS65_GS_DFPQX9 \j_reg[7]  ( .D(n310), .CP(clock), .Q(j[7]) );
  HS65_GS_DFPQX9 \j_reg[8]  ( .D(n309), .CP(clock), .Q(j[8]) );
  HS65_GS_DFPQX9 \j_reg[9]  ( .D(n308), .CP(clock), .Q(j[9]) );
  HS65_GS_DFPQX9 \j_reg[10]  ( .D(n307), .CP(clock), .Q(j[10]) );
  HS65_GS_DFPQX9 \j_reg[11]  ( .D(n306), .CP(clock), .Q(j[11]) );
  HS65_GS_DFPQX9 \j_reg[12]  ( .D(n305), .CP(clock), .Q(j[12]) );
  HS65_GS_DFPQX9 \j_reg[13]  ( .D(n304), .CP(clock), .Q(j[13]) );
  HS65_GS_DFPQX9 \j_reg[14]  ( .D(n303), .CP(clock), .Q(j[14]) );
  HS65_GS_DFPQX9 wr_en_buf_reg ( .D(n254), .CP(clock), .Q(wr_en) );
  HS65_GS_DFPQX9 \data_out_buf_reg[15]  ( .D(n255), .CP(clock), .Q(
        data_out[15]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[14]  ( .D(n256), .CP(clock), .Q(
        data_out[14]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[13]  ( .D(n257), .CP(clock), .Q(
        data_out[13]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[12]  ( .D(n258), .CP(clock), .Q(
        data_out[12]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[11]  ( .D(n259), .CP(clock), .Q(
        data_out[11]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[10]  ( .D(n260), .CP(clock), .Q(
        data_out[10]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[9]  ( .D(n261), .CP(clock), .Q(data_out[9])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[8]  ( .D(n262), .CP(clock), .Q(data_out[8])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[7]  ( .D(n263), .CP(clock), .Q(data_out[7])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[6]  ( .D(n264), .CP(clock), .Q(data_out[6])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[5]  ( .D(n265), .CP(clock), .Q(data_out[5])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[4]  ( .D(n266), .CP(clock), .Q(data_out[4])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[3]  ( .D(n267), .CP(clock), .Q(data_out[3])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[2]  ( .D(n268), .CP(clock), .Q(data_out[2])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[1]  ( .D(n269), .CP(clock), .Q(data_out[1])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[0]  ( .D(n270), .CP(clock), .Q(data_out[0])
         );
  HS65_GS_DFPQX9 \worstHops_reg[15]  ( .D(n272), .CP(clock), .Q(worstHops[15])
         );
  HS65_GS_DFPQX9 \worstHops_reg[14]  ( .D(n273), .CP(clock), .Q(worstHops[14])
         );
  HS65_GS_DFPQX9 \worstHops_reg[13]  ( .D(n274), .CP(clock), .Q(worstHops[13])
         );
  HS65_GS_DFPQX9 \worstHops_reg[12]  ( .D(n275), .CP(clock), .Q(worstHops[12])
         );
  HS65_GS_DFPQX9 \worstHops_reg[11]  ( .D(n276), .CP(clock), .Q(worstHops[11])
         );
  HS65_GS_DFPQX9 \worstHops_reg[10]  ( .D(n277), .CP(clock), .Q(worstHops[10])
         );
  HS65_GS_DFPQX9 \worstHops_reg[9]  ( .D(n278), .CP(clock), .Q(worstHops[9])
         );
  HS65_GS_DFPQX9 \worstHops_reg[8]  ( .D(n279), .CP(clock), .Q(worstHops[8])
         );
  HS65_GS_DFPQX9 \worstHops_reg[7]  ( .D(n280), .CP(clock), .Q(worstHops[7])
         );
  HS65_GS_DFPQX9 \worstHops_reg[6]  ( .D(n281), .CP(clock), .Q(worstHops[6])
         );
  HS65_GS_DFPQX9 \worstHops_reg[5]  ( .D(n282), .CP(clock), .Q(worstHops[5])
         );
  HS65_GS_DFPQX9 \worstHops_reg[4]  ( .D(n283), .CP(clock), .Q(worstHops[4])
         );
  HS65_GS_DFPQX9 \worstHops_reg[3]  ( .D(n284), .CP(clock), .Q(worstHops[3])
         );
  HS65_GS_DFPQX9 \worstHops_reg[2]  ( .D(n285), .CP(clock), .Q(worstHops[2])
         );
  HS65_GS_DFPQX9 \worstHops_reg[1]  ( .D(n286), .CP(clock), .Q(worstHops[1])
         );
  HS65_GS_DFPQX9 \worstHops_reg[0]  ( .D(n287), .CP(clock), .Q(worstHops[0])
         );
  HS65_GS_DFPQX9 \k_reg[15]  ( .D(n239), .CP(clock), .Q(k[15]) );
  HS65_GS_DFPQX9 \address_count_reg[8]  ( .D(n238), .CP(clock), .Q(address[8])
         );
  HS65_GS_DFPQX9 \address_count_reg[6]  ( .D(n237), .CP(clock), .Q(address[6])
         );
  HS65_GS_DFPQX9 \address_count_reg[5]  ( .D(n236), .CP(clock), .Q(address[5])
         );
  HS65_GS_DFPQX9 \address_count_reg[4]  ( .D(n235), .CP(clock), .Q(address[4])
         );
  HS65_GS_DFPQX9 \address_count_reg[2]  ( .D(n234), .CP(clock), .Q(address[2])
         );
  HS65_GS_DFPQX9 \address_count_reg[0]  ( .D(n1), .CP(clock), .Q(address[0])
         );
  fixSinkList_DW01_inc_0 add_135 ( .A(sinkIDCount), .SUM({N422, N421, N420, 
        N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N409, N408, 
        N407}) );
  fixSinkList_DW01_inc_1 r233 ( .A({j[15:2], N108, N354}), .SUM({N188, N187, 
        N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, 
        N193, N192}) );
  fixSinkList_DW01_inc_2 r231 ( .A({i[15:2], N133, N132}), .SUM({N169, N168, 
        N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, 
        N155, N154}) );
  fixSinkList_DW01_inc_3 add_96 ( .A({k[15:2], N141, N140}), .SUM({N260, N259, 
        N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, 
        N310, N309}) );
  fixSinkList_DW01_inc_4 add_127 ( .A(worstHops), .SUM({N390, N389, N388, N387, 
        N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375}) );
  fixSinkList_DW01_add_11 add_127_2 ( .A(data_in), .B({N390, N389, N388, N387, 
        N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375}), .CI(1'b0), .SUM({N406, N405, N404, N403, N402, N401, N400, N399, N398, N397, 
        N396, N395, N394, N393, N392, N391}) );
  HS65_GS_DFPQX9 \i_reg[2]  ( .D(n300), .CP(clock), .Q(i[2]) );
  HS65_GS_DFPHQX4 \address_count_reg[10]  ( .D(n175), .E(n127), .CP(clock), 
        .Q(address[10]) );
  HS65_GS_DFPHQX4 \address_count_reg[9]  ( .D(n170), .E(n127), .CP(clock), .Q(
        address[9]) );
  HS65_GS_DFPHQX4 \address_count_reg[7]  ( .D(n160), .E(n127), .CP(clock), .Q(
        address[7]) );
  HS65_GS_DFPHQX4 \address_count_reg[3]  ( .D(n139), .E(n127), .CP(clock), .Q(
        address[3]) );
  HS65_GS_DFPHQX4 \address_count_reg[1]  ( .D(n126), .E(n127), .CP(clock), .Q(
        address[1]) );
  HS65_GS_NOR2AX3 U3 ( .A(n201), .B(n123), .Z(n200) );
  HS65_GS_NOR2AX3 U4 ( .A(n201), .B(n195), .Z(n198) );
  HS65_GS_NOR4ABX2 U5 ( .A(n396), .B(n393), .C(n394), .D(n391), .Z(n202) );
  HS65_GS_AOI12X2 U6 ( .A(n185), .B(en), .C(n19), .Z(n193) );
  HS65_GS_NOR2X6 U7 ( .A(n385), .B(n19), .Z(n190) );
  HS65_GS_NAND2X7 U8 ( .A(n387), .B(n18), .Z(n217) );
  HS65_GS_NOR2X6 U9 ( .A(n19), .B(n197), .Z(n201) );
  HS65_GS_IVX9 U10 ( .A(n18), .Z(n19) );
  HS65_GS_NOR4ABX4 U11 ( .A(n18), .B(n210), .C(N170), .D(n206), .Z(n207) );
  HS65_GS_NAND2X7 U12 ( .A(N170), .B(n212), .Z(n211) );
  HS65_GS_NOR3X4 U13 ( .A(n19), .B(n202), .C(n194), .Z(n197) );
  HS65_GS_NOR3X4 U14 ( .A(n208), .B(n386), .C(n19), .Z(n209) );
  HS65_GS_NOR2X6 U15 ( .A(n395), .B(n187), .Z(n122) );
  HS65_GS_NOR2X6 U16 ( .A(n132), .B(n19), .Z(n219) );
  HS65_GS_NAND2X7 U17 ( .A(n18), .B(n127), .Z(n115) );
  HS65_GS_NOR2X6 U18 ( .A(n180), .B(n19), .Z(n221) );
  HS65_GS_NAND3X5 U19 ( .A(n18), .B(n180), .C(n133), .Z(n144) );
  HS65_GS_IVX9 U20 ( .A(n127), .Z(n119) );
  HS65_GS_AOI12X2 U21 ( .A(n395), .B(n210), .C(n118), .Z(n179) );
  HS65_GS_NOR2X2 U22 ( .A(n187), .B(N170), .Z(n121) );
  HS65_GS_IVX9 U23 ( .A(n118), .Z(n385) );
  HS65_GS_BFX9 U24 ( .A(nrst), .Z(n18) );
  HS65_GS_IVX2 U25 ( .A(N170), .Z(n395) );
  HS65_GS_IVX9 U26 ( .A(n132), .Z(n233) );
  HS65_GS_IVX9 U27 ( .A(n228), .Z(n390) );
  HS65_GS_NAND2X7 U28 ( .A(n188), .B(n123), .Z(n124) );
  HS65_GS_IVX9 U29 ( .A(n188), .Z(n387) );
  HS65_GS_IVX9 U30 ( .A(n202), .Z(n123) );
  HS65_GS_IVX9 U31 ( .A(n210), .Z(n386) );
  HS65_GS_NOR2AX6 U32 ( .A(n193), .B(n212), .Z(n206) );
  HS65_GS_NOR2AX6 U33 ( .A(n193), .B(n388), .Z(n177) );
  HS65_GS_NOR2AX6 U34 ( .A(n201), .B(n196), .Z(n199) );
  HS65_GS_NOR2AX6 U35 ( .A(n193), .B(n210), .Z(n189) );
  HS65_GS_NOR2AX6 U36 ( .A(n193), .B(n233), .Z(n218) );
  HS65_GS_NOR2AX6 U37 ( .A(n193), .B(n389), .Z(n213) );
  HS65_GS_NOR2X6 U38 ( .A(n195), .B(N151), .Z(n118) );
  HS65_GS_NAND2AX7 U39 ( .A(n195), .B(N151), .Z(n187) );
  HS65_GS_AOI222X2 U40 ( .A(N192), .B(n122), .C(N204), .D(n121), .E(N204), .F(
        n120), .Z(n131) );
  HS65_GS_IVX9 U41 ( .A(N154), .Z(N204) );
  HS65_GS_NOR2X6 U42 ( .A(n215), .B(n19), .Z(n214) );
  HS65_GS_OAI21X3 U43 ( .A(n385), .B(n116), .C(n196), .Z(n194) );
  HS65_GS_NOR2X6 U44 ( .A(n205), .B(n19), .Z(n204) );
  HS65_GS_AND2X4 U45 ( .A(n193), .B(n211), .Z(n208) );
  HS65_GS_NAND2X7 U46 ( .A(n193), .B(n188), .Z(n216) );
  HS65_GS_NAND4ABX3 U47 ( .A(n176), .B(n124), .C(n177), .D(n178), .Z(n127) );
  HS65_GS_OA112X9 U48 ( .A(n386), .B(N189), .C(n179), .D(n180), .Z(n178) );
  HS65_GS_AND2X4 U49 ( .A(n193), .B(n180), .Z(n220) );
  HS65_GS_NAND2X7 U50 ( .A(n186), .B(n187), .Z(n212) );
  HS65_GS_OAI211X5 U51 ( .A(n211), .B(n413), .C(n222), .D(n223), .Z(N735) );
  HS65_GS_NOR3AX2 U52 ( .A(n196), .B(n388), .C(n202), .Z(n223) );
  HS65_GS_IVX9 U53 ( .A(N189), .Z(n413) );
  HS65_GS_AOI13X5 U54 ( .A(n196), .B(n211), .C(n231), .D(n19), .Z(N732) );
  HS65_GS_AOI12X2 U55 ( .A(n118), .B(n116), .C(n176), .Z(n231) );
  HS65_GS_AO222X4 U56 ( .A(N486), .B(n120), .C(N205), .D(n121), .E(N193), .F(
        n122), .Z(n137) );
  HS65_GS_AO222X4 U57 ( .A(N488), .B(n120), .C(N207), .D(n121), .E(N195), .F(
        n122), .Z(n148) );
  HS65_GS_AO222X4 U58 ( .A(N490), .B(n120), .C(N209), .D(n121), .E(N197), .F(
        n122), .Z(n158) );
  HS65_GS_AO222X4 U59 ( .A(N489), .B(n120), .C(N208), .D(n121), .E(N196), .F(
        n122), .Z(n153) );
  HS65_GS_AO222X4 U60 ( .A(N492), .B(n120), .C(N211), .D(n121), .E(N199), .F(
        n122), .Z(n168) );
  HS65_GS_AOI12X2 U61 ( .A(n229), .B(n230), .C(n19), .Z(N733) );
  HS65_GS_OA112X9 U62 ( .A(n116), .B(n385), .C(n123), .D(n180), .Z(n229) );
  HS65_GS_NOR3AX2 U63 ( .A(n211), .B(n125), .C(n233), .Z(n230) );
  HS65_GS_NAND3X5 U64 ( .A(n161), .B(n162), .C(n163), .Z(n160) );
  HS65_GS_AOI112X4 U65 ( .A(N113), .B(n233), .C(n164), .D(n144), .Z(n163) );
  HS65_GS_AOI222X2 U66 ( .A(N124), .B(n124), .C(N479), .D(n117), .E(N315), .F(
        n118), .Z(n161) );
  HS65_GS_AOI222X2 U67 ( .A(N198), .B(n122), .C(N210), .D(n121), .E(N491), .F(
        n120), .Z(n162) );
  HS65_GS_NAND3X5 U68 ( .A(n171), .B(n172), .C(n173), .Z(n170) );
  HS65_GS_AOI112X4 U69 ( .A(N115), .B(n233), .C(n174), .D(n144), .Z(n173) );
  HS65_GS_AOI222X2 U70 ( .A(N126), .B(n124), .C(N481), .D(n117), .E(N317), .F(
        n118), .Z(n171) );
  HS65_GS_AOI222X2 U71 ( .A(N200), .B(n122), .C(N212), .D(n121), .E(N493), .F(
        n120), .Z(n172) );
  HS65_GS_NAND3X5 U72 ( .A(n181), .B(n182), .C(n183), .Z(n175) );
  HS65_GS_AOI112X4 U73 ( .A(N116), .B(n233), .C(n184), .D(n144), .Z(n183) );
  HS65_GS_AOI222X2 U74 ( .A(N127), .B(n124), .C(N482), .D(n117), .E(N318), .F(
        n118), .Z(n181) );
  HS65_GS_AOI222X2 U75 ( .A(N201), .B(n122), .C(N213), .D(n121), .E(N494), .F(
        n120), .Z(n182) );
  HS65_GS_NAND3X5 U76 ( .A(n140), .B(n141), .C(n142), .Z(n139) );
  HS65_GS_AOI112X4 U77 ( .A(N109), .B(n233), .C(n143), .D(n144), .Z(n142) );
  HS65_GS_AOI222X2 U78 ( .A(N120), .B(n124), .C(N475), .D(n117), .E(N311), .F(
        n118), .Z(n140) );
  HS65_GS_AOI222X2 U79 ( .A(N475), .B(n122), .C(N206), .D(n121), .E(N487), .F(
        n120), .Z(n141) );
  HS65_GS_NAND3X5 U80 ( .A(n222), .B(n179), .C(n225), .Z(N734) );
  HS65_GS_NOR3X4 U81 ( .A(n387), .B(n389), .C(n125), .Z(n225) );
  HS65_GS_IVX9 U82 ( .A(N261), .Z(n116) );
  HS65_GS_NOR2X6 U83 ( .A(n395), .B(n186), .Z(n117) );
  HS65_GS_NOR2X6 U84 ( .A(n186), .B(N170), .Z(n120) );
  HS65_GS_NOR3X4 U85 ( .A(n396), .B(n394), .C(n228), .Z(n185) );
  HS65_GS_NAND3X5 U86 ( .A(n391), .B(n394), .C(n226), .Z(n132) );
  HS65_GS_NAND2X7 U87 ( .A(n226), .B(n224), .Z(n188) );
  HS65_GS_NAND3X5 U88 ( .A(n393), .B(n396), .C(n224), .Z(n180) );
  HS65_GS_NAND2X7 U89 ( .A(n195), .B(n186), .Z(n210) );
  HS65_GS_AOI12X2 U90 ( .A(n396), .B(n390), .C(n185), .Z(n133) );
  HS65_GS_IVX9 U91 ( .A(n215), .Z(n389) );
  HS65_GS_IVX9 U92 ( .A(n205), .Z(n388) );
  HS65_GSS_XOR3X2 U93 ( .A(N254), .B(N138), .C(\r239/carry[10] ), .Z(N318) );
  HS65_GS_FA1X4 U94 ( .A0(N251), .B0(N135), .CI(\r239/carry[7] ), .CO(
        \r239/carry[8] ), .S0(N315) );
  HS65_GS_FA1X4 U95 ( .A0(N252), .B0(N136), .CI(\r239/carry[8] ), .CO(
        \r239/carry[9] ), .S0(N316) );
  HS65_GS_FA1X4 U96 ( .A0(N253), .B0(N137), .CI(\r239/carry[9] ), .CO(
        \r239/carry[10] ), .S0(N317) );
  HS65_GS_FA1X4 U97 ( .A0(N250), .B0(N367), .CI(\r239/carry[6] ), .CO(
        \r239/carry[7] ), .S0(N314) );
  HS65_GS_NAND2X7 U98 ( .A(n393), .B(n391), .Z(n228) );
  HS65_GS_IVX9 U99 ( .A(N175), .Z(N475) );
  HS65_GS_IVX9 U100 ( .A(N247), .Z(N311) );
  HS65_GS_IVX9 U101 ( .A(N155), .Z(n89) );
  HS65_GS_IVX9 U102 ( .A(N193), .Z(n112) );
  HS65_GS_IVX9 U103 ( .A(N310), .Z(n65) );
  HS65_GS_OAI22X6 U104 ( .A(n412), .B(n216), .C(n2), .D(n217), .Z(n351) );
  HS65_GS_IVX9 U105 ( .A(knownSinks[0]), .Z(n412) );
  HS65_GS_OAI22X6 U106 ( .A(n411), .B(n216), .C(n3), .D(n217), .Z(n350) );
  HS65_GS_IVX9 U107 ( .A(knownSinks[1]), .Z(n411) );
  HS65_GS_OAI22X6 U108 ( .A(n410), .B(n216), .C(n4), .D(n217), .Z(n349) );
  HS65_GS_IVX9 U109 ( .A(knownSinks[2]), .Z(n410) );
  HS65_GS_OAI22X6 U110 ( .A(n409), .B(n216), .C(n5), .D(n217), .Z(n348) );
  HS65_GS_IVX9 U111 ( .A(knownSinks[3]), .Z(n409) );
  HS65_GS_OAI22X6 U112 ( .A(n408), .B(n216), .C(n6), .D(n217), .Z(n347) );
  HS65_GS_IVX9 U113 ( .A(knownSinks[4]), .Z(n408) );
  HS65_GS_OAI22X6 U114 ( .A(n407), .B(n216), .C(n7), .D(n217), .Z(n346) );
  HS65_GS_IVX9 U115 ( .A(knownSinks[5]), .Z(n407) );
  HS65_GS_OAI22X6 U116 ( .A(n406), .B(n216), .C(n8), .D(n217), .Z(n345) );
  HS65_GS_IVX9 U117 ( .A(knownSinks[6]), .Z(n406) );
  HS65_GS_OAI22X6 U118 ( .A(n405), .B(n216), .C(n9), .D(n217), .Z(n344) );
  HS65_GS_IVX9 U119 ( .A(knownSinks[7]), .Z(n405) );
  HS65_GS_OAI22X6 U120 ( .A(n404), .B(n216), .C(n10), .D(n217), .Z(n343) );
  HS65_GS_IVX9 U121 ( .A(knownSinks[8]), .Z(n404) );
  HS65_GS_OAI22X6 U122 ( .A(n403), .B(n216), .C(n11), .D(n217), .Z(n342) );
  HS65_GS_IVX9 U123 ( .A(knownSinks[9]), .Z(n403) );
  HS65_GS_OAI22X6 U124 ( .A(n402), .B(n216), .C(n12), .D(n217), .Z(n341) );
  HS65_GS_IVX9 U125 ( .A(knownSinks[10]), .Z(n402) );
  HS65_GS_OAI22X6 U126 ( .A(n401), .B(n216), .C(n13), .D(n217), .Z(n340) );
  HS65_GS_IVX9 U127 ( .A(knownSinks[11]), .Z(n401) );
  HS65_GS_OAI22X6 U128 ( .A(n400), .B(n216), .C(n14), .D(n217), .Z(n339) );
  HS65_GS_IVX9 U129 ( .A(knownSinks[12]), .Z(n400) );
  HS65_GS_OAI22X6 U130 ( .A(n399), .B(n216), .C(n15), .D(n217), .Z(n338) );
  HS65_GS_IVX9 U131 ( .A(knownSinks[13]), .Z(n399) );
  HS65_GS_OAI22X6 U132 ( .A(n398), .B(n216), .C(n16), .D(n217), .Z(n337) );
  HS65_GS_IVX9 U133 ( .A(knownSinks[14]), .Z(n398) );
  HS65_GS_OAI22X6 U134 ( .A(n397), .B(n216), .C(n17), .D(n217), .Z(n336) );
  HS65_GS_IVX9 U135 ( .A(knownSinks[15]), .Z(n397) );
  HS65_GS_CBI4I1X5 U136 ( .A(n134), .B(n135), .C(n115), .D(n136), .Z(n234) );
  HS65_GS_AOI212X4 U137 ( .A(N141), .B(n389), .C(N108), .D(n233), .E(n138), 
        .Z(n134) );
  HS65_GS_AOI212X4 U138 ( .A(N193), .B(n117), .C(N310), .D(n118), .E(n137), 
        .Z(n135) );
  HS65_GS_NAND2X7 U139 ( .A(address[2]), .B(n119), .Z(n136) );
  HS65_GS_CBI4I1X5 U140 ( .A(n145), .B(n146), .C(n115), .D(n147), .Z(n235) );
  HS65_GS_AOI212X4 U141 ( .A(N143), .B(n389), .C(N110), .D(n233), .E(n149), 
        .Z(n145) );
  HS65_GS_AOI212X4 U142 ( .A(N476), .B(n117), .C(N312), .D(n118), .E(n148), 
        .Z(n146) );
  HS65_GS_NAND2X7 U143 ( .A(address[4]), .B(n119), .Z(n147) );
  HS65_GS_CBI4I1X5 U144 ( .A(n150), .B(n151), .C(n115), .D(n152), .Z(n236) );
  HS65_GS_AOI212X4 U145 ( .A(N144), .B(n389), .C(N111), .D(n233), .E(n154), 
        .Z(n150) );
  HS65_GS_AOI212X4 U146 ( .A(N477), .B(n117), .C(N313), .D(n118), .E(n153), 
        .Z(n151) );
  HS65_GS_NAND2X7 U147 ( .A(address[5]), .B(n119), .Z(n152) );
  HS65_GS_CBI4I1X5 U148 ( .A(n155), .B(n156), .C(n115), .D(n157), .Z(n237) );
  HS65_GS_AOI212X4 U149 ( .A(N145), .B(n389), .C(N112), .D(n233), .E(n159), 
        .Z(n155) );
  HS65_GS_AOI212X4 U150 ( .A(N478), .B(n117), .C(N314), .D(n118), .E(n158), 
        .Z(n156) );
  HS65_GS_NAND2X7 U151 ( .A(address[6]), .B(n119), .Z(n157) );
  HS65_GS_CBI4I1X5 U152 ( .A(n165), .B(n166), .C(n115), .D(n167), .Z(n238) );
  HS65_GS_AOI212X4 U153 ( .A(N147), .B(n389), .C(N114), .D(n233), .E(n169), 
        .Z(n165) );
  HS65_GS_AOI212X4 U154 ( .A(N480), .B(n117), .C(N316), .D(n118), .E(n168), 
        .Z(n166) );
  HS65_GS_NAND2X7 U155 ( .A(address[8]), .B(n119), .Z(n167) );
  HS65_GS_OA311X9 U156 ( .A(n396), .B(n390), .C(n394), .D(n203), .E(n227), .Z(
        n222) );
  HS65_GS_AOI12X2 U157 ( .A(n185), .B(n415), .C(n19), .Z(n227) );
  HS65_GS_IVX9 U158 ( .A(en), .Z(n415) );
  HS65_GS_IVX9 U159 ( .A(data_in[1]), .Z(n3) );
  HS65_GS_IVX9 U160 ( .A(data_in[0]), .Z(n2) );
  HS65_GS_IVX9 U161 ( .A(data_in[2]), .Z(n4) );
  HS65_GS_IVX9 U162 ( .A(data_in[14]), .Z(n16) );
  HS65_GS_IVX9 U163 ( .A(data_in[13]), .Z(n15) );
  HS65_GS_IVX9 U164 ( .A(data_in[11]), .Z(n13) );
  HS65_GS_IVX9 U165 ( .A(data_in[12]), .Z(n14) );
  HS65_GS_IVX9 U166 ( .A(data_in[10]), .Z(n12) );
  HS65_GS_IVX9 U167 ( .A(data_in[7]), .Z(n9) );
  HS65_GS_IVX9 U168 ( .A(data_in[8]), .Z(n10) );
  HS65_GS_IVX9 U169 ( .A(data_in[3]), .Z(n5) );
  HS65_GS_IVX9 U170 ( .A(data_in[4]), .Z(n6) );
  HS65_GS_IVX9 U171 ( .A(data_in[6]), .Z(n8) );
  HS65_GS_IVX9 U172 ( .A(data_in[5]), .Z(n7) );
  HS65_GS_IVX9 U173 ( .A(data_in[9]), .Z(n11) );
  HS65_GS_IVX9 U174 ( .A(data_in[15]), .Z(n17) );
  HS65_GS_NAND4ABX3 U175 ( .A(n128), .B(n129), .C(n130), .D(n131), .Z(n126) );
  HS65_GS_AO222X4 U176 ( .A(N354), .B(n125), .C(N132), .D(n388), .E(N140), .F(
        n389), .Z(n128) );
  HS65_GS_OAI211X5 U177 ( .A(n414), .B(n132), .C(n18), .D(n133), .Z(n129) );
  HS65_GS_AOI222X2 U178 ( .A(N118), .B(n124), .C(N192), .D(n117), .E(N309), 
        .F(n118), .Z(n130) );
  HS65_GS_AND2X4 U179 ( .A(address[0]), .B(n119), .Z(n1) );
  HS65_GS_MX41X7 U180 ( .D0(data_out[0]), .S0(n197), .D1(knownSinks[0]), .S1(
        n198), .D2(N391), .S2(n199), .D3(N407), .S3(n200), .Z(n270) );
  HS65_GS_MX41X7 U181 ( .D0(data_out[1]), .S0(n197), .D1(knownSinks[1]), .S1(
        n198), .D2(N392), .S2(n199), .D3(N408), .S3(n200), .Z(n269) );
  HS65_GS_MX41X7 U182 ( .D0(data_out[2]), .S0(n197), .D1(knownSinks[2]), .S1(
        n198), .D2(N393), .S2(n199), .D3(N409), .S3(n200), .Z(n268) );
  HS65_GS_MX41X7 U183 ( .D0(data_out[3]), .S0(n197), .D1(knownSinks[3]), .S1(
        n198), .D2(N394), .S2(n199), .D3(N410), .S3(n200), .Z(n267) );
  HS65_GS_MX41X7 U184 ( .D0(data_out[4]), .S0(n197), .D1(knownSinks[4]), .S1(
        n198), .D2(N395), .S2(n199), .D3(N411), .S3(n200), .Z(n266) );
  HS65_GS_MX41X7 U185 ( .D0(data_out[5]), .S0(n197), .D1(knownSinks[5]), .S1(
        n198), .D2(N396), .S2(n199), .D3(N412), .S3(n200), .Z(n265) );
  HS65_GS_MX41X7 U186 ( .D0(data_out[6]), .S0(n197), .D1(knownSinks[6]), .S1(
        n198), .D2(N397), .S2(n199), .D3(N413), .S3(n200), .Z(n264) );
  HS65_GS_MX41X7 U187 ( .D0(data_out[7]), .S0(n197), .D1(knownSinks[7]), .S1(
        n198), .D2(N398), .S2(n199), .D3(N414), .S3(n200), .Z(n263) );
  HS65_GS_MX41X7 U188 ( .D0(data_out[8]), .S0(n197), .D1(knownSinks[8]), .S1(
        n198), .D2(N399), .S2(n199), .D3(N415), .S3(n200), .Z(n262) );
  HS65_GS_MX41X7 U189 ( .D0(data_out[9]), .S0(n197), .D1(knownSinks[9]), .S1(
        n198), .D2(N400), .S2(n199), .D3(N416), .S3(n200), .Z(n261) );
  HS65_GS_MX41X7 U190 ( .D0(data_out[10]), .S0(n197), .D1(knownSinks[10]), 
        .S1(n198), .D2(N401), .S2(n199), .D3(N417), .S3(n200), .Z(n260) );
  HS65_GS_MX41X7 U191 ( .D0(data_out[11]), .S0(n197), .D1(knownSinks[11]), 
        .S1(n198), .D2(N402), .S2(n199), .D3(N418), .S3(n200), .Z(n259) );
  HS65_GS_MX41X7 U192 ( .D0(data_out[12]), .S0(n197), .D1(knownSinks[12]), 
        .S1(n198), .D2(N403), .S2(n199), .D3(N419), .S3(n200), .Z(n258) );
  HS65_GS_MX41X7 U193 ( .D0(data_out[13]), .S0(n197), .D1(knownSinks[13]), 
        .S1(n198), .D2(N404), .S2(n199), .D3(N420), .S3(n200), .Z(n257) );
  HS65_GS_MX41X7 U194 ( .D0(data_out[14]), .S0(n197), .D1(knownSinks[14]), 
        .S1(n198), .D2(N405), .S2(n199), .D3(N421), .S3(n200), .Z(n256) );
  HS65_GS_MX41X7 U195 ( .D0(data_out[15]), .S0(n197), .D1(knownSinks[15]), 
        .S1(n198), .D2(N406), .S2(n199), .D3(N422), .S3(n200), .Z(n255) );
  HS65_GS_AO22X9 U196 ( .A(i[2]), .B(n206), .C(N156), .D(n207), .Z(n300) );
  HS65_GS_AO22X9 U197 ( .A(i[14]), .B(n206), .C(N168), .D(n207), .Z(n288) );
  HS65_GS_AO22X9 U198 ( .A(i[13]), .B(n206), .C(N167), .D(n207), .Z(n289) );
  HS65_GS_AO22X9 U199 ( .A(i[12]), .B(n206), .C(N166), .D(n207), .Z(n290) );
  HS65_GS_AO22X9 U200 ( .A(i[11]), .B(n206), .C(N165), .D(n207), .Z(n291) );
  HS65_GS_AO22X9 U201 ( .A(i[10]), .B(n206), .C(N164), .D(n207), .Z(n292) );
  HS65_GS_AO22X9 U202 ( .A(i[9]), .B(n206), .C(N163), .D(n207), .Z(n293) );
  HS65_GS_AO22X9 U203 ( .A(i[8]), .B(n206), .C(N162), .D(n207), .Z(n294) );
  HS65_GS_AO22X9 U204 ( .A(i[7]), .B(n206), .C(N161), .D(n207), .Z(n295) );
  HS65_GS_AO22X9 U205 ( .A(i[6]), .B(n206), .C(N160), .D(n207), .Z(n296) );
  HS65_GS_AO22X9 U206 ( .A(i[5]), .B(n206), .C(N159), .D(n207), .Z(n297) );
  HS65_GS_AO22X9 U207 ( .A(i[4]), .B(n206), .C(N158), .D(n207), .Z(n298) );
  HS65_GS_AO22X9 U208 ( .A(i[3]), .B(n206), .C(N157), .D(n207), .Z(n299) );
  HS65_GS_AO22X9 U209 ( .A(N133), .B(n206), .C(N155), .D(n207), .Z(n301) );
  HS65_GS_AO22X9 U210 ( .A(N132), .B(n206), .C(N154), .D(n207), .Z(n302) );
  HS65_GS_AO22X9 U211 ( .A(i[15]), .B(n206), .C(N169), .D(n207), .Z(n319) );
  HS65_GS_AO32X4 U212 ( .A(n191), .B(n114), .C(n18), .D(wr_en), .E(n192), .Z(
        n254) );
  HS65_GS_NAND2X7 U213 ( .A(n195), .B(n196), .Z(n191) );
  HS65_GS_IVX9 U214 ( .A(n192), .Z(n114) );
  HS65_GS_NOR4ABX2 U215 ( .A(n186), .B(n193), .C(n194), .D(n125), .Z(n192) );
  HS65_GS_AO22X9 U216 ( .A(j[2]), .B(n208), .C(N175), .D(n209), .Z(n315) );
  HS65_GS_AO22X9 U217 ( .A(N354), .B(n208), .C(N192), .D(n209), .Z(n317) );
  HS65_GS_AO22X9 U218 ( .A(N108), .B(n208), .C(N193), .D(n209), .Z(n316) );
  HS65_GS_AO22X9 U219 ( .A(k[2]), .B(n189), .C(N247), .D(n190), .Z(n252) );
  HS65_GS_AO22X9 U220 ( .A(N140), .B(n189), .C(N309), .D(n190), .Z(n384) );
  HS65_GS_AO22X9 U221 ( .A(sinkIDCount[0]), .B(n213), .C(n214), .D(data_in[0]), 
        .Z(n335) );
  HS65_GS_AO22X9 U222 ( .A(k[15]), .B(n189), .C(N260), .D(n190), .Z(n239) );
  HS65_GS_AO22X9 U223 ( .A(j[15]), .B(n208), .C(N188), .D(n209), .Z(n318) );
  HS65_GS_AO22X9 U224 ( .A(done), .B(n193), .C(n392), .D(n18), .Z(n271) );
  HS65_GS_IVX9 U225 ( .A(n203), .Z(n392) );
  HS65_GS_AO22X9 U226 ( .A(N141), .B(n189), .C(N310), .D(n190), .Z(n253) );
  HS65_GS_AO22X9 U227 ( .A(j[6]), .B(n208), .C(N179), .D(n209), .Z(n311) );
  HS65_GS_AO22X9 U228 ( .A(j[5]), .B(n208), .C(N178), .D(n209), .Z(n312) );
  HS65_GS_AO22X9 U229 ( .A(j[4]), .B(n208), .C(N177), .D(n209), .Z(n313) );
  HS65_GS_AO22X9 U230 ( .A(j[8]), .B(n208), .C(N181), .D(n209), .Z(n309) );
  HS65_GS_AO22X9 U231 ( .A(j[7]), .B(n208), .C(N180), .D(n209), .Z(n310) );
  HS65_GS_AO22X9 U232 ( .A(j[3]), .B(n208), .C(N176), .D(n209), .Z(n314) );
  HS65_GS_AO22X9 U233 ( .A(worstHops[0]), .B(n177), .C(data_in[0]), .D(n204), 
        .Z(n287) );
  HS65_GS_AO22X9 U234 ( .A(worstHops[1]), .B(n177), .C(data_in[1]), .D(n204), 
        .Z(n286) );
  HS65_GS_AO22X9 U235 ( .A(worstHops[2]), .B(n177), .C(data_in[2]), .D(n204), 
        .Z(n285) );
  HS65_GS_AO22X9 U236 ( .A(worstHops[3]), .B(n177), .C(data_in[3]), .D(n204), 
        .Z(n284) );
  HS65_GS_AO22X9 U237 ( .A(worstHops[4]), .B(n177), .C(data_in[4]), .D(n204), 
        .Z(n283) );
  HS65_GS_AO22X9 U238 ( .A(worstHops[5]), .B(n177), .C(data_in[5]), .D(n204), 
        .Z(n282) );
  HS65_GS_AO22X9 U239 ( .A(worstHops[6]), .B(n177), .C(data_in[6]), .D(n204), 
        .Z(n281) );
  HS65_GS_AO22X9 U240 ( .A(worstHops[7]), .B(n177), .C(data_in[7]), .D(n204), 
        .Z(n280) );
  HS65_GS_AO22X9 U241 ( .A(worstHops[8]), .B(n177), .C(data_in[8]), .D(n204), 
        .Z(n279) );
  HS65_GS_AO22X9 U242 ( .A(worstHops[9]), .B(n177), .C(data_in[9]), .D(n204), 
        .Z(n278) );
  HS65_GS_AO22X9 U243 ( .A(worstHops[10]), .B(n177), .C(data_in[10]), .D(n204), 
        .Z(n277) );
  HS65_GS_AO22X9 U244 ( .A(worstHops[11]), .B(n177), .C(data_in[11]), .D(n204), 
        .Z(n276) );
  HS65_GS_AO22X9 U245 ( .A(worstHops[12]), .B(n177), .C(data_in[12]), .D(n204), 
        .Z(n275) );
  HS65_GS_AO22X9 U246 ( .A(worstHops[13]), .B(n177), .C(data_in[13]), .D(n204), 
        .Z(n274) );
  HS65_GS_AO22X9 U247 ( .A(worstHops[14]), .B(n177), .C(data_in[14]), .D(n204), 
        .Z(n273) );
  HS65_GS_AO22X9 U248 ( .A(worstHops[15]), .B(n177), .C(data_in[15]), .D(n204), 
        .Z(n272) );
  HS65_GS_AO22X9 U249 ( .A(j[9]), .B(n208), .C(N182), .D(n209), .Z(n308) );
  HS65_GS_AO22X9 U250 ( .A(sinkIDCount[1]), .B(n213), .C(n214), .D(data_in[1]), 
        .Z(n334) );
  HS65_GS_AO22X9 U251 ( .A(k[5]), .B(n189), .C(N250), .D(n190), .Z(n249) );
  HS65_GS_AO22X9 U252 ( .A(k[6]), .B(n189), .C(N251), .D(n190), .Z(n248) );
  HS65_GS_AO22X9 U253 ( .A(k[9]), .B(n189), .C(N254), .D(n190), .Z(n245) );
  HS65_GS_AO22X9 U254 ( .A(k[3]), .B(n189), .C(N248), .D(n190), .Z(n251) );
  HS65_GS_AO22X9 U255 ( .A(k[4]), .B(n189), .C(N249), .D(n190), .Z(n250) );
  HS65_GS_AO22X9 U256 ( .A(k[7]), .B(n189), .C(N252), .D(n190), .Z(n247) );
  HS65_GS_AO22X9 U257 ( .A(k[8]), .B(n189), .C(N253), .D(n190), .Z(n246) );
  HS65_GS_AO22X9 U258 ( .A(sinkIDCount[2]), .B(n213), .C(n214), .D(data_in[2]), 
        .Z(n333) );
  HS65_GS_AO22X9 U259 ( .A(sinkIDCount[3]), .B(n213), .C(n214), .D(data_in[3]), 
        .Z(n332) );
  HS65_GS_AO22X9 U260 ( .A(sinkIDCount[4]), .B(n213), .C(n214), .D(data_in[4]), 
        .Z(n331) );
  HS65_GS_AO22X9 U261 ( .A(sinkIDCount[7]), .B(n213), .C(n214), .D(data_in[7]), 
        .Z(n328) );
  HS65_GS_AO22X9 U262 ( .A(sinkIDCount[8]), .B(n213), .C(n214), .D(data_in[8]), 
        .Z(n327) );
  HS65_GS_AO22X9 U263 ( .A(sinkIDCount[11]), .B(n213), .C(n214), .D(
        data_in[11]), .Z(n324) );
  HS65_GS_AO22X9 U264 ( .A(sinkIDCount[12]), .B(n213), .C(n214), .D(
        data_in[12]), .Z(n323) );
  HS65_GS_AO22X9 U265 ( .A(sinkIDCount[5]), .B(n213), .C(n214), .D(data_in[5]), 
        .Z(n330) );
  HS65_GS_AO22X9 U266 ( .A(sinkIDCount[6]), .B(n213), .C(n214), .D(data_in[6]), 
        .Z(n329) );
  HS65_GS_AO22X9 U267 ( .A(sinkIDCount[9]), .B(n213), .C(n214), .D(data_in[9]), 
        .Z(n326) );
  HS65_GS_AO22X9 U268 ( .A(sinkIDCount[10]), .B(n213), .C(n214), .D(
        data_in[10]), .Z(n325) );
  HS65_GS_AO22X9 U269 ( .A(sinkIDCount[13]), .B(n213), .C(n214), .D(
        data_in[13]), .Z(n322) );
  HS65_GS_AO22X9 U270 ( .A(sinkIDCount[14]), .B(n213), .C(n214), .D(
        data_in[14]), .Z(n321) );
  HS65_GS_AO22X9 U271 ( .A(sinkIDCount[15]), .B(n213), .C(n214), .D(
        data_in[15]), .Z(n320) );
  HS65_GS_AO22X9 U272 ( .A(knownSinkCount[0]), .B(n218), .C(n219), .D(
        data_in[0]), .Z(n367) );
  HS65_GS_AO22X9 U273 ( .A(knownSinkCount[1]), .B(n218), .C(n219), .D(
        data_in[1]), .Z(n366) );
  HS65_GS_AO22X9 U274 ( .A(knownSinkCount[2]), .B(n218), .C(n219), .D(
        data_in[2]), .Z(n365) );
  HS65_GS_AO22X9 U275 ( .A(knownSinkCount[3]), .B(n218), .C(n219), .D(
        data_in[3]), .Z(n364) );
  HS65_GS_AO22X9 U276 ( .A(knownSinkCount[4]), .B(n218), .C(n219), .D(
        data_in[4]), .Z(n363) );
  HS65_GS_AO22X9 U277 ( .A(knownSinkCount[5]), .B(n218), .C(n219), .D(
        data_in[5]), .Z(n362) );
  HS65_GS_AO22X9 U278 ( .A(knownSinkCount[6]), .B(n218), .C(n219), .D(
        data_in[6]), .Z(n361) );
  HS65_GS_AO22X9 U279 ( .A(knownSinkCount[7]), .B(n218), .C(n219), .D(
        data_in[7]), .Z(n360) );
  HS65_GS_AO22X9 U280 ( .A(knownSinkCount[8]), .B(n218), .C(n219), .D(
        data_in[8]), .Z(n359) );
  HS65_GS_AO22X9 U281 ( .A(knownSinkCount[9]), .B(n218), .C(n219), .D(
        data_in[9]), .Z(n358) );
  HS65_GS_AO22X9 U282 ( .A(knownSinkCount[10]), .B(n218), .C(n219), .D(
        data_in[10]), .Z(n357) );
  HS65_GS_AO22X9 U283 ( .A(knownSinkCount[11]), .B(n218), .C(n219), .D(
        data_in[11]), .Z(n356) );
  HS65_GS_AO22X9 U284 ( .A(knownSinkCount[12]), .B(n218), .C(n219), .D(
        data_in[12]), .Z(n355) );
  HS65_GS_AO22X9 U285 ( .A(knownSinkCount[13]), .B(n218), .C(n219), .D(
        data_in[13]), .Z(n354) );
  HS65_GS_AO22X9 U286 ( .A(knownSinkCount[14]), .B(n218), .C(n219), .D(
        data_in[14]), .Z(n353) );
  HS65_GS_AO22X9 U287 ( .A(knownSinkCount[15]), .B(n218), .C(n219), .D(
        data_in[15]), .Z(n352) );
  HS65_GS_AO22X9 U288 ( .A(k[10]), .B(n189), .C(N255), .D(n190), .Z(n244) );
  HS65_GS_AO22X9 U289 ( .A(k[11]), .B(n189), .C(N256), .D(n190), .Z(n243) );
  HS65_GS_AO22X9 U290 ( .A(k[12]), .B(n189), .C(N257), .D(n190), .Z(n242) );
  HS65_GS_AO22X9 U291 ( .A(k[13]), .B(n189), .C(N258), .D(n190), .Z(n241) );
  HS65_GS_AO22X9 U292 ( .A(k[14]), .B(n189), .C(N259), .D(n190), .Z(n240) );
  HS65_GS_AO22X9 U293 ( .A(neighborCount[0]), .B(n220), .C(n221), .D(
        data_in[0]), .Z(n383) );
  HS65_GS_AO22X9 U294 ( .A(neighborCount[1]), .B(n220), .C(n221), .D(
        data_in[1]), .Z(n382) );
  HS65_GS_AO22X9 U295 ( .A(neighborCount[2]), .B(n220), .C(n221), .D(
        data_in[2]), .Z(n381) );
  HS65_GS_AO22X9 U296 ( .A(neighborCount[3]), .B(n220), .C(n221), .D(
        data_in[3]), .Z(n380) );
  HS65_GS_AO22X9 U297 ( .A(neighborCount[4]), .B(n220), .C(n221), .D(
        data_in[4]), .Z(n379) );
  HS65_GS_AO22X9 U298 ( .A(neighborCount[5]), .B(n220), .C(n221), .D(
        data_in[5]), .Z(n378) );
  HS65_GS_AO22X9 U299 ( .A(neighborCount[6]), .B(n220), .C(n221), .D(
        data_in[6]), .Z(n377) );
  HS65_GS_AO22X9 U300 ( .A(neighborCount[7]), .B(n220), .C(n221), .D(
        data_in[7]), .Z(n376) );
  HS65_GS_AO22X9 U301 ( .A(neighborCount[8]), .B(n220), .C(n221), .D(
        data_in[8]), .Z(n375) );
  HS65_GS_AO22X9 U302 ( .A(neighborCount[9]), .B(n220), .C(n221), .D(
        data_in[9]), .Z(n374) );
  HS65_GS_AO22X9 U303 ( .A(neighborCount[10]), .B(n220), .C(n221), .D(
        data_in[10]), .Z(n373) );
  HS65_GS_AO22X9 U304 ( .A(neighborCount[11]), .B(n220), .C(n221), .D(
        data_in[11]), .Z(n372) );
  HS65_GS_AO22X9 U305 ( .A(neighborCount[12]), .B(n220), .C(n221), .D(
        data_in[12]), .Z(n371) );
  HS65_GS_AO22X9 U306 ( .A(neighborCount[13]), .B(n220), .C(n221), .D(
        data_in[13]), .Z(n370) );
  HS65_GS_AO22X9 U307 ( .A(neighborCount[14]), .B(n220), .C(n221), .D(
        data_in[14]), .Z(n369) );
  HS65_GS_AO22X9 U308 ( .A(neighborCount[15]), .B(n220), .C(n221), .D(
        data_in[15]), .Z(n368) );
  HS65_GS_AO22X9 U309 ( .A(j[14]), .B(n208), .C(N187), .D(n209), .Z(n303) );
  HS65_GS_AO22X9 U310 ( .A(j[13]), .B(n208), .C(N186), .D(n209), .Z(n304) );
  HS65_GS_AO22X9 U311 ( .A(j[12]), .B(n208), .C(N185), .D(n209), .Z(n305) );
  HS65_GS_AO22X9 U312 ( .A(j[11]), .B(n208), .C(N184), .D(n209), .Z(n306) );
  HS65_GS_AO22X9 U313 ( .A(j[10]), .B(n208), .C(N183), .D(n209), .Z(n307) );
  HS65_GS_NOR4ABX4 U314 ( .A(n394), .B(state[2]), .C(state[0]), .D(n393), .Z(
        n125) );
  HS65_GS_IVX9 U315 ( .A(state[3]), .Z(n394) );
  HS65_GS_NOR2X6 U316 ( .A(n393), .B(state[2]), .Z(n226) );
  HS65_GS_NOR2X6 U317 ( .A(n391), .B(state[3]), .Z(n224) );
  HS65_GS_NAND3X5 U318 ( .A(state[2]), .B(n394), .C(n390), .Z(n215) );
  HS65_GS_IVX9 U319 ( .A(state[2]), .Z(n396) );
  HS65_GS_NAND3X5 U320 ( .A(n224), .B(state[1]), .C(state[2]), .Z(n205) );
  HS65_GS_NAND3X5 U321 ( .A(state[3]), .B(n391), .C(n226), .Z(n186) );
  HS65_GS_IVX9 U322 ( .A(state[1]), .Z(n393) );
  HS65_GS_NAND3X5 U323 ( .A(n224), .B(n393), .C(state[2]), .Z(n195) );
  HS65_GS_IVX9 U324 ( .A(state[0]), .Z(n391) );
  HS65_GS_NAND3X5 U325 ( .A(state[3]), .B(n396), .C(n390), .Z(n196) );
  HS65_GS_IVX9 U326 ( .A(N132), .Z(N118) );
  HS65_GS_FA1X4 U327 ( .A0(k[6]), .B0(N135), .CI(
        \add_0_root_add_67_2/carry[7] ), .CO(\add_0_root_add_67_2/carry[8] ), 
        .S0(N146) );
  HS65_GS_FA1X4 U328 ( .A0(k[7]), .B0(N136), .CI(
        \add_0_root_add_67_2/carry[8] ), .CO(\add_0_root_add_67_2/carry[9] ), 
        .S0(N147) );
  HS65_GS_FA1X4 U329 ( .A0(k[8]), .B0(N137), .CI(
        \add_0_root_add_67_2/carry[9] ), .CO(\add_0_root_add_67_2/carry[10] ), 
        .S0(N148) );
  HS65_GS_NAND3X5 U330 ( .A(n215), .B(n132), .C(n232), .Z(n176) );
  HS65_GS_AOI13X5 U331 ( .A(n390), .B(n394), .C(start), .D(n125), .Z(n232) );
  HS65_GS_NAND3X5 U332 ( .A(state[3]), .B(state[0]), .C(n226), .Z(n203) );
  HS65_GS_FA1X4 U333 ( .A0(N248), .B0(N132), .CI(N247), .CO(\r239/carry[5] ), 
        .S0(N312) );
  HS65_GS_FA1X4 U334 ( .A0(k[3]), .B0(N132), .CI(k[2]), .CO(
        \add_0_root_add_67_2/carry[5] ), .S0(N143) );
  HS65_GS_FA1X4 U335 ( .A0(N249), .B0(N133), .CI(\r239/carry[5] ), .CO(
        \r239/carry[6] ), .S0(N313) );
  HS65_GS_FA1X4 U336 ( .A0(k[4]), .B0(N133), .CI(
        \add_0_root_add_67_2/carry[5] ), .CO(\add_0_root_add_67_2/carry[6] ), 
        .S0(N144) );
  HS65_GS_FA1X4 U337 ( .A0(k[5]), .B0(N367), .CI(
        \add_0_root_add_67_2/carry[6] ), .CO(\add_0_root_add_67_2/carry[7] ), 
        .S0(N145) );
  HS65_GS_IVX9 U338 ( .A(j[2]), .Z(N109) );
  HS65_GS_IVX9 U339 ( .A(N354), .Z(n414) );
  HS65_GS_AO222X4 U340 ( .A(N360), .B(n125), .C(N371), .D(n388), .E(N146), .F(
        n389), .Z(n164) );
  HS65_GS_AO222X4 U341 ( .A(N362), .B(n125), .C(N373), .D(n388), .E(N148), .F(
        n389), .Z(n174) );
  HS65_GS_AO222X4 U342 ( .A(N363), .B(n125), .C(N374), .D(n388), .E(N149), .F(
        n389), .Z(n184) );
  HS65_GSS_XOR3X2 U343 ( .A(k[9]), .B(N138), .C(
        \add_0_root_add_67_2/carry[10] ), .Z(N149) );
  HS65_GS_AO222X4 U344 ( .A(N109), .B(n125), .C(N367), .D(n388), .E(N142), .F(
        n389), .Z(n143) );
  HS65_GS_IVX9 U345 ( .A(k[2]), .Z(N142) );
  HS65_GS_IVX9 U346 ( .A(i[2]), .Z(N367) );
  HS65_GS_AO222X4 U347 ( .A(N133), .B(n388), .C(N119), .D(n124), .E(N108), .F(
        n125), .Z(n138) );
  HS65_GS_AO222X4 U348 ( .A(N370), .B(n388), .C(N123), .D(n124), .E(N359), .F(
        n125), .Z(n159) );
  HS65_GS_AO222X4 U349 ( .A(N368), .B(n388), .C(N121), .D(n124), .E(N357), .F(
        n125), .Z(n149) );
  HS65_GS_AO222X4 U350 ( .A(N369), .B(n388), .C(N122), .D(n124), .E(N358), .F(
        n125), .Z(n154) );
  HS65_GS_AO222X4 U351 ( .A(N372), .B(n388), .C(N125), .D(n124), .E(N361), .F(
        n125), .Z(n169) );
  HS65_GS_IVX9 U352 ( .A(sinkIDCount[1]), .Z(n64) );
  HS65_GS_IVX9 U353 ( .A(neighborCount[1]), .Z(n88) );
  HS65_GS_IVX9 U354 ( .A(knownSinkCount[1]), .Z(n113) );
  HS65_GSS_XOR2X3 U355 ( .A(i[9]), .B(\add_121/carry[10] ), .Z(N374) );
  HS65_GS_AND2X4 U356 ( .A(i[8]), .B(\add_121/carry[9] ), .Z(
        \add_121/carry[10] ) );
  HS65_GSS_XOR2X3 U357 ( .A(\add_121/carry[9] ), .B(i[8]), .Z(N373) );
  HS65_GS_OR2X4 U358 ( .A(\add_121/carry[8] ), .B(i[7]), .Z(\add_121/carry[9] ) );
  HS65_GSS_XNOR2X3 U359 ( .A(i[7]), .B(\add_121/carry[8] ), .Z(N372) );
  HS65_GS_OR2X4 U360 ( .A(\add_121/carry[7] ), .B(i[6]), .Z(\add_121/carry[8] ) );
  HS65_GSS_XNOR2X3 U361 ( .A(i[6]), .B(\add_121/carry[7] ), .Z(N371) );
  HS65_GS_OR2X4 U362 ( .A(\add_121/carry[6] ), .B(i[5]), .Z(\add_121/carry[7] ) );
  HS65_GSS_XNOR2X3 U363 ( .A(i[5]), .B(\add_121/carry[6] ), .Z(N370) );
  HS65_GS_AND2X4 U364 ( .A(i[4]), .B(\add_121/carry[5] ), .Z(
        \add_121/carry[6] ) );
  HS65_GSS_XOR2X3 U365 ( .A(\add_121/carry[5] ), .B(i[4]), .Z(N369) );
  HS65_GS_AND2X4 U366 ( .A(i[3]), .B(i[2]), .Z(\add_121/carry[5] ) );
  HS65_GSS_XOR2X3 U367 ( .A(i[2]), .B(i[3]), .Z(N368) );
  HS65_GSS_XOR2X3 U368 ( .A(j[9]), .B(\add_115/carry[10] ), .Z(N363) );
  HS65_GS_AND2X4 U369 ( .A(j[8]), .B(\add_115/carry[9] ), .Z(
        \add_115/carry[10] ) );
  HS65_GSS_XOR2X3 U370 ( .A(\add_115/carry[9] ), .B(j[8]), .Z(N362) );
  HS65_GS_AND2X4 U371 ( .A(j[7]), .B(\add_115/carry[8] ), .Z(
        \add_115/carry[9] ) );
  HS65_GSS_XOR2X3 U372 ( .A(\add_115/carry[8] ), .B(j[7]), .Z(N361) );
  HS65_GS_AND2X4 U373 ( .A(j[6]), .B(\add_115/carry[7] ), .Z(
        \add_115/carry[8] ) );
  HS65_GSS_XOR2X3 U374 ( .A(\add_115/carry[7] ), .B(j[6]), .Z(N360) );
  HS65_GS_AND2X4 U375 ( .A(j[5]), .B(\add_115/carry[6] ), .Z(
        \add_115/carry[7] ) );
  HS65_GSS_XOR2X3 U376 ( .A(\add_115/carry[6] ), .B(j[5]), .Z(N359) );
  HS65_GS_OR2X4 U377 ( .A(\add_115/carry[5] ), .B(j[4]), .Z(\add_115/carry[6] ) );
  HS65_GSS_XNOR2X3 U378 ( .A(j[4]), .B(\add_115/carry[5] ), .Z(N358) );
  HS65_GS_AND2X4 U379 ( .A(j[3]), .B(j[2]), .Z(\add_115/carry[5] ) );
  HS65_GSS_XOR2X3 U380 ( .A(j[2]), .B(j[3]), .Z(N357) );
  HS65_GSS_XOR2X3 U381 ( .A(j[9]), .B(\add_55/carry[10] ), .Z(N116) );
  HS65_GS_AND2X4 U382 ( .A(j[8]), .B(\add_55/carry[9] ), .Z(\add_55/carry[10] ) );
  HS65_GSS_XOR2X3 U383 ( .A(\add_55/carry[9] ), .B(j[8]), .Z(N115) );
  HS65_GS_AND2X4 U384 ( .A(j[7]), .B(\add_55/carry[8] ), .Z(\add_55/carry[9] )
         );
  HS65_GSS_XOR2X3 U385 ( .A(\add_55/carry[8] ), .B(j[7]), .Z(N114) );
  HS65_GS_AND2X4 U386 ( .A(j[6]), .B(\add_55/carry[7] ), .Z(\add_55/carry[8] )
         );
  HS65_GSS_XOR2X3 U387 ( .A(\add_55/carry[7] ), .B(j[6]), .Z(N113) );
  HS65_GS_AND2X4 U388 ( .A(j[5]), .B(\add_55/carry[6] ), .Z(\add_55/carry[7] )
         );
  HS65_GSS_XOR2X3 U389 ( .A(\add_55/carry[6] ), .B(j[5]), .Z(N112) );
  HS65_GS_AND2X4 U390 ( .A(j[4]), .B(\add_55/carry[5] ), .Z(\add_55/carry[6] )
         );
  HS65_GSS_XOR2X3 U391 ( .A(\add_55/carry[5] ), .B(j[4]), .Z(N111) );
  HS65_GS_AND2X4 U392 ( .A(j[3]), .B(j[2]), .Z(\add_55/carry[5] ) );
  HS65_GSS_XOR2X3 U393 ( .A(j[2]), .B(j[3]), .Z(N110) );
  HS65_GSS_XNOR2X3 U394 ( .A(N163), .B(\add_160/carry[10] ), .Z(N494) );
  HS65_GS_OR2X4 U395 ( .A(\add_160/carry[9] ), .B(N162), .Z(
        \add_160/carry[10] ) );
  HS65_GSS_XNOR2X3 U396 ( .A(N162), .B(\add_160/carry[9] ), .Z(N493) );
  HS65_GS_AND2X4 U397 ( .A(N161), .B(\add_160/carry[8] ), .Z(
        \add_160/carry[9] ) );
  HS65_GSS_XOR2X3 U398 ( .A(\add_160/carry[8] ), .B(N161), .Z(N492) );
  HS65_GS_OR2X4 U399 ( .A(\add_160/carry[7] ), .B(N160), .Z(\add_160/carry[8] ) );
  HS65_GSS_XNOR2X3 U400 ( .A(N160), .B(\add_160/carry[7] ), .Z(N491) );
  HS65_GS_AND2X4 U401 ( .A(N159), .B(\add_160/carry[6] ), .Z(
        \add_160/carry[7] ) );
  HS65_GSS_XOR2X3 U402 ( .A(\add_160/carry[6] ), .B(N159), .Z(N490) );
  HS65_GS_AND2X4 U403 ( .A(N158), .B(\add_160/carry[5] ), .Z(
        \add_160/carry[6] ) );
  HS65_GSS_XOR2X3 U404 ( .A(\add_160/carry[5] ), .B(N158), .Z(N489) );
  HS65_GS_AND2X4 U405 ( .A(N157), .B(\add_160/carry[4] ), .Z(
        \add_160/carry[5] ) );
  HS65_GSS_XOR2X3 U406 ( .A(\add_160/carry[4] ), .B(N157), .Z(N488) );
  HS65_GS_OR2X4 U407 ( .A(\add_160/carry[3] ), .B(N156), .Z(\add_160/carry[4] ) );
  HS65_GSS_XNOR2X3 U408 ( .A(N156), .B(\add_160/carry[3] ), .Z(N487) );
  HS65_GS_OR2X4 U409 ( .A(N154), .B(N155), .Z(\add_160/carry[3] ) );
  HS65_GSS_XNOR2X3 U410 ( .A(N155), .B(N154), .Z(N486) );
  HS65_GSS_XNOR2X3 U411 ( .A(N163), .B(\add_92/carry[10] ), .Z(N213) );
  HS65_GS_OR2X4 U412 ( .A(\add_92/carry[9] ), .B(N162), .Z(\add_92/carry[10] )
         );
  HS65_GSS_XNOR2X3 U413 ( .A(N162), .B(\add_92/carry[9] ), .Z(N212) );
  HS65_GS_AND2X4 U414 ( .A(N161), .B(\add_92/carry[8] ), .Z(\add_92/carry[9] )
         );
  HS65_GSS_XOR2X3 U415 ( .A(\add_92/carry[8] ), .B(N161), .Z(N211) );
  HS65_GS_OR2X4 U416 ( .A(\add_92/carry[7] ), .B(N160), .Z(\add_92/carry[8] )
         );
  HS65_GSS_XNOR2X3 U417 ( .A(N160), .B(\add_92/carry[7] ), .Z(N210) );
  HS65_GS_AND2X4 U418 ( .A(N159), .B(\add_92/carry[6] ), .Z(\add_92/carry[7] )
         );
  HS65_GSS_XOR2X3 U419 ( .A(\add_92/carry[6] ), .B(N159), .Z(N209) );
  HS65_GS_AND2X4 U420 ( .A(N158), .B(\add_92/carry[5] ), .Z(\add_92/carry[6] )
         );
  HS65_GSS_XOR2X3 U421 ( .A(\add_92/carry[5] ), .B(N158), .Z(N208) );
  HS65_GS_AND2X4 U422 ( .A(N157), .B(\add_92/carry[4] ), .Z(\add_92/carry[5] )
         );
  HS65_GSS_XOR2X3 U423 ( .A(\add_92/carry[4] ), .B(N157), .Z(N207) );
  HS65_GS_OR2X4 U424 ( .A(\add_92/carry[3] ), .B(N156), .Z(\add_92/carry[4] )
         );
  HS65_GSS_XNOR2X3 U425 ( .A(N156), .B(\add_92/carry[3] ), .Z(N206) );
  HS65_GS_OR2X4 U426 ( .A(N154), .B(N155), .Z(\add_92/carry[3] ) );
  HS65_GSS_XNOR2X3 U427 ( .A(N155), .B(N154), .Z(N205) );
  HS65_GSS_XOR2X3 U428 ( .A(N182), .B(\add_87/carry[10] ), .Z(N201) );
  HS65_GS_AND2X4 U429 ( .A(N181), .B(\add_87/carry[9] ), .Z(\add_87/carry[10] ) );
  HS65_GSS_XOR2X3 U430 ( .A(\add_87/carry[9] ), .B(N181), .Z(N200) );
  HS65_GS_AND2X4 U431 ( .A(N180), .B(\add_87/carry[8] ), .Z(\add_87/carry[9] )
         );
  HS65_GSS_XOR2X3 U432 ( .A(\add_87/carry[8] ), .B(N180), .Z(N199) );
  HS65_GS_AND2X4 U433 ( .A(N179), .B(\add_87/carry[7] ), .Z(\add_87/carry[8] )
         );
  HS65_GSS_XOR2X3 U434 ( .A(\add_87/carry[7] ), .B(N179), .Z(N198) );
  HS65_GS_AND2X4 U435 ( .A(N178), .B(\add_87/carry[6] ), .Z(\add_87/carry[7] )
         );
  HS65_GSS_XOR2X3 U436 ( .A(\add_87/carry[6] ), .B(N178), .Z(N197) );
  HS65_GS_AND2X4 U437 ( .A(N177), .B(\add_87/carry[5] ), .Z(\add_87/carry[6] )
         );
  HS65_GSS_XOR2X3 U438 ( .A(\add_87/carry[5] ), .B(N177), .Z(N196) );
  HS65_GS_AND2X4 U439 ( .A(N176), .B(N175), .Z(\add_87/carry[5] ) );
  HS65_GSS_XOR2X3 U440 ( .A(N175), .B(N176), .Z(N195) );
  HS65_GSS_XOR2X3 U441 ( .A(i[6]), .B(\r228/carry[10] ), .Z(N138) );
  HS65_GS_OR2X4 U442 ( .A(\r228/carry[9] ), .B(i[5]), .Z(\r228/carry[10] ) );
  HS65_GSS_XNOR2X3 U443 ( .A(i[5]), .B(\r228/carry[9] ), .Z(N137) );
  HS65_GS_AND2X4 U444 ( .A(i[4]), .B(\r228/carry[8] ), .Z(\r228/carry[9] ) );
  HS65_GSS_XOR2X3 U445 ( .A(\r228/carry[8] ), .B(i[4]), .Z(N136) );
  HS65_GS_AND2X4 U446 ( .A(i[3]), .B(i[2]), .Z(\r228/carry[8] ) );
  HS65_GSS_XOR2X3 U447 ( .A(i[2]), .B(i[3]), .Z(N135) );
  HS65_GSS_XOR2X3 U448 ( .A(N182), .B(\add_155/carry[10] ), .Z(N482) );
  HS65_GS_AND2X4 U449 ( .A(N181), .B(\add_155/carry[9] ), .Z(
        \add_155/carry[10] ) );
  HS65_GSS_XOR2X3 U450 ( .A(\add_155/carry[9] ), .B(N181), .Z(N481) );
  HS65_GS_AND2X4 U451 ( .A(N180), .B(\add_155/carry[8] ), .Z(
        \add_155/carry[9] ) );
  HS65_GSS_XOR2X3 U452 ( .A(\add_155/carry[8] ), .B(N180), .Z(N480) );
  HS65_GS_AND2X4 U453 ( .A(N179), .B(\add_155/carry[7] ), .Z(
        \add_155/carry[8] ) );
  HS65_GSS_XOR2X3 U454 ( .A(\add_155/carry[7] ), .B(N179), .Z(N479) );
  HS65_GS_AND2X4 U455 ( .A(N178), .B(\add_155/carry[6] ), .Z(
        \add_155/carry[7] ) );
  HS65_GSS_XOR2X3 U456 ( .A(\add_155/carry[6] ), .B(N178), .Z(N478) );
  HS65_GS_AND2X4 U457 ( .A(N177), .B(\add_155/carry[5] ), .Z(
        \add_155/carry[6] ) );
  HS65_GSS_XOR2X3 U458 ( .A(\add_155/carry[5] ), .B(N177), .Z(N477) );
  HS65_GS_AND2X4 U459 ( .A(N176), .B(N175), .Z(\add_155/carry[5] ) );
  HS65_GSS_XOR2X3 U460 ( .A(N175), .B(N176), .Z(N476) );
  HS65_GSS_XNOR2X3 U461 ( .A(i[9]), .B(\r227/carry[10] ), .Z(N127) );
  HS65_GS_OR2X4 U462 ( .A(\r227/carry[9] ), .B(i[8]), .Z(\r227/carry[10] ) );
  HS65_GSS_XNOR2X3 U463 ( .A(i[8]), .B(\r227/carry[9] ), .Z(N126) );
  HS65_GS_AND2X4 U464 ( .A(i[7]), .B(\r227/carry[8] ), .Z(\r227/carry[9] ) );
  HS65_GSS_XOR2X3 U465 ( .A(\r227/carry[8] ), .B(i[7]), .Z(N125) );
  HS65_GS_OR2X4 U466 ( .A(\r227/carry[7] ), .B(i[6]), .Z(\r227/carry[8] ) );
  HS65_GSS_XNOR2X3 U467 ( .A(i[6]), .B(\r227/carry[7] ), .Z(N124) );
  HS65_GS_AND2X4 U468 ( .A(i[5]), .B(\r227/carry[6] ), .Z(\r227/carry[7] ) );
  HS65_GSS_XOR2X3 U469 ( .A(\r227/carry[6] ), .B(i[5]), .Z(N123) );
  HS65_GS_AND2X4 U470 ( .A(i[4]), .B(\r227/carry[5] ), .Z(\r227/carry[6] ) );
  HS65_GSS_XOR2X3 U471 ( .A(\r227/carry[5] ), .B(i[4]), .Z(N122) );
  HS65_GS_AND2X4 U472 ( .A(i[3]), .B(\r227/carry[4] ), .Z(\r227/carry[5] ) );
  HS65_GSS_XOR2X3 U473 ( .A(\r227/carry[4] ), .B(i[3]), .Z(N121) );
  HS65_GS_OR2X4 U474 ( .A(\r227/carry[3] ), .B(i[2]), .Z(\r227/carry[4] ) );
  HS65_GSS_XNOR2X3 U475 ( .A(i[2]), .B(\r227/carry[3] ), .Z(N120) );
  HS65_GS_OR2X4 U476 ( .A(N132), .B(N133), .Z(\r227/carry[3] ) );
  HS65_GSS_XNOR2X3 U477 ( .A(N133), .B(N132), .Z(N119) );
  HS65_GSS_XNOR2X3 U478 ( .A(data_in[14]), .B(knownSinks[14]), .Z(n23) );
  HS65_GSS_XNOR2X3 U479 ( .A(data_in[13]), .B(knownSinks[13]), .Z(n22) );
  HS65_GSS_XOR2X3 U480 ( .A(data_in[11]), .B(knownSinks[11]), .Z(n21) );
  HS65_GSS_XOR2X3 U481 ( .A(data_in[12]), .B(knownSinks[12]), .Z(n20) );
  HS65_GS_NOR4ABX2 U482 ( .A(n23), .B(n22), .C(n21), .D(n20), .Z(n41) );
  HS65_GSS_XNOR2X3 U483 ( .A(data_in[10]), .B(knownSinks[10]), .Z(n27) );
  HS65_GSS_XNOR2X3 U484 ( .A(data_in[9]), .B(knownSinks[9]), .Z(n26) );
  HS65_GSS_XOR2X3 U485 ( .A(data_in[7]), .B(knownSinks[7]), .Z(n25) );
  HS65_GSS_XOR2X3 U486 ( .A(data_in[8]), .B(knownSinks[8]), .Z(n24) );
  HS65_GS_NOR4ABX2 U487 ( .A(n27), .B(n26), .C(n25), .D(n24), .Z(n40) );
  HS65_GSS_XOR2X3 U488 ( .A(data_in[15]), .B(knownSinks[15]), .Z(n33) );
  HS65_GSS_XOR2X3 U489 ( .A(data_in[2]), .B(knownSinks[2]), .Z(n32) );
  HS65_GS_NOR2AX3 U490 ( .A(knownSinks[0]), .B(data_in[0]), .Z(n28) );
  HS65_GS_OAI22X1 U491 ( .A(knownSinks[1]), .B(n28), .C(n28), .D(n3), .Z(n31)
         );
  HS65_GS_NOR2AX3 U492 ( .A(data_in[0]), .B(knownSinks[0]), .Z(n29) );
  HS65_GS_OAI22X1 U493 ( .A(n29), .B(n411), .C(data_in[1]), .D(n29), .Z(n30)
         );
  HS65_GS_NAND4ABX3 U494 ( .A(n33), .B(n32), .C(n31), .D(n30), .Z(n39) );
  HS65_GSS_XOR2X3 U495 ( .A(data_in[3]), .B(knownSinks[3]), .Z(n37) );
  HS65_GSS_XOR2X3 U496 ( .A(data_in[4]), .B(knownSinks[4]), .Z(n36) );
  HS65_GSS_XNOR2X3 U497 ( .A(data_in[6]), .B(knownSinks[6]), .Z(n35) );
  HS65_GSS_XNOR2X3 U498 ( .A(data_in[5]), .B(knownSinks[5]), .Z(n34) );
  HS65_GS_NAND4ABX3 U499 ( .A(n37), .B(n36), .C(n35), .D(n34), .Z(n38) );
  HS65_GS_NOR4ABX2 U500 ( .A(n41), .B(n40), .C(n39), .D(n38), .Z(N151) );
  HS65_GSS_XNOR2X3 U501 ( .A(sinkIDCount[14]), .B(N259), .Z(n45) );
  HS65_GSS_XNOR2X3 U502 ( .A(sinkIDCount[13]), .B(N258), .Z(n44) );
  HS65_GSS_XOR2X3 U503 ( .A(sinkIDCount[11]), .B(N256), .Z(n43) );
  HS65_GSS_XOR2X3 U504 ( .A(sinkIDCount[12]), .B(N257), .Z(n42) );
  HS65_GS_NOR4ABX2 U505 ( .A(n45), .B(n44), .C(n43), .D(n42), .Z(n63) );
  HS65_GSS_XNOR2X3 U506 ( .A(sinkIDCount[10]), .B(N255), .Z(n49) );
  HS65_GSS_XNOR2X3 U507 ( .A(sinkIDCount[9]), .B(N254), .Z(n48) );
  HS65_GSS_XOR2X3 U508 ( .A(sinkIDCount[7]), .B(N252), .Z(n47) );
  HS65_GSS_XOR2X3 U509 ( .A(sinkIDCount[8]), .B(N253), .Z(n46) );
  HS65_GS_NOR4ABX2 U510 ( .A(n49), .B(n48), .C(n47), .D(n46), .Z(n62) );
  HS65_GSS_XOR2X3 U511 ( .A(sinkIDCount[15]), .B(N260), .Z(n55) );
  HS65_GSS_XOR2X3 U512 ( .A(sinkIDCount[2]), .B(N247), .Z(n54) );
  HS65_GS_NOR2AX3 U513 ( .A(N309), .B(sinkIDCount[0]), .Z(n50) );
  HS65_GS_OAI22X1 U514 ( .A(N310), .B(n50), .C(n50), .D(n64), .Z(n53) );
  HS65_GS_NOR2AX3 U515 ( .A(sinkIDCount[0]), .B(N309), .Z(n51) );
  HS65_GS_OAI22X1 U516 ( .A(n51), .B(n65), .C(sinkIDCount[1]), .D(n51), .Z(n52) );
  HS65_GS_NAND4ABX3 U517 ( .A(n55), .B(n54), .C(n53), .D(n52), .Z(n61) );
  HS65_GSS_XOR2X3 U518 ( .A(sinkIDCount[3]), .B(N248), .Z(n59) );
  HS65_GSS_XOR2X3 U519 ( .A(sinkIDCount[4]), .B(N249), .Z(n58) );
  HS65_GSS_XNOR2X3 U520 ( .A(sinkIDCount[6]), .B(N251), .Z(n57) );
  HS65_GSS_XNOR2X3 U521 ( .A(sinkIDCount[5]), .B(N250), .Z(n56) );
  HS65_GS_NAND4ABX3 U522 ( .A(n59), .B(n58), .C(n57), .D(n56), .Z(n60) );
  HS65_GS_NOR4ABX2 U523 ( .A(n63), .B(n62), .C(n61), .D(n60), .Z(N261) );
  HS65_GSS_XNOR2X3 U524 ( .A(neighborCount[14]), .B(N168), .Z(n69) );
  HS65_GSS_XNOR2X3 U525 ( .A(neighborCount[13]), .B(N167), .Z(n68) );
  HS65_GSS_XOR2X3 U526 ( .A(neighborCount[11]), .B(N165), .Z(n67) );
  HS65_GSS_XOR2X3 U527 ( .A(neighborCount[12]), .B(N166), .Z(n66) );
  HS65_GS_NOR4ABX2 U528 ( .A(n69), .B(n68), .C(n67), .D(n66), .Z(n87) );
  HS65_GSS_XNOR2X3 U529 ( .A(neighborCount[10]), .B(N164), .Z(n73) );
  HS65_GSS_XNOR2X3 U530 ( .A(neighborCount[9]), .B(N163), .Z(n72) );
  HS65_GSS_XOR2X3 U531 ( .A(neighborCount[7]), .B(N161), .Z(n71) );
  HS65_GSS_XOR2X3 U532 ( .A(neighborCount[8]), .B(N162), .Z(n70) );
  HS65_GS_NOR4ABX2 U533 ( .A(n73), .B(n72), .C(n71), .D(n70), .Z(n86) );
  HS65_GSS_XOR2X3 U534 ( .A(neighborCount[15]), .B(N169), .Z(n79) );
  HS65_GSS_XOR2X3 U535 ( .A(neighborCount[2]), .B(N156), .Z(n78) );
  HS65_GS_NOR2AX3 U536 ( .A(N154), .B(neighborCount[0]), .Z(n74) );
  HS65_GS_OAI22X1 U537 ( .A(N155), .B(n74), .C(n74), .D(n88), .Z(n77) );
  HS65_GS_NOR2AX3 U538 ( .A(neighborCount[0]), .B(N154), .Z(n75) );
  HS65_GS_OAI22X1 U539 ( .A(n75), .B(n89), .C(neighborCount[1]), .D(n75), .Z(
        n76) );
  HS65_GS_NAND4ABX3 U540 ( .A(n79), .B(n78), .C(n77), .D(n76), .Z(n85) );
  HS65_GSS_XOR2X3 U541 ( .A(neighborCount[3]), .B(N157), .Z(n83) );
  HS65_GSS_XOR2X3 U542 ( .A(neighborCount[4]), .B(N158), .Z(n82) );
  HS65_GSS_XNOR2X3 U543 ( .A(neighborCount[6]), .B(N160), .Z(n81) );
  HS65_GSS_XNOR2X3 U544 ( .A(neighborCount[5]), .B(N159), .Z(n80) );
  HS65_GS_NAND4ABX3 U545 ( .A(n83), .B(n82), .C(n81), .D(n80), .Z(n84) );
  HS65_GS_NOR4ABX2 U546 ( .A(n87), .B(n86), .C(n85), .D(n84), .Z(N170) );
  HS65_GSS_XNOR2X3 U547 ( .A(knownSinkCount[14]), .B(N187), .Z(n93) );
  HS65_GSS_XNOR2X3 U548 ( .A(knownSinkCount[13]), .B(N186), .Z(n92) );
  HS65_GSS_XOR2X3 U549 ( .A(knownSinkCount[11]), .B(N184), .Z(n91) );
  HS65_GSS_XOR2X3 U550 ( .A(knownSinkCount[12]), .B(N185), .Z(n90) );
  HS65_GS_NOR4ABX2 U551 ( .A(n93), .B(n92), .C(n91), .D(n90), .Z(n111) );
  HS65_GSS_XNOR2X3 U552 ( .A(knownSinkCount[10]), .B(N183), .Z(n97) );
  HS65_GSS_XNOR2X3 U553 ( .A(knownSinkCount[9]), .B(N182), .Z(n96) );
  HS65_GSS_XOR2X3 U554 ( .A(knownSinkCount[7]), .B(N180), .Z(n95) );
  HS65_GSS_XOR2X3 U555 ( .A(knownSinkCount[8]), .B(N181), .Z(n94) );
  HS65_GS_NOR4ABX2 U556 ( .A(n97), .B(n96), .C(n95), .D(n94), .Z(n110) );
  HS65_GSS_XOR2X3 U557 ( .A(knownSinkCount[15]), .B(N188), .Z(n103) );
  HS65_GSS_XOR2X3 U558 ( .A(knownSinkCount[2]), .B(N175), .Z(n102) );
  HS65_GS_NOR2AX3 U559 ( .A(N192), .B(knownSinkCount[0]), .Z(n98) );
  HS65_GS_OAI22X1 U560 ( .A(N193), .B(n98), .C(n98), .D(n113), .Z(n101) );
  HS65_GS_NOR2AX3 U561 ( .A(knownSinkCount[0]), .B(N192), .Z(n99) );
  HS65_GS_OAI22X1 U562 ( .A(n99), .B(n112), .C(knownSinkCount[1]), .D(n99), 
        .Z(n100) );
  HS65_GS_NAND4ABX3 U563 ( .A(n103), .B(n102), .C(n101), .D(n100), .Z(n109) );
  HS65_GSS_XOR2X3 U564 ( .A(knownSinkCount[3]), .B(N176), .Z(n107) );
  HS65_GSS_XOR2X3 U565 ( .A(knownSinkCount[4]), .B(N177), .Z(n106) );
  HS65_GSS_XNOR2X3 U566 ( .A(knownSinkCount[6]), .B(N179), .Z(n105) );
  HS65_GSS_XNOR2X3 U567 ( .A(knownSinkCount[5]), .B(N178), .Z(n104) );
  HS65_GS_NAND4ABX3 U568 ( .A(n107), .B(n106), .C(n105), .D(n104), .Z(n108) );
  HS65_GS_NOR4ABX2 U569 ( .A(n111), .B(n110), .C(n109), .D(n108), .Z(N189) );
endmodule


module neighborSinkInOtherCluster_DW01_inc_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HS65_GS_HA1X4 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .CO(carry[15]), .S0(
        SUM[14]) );
  HS65_GS_HA1X4 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .CO(carry[14]), .S0(
        SUM[13]) );
  HS65_GS_HA1X4 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .CO(carry[13]), .S0(
        SUM[12]) );
  HS65_GS_HA1X4 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .CO(carry[12]), .S0(
        SUM[11]) );
  HS65_GS_HA1X4 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .CO(carry[11]), .S0(
        SUM[10]) );
  HS65_GS_HA1X4 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .CO(carry[10]), .S0(SUM[9])
         );
  HS65_GS_HA1X4 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .CO(carry[5]), .S0(SUM[4])
         );
  HS65_GS_HA1X4 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .CO(carry[4]), .S0(SUM[3])
         );
  HS65_GS_HA1X4 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .CO(carry[9]), .S0(SUM[8])
         );
  HS65_GS_HA1X4 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .CO(carry[8]), .S0(SUM[7])
         );
  HS65_GS_HA1X4 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .CO(carry[6]), .S0(SUM[5])
         );
  HS65_GS_HA1X4 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .CO(carry[7]), .S0(SUM[6])
         );
  HS65_GS_HA1X4 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .CO(carry[3]), .S0(SUM[2])
         );
  HS65_GS_HA1X4 U1_1_1 ( .A0(A[1]), .B0(A[0]), .CO(carry[2]), .S0(SUM[1]) );
  HS65_GS_IVX9 U1 ( .A(A[0]), .Z(SUM[0]) );
  HS65_GSS_XOR2X3 U2 ( .A(carry[15]), .B(A[15]), .Z(SUM[15]) );
endmodule


module neighborSinkInOtherCluster_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HS65_GS_HA1X4 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .CO(carry[15]), .S0(
        SUM[14]) );
  HS65_GS_HA1X4 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .CO(carry[12]), .S0(
        SUM[11]) );
  HS65_GS_HA1X4 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .CO(carry[13]), .S0(
        SUM[12]) );
  HS65_GS_HA1X4 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .CO(carry[14]), .S0(
        SUM[13]) );
  HS65_GS_HA1X4 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .CO(carry[11]), .S0(
        SUM[10]) );
  HS65_GS_HA1X4 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .CO(carry[10]), .S0(SUM[9])
         );
  HS65_GS_HA1X4 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .CO(carry[6]), .S0(SUM[5])
         );
  HS65_GS_HA1X4 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .CO(carry[5]), .S0(SUM[4])
         );
  HS65_GS_HA1X4 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .CO(carry[4]), .S0(SUM[3])
         );
  HS65_GS_HA1X4 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .CO(carry[8]), .S0(SUM[7])
         );
  HS65_GS_HA1X4 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .CO(carry[9]), .S0(SUM[8])
         );
  HS65_GS_HA1X4 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .CO(carry[7]), .S0(SUM[6])
         );
  HS65_GS_HA1X4 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .CO(carry[3]), .S0(SUM[2])
         );
  HS65_GS_HA1X4 U1_1_1 ( .A0(A[1]), .B0(A[0]), .CO(carry[2]), .S0(SUM[1]) );
  HS65_GS_IVX9 U1 ( .A(A[0]), .Z(SUM[0]) );
  HS65_GSS_XOR2X3 U2 ( .A(carry[15]), .B(A[15]), .Z(SUM[15]) );
endmodule


module neighborSinkInOtherCluster ( clock, nrst, en, start, address, wr_en, 
        data_in, MY_CLUSTER_ID, data_out, forAggregation, done );
  output [10:0] address;
  input [15:0] data_in;
  input [15:0] MY_CLUSTER_ID;
  output [15:0] data_out;
  input clock, nrst, en, start;
  output wr_en, forAggregation, done;
  wire   N80, N81, N83, N84, N85, N86, N87, N88, N89, N91, N92, N93, N94, N95,
         N96, N98, N102, N103, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N122, N123, N124, N125, N126,
         N127, N128, N129, N130, N131, N132, N136, N137, N138, N139, N140,
         N141, N142, N143, N144, N145, N146, N147, N148, N149, N151, N152,
         N154, N155, N156, N157, N158, N159, N160, N188, N189, N190, N191,
         N192, N193, N194, N195, N196, N197, N198, N199, N200, N201, N202,
         N203, N204, N364, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         \add_92/carry[10] , \add_92/carry[9] , \add_92/carry[8] ,
         \add_92/carry[7] , \add_92/carry[6] , \add_92/carry[5] ,
         \add_86/carry[10] , \add_86/carry[9] , \add_86/carry[8] ,
         \add_86/carry[7] , \add_86/carry[6] , \add_86/carry[5] ,
         \add_72/carry[10] , \add_72/carry[9] , \add_72/carry[8] ,
         \add_72/carry[7] , \add_72/carry[6] , \add_72/carry[5] ,
         \add_66/carry[10] , \add_66/carry[9] , \add_66/carry[8] ,
         \add_66/carry[7] , \add_66/carry[6] , \add_66/carry[5] ,
         \add_66/B[3] , \add_66/B[4] , \add_66/B[5] , \add_66/B[6] ,
         \add_66/B[7] , \add_66/B[8] , \add_66/B[9] , \add_66/B[10] , n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n122, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332;
  wire   [3:0] state;
  wire   [15:0] j;
  wire   [15:0] clusterID;
  wire   [15:0] knownSinkCount;
  wire   [15:0] neighborCount;
  wire   [15:0] neighborID;
  assign data_out[15] = 1'b0;
  assign data_out[14] = 1'b0;
  assign data_out[13] = 1'b0;
  assign data_out[12] = 1'b0;
  assign data_out[11] = 1'b0;
  assign data_out[10] = 1'b0;
  assign data_out[9] = 1'b0;
  assign data_out[8] = 1'b0;
  assign data_out[7] = 1'b0;
  assign data_out[6] = 1'b0;
  assign data_out[5] = 1'b0;
  assign data_out[4] = 1'b0;
  assign data_out[3] = 1'b0;
  assign data_out[2] = 1'b0;
  assign data_out[1] = 1'b0;

  HS65_GS_DFPQX9 \neighborID_reg[0]  ( .D(n260), .CP(clock), .Q(neighborID[0])
         );
  HS65_GS_DFPQX9 \state_reg[0]  ( .D(n258), .CP(clock), .Q(state[0]) );
  HS65_GS_DFPQX9 \state_reg[2]  ( .D(n256), .CP(clock), .Q(state[2]) );
  HS65_GS_DFPQX9 \state_reg[3]  ( .D(n259), .CP(clock), .Q(state[3]) );
  HS65_GS_DFPQX9 \state_reg[1]  ( .D(n257), .CP(clock), .Q(state[1]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[15]  ( .D(n193), .CP(clock), .Q(
        knownSinkCount[15]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[14]  ( .D(n194), .CP(clock), .Q(
        knownSinkCount[14]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[13]  ( .D(n195), .CP(clock), .Q(
        knownSinkCount[13]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[12]  ( .D(n196), .CP(clock), .Q(
        knownSinkCount[12]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[11]  ( .D(n197), .CP(clock), .Q(
        knownSinkCount[11]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[10]  ( .D(n198), .CP(clock), .Q(
        knownSinkCount[10]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[9]  ( .D(n199), .CP(clock), .Q(
        knownSinkCount[9]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[8]  ( .D(n200), .CP(clock), .Q(
        knownSinkCount[8]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[7]  ( .D(n201), .CP(clock), .Q(
        knownSinkCount[7]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[6]  ( .D(n202), .CP(clock), .Q(
        knownSinkCount[6]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[5]  ( .D(n203), .CP(clock), .Q(
        knownSinkCount[5]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[4]  ( .D(n204), .CP(clock), .Q(
        knownSinkCount[4]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[3]  ( .D(n205), .CP(clock), .Q(
        knownSinkCount[3]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[2]  ( .D(n206), .CP(clock), .Q(
        knownSinkCount[2]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[1]  ( .D(n207), .CP(clock), .Q(
        knownSinkCount[1]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[0]  ( .D(n208), .CP(clock), .Q(
        knownSinkCount[0]) );
  HS65_GS_DFPQX9 \j_reg[0]  ( .D(n192), .CP(clock), .Q(N91) );
  HS65_GS_DFPQX9 \j_reg[1]  ( .D(n191), .CP(clock), .Q(N92) );
  HS65_GS_DFPQX9 \j_reg[2]  ( .D(n190), .CP(clock), .Q(j[2]) );
  HS65_GS_DFPQX9 \j_reg[3]  ( .D(n189), .CP(clock), .Q(j[3]) );
  HS65_GS_DFPQX9 \j_reg[4]  ( .D(n188), .CP(clock), .Q(j[4]) );
  HS65_GS_DFPQX9 \j_reg[5]  ( .D(n187), .CP(clock), .Q(j[5]) );
  HS65_GS_DFPQX9 \j_reg[6]  ( .D(n186), .CP(clock), .Q(j[6]) );
  HS65_GS_DFPQX9 \j_reg[7]  ( .D(n185), .CP(clock), .Q(j[7]) );
  HS65_GS_DFPQX9 \j_reg[8]  ( .D(n184), .CP(clock), .Q(j[8]) );
  HS65_GS_DFPQX9 \j_reg[9]  ( .D(n183), .CP(clock), .Q(j[9]) );
  HS65_GS_DFPQX9 \address_count_reg[0]  ( .D(n160), .CP(clock), .Q(address[0])
         );
  HS65_GS_DFPQX9 \address_count_reg[1]  ( .D(n159), .CP(clock), .Q(address[1])
         );
  HS65_GS_DFPQX9 \address_count_reg[2]  ( .D(n158), .CP(clock), .Q(address[2])
         );
  HS65_GS_DFPQX9 \address_count_reg[3]  ( .D(n157), .CP(clock), .Q(address[3])
         );
  HS65_GS_DFPQX9 \address_count_reg[4]  ( .D(n156), .CP(clock), .Q(address[4])
         );
  HS65_GS_DFPQX9 \address_count_reg[5]  ( .D(n155), .CP(clock), .Q(address[5])
         );
  HS65_GS_DFPQX9 \address_count_reg[6]  ( .D(n154), .CP(clock), .Q(address[6])
         );
  HS65_GS_DFPQX9 \address_count_reg[8]  ( .D(n153), .CP(clock), .Q(address[8])
         );
  HS65_GS_DFPQX9 \j_reg[10]  ( .D(n182), .CP(clock), .Q(j[10]) );
  HS65_GS_DFPQX9 \j_reg[11]  ( .D(n181), .CP(clock), .Q(j[11]) );
  HS65_GS_DFPQX9 \j_reg[12]  ( .D(n180), .CP(clock), .Q(j[12]) );
  HS65_GS_DFPQX9 \j_reg[13]  ( .D(n179), .CP(clock), .Q(j[13]) );
  HS65_GS_DFPQX9 \j_reg[14]  ( .D(n178), .CP(clock), .Q(j[14]) );
  HS65_GS_DFPQX9 \j_reg[15]  ( .D(n177), .CP(clock), .Q(j[15]) );
  HS65_GS_DFPQX9 \neighborCount_reg[15]  ( .D(n209), .CP(clock), .Q(
        neighborCount[15]) );
  HS65_GS_DFPQX9 \neighborCount_reg[14]  ( .D(n210), .CP(clock), .Q(
        neighborCount[14]) );
  HS65_GS_DFPQX9 \neighborCount_reg[13]  ( .D(n211), .CP(clock), .Q(
        neighborCount[13]) );
  HS65_GS_DFPQX9 \neighborCount_reg[12]  ( .D(n212), .CP(clock), .Q(
        neighborCount[12]) );
  HS65_GS_DFPQX9 \neighborCount_reg[11]  ( .D(n213), .CP(clock), .Q(
        neighborCount[11]) );
  HS65_GS_DFPQX9 \neighborCount_reg[10]  ( .D(n214), .CP(clock), .Q(
        neighborCount[10]) );
  HS65_GS_DFPQX9 \neighborCount_reg[9]  ( .D(n215), .CP(clock), .Q(
        neighborCount[9]) );
  HS65_GS_DFPQX9 \neighborCount_reg[8]  ( .D(n216), .CP(clock), .Q(
        neighborCount[8]) );
  HS65_GS_DFPQX9 \neighborCount_reg[7]  ( .D(n217), .CP(clock), .Q(
        neighborCount[7]) );
  HS65_GS_DFPQX9 \neighborCount_reg[6]  ( .D(n218), .CP(clock), .Q(
        neighborCount[6]) );
  HS65_GS_DFPQX9 \neighborCount_reg[5]  ( .D(n219), .CP(clock), .Q(
        neighborCount[5]) );
  HS65_GS_DFPQX9 \neighborCount_reg[4]  ( .D(n220), .CP(clock), .Q(
        neighborCount[4]) );
  HS65_GS_DFPQX9 \neighborCount_reg[3]  ( .D(n221), .CP(clock), .Q(
        neighborCount[3]) );
  HS65_GS_DFPQX9 \neighborCount_reg[2]  ( .D(n222), .CP(clock), .Q(
        neighborCount[2]) );
  HS65_GS_DFPQX9 \neighborCount_reg[1]  ( .D(n223), .CP(clock), .Q(
        neighborCount[1]) );
  HS65_GS_DFPQX9 \neighborCount_reg[0]  ( .D(n224), .CP(clock), .Q(
        neighborCount[0]) );
  HS65_GS_DFPQX9 \clusterID_reg[15]  ( .D(n240), .CP(clock), .Q(clusterID[15])
         );
  HS65_GS_DFPQX9 \clusterID_reg[14]  ( .D(n241), .CP(clock), .Q(clusterID[14])
         );
  HS65_GS_DFPQX9 \clusterID_reg[13]  ( .D(n242), .CP(clock), .Q(clusterID[13])
         );
  HS65_GS_DFPQX9 \clusterID_reg[12]  ( .D(n243), .CP(clock), .Q(clusterID[12])
         );
  HS65_GS_DFPQX9 \clusterID_reg[11]  ( .D(n244), .CP(clock), .Q(clusterID[11])
         );
  HS65_GS_DFPQX9 \clusterID_reg[10]  ( .D(n245), .CP(clock), .Q(clusterID[10])
         );
  HS65_GS_DFPQX9 \clusterID_reg[9]  ( .D(n246), .CP(clock), .Q(clusterID[9])
         );
  HS65_GS_DFPQX9 \clusterID_reg[8]  ( .D(n247), .CP(clock), .Q(clusterID[8])
         );
  HS65_GS_DFPQX9 \clusterID_reg[7]  ( .D(n248), .CP(clock), .Q(clusterID[7])
         );
  HS65_GS_DFPQX9 \clusterID_reg[6]  ( .D(n249), .CP(clock), .Q(clusterID[6])
         );
  HS65_GS_DFPQX9 \clusterID_reg[5]  ( .D(n250), .CP(clock), .Q(clusterID[5])
         );
  HS65_GS_DFPQX9 \clusterID_reg[4]  ( .D(n251), .CP(clock), .Q(clusterID[4])
         );
  HS65_GS_DFPQX9 \clusterID_reg[3]  ( .D(n252), .CP(clock), .Q(clusterID[3])
         );
  HS65_GS_DFPQX9 \clusterID_reg[2]  ( .D(n253), .CP(clock), .Q(clusterID[2])
         );
  HS65_GS_DFPQX9 \clusterID_reg[1]  ( .D(n254), .CP(clock), .Q(clusterID[1])
         );
  HS65_GS_DFPQX9 \clusterID_reg[0]  ( .D(n255), .CP(clock), .Q(clusterID[0])
         );
  HS65_GS_DFPQX9 \neighborID_reg[15]  ( .D(n225), .CP(clock), .Q(
        neighborID[15]) );
  HS65_GS_DFPQX9 \neighborID_reg[14]  ( .D(n226), .CP(clock), .Q(
        neighborID[14]) );
  HS65_GS_DFPQX9 \neighborID_reg[13]  ( .D(n227), .CP(clock), .Q(
        neighborID[13]) );
  HS65_GS_DFPQX9 \neighborID_reg[12]  ( .D(n228), .CP(clock), .Q(
        neighborID[12]) );
  HS65_GS_DFPQX9 \neighborID_reg[11]  ( .D(n229), .CP(clock), .Q(
        neighborID[11]) );
  HS65_GS_DFPQX9 \neighborID_reg[10]  ( .D(n230), .CP(clock), .Q(
        neighborID[10]) );
  HS65_GS_DFPQX9 \neighborID_reg[9]  ( .D(n231), .CP(clock), .Q(neighborID[9])
         );
  HS65_GS_DFPQX9 \neighborID_reg[8]  ( .D(n232), .CP(clock), .Q(neighborID[8])
         );
  HS65_GS_DFPQX9 \neighborID_reg[7]  ( .D(n233), .CP(clock), .Q(neighborID[7])
         );
  HS65_GS_DFPQX9 \neighborID_reg[6]  ( .D(n234), .CP(clock), .Q(neighborID[6])
         );
  HS65_GS_DFPQX9 \neighborID_reg[5]  ( .D(n235), .CP(clock), .Q(neighborID[5])
         );
  HS65_GS_DFPQX9 \neighborID_reg[4]  ( .D(n236), .CP(clock), .Q(neighborID[4])
         );
  HS65_GS_DFPQX9 \neighborID_reg[3]  ( .D(n237), .CP(clock), .Q(neighborID[3])
         );
  HS65_GS_DFPQX9 \neighborID_reg[2]  ( .D(n238), .CP(clock), .Q(neighborID[2])
         );
  HS65_GS_DFPQX9 \neighborID_reg[1]  ( .D(n239), .CP(clock), .Q(neighborID[1])
         );
  HS65_GS_DFPQX9 forAggregation_buf_reg ( .D(n152), .CP(clock), .Q(
        forAggregation) );
  HS65_GS_DFPQX9 done_buf_reg ( .D(n151), .CP(clock), .Q(done) );
  neighborSinkInOtherCluster_DW01_inc_0 add_90 ( .A({n310, n331, n330, n329, 
        n328, n327, \add_66/B[10] , \add_66/B[9] , \add_66/B[8] , 
        \add_66/B[7] , \add_66/B[6] , \add_66/B[5] , \add_66/B[4] , 
        \add_66/B[3] , N81, N80}), .SUM({N149, N148, N147, N146, N145, N144, 
        N143, N142, N141, N140, N139, N138, N137, N136, N152, N151}) );
  neighborSinkInOtherCluster_DW01_inc_1 add_85 ( .A({j[15:2], N92, N91}), 
        .SUM({N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, 
        N109, N108, N107, N123, N122}) );
  HS65_GS_DFPQNX9 \i_reg[15]  ( .D(n176), .CP(clock), .QN(n32) );
  HS65_GS_DFPQNX9 \i_reg[6]  ( .D(n169), .CP(clock), .QN(n25) );
  HS65_GS_DFPQNX9 \i_reg[7]  ( .D(n168), .CP(clock), .QN(n24) );
  HS65_GS_DFPQNX9 \i_reg[8]  ( .D(n167), .CP(clock), .QN(n23) );
  HS65_GS_DFPQNX9 \i_reg[9]  ( .D(n166), .CP(clock), .QN(n22) );
  HS65_GS_DFPQNX9 \i_reg[10]  ( .D(n165), .CP(clock), .QN(n21) );
  HS65_GS_DFPQNX9 \i_reg[11]  ( .D(n164), .CP(clock), .QN(n20) );
  HS65_GS_DFPQNX9 \i_reg[12]  ( .D(n163), .CP(clock), .QN(n19) );
  HS65_GS_DFPQNX9 \i_reg[13]  ( .D(n162), .CP(clock), .QN(n18) );
  HS65_GS_DFPQNX9 \i_reg[14]  ( .D(n161), .CP(clock), .QN(n17) );
  HS65_GS_DFPQNX9 \i_reg[0]  ( .D(n175), .CP(clock), .QN(n31) );
  HS65_GS_DFPQNX9 \i_reg[1]  ( .D(n174), .CP(clock), .QN(n30) );
  HS65_GS_DFPQNX9 \i_reg[2]  ( .D(n173), .CP(clock), .QN(n29) );
  HS65_GS_DFPQNX9 \i_reg[3]  ( .D(n172), .CP(clock), .QN(n28) );
  HS65_GS_DFPQNX9 \i_reg[4]  ( .D(n171), .CP(clock), .QN(n27) );
  HS65_GS_DFPQNX9 \i_reg[5]  ( .D(n170), .CP(clock), .QN(n26) );
  HS65_GS_DFPHQX4 \data_out_buf_reg[0]  ( .D(nrst), .E(N364), .CP(clock), .Q(
        data_out[0]) );
  HS65_GS_DFPHQX4 wr_en_buf_reg ( .D(n85), .E(n86), .CP(clock), .Q(wr_en) );
  HS65_GS_DFPHQX4 \address_count_reg[10]  ( .D(n91), .E(n301), .CP(clock), .Q(
        address[10]) );
  HS65_GS_DFPHQX4 \address_count_reg[9]  ( .D(n97), .E(n301), .CP(clock), .Q(
        address[9]) );
  HS65_GS_DFPHQX4 \address_count_reg[7]  ( .D(n105), .E(n301), .CP(clock), .Q(
        address[7]) );
  HS65_GSS_XNOR2X6 U3 ( .A(\add_72/carry[9] ), .B(j[8]), .Z(n1) );
  HS65_GSS_XNOR2X6 U4 ( .A(\add_72/carry[7] ), .B(j[6]), .Z(n2) );
  HS65_GSS_XNOR2X6 U5 ( .A(j[9]), .B(\add_72/carry[10] ), .Z(n3) );
  HS65_GS_BFX9 U6 ( .A(n7), .Z(n5) );
  HS65_GS_AND2X4 U7 ( .A(n123), .B(N132), .Z(n100) );
  HS65_GS_NOR2X6 U8 ( .A(n300), .B(n4), .Z(n128) );
  HS65_GS_NOR2X6 U9 ( .A(n300), .B(n298), .Z(n123) );
  HS65_GS_IVX9 U10 ( .A(n9), .Z(n10) );
  HS65_GS_AND2X4 U11 ( .A(n123), .B(n6), .Z(n104) );
  HS65_GS_IVX9 U12 ( .A(n5), .Z(n4) );
  HS65_GS_NOR2X6 U13 ( .A(n124), .B(n10), .Z(n130) );
  HS65_GS_IVX9 U14 ( .A(n147), .Z(n298) );
  HS65_GS_NAND2X7 U15 ( .A(n85), .B(n126), .Z(n127) );
  HS65_GS_AND2X4 U16 ( .A(n89), .B(n124), .Z(n129) );
  HS65_GS_IVX9 U17 ( .A(n85), .Z(n300) );
  HS65_GS_IVX9 U18 ( .A(n92), .Z(n301) );
  HS65_GS_IVX9 U19 ( .A(n108), .Z(n297) );
  HS65_GS_OAI21X3 U20 ( .A(n141), .B(n10), .C(n137), .Z(n257) );
  HS65_GS_BFX9 U21 ( .A(nrst), .Z(n9) );
  HS65_GS_BFX9 U22 ( .A(n7), .Z(n6) );
  HS65_GS_NOR3X4 U23 ( .A(n304), .B(n306), .C(n308), .Z(n141) );
  HS65_GS_IVX9 U24 ( .A(n124), .Z(n304) );
  HS65_GS_IVX9 U25 ( .A(N136), .Z(n325) );
  HS65_GS_IVX9 U26 ( .A(N139), .Z(n322) );
  HS65_GS_IVX9 U42 ( .A(N152), .Z(n326) );
  HS65_GS_IVX9 U43 ( .A(N140), .Z(n321) );
  HS65_GS_IVX9 U44 ( .A(N141), .Z(n320) );
  HS65_GS_IVX9 U45 ( .A(N142), .Z(n319) );
  HS65_GS_IVX9 U46 ( .A(N137), .Z(n324) );
  HS65_GS_IVX9 U47 ( .A(N138), .Z(n323) );
  HS65_GS_IVX9 U48 ( .A(N143), .Z(n318) );
  HS65_GS_NOR4ABX4 U49 ( .A(n90), .B(n124), .C(n302), .D(n125), .Z(n92) );
  HS65_GS_OAI21X6 U50 ( .A(n116), .B(n6), .C(n89), .Z(n126) );
  HS65_GS_NOR2X6 U51 ( .A(n10), .B(n116), .Z(n85) );
  HS65_GS_NOR2X6 U52 ( .A(n94), .B(n10), .Z(n103) );
  HS65_GS_NOR2X6 U53 ( .A(n140), .B(n10), .Z(n102) );
  HS65_GS_NOR2X6 U54 ( .A(n133), .B(n10), .Z(n132) );
  HS65_GS_AND2X4 U55 ( .A(n89), .B(n116), .Z(n90) );
  HS65_GS_NAND4ABX3 U56 ( .A(n304), .B(n117), .C(n9), .D(n87), .Z(n96) );
  HS65_GS_OA12X9 U57 ( .A(n87), .B(n332), .C(n9), .Z(n89) );
  HS65_GS_AND2X4 U58 ( .A(n89), .B(n94), .Z(n135) );
  HS65_GS_AND2X4 U59 ( .A(n89), .B(n140), .Z(n134) );
  HS65_GS_AND2X4 U60 ( .A(n89), .B(n133), .Z(n131) );
  HS65_GS_OAI212X5 U61 ( .A(n136), .B(n137), .C(n138), .D(n10), .E(n139), .Z(
        n256) );
  HS65_GS_NOR3X4 U62 ( .A(n307), .B(n306), .C(n302), .Z(n138) );
  HS65_GS_NOR2X6 U63 ( .A(n298), .B(N204), .Z(n136) );
  HS65_GS_OAI212X5 U64 ( .A(n142), .B(n10), .C(n298), .D(n137), .E(n139), .Z(
        n258) );
  HS65_GS_NOR2X6 U65 ( .A(n306), .B(n125), .Z(n142) );
  HS65_GS_OAI212X5 U66 ( .A(n93), .B(n297), .C(n94), .D(n3), .E(n95), .Z(n91)
         );
  HS65_GS_AOI22X6 U67 ( .A(N131), .B(n6), .C(N160), .D(N132), .Z(n93) );
  HS65_GS_AOI12X2 U68 ( .A(N89), .B(n302), .C(n96), .Z(n95) );
  HS65_GS_OAI212X5 U69 ( .A(n98), .B(n297), .C(n94), .D(n1), .E(n99), .Z(n97)
         );
  HS65_GS_AOI22X6 U70 ( .A(N130), .B(n6), .C(N159), .D(N132), .Z(n98) );
  HS65_GS_AOI12X2 U71 ( .A(N88), .B(n302), .C(n96), .Z(n99) );
  HS65_GS_OAI212X5 U72 ( .A(n106), .B(n297), .C(n94), .D(n2), .E(n107), .Z(
        n105) );
  HS65_GS_AOI22X6 U73 ( .A(N128), .B(n6), .C(N157), .D(N132), .Z(n106) );
  HS65_GS_AOI12X2 U74 ( .A(N86), .B(n302), .C(n96), .Z(n107) );
  HS65_GS_OAI21X3 U75 ( .A(n116), .B(n147), .C(n9), .Z(N364) );
  HS65_GS_NAND2X7 U76 ( .A(N103), .B(N102), .Z(n147) );
  HS65_GS_NOR2X6 U77 ( .A(n116), .B(n298), .Z(n108) );
  HS65_GS_NAND2X7 U78 ( .A(n85), .B(n139), .Z(n137) );
  HS65_GS_OAI211X5 U79 ( .A(n87), .B(n332), .C(n88), .D(n299), .Z(n86) );
  HS65_GS_IVX9 U80 ( .A(N364), .Z(n299) );
  HS65_GS_IVX9 U81 ( .A(N132), .Z(n7) );
  HS65_GS_IVX9 U82 ( .A(N202), .Z(n296) );
  HS65_GS_IVX9 U83 ( .A(N148), .Z(n313) );
  HS65_GS_IVX9 U84 ( .A(N147), .Z(n314) );
  HS65_GS_IVX9 U85 ( .A(N145), .Z(n316) );
  HS65_GS_IVX9 U86 ( .A(N146), .Z(n315) );
  HS65_GS_IVX9 U87 ( .A(N144), .Z(n317) );
  HS65_GS_AO22X9 U88 ( .A(n325), .B(N132), .C(N124), .D(n6), .Z(n115) );
  HS65_GS_IVX9 U89 ( .A(N107), .Z(N124) );
  HS65_GS_IVX9 U90 ( .A(N123), .Z(n271) );
  HS65_GS_IVX9 U91 ( .A(n140), .Z(n302) );
  HS65_GS_NAND3X5 U92 ( .A(n312), .B(n311), .C(n146), .Z(n124) );
  HS65_GS_IVX9 U93 ( .A(n94), .Z(n307) );
  HS65_GS_IVX9 U94 ( .A(n133), .Z(n308) );
  HS65_GS_IVX9 U95 ( .A(n88), .Z(n306) );
  HS65_GS_IVX9 U96 ( .A(n150), .Z(n305) );
  HS65_GS_IVX9 U97 ( .A(n145), .Z(n303) );
  HS65_GS_IVX9 U98 ( .A(neighborID[1]), .Z(n49) );
  HS65_GS_OAI212X5 U99 ( .A(n119), .B(n300), .C(n120), .D(n10), .E(n121), .Z(
        n159) );
  HS65_GS_AOI212X4 U100 ( .A(N80), .B(n302), .C(N91), .D(n307), .E(n304), .Z(
        n120) );
  HS65_GS_NAND2X7 U101 ( .A(address[1]), .B(n92), .Z(n121) );
  HS65_GS_AOI212X4 U102 ( .A(N151), .B(N132), .C(N122), .D(n6), .E(n298), .Z(
        n119) );
  HS65_GS_OAI22X6 U103 ( .A(n126), .B(n17), .C(n127), .D(n313), .Z(n161) );
  HS65_GS_OAI22X6 U104 ( .A(n126), .B(n18), .C(n127), .D(n314), .Z(n162) );
  HS65_GS_OAI22X6 U105 ( .A(n126), .B(n19), .C(n127), .D(n315), .Z(n163) );
  HS65_GS_OAI22X6 U106 ( .A(n126), .B(n20), .C(n127), .D(n316), .Z(n164) );
  HS65_GS_OAI22X6 U107 ( .A(n126), .B(n21), .C(n127), .D(n317), .Z(n165) );
  HS65_GS_OAI22X6 U108 ( .A(n126), .B(n22), .C(n127), .D(n318), .Z(n166) );
  HS65_GS_OAI22X6 U109 ( .A(n126), .B(n23), .C(n127), .D(n319), .Z(n167) );
  HS65_GS_OAI22X6 U110 ( .A(n126), .B(n24), .C(n127), .D(n320), .Z(n168) );
  HS65_GS_OAI22X6 U111 ( .A(n126), .B(n25), .C(n127), .D(n321), .Z(n169) );
  HS65_GS_OAI22X6 U112 ( .A(n126), .B(n26), .C(n127), .D(n322), .Z(n170) );
  HS65_GS_OAI22X6 U113 ( .A(n126), .B(n27), .C(n127), .D(n323), .Z(n171) );
  HS65_GS_OAI22X6 U114 ( .A(n126), .B(n28), .C(n127), .D(n324), .Z(n172) );
  HS65_GS_OAI22X6 U115 ( .A(n126), .B(n29), .C(n127), .D(n325), .Z(n173) );
  HS65_GS_OAI22X6 U116 ( .A(n126), .B(n30), .C(n127), .D(n326), .Z(n174) );
  HS65_GS_OAI22X6 U117 ( .A(n126), .B(n31), .C(n127), .D(N80), .Z(n175) );
  HS65_GS_OAI22X6 U118 ( .A(n126), .B(n32), .C(n127), .D(n309), .Z(n176) );
  HS65_GS_NAND4ABX3 U119 ( .A(n4), .B(N364), .C(n143), .D(n144), .Z(n139) );
  HS65_GS_NOR4ABX2 U120 ( .A(n140), .B(n141), .C(n303), .D(n117), .Z(n144) );
  HS65_GS_NOR2X6 U121 ( .A(state[3]), .B(N204), .Z(n143) );
  HS65_GS_CBI4I1X5 U122 ( .A(n112), .B(n113), .C(n92), .D(n114), .Z(n157) );
  HS65_GS_AOI12X2 U123 ( .A(n29), .B(n302), .C(n96), .Z(n112) );
  HS65_GS_NAND2X7 U124 ( .A(address[3]), .B(n92), .Z(n114) );
  HS65_GS_AOI212X4 U125 ( .A(N93), .B(n307), .C(n108), .D(n115), .E(n308), .Z(
        n113) );
  HS65_GS_OAI211X5 U126 ( .A(en), .B(n87), .C(n145), .D(n149), .Z(n259) );
  HS65_GS_AOI12X2 U127 ( .A(state[3]), .B(n305), .C(n10), .Z(n149) );
  HS65_GS_IVX9 U128 ( .A(data_in[1]), .Z(n8) );
  HS65_GS_AO212X4 U129 ( .A(N158), .B(n100), .C(address[8]), .D(n92), .E(n101), 
        .Z(n153) );
  HS65_GS_AO222X4 U130 ( .A(N87), .B(n102), .C(N98), .D(n103), .E(N129), .F(
        n104), .Z(n101) );
  HS65_GS_AO212X4 U131 ( .A(N155), .B(n100), .C(address[5]), .D(n92), .E(n110), 
        .Z(n155) );
  HS65_GS_AO222X4 U132 ( .A(N84), .B(n102), .C(N95), .D(n103), .E(N126), .F(
        n104), .Z(n110) );
  HS65_GS_AO212X4 U133 ( .A(N154), .B(n100), .C(address[4]), .D(n92), .E(n111), 
        .Z(n156) );
  HS65_GS_AO222X4 U134 ( .A(N83), .B(n102), .C(N94), .D(n103), .E(N125), .F(
        n104), .Z(n111) );
  HS65_GS_AO212X4 U135 ( .A(N152), .B(n100), .C(address[2]), .D(n92), .E(n118), 
        .Z(n158) );
  HS65_GS_AO222X4 U136 ( .A(N81), .B(n102), .C(N92), .D(n103), .E(N123), .F(
        n104), .Z(n118) );
  HS65_GS_MX41X7 U137 ( .D0(address[6]), .S0(n92), .D1(n9), .S1(n109), .D2(
        N156), .S2(n100), .D3(N127), .S3(n104), .Z(n154) );
  HS65_GS_AO212X4 U138 ( .A(N96), .B(n307), .C(N85), .D(n302), .E(n308), .Z(
        n109) );
  HS65_GS_IVX9 U139 ( .A(en), .Z(n332) );
  HS65_GS_AO22X9 U140 ( .A(N91), .B(n90), .C(N122), .D(n128), .Z(n192) );
  HS65_GS_AO22X9 U141 ( .A(j[15]), .B(n90), .C(N120), .D(n128), .Z(n177) );
  HS65_GS_AO22X9 U142 ( .A(j[2]), .B(n90), .C(N107), .D(n128), .Z(n190) );
  HS65_GS_AO22X9 U143 ( .A(done), .B(n89), .C(n303), .D(n9), .Z(n151) );
  HS65_GS_AO22X9 U144 ( .A(N92), .B(n90), .C(N123), .D(n128), .Z(n191) );
  HS65_GS_AO22X9 U145 ( .A(clusterID[0]), .B(n135), .C(n103), .D(data_in[0]), 
        .Z(n255) );
  HS65_GS_AO22X9 U146 ( .A(clusterID[1]), .B(n135), .C(n103), .D(data_in[1]), 
        .Z(n254) );
  HS65_GS_AO22X9 U147 ( .A(clusterID[2]), .B(n135), .C(n103), .D(data_in[2]), 
        .Z(n253) );
  HS65_GS_AO22X9 U148 ( .A(clusterID[3]), .B(n135), .C(n103), .D(data_in[3]), 
        .Z(n252) );
  HS65_GS_AO22X9 U149 ( .A(clusterID[4]), .B(n135), .C(n103), .D(data_in[4]), 
        .Z(n251) );
  HS65_GS_AO22X9 U150 ( .A(clusterID[5]), .B(n135), .C(n103), .D(data_in[5]), 
        .Z(n250) );
  HS65_GS_AO22X9 U151 ( .A(clusterID[6]), .B(n135), .C(n103), .D(data_in[6]), 
        .Z(n249) );
  HS65_GS_AO22X9 U152 ( .A(clusterID[7]), .B(n135), .C(n103), .D(data_in[7]), 
        .Z(n248) );
  HS65_GS_AO22X9 U153 ( .A(clusterID[8]), .B(n135), .C(n103), .D(data_in[8]), 
        .Z(n247) );
  HS65_GS_AO22X9 U154 ( .A(clusterID[9]), .B(n135), .C(n103), .D(data_in[9]), 
        .Z(n246) );
  HS65_GS_AO22X9 U155 ( .A(clusterID[10]), .B(n135), .C(n103), .D(data_in[10]), 
        .Z(n245) );
  HS65_GS_AO22X9 U156 ( .A(clusterID[11]), .B(n135), .C(n103), .D(data_in[11]), 
        .Z(n244) );
  HS65_GS_AO22X9 U157 ( .A(clusterID[12]), .B(n135), .C(n103), .D(data_in[12]), 
        .Z(n243) );
  HS65_GS_AO22X9 U158 ( .A(clusterID[13]), .B(n135), .C(n103), .D(data_in[13]), 
        .Z(n242) );
  HS65_GS_AO22X9 U159 ( .A(clusterID[14]), .B(n135), .C(n103), .D(data_in[14]), 
        .Z(n241) );
  HS65_GS_AO22X9 U160 ( .A(clusterID[15]), .B(n135), .C(n103), .D(data_in[15]), 
        .Z(n240) );
  HS65_GS_AO22X9 U161 ( .A(forAggregation), .B(n90), .C(n85), .D(n298), .Z(
        n152) );
  HS65_GS_AO22X9 U162 ( .A(j[6]), .B(n90), .C(N111), .D(n128), .Z(n186) );
  HS65_GS_AO22X9 U163 ( .A(j[5]), .B(n90), .C(N110), .D(n128), .Z(n187) );
  HS65_GS_AO22X9 U164 ( .A(j[8]), .B(n90), .C(N113), .D(n128), .Z(n184) );
  HS65_GS_AO22X9 U165 ( .A(j[7]), .B(n90), .C(N112), .D(n128), .Z(n185) );
  HS65_GS_AO22X9 U166 ( .A(j[4]), .B(n90), .C(N109), .D(n128), .Z(n188) );
  HS65_GS_AO22X9 U167 ( .A(j[3]), .B(n90), .C(N108), .D(n128), .Z(n189) );
  HS65_GS_AO22X9 U168 ( .A(neighborID[1]), .B(n134), .C(n102), .D(data_in[1]), 
        .Z(n239) );
  HS65_GS_AO22X9 U169 ( .A(neighborID[2]), .B(n134), .C(n102), .D(data_in[2]), 
        .Z(n238) );
  HS65_GS_AO22X9 U170 ( .A(neighborID[3]), .B(n134), .C(n102), .D(data_in[3]), 
        .Z(n237) );
  HS65_GS_AO22X9 U171 ( .A(neighborID[4]), .B(n134), .C(n102), .D(data_in[4]), 
        .Z(n236) );
  HS65_GS_AO22X9 U172 ( .A(neighborID[5]), .B(n134), .C(n102), .D(data_in[5]), 
        .Z(n235) );
  HS65_GS_AO22X9 U173 ( .A(neighborID[6]), .B(n134), .C(n102), .D(data_in[6]), 
        .Z(n234) );
  HS65_GS_AO22X9 U174 ( .A(neighborID[7]), .B(n134), .C(n102), .D(data_in[7]), 
        .Z(n233) );
  HS65_GS_AO22X9 U175 ( .A(neighborID[8]), .B(n134), .C(n102), .D(data_in[8]), 
        .Z(n232) );
  HS65_GS_AO22X9 U176 ( .A(neighborID[9]), .B(n134), .C(n102), .D(data_in[9]), 
        .Z(n231) );
  HS65_GS_AO22X9 U177 ( .A(neighborID[10]), .B(n134), .C(n102), .D(data_in[10]), .Z(n230) );
  HS65_GS_AO22X9 U178 ( .A(neighborID[11]), .B(n134), .C(n102), .D(data_in[11]), .Z(n229) );
  HS65_GS_AO22X9 U179 ( .A(neighborID[12]), .B(n134), .C(n102), .D(data_in[12]), .Z(n228) );
  HS65_GS_AO22X9 U180 ( .A(neighborID[13]), .B(n134), .C(n102), .D(data_in[13]), .Z(n227) );
  HS65_GS_AO22X9 U181 ( .A(neighborID[14]), .B(n134), .C(n102), .D(data_in[14]), .Z(n226) );
  HS65_GS_AO22X9 U182 ( .A(neighborID[15]), .B(n134), .C(n102), .D(data_in[15]), .Z(n225) );
  HS65_GS_AO22X9 U183 ( .A(neighborID[0]), .B(n134), .C(n102), .D(data_in[0]), 
        .Z(n260) );
  HS65_GS_AO22X9 U184 ( .A(j[9]), .B(n90), .C(N114), .D(n128), .Z(n183) );
  HS65_GS_AO22X9 U185 ( .A(neighborCount[0]), .B(n131), .C(n132), .D(
        data_in[0]), .Z(n224) );
  HS65_GS_AO22X9 U186 ( .A(neighborCount[1]), .B(n131), .C(n132), .D(
        data_in[1]), .Z(n223) );
  HS65_GS_AO22X9 U187 ( .A(neighborCount[2]), .B(n131), .C(n132), .D(
        data_in[2]), .Z(n222) );
  HS65_GS_AO22X9 U188 ( .A(neighborCount[3]), .B(n131), .C(n132), .D(
        data_in[3]), .Z(n221) );
  HS65_GS_AO22X9 U189 ( .A(neighborCount[4]), .B(n131), .C(n132), .D(
        data_in[4]), .Z(n220) );
  HS65_GS_AO22X9 U190 ( .A(neighborCount[5]), .B(n131), .C(n132), .D(
        data_in[5]), .Z(n219) );
  HS65_GS_AO22X9 U191 ( .A(neighborCount[6]), .B(n131), .C(n132), .D(
        data_in[6]), .Z(n218) );
  HS65_GS_AO22X9 U192 ( .A(neighborCount[7]), .B(n131), .C(n132), .D(
        data_in[7]), .Z(n217) );
  HS65_GS_AO22X9 U193 ( .A(neighborCount[8]), .B(n131), .C(n132), .D(
        data_in[8]), .Z(n216) );
  HS65_GS_AO22X9 U194 ( .A(neighborCount[9]), .B(n131), .C(n132), .D(
        data_in[9]), .Z(n215) );
  HS65_GS_AO22X9 U195 ( .A(neighborCount[10]), .B(n131), .C(n132), .D(
        data_in[10]), .Z(n214) );
  HS65_GS_AO22X9 U196 ( .A(neighborCount[11]), .B(n131), .C(n132), .D(
        data_in[11]), .Z(n213) );
  HS65_GS_AO22X9 U197 ( .A(neighborCount[12]), .B(n131), .C(n132), .D(
        data_in[12]), .Z(n212) );
  HS65_GS_AO22X9 U198 ( .A(neighborCount[13]), .B(n131), .C(n132), .D(
        data_in[13]), .Z(n211) );
  HS65_GS_AO22X9 U199 ( .A(neighborCount[14]), .B(n131), .C(n132), .D(
        data_in[14]), .Z(n210) );
  HS65_GS_AO22X9 U200 ( .A(neighborCount[15]), .B(n131), .C(n132), .D(
        data_in[15]), .Z(n209) );
  HS65_GS_AO22X9 U201 ( .A(j[14]), .B(n90), .C(N119), .D(n128), .Z(n178) );
  HS65_GS_AO22X9 U202 ( .A(j[13]), .B(n90), .C(N118), .D(n128), .Z(n179) );
  HS65_GS_AO22X9 U203 ( .A(j[12]), .B(n90), .C(N117), .D(n128), .Z(n180) );
  HS65_GS_AO22X9 U204 ( .A(j[11]), .B(n90), .C(N116), .D(n128), .Z(n181) );
  HS65_GS_AO22X9 U205 ( .A(j[10]), .B(n90), .C(N115), .D(n128), .Z(n182) );
  HS65_GS_AO22X9 U206 ( .A(knownSinkCount[1]), .B(n129), .C(data_in[1]), .D(
        n130), .Z(n207) );
  HS65_GS_AO22X9 U207 ( .A(knownSinkCount[0]), .B(n129), .C(data_in[0]), .D(
        n130), .Z(n208) );
  HS65_GS_AND2X4 U208 ( .A(address[0]), .B(n92), .Z(n160) );
  HS65_GS_AO22X9 U209 ( .A(knownSinkCount[2]), .B(n129), .C(data_in[2]), .D(
        n130), .Z(n206) );
  HS65_GS_AO22X9 U210 ( .A(knownSinkCount[3]), .B(n129), .C(data_in[3]), .D(
        n130), .Z(n205) );
  HS65_GS_AO22X9 U211 ( .A(knownSinkCount[4]), .B(n129), .C(data_in[4]), .D(
        n130), .Z(n204) );
  HS65_GS_AO22X9 U212 ( .A(knownSinkCount[7]), .B(n129), .C(data_in[7]), .D(
        n130), .Z(n201) );
  HS65_GS_AO22X9 U213 ( .A(knownSinkCount[8]), .B(n129), .C(data_in[8]), .D(
        n130), .Z(n200) );
  HS65_GS_AO22X9 U214 ( .A(knownSinkCount[11]), .B(n129), .C(data_in[11]), .D(
        n130), .Z(n197) );
  HS65_GS_AO22X9 U215 ( .A(knownSinkCount[12]), .B(n129), .C(data_in[12]), .D(
        n130), .Z(n196) );
  HS65_GS_AO22X9 U216 ( .A(knownSinkCount[15]), .B(n129), .C(data_in[15]), .D(
        n130), .Z(n193) );
  HS65_GS_AO22X9 U217 ( .A(knownSinkCount[5]), .B(n129), .C(data_in[5]), .D(
        n130), .Z(n203) );
  HS65_GS_AO22X9 U218 ( .A(knownSinkCount[6]), .B(n129), .C(data_in[6]), .D(
        n130), .Z(n202) );
  HS65_GS_AO22X9 U219 ( .A(knownSinkCount[9]), .B(n129), .C(data_in[9]), .D(
        n130), .Z(n199) );
  HS65_GS_AO22X9 U220 ( .A(knownSinkCount[10]), .B(n129), .C(data_in[10]), .D(
        n130), .Z(n198) );
  HS65_GS_AO22X9 U221 ( .A(knownSinkCount[13]), .B(n129), .C(data_in[13]), .D(
        n130), .Z(n195) );
  HS65_GS_AO22X9 U222 ( .A(knownSinkCount[14]), .B(n129), .C(data_in[14]), .D(
        n130), .Z(n194) );
  HS65_GS_IVX9 U223 ( .A(neighborCount[1]), .Z(n295) );
  HS65_GS_OAI22X6 U224 ( .A(n5), .B(n326), .C(n4), .D(n30), .Z(N202) );
  HS65_GS_OAI22X6 U225 ( .A(n6), .B(n315), .C(n4), .D(n19), .Z(N191) );
  HS65_GS_OAI22X6 U226 ( .A(n5), .B(n319), .C(n4), .D(n23), .Z(N195) );
  HS65_GS_OAI22X6 U227 ( .A(n5), .B(n316), .C(n4), .D(n20), .Z(N192) );
  HS65_GS_OAI22X6 U228 ( .A(n5), .B(n320), .C(n4), .D(n24), .Z(N196) );
  HS65_GS_OAI22X6 U229 ( .A(n5), .B(N80), .C(n4), .D(n31), .Z(N203) );
  HS65_GS_OAI22X6 U230 ( .A(n5), .B(n322), .C(n4), .D(n26), .Z(N198) );
  HS65_GS_OAI22X6 U231 ( .A(n5), .B(n323), .C(n4), .D(n27), .Z(N199) );
  HS65_GS_OAI22X6 U232 ( .A(n5), .B(n324), .C(n4), .D(n28), .Z(N200) );
  HS65_GS_OAI22X6 U233 ( .A(n5), .B(n309), .C(n4), .D(n32), .Z(N188) );
  HS65_GS_OAI22X6 U234 ( .A(n5), .B(n325), .C(n4), .D(n29), .Z(N201) );
  HS65_GS_OAI22X6 U235 ( .A(n5), .B(n317), .C(n4), .D(n21), .Z(N193) );
  HS65_GS_OAI22X6 U236 ( .A(n5), .B(n321), .C(n4), .D(n25), .Z(N197) );
  HS65_GS_OAI22X6 U237 ( .A(n6), .B(n314), .C(n4), .D(n18), .Z(N190) );
  HS65_GS_OAI22X6 U238 ( .A(n6), .B(n313), .C(n4), .D(n17), .Z(N189) );
  HS65_GS_OAI22X6 U239 ( .A(n5), .B(n318), .C(n4), .D(n22), .Z(N194) );
  HS65_GS_IVX9 U240 ( .A(n31), .Z(N80) );
  HS65_GS_IVX9 U241 ( .A(n29), .Z(\add_66/B[3] ) );
  HS65_GS_IVX9 U242 ( .A(n21), .Z(n327) );
  HS65_GS_IVX9 U243 ( .A(n20), .Z(n328) );
  HS65_GS_IVX9 U244 ( .A(n19), .Z(n329) );
  HS65_GS_IVX9 U245 ( .A(n18), .Z(n330) );
  HS65_GS_IVX9 U246 ( .A(N149), .Z(n309) );
  HS65_GS_IVX9 U247 ( .A(n32), .Z(n310) );
  HS65_GS_IVX9 U248 ( .A(n26), .Z(\add_66/B[6] ) );
  HS65_GS_IVX9 U249 ( .A(n28), .Z(\add_66/B[4] ) );
  HS65_GS_IVX9 U250 ( .A(n27), .Z(\add_66/B[5] ) );
  HS65_GS_IVX9 U251 ( .A(n30), .Z(N81) );
  HS65_GS_IVX9 U252 ( .A(n17), .Z(n331) );
  HS65_GS_IVX9 U253 ( .A(knownSinkCount[1]), .Z(n272) );
  HS65_GS_NAND3X5 U254 ( .A(n146), .B(n312), .C(state[2]), .Z(n116) );
  HS65_GS_IVX9 U255 ( .A(clusterID[1]), .Z(n73) );
  HS65_GS_NAND3X5 U256 ( .A(state[2]), .B(n312), .C(n148), .Z(n94) );
  HS65_GS_NOR2AX3 U257 ( .A(state[0]), .B(state[3]), .Z(n146) );
  HS65_GS_NAND3X5 U258 ( .A(n146), .B(n311), .C(state[1]), .Z(n140) );
  HS65_GS_NAND3X5 U259 ( .A(n148), .B(n311), .C(state[1]), .Z(n133) );
  HS65_GS_NOR2X6 U260 ( .A(state[3]), .B(state[0]), .Z(n148) );
  HS65_GS_NAND2X7 U261 ( .A(state[3]), .B(n150), .Z(n87) );
  HS65_GS_NOR3X4 U262 ( .A(state[1]), .B(state[2]), .C(state[0]), .Z(n150) );
  HS65_GS_NOR2X6 U263 ( .A(n305), .B(state[3]), .Z(n117) );
  HS65_GS_IVX9 U264 ( .A(state[1]), .Z(n312) );
  HS65_GS_IVX9 U265 ( .A(state[2]), .Z(n311) );
  HS65_GS_NAND3X5 U266 ( .A(state[2]), .B(n146), .C(state[1]), .Z(n145) );
  HS65_GS_NAND3X5 U267 ( .A(n148), .B(state[2]), .C(state[1]), .Z(n88) );
  HS65_GS_AO112X9 U268 ( .A(start), .B(n117), .C(n307), .D(n308), .Z(n125) );
  HS65_GS_IVX9 U269 ( .A(n25), .Z(\add_66/B[7] ) );
  HS65_GS_IVX9 U270 ( .A(n23), .Z(\add_66/B[9] ) );
  HS65_GS_IVX9 U271 ( .A(n24), .Z(\add_66/B[8] ) );
  HS65_GS_IVX9 U272 ( .A(j[2]), .Z(N93) );
  HS65_GS_IVX9 U273 ( .A(n22), .Z(\add_66/B[10] ) );
  HS65_GS_IVX9 U274 ( .A(MY_CLUSTER_ID[1]), .Z(n72) );
  HS65_GSS_XOR2X3 U275 ( .A(\add_66/B[10] ), .B(\add_66/carry[10] ), .Z(N89)
         );
  HS65_GSS_XOR2X3 U276 ( .A(N143), .B(\add_92/carry[10] ), .Z(N160) );
  HS65_GSS_XOR2X3 U277 ( .A(N114), .B(\add_86/carry[10] ), .Z(N131) );
  HS65_GS_AND2X4 U278 ( .A(\add_66/B[9] ), .B(\add_66/carry[9] ), .Z(
        \add_66/carry[10] ) );
  HS65_GSS_XOR2X3 U279 ( .A(\add_66/carry[9] ), .B(\add_66/B[9] ), .Z(N88) );
  HS65_GS_AND2X4 U280 ( .A(j[8]), .B(\add_72/carry[9] ), .Z(\add_72/carry[10] ) );
  HS65_GS_AND2X4 U281 ( .A(N142), .B(\add_92/carry[9] ), .Z(\add_92/carry[10] ) );
  HS65_GSS_XOR2X3 U282 ( .A(\add_92/carry[9] ), .B(N142), .Z(N159) );
  HS65_GS_AND2X4 U283 ( .A(N113), .B(\add_86/carry[9] ), .Z(\add_86/carry[10] ) );
  HS65_GSS_XOR2X3 U284 ( .A(\add_86/carry[9] ), .B(N113), .Z(N130) );
  HS65_GS_AND2X4 U285 ( .A(N112), .B(\add_86/carry[8] ), .Z(\add_86/carry[9] )
         );
  HS65_GSS_XOR2X3 U286 ( .A(\add_86/carry[8] ), .B(N112), .Z(N129) );
  HS65_GS_AND2X4 U287 ( .A(j[7]), .B(\add_72/carry[8] ), .Z(\add_72/carry[9] )
         );
  HS65_GSS_XOR2X3 U288 ( .A(\add_72/carry[8] ), .B(j[7]), .Z(N98) );
  HS65_GS_AND2X4 U289 ( .A(\add_66/B[8] ), .B(\add_66/carry[8] ), .Z(
        \add_66/carry[9] ) );
  HS65_GSS_XOR2X3 U290 ( .A(\add_66/carry[8] ), .B(\add_66/B[8] ), .Z(N87) );
  HS65_GS_AND2X4 U291 ( .A(N141), .B(\add_92/carry[8] ), .Z(\add_92/carry[9] )
         );
  HS65_GSS_XOR2X3 U292 ( .A(\add_92/carry[8] ), .B(N141), .Z(N158) );
  HS65_GS_OR2X4 U293 ( .A(\add_66/carry[7] ), .B(\add_66/B[7] ), .Z(
        \add_66/carry[8] ) );
  HS65_GSS_XNOR2X3 U294 ( .A(\add_66/B[7] ), .B(\add_66/carry[7] ), .Z(N86) );
  HS65_GS_AND2X4 U295 ( .A(j[6]), .B(\add_72/carry[7] ), .Z(\add_72/carry[8] )
         );
  HS65_GS_AND2X4 U296 ( .A(N140), .B(\add_92/carry[7] ), .Z(\add_92/carry[8] )
         );
  HS65_GSS_XOR2X3 U297 ( .A(\add_92/carry[7] ), .B(N140), .Z(N157) );
  HS65_GS_AND2X4 U298 ( .A(N111), .B(\add_86/carry[7] ), .Z(\add_86/carry[8] )
         );
  HS65_GSS_XOR2X3 U299 ( .A(\add_86/carry[7] ), .B(N111), .Z(N128) );
  HS65_GS_AND2X4 U300 ( .A(N110), .B(\add_86/carry[6] ), .Z(\add_86/carry[7] )
         );
  HS65_GSS_XOR2X3 U301 ( .A(\add_86/carry[6] ), .B(N110), .Z(N127) );
  HS65_GS_OR2X4 U302 ( .A(\add_92/carry[6] ), .B(N139), .Z(\add_92/carry[7] )
         );
  HS65_GSS_XNOR2X3 U303 ( .A(N139), .B(\add_92/carry[6] ), .Z(N156) );
  HS65_GS_OR2X4 U304 ( .A(\add_66/carry[6] ), .B(\add_66/B[6] ), .Z(
        \add_66/carry[7] ) );
  HS65_GSS_XNOR2X3 U305 ( .A(\add_66/B[6] ), .B(\add_66/carry[6] ), .Z(N85) );
  HS65_GS_AND2X4 U306 ( .A(j[5]), .B(\add_72/carry[6] ), .Z(\add_72/carry[7] )
         );
  HS65_GSS_XOR2X3 U307 ( .A(\add_72/carry[6] ), .B(j[5]), .Z(N96) );
  HS65_GS_AND2X4 U308 ( .A(N109), .B(\add_86/carry[5] ), .Z(\add_86/carry[6] )
         );
  HS65_GSS_XOR2X3 U309 ( .A(\add_86/carry[5] ), .B(N109), .Z(N126) );
  HS65_GS_AND2X4 U310 ( .A(j[4]), .B(\add_72/carry[5] ), .Z(\add_72/carry[6] )
         );
  HS65_GSS_XOR2X3 U311 ( .A(\add_72/carry[5] ), .B(j[4]), .Z(N95) );
  HS65_GS_AND2X4 U312 ( .A(\add_66/B[5] ), .B(\add_66/carry[5] ), .Z(
        \add_66/carry[6] ) );
  HS65_GSS_XOR2X3 U313 ( .A(\add_66/carry[5] ), .B(\add_66/B[5] ), .Z(N84) );
  HS65_GS_AND2X4 U314 ( .A(N138), .B(\add_92/carry[5] ), .Z(\add_92/carry[6] )
         );
  HS65_GSS_XOR2X3 U315 ( .A(\add_92/carry[5] ), .B(N138), .Z(N155) );
  HS65_GS_AND2X4 U316 ( .A(N108), .B(N107), .Z(\add_86/carry[5] ) );
  HS65_GSS_XOR2X3 U317 ( .A(N107), .B(N108), .Z(N125) );
  HS65_GS_AND2X4 U318 ( .A(j[3]), .B(j[2]), .Z(\add_72/carry[5] ) );
  HS65_GSS_XOR2X3 U319 ( .A(j[2]), .B(j[3]), .Z(N94) );
  HS65_GS_AND2X4 U320 ( .A(\add_66/B[4] ), .B(\add_66/B[3] ), .Z(
        \add_66/carry[5] ) );
  HS65_GSS_XOR2X3 U321 ( .A(\add_66/B[3] ), .B(\add_66/B[4] ), .Z(N83) );
  HS65_GS_AND2X4 U322 ( .A(N137), .B(N136), .Z(\add_92/carry[5] ) );
  HS65_GSS_XOR2X3 U323 ( .A(N136), .B(N137), .Z(N154) );
  HS65_GSS_XNOR2X3 U324 ( .A(data_in[14]), .B(neighborID[14]), .Z(n14) );
  HS65_GSS_XNOR2X3 U325 ( .A(data_in[13]), .B(neighborID[13]), .Z(n13) );
  HS65_GSS_XOR2X3 U326 ( .A(data_in[11]), .B(neighborID[11]), .Z(n12) );
  HS65_GSS_XOR2X3 U327 ( .A(data_in[12]), .B(neighborID[12]), .Z(n11) );
  HS65_GS_NOR4ABX2 U328 ( .A(n14), .B(n13), .C(n12), .D(n11), .Z(n48) );
  HS65_GSS_XNOR2X3 U329 ( .A(data_in[10]), .B(neighborID[10]), .Z(n34) );
  HS65_GSS_XNOR2X3 U330 ( .A(data_in[9]), .B(neighborID[9]), .Z(n33) );
  HS65_GSS_XOR2X3 U331 ( .A(data_in[7]), .B(neighborID[7]), .Z(n16) );
  HS65_GSS_XOR2X3 U332 ( .A(data_in[8]), .B(neighborID[8]), .Z(n15) );
  HS65_GS_NOR4ABX2 U333 ( .A(n34), .B(n33), .C(n16), .D(n15), .Z(n47) );
  HS65_GSS_XOR2X3 U334 ( .A(data_in[15]), .B(neighborID[15]), .Z(n40) );
  HS65_GSS_XOR2X3 U335 ( .A(data_in[2]), .B(neighborID[2]), .Z(n39) );
  HS65_GS_NOR2AX3 U336 ( .A(neighborID[0]), .B(data_in[0]), .Z(n35) );
  HS65_GS_OAI22X1 U337 ( .A(neighborID[1]), .B(n35), .C(n35), .D(n8), .Z(n38)
         );
  HS65_GS_NOR2AX3 U338 ( .A(data_in[0]), .B(neighborID[0]), .Z(n36) );
  HS65_GS_OAI22X1 U339 ( .A(n36), .B(n49), .C(data_in[1]), .D(n36), .Z(n37) );
  HS65_GS_NAND4ABX3 U340 ( .A(n40), .B(n39), .C(n38), .D(n37), .Z(n46) );
  HS65_GSS_XOR2X3 U341 ( .A(data_in[3]), .B(neighborID[3]), .Z(n44) );
  HS65_GSS_XOR2X3 U342 ( .A(data_in[4]), .B(neighborID[4]), .Z(n43) );
  HS65_GSS_XNOR2X3 U343 ( .A(data_in[6]), .B(neighborID[6]), .Z(n42) );
  HS65_GSS_XNOR2X3 U344 ( .A(data_in[5]), .B(neighborID[5]), .Z(n41) );
  HS65_GS_NAND4ABX3 U345 ( .A(n44), .B(n43), .C(n42), .D(n41), .Z(n45) );
  HS65_GS_NOR4ABX2 U346 ( .A(n48), .B(n47), .C(n46), .D(n45), .Z(N102) );
  HS65_GSS_XOR2X3 U347 ( .A(MY_CLUSTER_ID[8]), .B(clusterID[8]), .Z(n53) );
  HS65_GSS_XOR2X3 U348 ( .A(MY_CLUSTER_ID[9]), .B(clusterID[9]), .Z(n52) );
  HS65_GSS_XNOR2X3 U349 ( .A(MY_CLUSTER_ID[11]), .B(clusterID[11]), .Z(n51) );
  HS65_GSS_XNOR2X3 U350 ( .A(MY_CLUSTER_ID[10]), .B(clusterID[10]), .Z(n50) );
  HS65_GS_NAND4ABX3 U351 ( .A(n53), .B(n52), .C(n51), .D(n50), .Z(n71) );
  HS65_GSS_XOR2X3 U352 ( .A(MY_CLUSTER_ID[2]), .B(clusterID[2]), .Z(n59) );
  HS65_GSS_XOR2X3 U353 ( .A(MY_CLUSTER_ID[3]), .B(clusterID[3]), .Z(n58) );
  HS65_GS_NOR2AX3 U354 ( .A(MY_CLUSTER_ID[0]), .B(clusterID[0]), .Z(n54) );
  HS65_GS_OAI22X1 U355 ( .A(n54), .B(n73), .C(MY_CLUSTER_ID[1]), .D(n54), .Z(
        n57) );
  HS65_GS_NOR2AX3 U356 ( .A(clusterID[0]), .B(MY_CLUSTER_ID[0]), .Z(n55) );
  HS65_GS_OAI22X1 U357 ( .A(clusterID[1]), .B(n55), .C(n55), .D(n72), .Z(n56)
         );
  HS65_GS_NAND4ABX3 U358 ( .A(n59), .B(n58), .C(n57), .D(n56), .Z(n70) );
  HS65_GSS_XNOR2X3 U359 ( .A(MY_CLUSTER_ID[15]), .B(clusterID[15]), .Z(n63) );
  HS65_GSS_XNOR2X3 U360 ( .A(MY_CLUSTER_ID[14]), .B(clusterID[14]), .Z(n62) );
  HS65_GSS_XOR2X3 U361 ( .A(MY_CLUSTER_ID[12]), .B(clusterID[12]), .Z(n61) );
  HS65_GSS_XOR2X3 U362 ( .A(MY_CLUSTER_ID[13]), .B(clusterID[13]), .Z(n60) );
  HS65_GS_NOR4ABX2 U363 ( .A(n63), .B(n62), .C(n61), .D(n60), .Z(n69) );
  HS65_GSS_XNOR2X3 U364 ( .A(MY_CLUSTER_ID[7]), .B(clusterID[7]), .Z(n67) );
  HS65_GSS_XNOR2X3 U365 ( .A(MY_CLUSTER_ID[6]), .B(clusterID[6]), .Z(n66) );
  HS65_GSS_XOR2X3 U366 ( .A(MY_CLUSTER_ID[4]), .B(clusterID[4]), .Z(n65) );
  HS65_GSS_XOR2X3 U367 ( .A(MY_CLUSTER_ID[5]), .B(clusterID[5]), .Z(n64) );
  HS65_GS_NOR4ABX2 U368 ( .A(n67), .B(n66), .C(n65), .D(n64), .Z(n68) );
  HS65_GS_NAND4ABX3 U369 ( .A(n71), .B(n70), .C(n69), .D(n68), .Z(N103) );
  HS65_GSS_XNOR2X3 U370 ( .A(knownSinkCount[14]), .B(N119), .Z(n77) );
  HS65_GSS_XNOR2X3 U371 ( .A(knownSinkCount[13]), .B(N118), .Z(n76) );
  HS65_GSS_XOR2X3 U372 ( .A(knownSinkCount[11]), .B(N116), .Z(n75) );
  HS65_GSS_XOR2X3 U373 ( .A(knownSinkCount[12]), .B(N117), .Z(n74) );
  HS65_GS_NOR4ABX2 U374 ( .A(n77), .B(n76), .C(n75), .D(n74), .Z(n270) );
  HS65_GSS_XNOR2X3 U375 ( .A(knownSinkCount[10]), .B(N115), .Z(n81) );
  HS65_GSS_XNOR2X3 U376 ( .A(knownSinkCount[9]), .B(N114), .Z(n80) );
  HS65_GSS_XOR2X3 U377 ( .A(knownSinkCount[7]), .B(N112), .Z(n79) );
  HS65_GSS_XOR2X3 U378 ( .A(knownSinkCount[8]), .B(N113), .Z(n78) );
  HS65_GS_NOR4ABX2 U379 ( .A(n81), .B(n80), .C(n79), .D(n78), .Z(n269) );
  HS65_GSS_XOR2X3 U380 ( .A(knownSinkCount[15]), .B(N120), .Z(n262) );
  HS65_GSS_XOR2X3 U381 ( .A(knownSinkCount[2]), .B(N107), .Z(n261) );
  HS65_GS_NOR2AX3 U382 ( .A(N122), .B(knownSinkCount[0]), .Z(n82) );
  HS65_GS_OAI22X1 U383 ( .A(N123), .B(n82), .C(n82), .D(n272), .Z(n122) );
  HS65_GS_NOR2AX3 U384 ( .A(knownSinkCount[0]), .B(N122), .Z(n83) );
  HS65_GS_OAI22X1 U385 ( .A(n83), .B(n271), .C(knownSinkCount[1]), .D(n83), 
        .Z(n84) );
  HS65_GS_NAND4ABX3 U386 ( .A(n262), .B(n261), .C(n122), .D(n84), .Z(n268) );
  HS65_GSS_XOR2X3 U387 ( .A(knownSinkCount[3]), .B(N108), .Z(n266) );
  HS65_GSS_XOR2X3 U388 ( .A(knownSinkCount[4]), .B(N109), .Z(n265) );
  HS65_GSS_XNOR2X3 U389 ( .A(knownSinkCount[6]), .B(N111), .Z(n264) );
  HS65_GSS_XNOR2X3 U390 ( .A(knownSinkCount[5]), .B(N110), .Z(n263) );
  HS65_GS_NAND4ABX3 U391 ( .A(n266), .B(n265), .C(n264), .D(n263), .Z(n267) );
  HS65_GS_NOR4ABX2 U392 ( .A(n270), .B(n269), .C(n268), .D(n267), .Z(N132) );
  HS65_GSS_XNOR2X3 U393 ( .A(neighborCount[14]), .B(N189), .Z(n276) );
  HS65_GSS_XNOR2X3 U394 ( .A(neighborCount[13]), .B(N190), .Z(n275) );
  HS65_GSS_XOR2X3 U395 ( .A(neighborCount[11]), .B(N192), .Z(n274) );
  HS65_GSS_XOR2X3 U396 ( .A(neighborCount[12]), .B(N191), .Z(n273) );
  HS65_GS_NOR4ABX2 U397 ( .A(n276), .B(n275), .C(n274), .D(n273), .Z(n294) );
  HS65_GSS_XNOR2X3 U398 ( .A(neighborCount[10]), .B(N193), .Z(n280) );
  HS65_GSS_XNOR2X3 U399 ( .A(neighborCount[9]), .B(N194), .Z(n279) );
  HS65_GSS_XOR2X3 U400 ( .A(neighborCount[7]), .B(N196), .Z(n278) );
  HS65_GSS_XOR2X3 U401 ( .A(neighborCount[8]), .B(N195), .Z(n277) );
  HS65_GS_NOR4ABX2 U402 ( .A(n280), .B(n279), .C(n278), .D(n277), .Z(n293) );
  HS65_GSS_XOR2X3 U403 ( .A(neighborCount[15]), .B(N188), .Z(n286) );
  HS65_GSS_XOR2X3 U404 ( .A(neighborCount[2]), .B(N201), .Z(n285) );
  HS65_GS_NOR2AX3 U405 ( .A(N203), .B(neighborCount[0]), .Z(n281) );
  HS65_GS_OAI22X1 U406 ( .A(N202), .B(n281), .C(n281), .D(n295), .Z(n284) );
  HS65_GS_NOR2AX3 U407 ( .A(neighborCount[0]), .B(N203), .Z(n282) );
  HS65_GS_OAI22X1 U408 ( .A(n282), .B(n296), .C(neighborCount[1]), .D(n282), 
        .Z(n283) );
  HS65_GS_NAND4ABX3 U409 ( .A(n286), .B(n285), .C(n284), .D(n283), .Z(n292) );
  HS65_GSS_XOR2X3 U410 ( .A(neighborCount[3]), .B(N200), .Z(n290) );
  HS65_GSS_XOR2X3 U411 ( .A(neighborCount[4]), .B(N199), .Z(n289) );
  HS65_GSS_XNOR2X3 U412 ( .A(neighborCount[6]), .B(N197), .Z(n288) );
  HS65_GSS_XNOR2X3 U413 ( .A(neighborCount[5]), .B(N198), .Z(n287) );
  HS65_GS_NAND4ABX3 U414 ( .A(n290), .B(n289), .C(n288), .D(n287), .Z(n291) );
  HS65_GS_NOR4ABX2 U415 ( .A(n294), .B(n293), .C(n292), .D(n291), .Z(N204) );
endmodule


module findMyBest_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HS65_GS_HA1X4 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .CO(carry[15]), .S0(
        SUM[14]) );
  HS65_GS_HA1X4 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .CO(carry[3]), .S0(SUM[2])
         );
  HS65_GS_HA1X4 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .CO(carry[6]), .S0(SUM[5])
         );
  HS65_GS_HA1X4 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .CO(carry[7]), .S0(SUM[6])
         );
  HS65_GS_HA1X4 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .CO(carry[8]), .S0(SUM[7])
         );
  HS65_GS_HA1X4 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .CO(carry[9]), .S0(SUM[8])
         );
  HS65_GS_HA1X4 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .CO(carry[5]), .S0(SUM[4])
         );
  HS65_GS_HA1X4 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .CO(carry[4]), .S0(SUM[3])
         );
  HS65_GS_HA1X4 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .CO(carry[10]), .S0(SUM[9])
         );
  HS65_GS_HA1X4 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .CO(carry[12]), .S0(
        SUM[11]) );
  HS65_GS_HA1X4 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .CO(carry[13]), .S0(
        SUM[12]) );
  HS65_GS_HA1X4 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .CO(carry[14]), .S0(
        SUM[13]) );
  HS65_GS_HA1X4 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .CO(carry[11]), .S0(
        SUM[10]) );
  HS65_GS_HA1X4 U1_1_1 ( .A0(A[1]), .B0(A[0]), .CO(carry[2]), .S0(SUM[1]) );
  HS65_GS_IVX9 U1 ( .A(A[0]), .Z(SUM[0]) );
  HS65_GSS_XOR2X3 U2 ( .A(carry[15]), .B(A[15]), .Z(SUM[15]) );
endmodule


module findMyBest_DW01_add_3 ( A, B, CI, SUM, CO );
  input [29:0] A;
  input [29:0] B;
  output [29:0] SUM;
  input CI;
  output CO;
  wire   \A[14] , \A[13] , \A[12] , \A[11] , n1, n2, n3, n4, n5, n6, n7, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47;
  assign SUM[14] = \A[14] ;
  assign \A[14]  = A[14];
  assign SUM[13] = \A[13] ;
  assign \A[13]  = A[13];
  assign SUM[12] = \A[12] ;
  assign \A[12]  = A[12];
  assign SUM[11] = \A[11] ;
  assign \A[11]  = A[11];

  HS65_GS_IVX9 U2 ( .A(n28), .Z(n4) );
  HS65_GS_IVX9 U3 ( .A(n20), .Z(n3) );
  HS65_GS_IVX9 U4 ( .A(n36), .Z(n5) );
  HS65_GS_IVX9 U5 ( .A(n43), .Z(n6) );
  HS65_GS_IVX9 U6 ( .A(n10), .Z(n2) );
  HS65_GS_IVX9 U7 ( .A(n46), .Z(n7) );
  HS65_GS_IVX9 U8 ( .A(A[25]), .Z(n1) );
  HS65_GS_IVX9 U9 ( .A(n47), .Z(SUM[15]) );
  HS65_GSS_XOR3X2 U10 ( .A(B[26]), .B(A[26]), .C(n9), .Z(SUM[26]) );
  HS65_GS_OAI12X2 U11 ( .A(n10), .B(n1), .C(n11), .Z(n9) );
  HS65_GS_OAI12X2 U12 ( .A(A[25]), .B(n2), .C(B[25]), .Z(n11) );
  HS65_GSS_XOR3X2 U13 ( .A(B[25]), .B(A[25]), .C(n2), .Z(SUM[25]) );
  HS65_GS_AOI12X2 U14 ( .A(n12), .B(A[24]), .C(n13), .Z(n10) );
  HS65_GS_OA12X4 U15 ( .A(A[24]), .B(n12), .C(B[24]), .Z(n13) );
  HS65_GSS_XOR3X2 U16 ( .A(B[24]), .B(A[24]), .C(n12), .Z(SUM[24]) );
  HS65_GS_OAI12X2 U17 ( .A(n14), .B(n15), .C(n16), .Z(n12) );
  HS65_GSS_XOR2X3 U18 ( .A(n17), .B(n15), .Z(SUM[23]) );
  HS65_GS_AOI12X2 U19 ( .A(n3), .B(n18), .C(n19), .Z(n15) );
  HS65_GS_NAND2AX4 U20 ( .A(n14), .B(n16), .Z(n17) );
  HS65_GS_NAND2X2 U21 ( .A(B[23]), .B(A[23]), .Z(n16) );
  HS65_GS_NOR2X2 U22 ( .A(B[23]), .B(A[23]), .Z(n14) );
  HS65_GSS_XOR2X3 U23 ( .A(n18), .B(n21), .Z(SUM[22]) );
  HS65_GS_NOR2X2 U24 ( .A(n19), .B(n20), .Z(n21) );
  HS65_GS_NOR2X2 U25 ( .A(B[22]), .B(A[22]), .Z(n20) );
  HS65_GS_AND2X4 U26 ( .A(B[22]), .B(A[22]), .Z(n19) );
  HS65_GS_OAI12X2 U27 ( .A(n22), .B(n23), .C(n24), .Z(n18) );
  HS65_GSS_XOR2X3 U28 ( .A(n25), .B(n23), .Z(SUM[21]) );
  HS65_GS_AOI12X2 U29 ( .A(n4), .B(n26), .C(n27), .Z(n23) );
  HS65_GS_NAND2AX4 U30 ( .A(n22), .B(n24), .Z(n25) );
  HS65_GS_NAND2X2 U31 ( .A(B[21]), .B(A[21]), .Z(n24) );
  HS65_GS_NOR2X2 U32 ( .A(B[21]), .B(A[21]), .Z(n22) );
  HS65_GSS_XOR2X3 U33 ( .A(n26), .B(n29), .Z(SUM[20]) );
  HS65_GS_NOR2X2 U34 ( .A(n27), .B(n28), .Z(n29) );
  HS65_GS_NOR2X2 U35 ( .A(B[20]), .B(A[20]), .Z(n28) );
  HS65_GS_AND2X4 U36 ( .A(B[20]), .B(A[20]), .Z(n27) );
  HS65_GS_OAI12X2 U37 ( .A(n30), .B(n31), .C(n32), .Z(n26) );
  HS65_GSS_XOR2X3 U38 ( .A(n33), .B(n31), .Z(SUM[19]) );
  HS65_GS_AOI12X2 U39 ( .A(n5), .B(n34), .C(n35), .Z(n31) );
  HS65_GS_NAND2AX4 U40 ( .A(n30), .B(n32), .Z(n33) );
  HS65_GS_NAND2X2 U41 ( .A(B[19]), .B(A[19]), .Z(n32) );
  HS65_GS_NOR2X2 U42 ( .A(B[19]), .B(A[19]), .Z(n30) );
  HS65_GSS_XOR2X3 U43 ( .A(n34), .B(n37), .Z(SUM[18]) );
  HS65_GS_NOR2X2 U44 ( .A(n35), .B(n36), .Z(n37) );
  HS65_GS_NOR2X2 U45 ( .A(B[18]), .B(A[18]), .Z(n36) );
  HS65_GS_AND2X4 U46 ( .A(B[18]), .B(A[18]), .Z(n35) );
  HS65_GS_OAI12X2 U47 ( .A(n38), .B(n39), .C(n40), .Z(n34) );
  HS65_GSS_XOR2X3 U48 ( .A(n41), .B(n39), .Z(SUM[17]) );
  HS65_GS_AOI12X2 U49 ( .A(n6), .B(n7), .C(n42), .Z(n39) );
  HS65_GS_NAND2AX4 U50 ( .A(n38), .B(n40), .Z(n41) );
  HS65_GS_NAND2X2 U51 ( .A(B[17]), .B(A[17]), .Z(n40) );
  HS65_GS_NOR2X2 U52 ( .A(B[17]), .B(A[17]), .Z(n38) );
  HS65_GSS_XOR2X3 U53 ( .A(n7), .B(n44), .Z(SUM[16]) );
  HS65_GS_NOR2X2 U54 ( .A(n42), .B(n43), .Z(n44) );
  HS65_GS_NOR2X2 U55 ( .A(B[16]), .B(A[16]), .Z(n43) );
  HS65_GS_AND2X4 U56 ( .A(B[16]), .B(A[16]), .Z(n42) );
  HS65_GS_NAND2AX4 U57 ( .A(n45), .B(n46), .Z(n47) );
  HS65_GS_NAND2X2 U58 ( .A(B[15]), .B(A[15]), .Z(n46) );
  HS65_GS_NOR2X2 U59 ( .A(B[15]), .B(A[15]), .Z(n45) );
endmodule


module findMyBest_DW02_mult_0 ( A, B, TC, PRODUCT );
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
         \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] , n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13;

  findMyBest_DW01_add_3 FS_1 ( .A({1'b0, \A1[28] , \A1[27] , \A1[26] , 
        \A1[25] , \A1[24] , \A1[23] , \A1[22] , \A1[21] , \A1[20] , \A1[19] , 
        \A1[18] , \A1[17] , \A1[16] , \A1[15] , \A1[14] , \SUMB[15][0] , 
        \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , 
        \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n3, n4, n2, 
        n19, n28, n29, n30, n27, n26, n21, n20, n25, n22, n24, n23, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, PRODUCT[28:13], 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13}) );
  HS65_GS_FA1X4 S5_14 ( .A0(\ab[15][14] ), .B0(\CARRYB[14][14] ), .CI(
        \ab[14][15] ), .CO(\CARRYB[15][14] ), .S0(\SUMB[15][14] ) );
  HS65_GS_FA1X4 S2_14_10 ( .A0(\ab[14][10] ), .B0(\CARRYB[13][10] ), .CI(
        \SUMB[13][11] ), .CO(\CARRYB[14][10] ), .S0(\SUMB[14][10] ) );
  HS65_GS_FA1X4 S2_14_11 ( .A0(\ab[14][11] ), .B0(\CARRYB[13][11] ), .CI(
        \SUMB[13][12] ), .CO(\CARRYB[14][11] ), .S0(\SUMB[14][11] ) );
  HS65_GS_FA1X4 S2_12_11 ( .A0(\ab[12][11] ), .B0(\CARRYB[11][11] ), .CI(
        \SUMB[11][12] ), .CO(\CARRYB[12][11] ), .S0(\SUMB[12][11] ) );
  HS65_GS_FA1X4 S2_14_12 ( .A0(\ab[14][12] ), .B0(\CARRYB[13][12] ), .CI(
        \SUMB[13][13] ), .CO(\CARRYB[14][12] ), .S0(\SUMB[14][12] ) );
  HS65_GS_FA1X4 S2_12_12 ( .A0(\ab[12][12] ), .B0(\CARRYB[11][12] ), .CI(
        \SUMB[11][13] ), .CO(\CARRYB[12][12] ), .S0(\SUMB[12][12] ) );
  HS65_GS_FA1X4 S2_10_13 ( .A0(\ab[10][13] ), .B0(\CARRYB[9][13] ), .CI(
        \SUMB[9][14] ), .CO(\CARRYB[10][13] ), .S0(\SUMB[10][13] ) );
  HS65_GS_FA1X4 S2_14_13 ( .A0(\ab[14][13] ), .B0(\CARRYB[13][13] ), .CI(
        \SUMB[13][14] ), .CO(\CARRYB[14][13] ), .S0(\SUMB[14][13] ) );
  HS65_GS_FA1X4 S2_12_13 ( .A0(\ab[12][13] ), .B0(\CARRYB[11][13] ), .CI(
        \SUMB[11][14] ), .CO(\CARRYB[12][13] ), .S0(\SUMB[12][13] ) );
  HS65_GS_FA1X4 S3_14_14 ( .A0(\ab[14][14] ), .B0(\CARRYB[13][14] ), .CI(
        \ab[13][15] ), .CO(\CARRYB[14][14] ), .S0(\SUMB[14][14] ) );
  HS65_GS_FA1X4 S3_12_14 ( .A0(\ab[12][14] ), .B0(\CARRYB[11][14] ), .CI(
        \ab[11][15] ), .CO(\CARRYB[12][14] ), .S0(\SUMB[12][14] ) );
  HS65_GS_FA1X4 S3_10_14 ( .A0(\ab[10][14] ), .B0(\CARRYB[9][14] ), .CI(
        \ab[9][15] ), .CO(\CARRYB[10][14] ), .S0(\SUMB[10][14] ) );
  HS65_GS_FA1X4 S3_8_14 ( .A0(\ab[8][14] ), .B0(\CARRYB[7][14] ), .CI(
        \ab[7][15] ), .CO(\CARRYB[8][14] ), .S0(\SUMB[8][14] ) );
  HS65_GS_FA1X4 S3_9_14 ( .A0(\ab[9][14] ), .B0(\CARRYB[8][14] ), .CI(
        \ab[8][15] ), .CO(\CARRYB[9][14] ), .S0(\SUMB[9][14] ) );
  HS65_GS_FA1X4 S3_13_14 ( .A0(\ab[13][14] ), .B0(\CARRYB[12][14] ), .CI(
        \ab[12][15] ), .CO(\CARRYB[13][14] ), .S0(\SUMB[13][14] ) );
  HS65_GS_FA1X4 S3_11_14 ( .A0(\ab[11][14] ), .B0(\CARRYB[10][14] ), .CI(
        \ab[10][15] ), .CO(\CARRYB[11][14] ), .S0(\SUMB[11][14] ) );
  HS65_GS_FA1X4 S2_14_8 ( .A0(\ab[14][8] ), .B0(\CARRYB[13][8] ), .CI(
        \SUMB[13][9] ), .CO(\CARRYB[14][8] ), .S0(\SUMB[14][8] ) );
  HS65_GS_FA1X4 S2_14_7 ( .A0(\ab[14][7] ), .B0(\CARRYB[13][7] ), .CI(
        \SUMB[13][8] ), .CO(\CARRYB[14][7] ), .S0(\SUMB[14][7] ) );
  HS65_GS_FA1X4 S2_14_6 ( .A0(\ab[14][6] ), .B0(\CARRYB[13][6] ), .CI(
        \SUMB[13][7] ), .CO(\CARRYB[14][6] ), .S0(\SUMB[14][6] ) );
  HS65_GS_FA1X4 S2_14_5 ( .A0(\ab[14][5] ), .B0(\CARRYB[13][5] ), .CI(
        \SUMB[13][6] ), .CO(\CARRYB[14][5] ), .S0(\SUMB[14][5] ) );
  HS65_GS_FA1X4 S2_12_8 ( .A0(\ab[12][8] ), .B0(\CARRYB[11][8] ), .CI(
        \SUMB[11][9] ), .CO(\CARRYB[12][8] ), .S0(\SUMB[12][8] ) );
  HS65_GS_FA1X4 S2_14_4 ( .A0(\ab[14][4] ), .B0(\CARRYB[13][4] ), .CI(
        \SUMB[13][5] ), .CO(\CARRYB[14][4] ), .S0(\SUMB[14][4] ) );
  HS65_GS_FA1X4 S2_12_7 ( .A0(\ab[12][7] ), .B0(\CARRYB[11][7] ), .CI(
        \SUMB[11][8] ), .CO(\CARRYB[12][7] ), .S0(\SUMB[12][7] ) );
  HS65_GS_FA1X4 S2_12_6 ( .A0(\ab[12][6] ), .B0(\CARRYB[11][6] ), .CI(
        \SUMB[11][7] ), .CO(\CARRYB[12][6] ), .S0(\SUMB[12][6] ) );
  HS65_GS_FA1X4 S2_10_8 ( .A0(\ab[10][8] ), .B0(\CARRYB[9][8] ), .CI(
        \SUMB[9][9] ), .CO(\CARRYB[10][8] ), .S0(\SUMB[10][8] ) );
  HS65_GS_FA1X4 S2_12_5 ( .A0(\ab[12][5] ), .B0(\CARRYB[11][5] ), .CI(
        \SUMB[11][6] ), .CO(\CARRYB[12][5] ), .S0(\SUMB[12][5] ) );
  HS65_GS_FA1X4 S2_10_6 ( .A0(\ab[10][6] ), .B0(\CARRYB[9][6] ), .CI(
        \SUMB[9][7] ), .CO(\CARRYB[10][6] ), .S0(\SUMB[10][6] ) );
  HS65_GS_FA1X4 S2_10_7 ( .A0(\ab[10][7] ), .B0(\CARRYB[9][7] ), .CI(
        \SUMB[9][8] ), .CO(\CARRYB[10][7] ), .S0(\SUMB[10][7] ) );
  HS65_GS_FA1X4 S2_8_8 ( .A0(\ab[8][8] ), .B0(\CARRYB[7][8] ), .CI(
        \SUMB[7][9] ), .CO(\CARRYB[8][8] ), .S0(\SUMB[8][8] ) );
  HS65_GS_FA1X4 S2_8_7 ( .A0(\ab[8][7] ), .B0(\CARRYB[7][7] ), .CI(
        \SUMB[7][8] ), .CO(\CARRYB[8][7] ), .S0(\SUMB[8][7] ) );
  HS65_GS_FA1X4 S2_14_9 ( .A0(\ab[14][9] ), .B0(\CARRYB[13][9] ), .CI(
        \SUMB[13][10] ), .CO(\CARRYB[14][9] ), .S0(\SUMB[14][9] ) );
  HS65_GS_FA1X4 S2_12_9 ( .A0(\ab[12][9] ), .B0(\CARRYB[11][9] ), .CI(
        \SUMB[11][10] ), .CO(\CARRYB[12][9] ), .S0(\SUMB[12][9] ) );
  HS65_GS_FA1X4 S2_10_9 ( .A0(\ab[10][9] ), .B0(\CARRYB[9][9] ), .CI(
        \SUMB[9][10] ), .CO(\CARRYB[10][9] ), .S0(\SUMB[10][9] ) );
  HS65_GS_FA1X4 S2_8_9 ( .A0(\ab[8][9] ), .B0(\CARRYB[7][9] ), .CI(
        \SUMB[7][10] ), .CO(\CARRYB[8][9] ), .S0(\SUMB[8][9] ) );
  HS65_GS_FA1X4 S2_6_9 ( .A0(\ab[6][9] ), .B0(\CARRYB[5][9] ), .CI(
        \SUMB[5][10] ), .CO(\CARRYB[6][9] ), .S0(\SUMB[6][9] ) );
  HS65_GS_FA1X4 S2_6_8 ( .A0(\ab[6][8] ), .B0(\CARRYB[5][8] ), .CI(
        \SUMB[5][9] ), .CO(\CARRYB[6][8] ), .S0(\SUMB[6][8] ) );
  HS65_GS_FA1X4 S2_12_10 ( .A0(\ab[12][10] ), .B0(\CARRYB[11][10] ), .CI(
        \SUMB[11][11] ), .CO(\CARRYB[12][10] ), .S0(\SUMB[12][10] ) );
  HS65_GS_FA1X4 S2_10_10 ( .A0(\ab[10][10] ), .B0(\CARRYB[9][10] ), .CI(
        \SUMB[9][11] ), .CO(\CARRYB[10][10] ), .S0(\SUMB[10][10] ) );
  HS65_GS_FA1X4 S2_8_10 ( .A0(\ab[8][10] ), .B0(\CARRYB[7][10] ), .CI(
        \SUMB[7][11] ), .CO(\CARRYB[8][10] ), .S0(\SUMB[8][10] ) );
  HS65_GS_FA1X4 S2_6_10 ( .A0(\ab[6][10] ), .B0(\CARRYB[5][10] ), .CI(
        \SUMB[5][11] ), .CO(\CARRYB[6][10] ), .S0(\SUMB[6][10] ) );
  HS65_GS_FA1X4 S2_5_10 ( .A0(\ab[5][10] ), .B0(\CARRYB[4][10] ), .CI(
        \SUMB[4][11] ), .CO(\CARRYB[5][10] ), .S0(\SUMB[5][10] ) );
  HS65_GS_FA1X4 S2_5_9 ( .A0(\ab[5][9] ), .B0(\CARRYB[4][9] ), .CI(
        \SUMB[4][10] ), .CO(\CARRYB[5][9] ), .S0(\SUMB[5][9] ) );
  HS65_GS_FA1X4 S2_5_8 ( .A0(\ab[5][8] ), .B0(\CARRYB[4][8] ), .CI(
        \SUMB[4][9] ), .CO(\CARRYB[5][8] ), .S0(\SUMB[5][8] ) );
  HS65_GS_FA1X4 S2_5_11 ( .A0(\ab[5][11] ), .B0(\CARRYB[4][11] ), .CI(
        \SUMB[4][12] ), .CO(\CARRYB[5][11] ), .S0(\SUMB[5][11] ) );
  HS65_GS_FA1X4 S2_10_11 ( .A0(\ab[10][11] ), .B0(\CARRYB[9][11] ), .CI(
        \SUMB[9][12] ), .CO(\CARRYB[10][11] ), .S0(\SUMB[10][11] ) );
  HS65_GS_FA1X4 S2_8_11 ( .A0(\ab[8][11] ), .B0(\CARRYB[7][11] ), .CI(
        \SUMB[7][12] ), .CO(\CARRYB[8][11] ), .S0(\SUMB[8][11] ) );
  HS65_GS_FA1X4 S2_6_11 ( .A0(\ab[6][11] ), .B0(\CARRYB[5][11] ), .CI(
        \SUMB[5][12] ), .CO(\CARRYB[6][11] ), .S0(\SUMB[6][11] ) );
  HS65_GS_FA1X4 S2_4_11 ( .A0(\ab[4][11] ), .B0(\CARRYB[3][11] ), .CI(
        \SUMB[3][12] ), .CO(\CARRYB[4][11] ), .S0(\SUMB[4][11] ) );
  HS65_GS_FA1X4 S2_4_10 ( .A0(\ab[4][10] ), .B0(\CARRYB[3][10] ), .CI(
        \SUMB[3][11] ), .CO(\CARRYB[4][10] ), .S0(\SUMB[4][10] ) );
  HS65_GS_FA1X4 S2_4_9 ( .A0(\ab[4][9] ), .B0(\CARRYB[3][9] ), .CI(
        \SUMB[3][10] ), .CO(\CARRYB[4][9] ), .S0(\SUMB[4][9] ) );
  HS65_GS_FA1X4 S2_10_12 ( .A0(\ab[10][12] ), .B0(\CARRYB[9][12] ), .CI(
        \SUMB[9][13] ), .CO(\CARRYB[10][12] ), .S0(\SUMB[10][12] ) );
  HS65_GS_FA1X4 S2_4_12 ( .A0(\ab[4][12] ), .B0(\CARRYB[3][12] ), .CI(
        \SUMB[3][13] ), .CO(\CARRYB[4][12] ), .S0(\SUMB[4][12] ) );
  HS65_GS_FA1X4 S2_8_12 ( .A0(\ab[8][12] ), .B0(\CARRYB[7][12] ), .CI(
        \SUMB[7][13] ), .CO(\CARRYB[8][12] ), .S0(\SUMB[8][12] ) );
  HS65_GS_FA1X4 S2_6_12 ( .A0(\ab[6][12] ), .B0(\CARRYB[5][12] ), .CI(
        \SUMB[5][13] ), .CO(\CARRYB[6][12] ), .S0(\SUMB[6][12] ) );
  HS65_GS_FA1X4 S2_5_12 ( .A0(\ab[5][12] ), .B0(\CARRYB[4][12] ), .CI(
        \SUMB[4][13] ), .CO(\CARRYB[5][12] ), .S0(\SUMB[5][12] ) );
  HS65_GS_FA1X4 S2_3_12 ( .A0(\ab[3][12] ), .B0(\CARRYB[2][12] ), .CI(
        \SUMB[2][13] ), .CO(\CARRYB[3][12] ), .S0(\SUMB[3][12] ) );
  HS65_GS_FA1X4 S2_3_11 ( .A0(\ab[3][11] ), .B0(\CARRYB[2][11] ), .CI(
        \SUMB[2][12] ), .CO(\CARRYB[3][11] ), .S0(\SUMB[3][11] ) );
  HS65_GS_FA1X4 S2_3_10 ( .A0(\ab[3][10] ), .B0(\CARRYB[2][10] ), .CI(
        \SUMB[2][11] ), .CO(\CARRYB[3][10] ), .S0(\SUMB[3][10] ) );
  HS65_GS_FA1X4 S2_3_9 ( .A0(\ab[3][9] ), .B0(\CARRYB[2][9] ), .CI(
        \SUMB[2][10] ), .CO(\CARRYB[3][9] ), .S0(\SUMB[3][9] ) );
  HS65_GS_FA1X4 S1_12_0 ( .A0(\ab[12][0] ), .B0(\CARRYB[11][0] ), .CI(
        \SUMB[11][1] ), .CO(\CARRYB[12][0] ), .S0(\A1[10] ) );
  HS65_GS_FA1X4 S1_13_0 ( .A0(\ab[13][0] ), .B0(\CARRYB[12][0] ), .CI(
        \SUMB[12][1] ), .CO(\CARRYB[13][0] ), .S0(\A1[11] ) );
  HS65_GS_FA1X4 S1_10_0 ( .A0(\ab[10][0] ), .B0(\CARRYB[9][0] ), .CI(
        \SUMB[9][1] ), .CO(\CARRYB[10][0] ), .S0(\A1[8] ) );
  HS65_GS_FA1X4 S1_11_0 ( .A0(\ab[11][0] ), .B0(\CARRYB[10][0] ), .CI(
        \SUMB[10][1] ), .CO(\CARRYB[11][0] ), .S0(\A1[9] ) );
  HS65_GS_FA1X4 S1_8_0 ( .A0(\ab[8][0] ), .B0(\CARRYB[7][0] ), .CI(
        \SUMB[7][1] ), .CO(\CARRYB[8][0] ), .S0(\A1[6] ) );
  HS65_GS_FA1X4 S1_9_0 ( .A0(\ab[9][0] ), .B0(\CARRYB[8][0] ), .CI(
        \SUMB[8][1] ), .CO(\CARRYB[9][0] ), .S0(\A1[7] ) );
  HS65_GS_FA1X4 S1_6_0 ( .A0(\ab[6][0] ), .B0(\CARRYB[5][0] ), .CI(
        \SUMB[5][1] ), .CO(\CARRYB[6][0] ), .S0(\A1[4] ) );
  HS65_GS_FA1X4 S1_7_0 ( .A0(\ab[7][0] ), .B0(\CARRYB[6][0] ), .CI(
        \SUMB[6][1] ), .CO(\CARRYB[7][0] ), .S0(\A1[5] ) );
  HS65_GS_FA1X4 S2_8_1 ( .A0(\ab[8][1] ), .B0(\CARRYB[7][1] ), .CI(
        \SUMB[7][2] ), .CO(\CARRYB[8][1] ), .S0(\SUMB[8][1] ) );
  HS65_GS_FA1X4 S2_8_6 ( .A0(\ab[8][6] ), .B0(\CARRYB[7][6] ), .CI(
        \SUMB[7][7] ), .CO(\CARRYB[8][6] ), .S0(\SUMB[8][6] ) );
  HS65_GS_FA1X4 S2_8_5 ( .A0(\ab[8][5] ), .B0(\CARRYB[7][5] ), .CI(
        \SUMB[7][6] ), .CO(\CARRYB[8][5] ), .S0(\SUMB[8][5] ) );
  HS65_GS_FA1X4 S2_8_4 ( .A0(\ab[8][4] ), .B0(\CARRYB[7][4] ), .CI(
        \SUMB[7][5] ), .CO(\CARRYB[8][4] ), .S0(\SUMB[8][4] ) );
  HS65_GS_FA1X4 S2_8_3 ( .A0(\ab[8][3] ), .B0(\CARRYB[7][3] ), .CI(
        \SUMB[7][4] ), .CO(\CARRYB[8][3] ), .S0(\SUMB[8][3] ) );
  HS65_GS_FA1X4 S2_8_2 ( .A0(\ab[8][2] ), .B0(\CARRYB[7][2] ), .CI(
        \SUMB[7][3] ), .CO(\CARRYB[8][2] ), .S0(\SUMB[8][2] ) );
  HS65_GS_FA1X4 S2_12_1 ( .A0(\ab[12][1] ), .B0(\CARRYB[11][1] ), .CI(
        \SUMB[11][2] ), .CO(\CARRYB[12][1] ), .S0(\SUMB[12][1] ) );
  HS65_GS_FA1X4 S2_5_1 ( .A0(\ab[5][1] ), .B0(\CARRYB[4][1] ), .CI(
        \SUMB[4][2] ), .CO(\CARRYB[5][1] ), .S0(\SUMB[5][1] ) );
  HS65_GS_FA1X4 S1_4_0 ( .A0(\ab[4][0] ), .B0(\CARRYB[3][0] ), .CI(
        \SUMB[3][1] ), .CO(\CARRYB[4][0] ), .S0(\A1[2] ) );
  HS65_GS_FA1X4 S1_5_0 ( .A0(\ab[5][0] ), .B0(\CARRYB[4][0] ), .CI(
        \SUMB[4][1] ), .CO(\CARRYB[5][0] ), .S0(\A1[3] ) );
  HS65_GS_FA1X4 S2_4_1 ( .A0(\ab[4][1] ), .B0(\CARRYB[3][1] ), .CI(
        \SUMB[3][2] ), .CO(\CARRYB[4][1] ), .S0(\SUMB[4][1] ) );
  HS65_GS_FA1X4 S2_3_1 ( .A0(\ab[3][1] ), .B0(\CARRYB[2][1] ), .CI(
        \SUMB[2][2] ), .CO(\CARRYB[3][1] ), .S0(\SUMB[3][1] ) );
  HS65_GS_FA1X4 S1_2_0 ( .A0(\ab[2][0] ), .B0(\CARRYB[1][0] ), .CI(
        \SUMB[1][1] ), .CO(\CARRYB[2][0] ), .S0(\A1[0] ) );
  HS65_GS_FA1X4 S1_3_0 ( .A0(\ab[3][0] ), .B0(\CARRYB[2][0] ), .CI(
        \SUMB[2][1] ), .CO(\CARRYB[3][0] ), .S0(\A1[1] ) );
  HS65_GS_FA1X4 S2_12_4 ( .A0(\ab[12][4] ), .B0(\CARRYB[11][4] ), .CI(
        \SUMB[11][5] ), .CO(\CARRYB[12][4] ), .S0(\SUMB[12][4] ) );
  HS65_GS_FA1X4 S2_12_3 ( .A0(\ab[12][3] ), .B0(\CARRYB[11][3] ), .CI(
        \SUMB[11][4] ), .CO(\CARRYB[12][3] ), .S0(\SUMB[12][3] ) );
  HS65_GS_FA1X4 S2_12_2 ( .A0(\ab[12][2] ), .B0(\CARRYB[11][2] ), .CI(
        \SUMB[11][3] ), .CO(\CARRYB[12][2] ), .S0(\SUMB[12][2] ) );
  HS65_GS_FA1X4 S2_5_7 ( .A0(\ab[5][7] ), .B0(\CARRYB[4][7] ), .CI(
        \SUMB[4][8] ), .CO(\CARRYB[5][7] ), .S0(\SUMB[5][7] ) );
  HS65_GS_FA1X4 S2_5_6 ( .A0(\ab[5][6] ), .B0(\CARRYB[4][6] ), .CI(
        \SUMB[4][7] ), .CO(\CARRYB[5][6] ), .S0(\SUMB[5][6] ) );
  HS65_GS_FA1X4 S2_5_5 ( .A0(\ab[5][5] ), .B0(\CARRYB[4][5] ), .CI(
        \SUMB[4][6] ), .CO(\CARRYB[5][5] ), .S0(\SUMB[5][5] ) );
  HS65_GS_FA1X4 S2_5_4 ( .A0(\ab[5][4] ), .B0(\CARRYB[4][4] ), .CI(
        \SUMB[4][5] ), .CO(\CARRYB[5][4] ), .S0(\SUMB[5][4] ) );
  HS65_GS_FA1X4 S2_5_3 ( .A0(\ab[5][3] ), .B0(\CARRYB[4][3] ), .CI(
        \SUMB[4][4] ), .CO(\CARRYB[5][3] ), .S0(\SUMB[5][3] ) );
  HS65_GS_FA1X4 S2_5_2 ( .A0(\ab[5][2] ), .B0(\CARRYB[4][2] ), .CI(
        \SUMB[4][3] ), .CO(\CARRYB[5][2] ), .S0(\SUMB[5][2] ) );
  HS65_GS_FA1X4 S2_4_8 ( .A0(\ab[4][8] ), .B0(\CARRYB[3][8] ), .CI(
        \SUMB[3][9] ), .CO(\CARRYB[4][8] ), .S0(\SUMB[4][8] ) );
  HS65_GS_FA1X4 S2_4_7 ( .A0(\ab[4][7] ), .B0(\CARRYB[3][7] ), .CI(
        \SUMB[3][8] ), .CO(\CARRYB[4][7] ), .S0(\SUMB[4][7] ) );
  HS65_GS_FA1X4 S2_4_6 ( .A0(\ab[4][6] ), .B0(\CARRYB[3][6] ), .CI(
        \SUMB[3][7] ), .CO(\CARRYB[4][6] ), .S0(\SUMB[4][6] ) );
  HS65_GS_FA1X4 S2_4_5 ( .A0(\ab[4][5] ), .B0(\CARRYB[3][5] ), .CI(
        \SUMB[3][6] ), .CO(\CARRYB[4][5] ), .S0(\SUMB[4][5] ) );
  HS65_GS_FA1X4 S2_4_4 ( .A0(\ab[4][4] ), .B0(\CARRYB[3][4] ), .CI(
        \SUMB[3][5] ), .CO(\CARRYB[4][4] ), .S0(\SUMB[4][4] ) );
  HS65_GS_FA1X4 S2_4_3 ( .A0(\ab[4][3] ), .B0(\CARRYB[3][3] ), .CI(
        \SUMB[3][4] ), .CO(\CARRYB[4][3] ), .S0(\SUMB[4][3] ) );
  HS65_GS_FA1X4 S2_4_2 ( .A0(\ab[4][2] ), .B0(\CARRYB[3][2] ), .CI(
        \SUMB[3][3] ), .CO(\CARRYB[4][2] ), .S0(\SUMB[4][2] ) );
  HS65_GS_FA1X4 S2_3_8 ( .A0(\ab[3][8] ), .B0(\CARRYB[2][8] ), .CI(
        \SUMB[2][9] ), .CO(\CARRYB[3][8] ), .S0(\SUMB[3][8] ) );
  HS65_GS_FA1X4 S2_3_7 ( .A0(\ab[3][7] ), .B0(\CARRYB[2][7] ), .CI(
        \SUMB[2][8] ), .CO(\CARRYB[3][7] ), .S0(\SUMB[3][7] ) );
  HS65_GS_FA1X4 S2_3_6 ( .A0(\ab[3][6] ), .B0(\CARRYB[2][6] ), .CI(
        \SUMB[2][7] ), .CO(\CARRYB[3][6] ), .S0(\SUMB[3][6] ) );
  HS65_GS_FA1X4 S2_3_5 ( .A0(\ab[3][5] ), .B0(\CARRYB[2][5] ), .CI(
        \SUMB[2][6] ), .CO(\CARRYB[3][5] ), .S0(\SUMB[3][5] ) );
  HS65_GS_FA1X4 S2_3_4 ( .A0(\ab[3][4] ), .B0(\CARRYB[2][4] ), .CI(
        \SUMB[2][5] ), .CO(\CARRYB[3][4] ), .S0(\SUMB[3][4] ) );
  HS65_GS_FA1X4 S2_3_3 ( .A0(\ab[3][3] ), .B0(\CARRYB[2][3] ), .CI(
        \SUMB[2][4] ), .CO(\CARRYB[3][3] ), .S0(\SUMB[3][3] ) );
  HS65_GS_FA1X4 S2_3_2 ( .A0(\ab[3][2] ), .B0(\CARRYB[2][2] ), .CI(
        \SUMB[2][3] ), .CO(\CARRYB[3][2] ), .S0(\SUMB[3][2] ) );
  HS65_GS_FA1X4 S1_14_0 ( .A0(\ab[14][0] ), .B0(\CARRYB[13][0] ), .CI(
        \SUMB[13][1] ), .CO(\CARRYB[14][0] ), .S0(\A1[12] ) );
  HS65_GS_FA1X4 S2_14_1 ( .A0(\ab[14][1] ), .B0(\CARRYB[13][1] ), .CI(
        \SUMB[13][2] ), .CO(\CARRYB[14][1] ), .S0(\SUMB[14][1] ) );
  HS65_GS_FA1X4 S2_14_2 ( .A0(\ab[14][2] ), .B0(\CARRYB[13][2] ), .CI(
        \SUMB[13][3] ), .CO(\CARRYB[14][2] ), .S0(\SUMB[14][2] ) );
  HS65_GS_FA1X4 S2_14_3 ( .A0(\ab[14][3] ), .B0(\CARRYB[13][3] ), .CI(
        \SUMB[13][4] ), .CO(\CARRYB[14][3] ), .S0(\SUMB[14][3] ) );
  HS65_GS_FA1X4 S2_6_1 ( .A0(\ab[6][1] ), .B0(\CARRYB[5][1] ), .CI(
        \SUMB[5][2] ), .CO(\CARRYB[6][1] ), .S0(\SUMB[6][1] ) );
  HS65_GS_FA1X4 S2_2_1 ( .A0(\ab[2][1] ), .B0(n18), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S0(\SUMB[2][1] ) );
  HS65_GS_FA1X4 S2_6_7 ( .A0(\ab[6][7] ), .B0(\CARRYB[5][7] ), .CI(
        \SUMB[5][8] ), .CO(\CARRYB[6][7] ), .S0(\SUMB[6][7] ) );
  HS65_GS_FA1X4 S2_6_6 ( .A0(\ab[6][6] ), .B0(\CARRYB[5][6] ), .CI(
        \SUMB[5][7] ), .CO(\CARRYB[6][6] ), .S0(\SUMB[6][6] ) );
  HS65_GS_FA1X4 S2_6_5 ( .A0(\ab[6][5] ), .B0(\CARRYB[5][5] ), .CI(
        \SUMB[5][6] ), .CO(\CARRYB[6][5] ), .S0(\SUMB[6][5] ) );
  HS65_GS_FA1X4 S2_6_4 ( .A0(\ab[6][4] ), .B0(\CARRYB[5][4] ), .CI(
        \SUMB[5][5] ), .CO(\CARRYB[6][4] ), .S0(\SUMB[6][4] ) );
  HS65_GS_FA1X4 S2_6_3 ( .A0(\ab[6][3] ), .B0(\CARRYB[5][3] ), .CI(
        \SUMB[5][4] ), .CO(\CARRYB[6][3] ), .S0(\SUMB[6][3] ) );
  HS65_GS_FA1X4 S2_6_2 ( .A0(\ab[6][2] ), .B0(\CARRYB[5][2] ), .CI(
        \SUMB[5][3] ), .CO(\CARRYB[6][2] ), .S0(\SUMB[6][2] ) );
  HS65_GS_FA1X4 S2_10_1 ( .A0(\ab[10][1] ), .B0(\CARRYB[9][1] ), .CI(
        \SUMB[9][2] ), .CO(\CARRYB[10][1] ), .S0(\SUMB[10][1] ) );
  HS65_GS_FA1X4 S2_10_5 ( .A0(\ab[10][5] ), .B0(\CARRYB[9][5] ), .CI(
        \SUMB[9][6] ), .CO(\CARRYB[10][5] ), .S0(\SUMB[10][5] ) );
  HS65_GS_FA1X4 S2_10_4 ( .A0(\ab[10][4] ), .B0(\CARRYB[9][4] ), .CI(
        \SUMB[9][5] ), .CO(\CARRYB[10][4] ), .S0(\SUMB[10][4] ) );
  HS65_GS_FA1X4 S2_10_3 ( .A0(\ab[10][3] ), .B0(\CARRYB[9][3] ), .CI(
        \SUMB[9][4] ), .CO(\CARRYB[10][3] ), .S0(\SUMB[10][3] ) );
  HS65_GS_FA1X4 S2_10_2 ( .A0(\ab[10][2] ), .B0(\CARRYB[9][2] ), .CI(
        \SUMB[9][3] ), .CO(\CARRYB[10][2] ), .S0(\SUMB[10][2] ) );
  HS65_GS_FA1X4 S2_2_4 ( .A0(\ab[2][4] ), .B0(n17), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S0(\SUMB[2][4] ) );
  HS65_GS_FA1X4 S2_3_13 ( .A0(\ab[3][13] ), .B0(\CARRYB[2][13] ), .CI(
        \SUMB[2][14] ), .CO(\CARRYB[3][13] ), .S0(\SUMB[3][13] ) );
  HS65_GS_FA1X4 S2_6_13 ( .A0(\ab[6][13] ), .B0(\CARRYB[5][13] ), .CI(
        \SUMB[5][14] ), .CO(\CARRYB[6][13] ), .S0(\SUMB[6][13] ) );
  HS65_GS_FA1X4 S2_5_13 ( .A0(\ab[5][13] ), .B0(\CARRYB[4][13] ), .CI(
        \SUMB[4][14] ), .CO(\CARRYB[5][13] ), .S0(\SUMB[5][13] ) );
  HS65_GS_FA1X4 S2_8_13 ( .A0(\ab[8][13] ), .B0(\CARRYB[7][13] ), .CI(
        \SUMB[7][14] ), .CO(\CARRYB[8][13] ), .S0(\SUMB[8][13] ) );
  HS65_GS_FA1X4 S2_4_13 ( .A0(\ab[4][13] ), .B0(\CARRYB[3][13] ), .CI(
        \SUMB[3][14] ), .CO(\CARRYB[4][13] ), .S0(\SUMB[4][13] ) );
  HS65_GS_FA1X4 S2_2_13 ( .A0(\ab[2][13] ), .B0(n16), .CI(\SUMB[1][14] ), .CO(
        \CARRYB[2][13] ), .S0(\SUMB[2][13] ) );
  HS65_GS_FA1X4 S2_2_12 ( .A0(\ab[2][12] ), .B0(n15), .CI(\SUMB[1][13] ), .CO(
        \CARRYB[2][12] ), .S0(\SUMB[2][12] ) );
  HS65_GS_FA1X4 S3_2_14 ( .A0(\ab[2][14] ), .B0(n14), .CI(\ab[1][15] ), .CO(
        \CARRYB[2][14] ), .S0(\SUMB[2][14] ) );
  HS65_GS_FA1X4 S3_6_14 ( .A0(\ab[6][14] ), .B0(\CARRYB[5][14] ), .CI(
        \ab[5][15] ), .CO(\CARRYB[6][14] ), .S0(\SUMB[6][14] ) );
  HS65_GS_FA1X4 S3_5_14 ( .A0(\ab[5][14] ), .B0(\CARRYB[4][14] ), .CI(
        \ab[4][15] ), .CO(\CARRYB[5][14] ), .S0(\SUMB[5][14] ) );
  HS65_GS_FA1X4 S3_4_14 ( .A0(\ab[4][14] ), .B0(\CARRYB[3][14] ), .CI(
        \ab[3][15] ), .CO(\CARRYB[4][14] ), .S0(\SUMB[4][14] ) );
  HS65_GS_FA1X4 S3_7_14 ( .A0(\ab[7][14] ), .B0(\CARRYB[6][14] ), .CI(
        \ab[6][15] ), .CO(\CARRYB[7][14] ), .S0(\SUMB[7][14] ) );
  HS65_GS_FA1X4 S3_3_14 ( .A0(\ab[3][14] ), .B0(\CARRYB[2][14] ), .CI(
        \ab[2][15] ), .CO(\CARRYB[3][14] ), .S0(\SUMB[3][14] ) );
  HS65_GS_FA1X4 S2_2_11 ( .A0(\ab[2][11] ), .B0(n13), .CI(\SUMB[1][12] ), .CO(
        \CARRYB[2][11] ), .S0(\SUMB[2][11] ) );
  HS65_GS_FA1X4 S2_2_10 ( .A0(\ab[2][10] ), .B0(n12), .CI(\SUMB[1][11] ), .CO(
        \CARRYB[2][10] ), .S0(\SUMB[2][10] ) );
  HS65_GS_FA1X4 S2_2_9 ( .A0(\ab[2][9] ), .B0(n11), .CI(\SUMB[1][10] ), .CO(
        \CARRYB[2][9] ), .S0(\SUMB[2][9] ) );
  HS65_GS_FA1X4 S2_2_8 ( .A0(\ab[2][8] ), .B0(n10), .CI(\SUMB[1][9] ), .CO(
        \CARRYB[2][8] ), .S0(\SUMB[2][8] ) );
  HS65_GS_FA1X4 S2_2_7 ( .A0(\ab[2][7] ), .B0(n9), .CI(\SUMB[1][8] ), .CO(
        \CARRYB[2][7] ), .S0(\SUMB[2][7] ) );
  HS65_GS_FA1X4 S2_2_6 ( .A0(\ab[2][6] ), .B0(n8), .CI(\SUMB[1][7] ), .CO(
        \CARRYB[2][6] ), .S0(\SUMB[2][6] ) );
  HS65_GS_FA1X4 S2_2_5 ( .A0(\ab[2][5] ), .B0(n7), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S0(\SUMB[2][5] ) );
  HS65_GS_FA1X4 S2_2_3 ( .A0(\ab[2][3] ), .B0(n6), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S0(\SUMB[2][3] ) );
  HS65_GS_FA1X4 S2_2_2 ( .A0(\ab[2][2] ), .B0(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S0(\SUMB[2][2] ) );
  HS65_GS_FA1X4 S2_13_10 ( .A0(\ab[13][10] ), .B0(\CARRYB[12][10] ), .CI(
        \SUMB[12][11] ), .CO(\CARRYB[13][10] ), .S0(\SUMB[13][10] ) );
  HS65_GS_FA1X4 S2_13_11 ( .A0(\ab[13][11] ), .B0(\CARRYB[12][11] ), .CI(
        \SUMB[12][12] ), .CO(\CARRYB[13][11] ), .S0(\SUMB[13][11] ) );
  HS65_GS_FA1X4 S2_11_12 ( .A0(\ab[11][12] ), .B0(\CARRYB[10][12] ), .CI(
        \SUMB[10][13] ), .CO(\CARRYB[11][12] ), .S0(\SUMB[11][12] ) );
  HS65_GS_FA1X4 S2_13_12 ( .A0(\ab[13][12] ), .B0(\CARRYB[12][12] ), .CI(
        \SUMB[12][13] ), .CO(\CARRYB[13][12] ), .S0(\SUMB[13][12] ) );
  HS65_GS_FA1X4 S2_13_13 ( .A0(\ab[13][13] ), .B0(\CARRYB[12][13] ), .CI(
        \SUMB[12][14] ), .CO(\CARRYB[13][13] ), .S0(\SUMB[13][13] ) );
  HS65_GS_FA1X4 S2_11_13 ( .A0(\ab[11][13] ), .B0(\CARRYB[10][13] ), .CI(
        \SUMB[10][14] ), .CO(\CARRYB[11][13] ), .S0(\SUMB[11][13] ) );
  HS65_GS_FA1X4 S4_9 ( .A0(\ab[15][9] ), .B0(\CARRYB[14][9] ), .CI(
        \SUMB[14][10] ), .CO(\CARRYB[15][9] ), .S0(\SUMB[15][9] ) );
  HS65_GS_FA1X4 S4_10 ( .A0(\ab[15][10] ), .B0(\CARRYB[14][10] ), .CI(
        \SUMB[14][11] ), .CO(\CARRYB[15][10] ), .S0(\SUMB[15][10] ) );
  HS65_GS_FA1X4 S4_11 ( .A0(\ab[15][11] ), .B0(\CARRYB[14][11] ), .CI(
        \SUMB[14][12] ), .CO(\CARRYB[15][11] ), .S0(\SUMB[15][11] ) );
  HS65_GS_FA1X4 S4_12 ( .A0(\ab[15][12] ), .B0(\CARRYB[14][12] ), .CI(
        \SUMB[14][13] ), .CO(\CARRYB[15][12] ), .S0(\SUMB[15][12] ) );
  HS65_GS_FA1X4 S4_13 ( .A0(\ab[15][13] ), .B0(\CARRYB[14][13] ), .CI(
        \SUMB[14][14] ), .CO(\CARRYB[15][13] ), .S0(\SUMB[15][13] ) );
  HS65_GS_FA1X4 S2_13_8 ( .A0(\ab[13][8] ), .B0(\CARRYB[12][8] ), .CI(
        \SUMB[12][9] ), .CO(\CARRYB[13][8] ), .S0(\SUMB[13][8] ) );
  HS65_GS_FA1X4 S2_13_7 ( .A0(\ab[13][7] ), .B0(\CARRYB[12][7] ), .CI(
        \SUMB[12][8] ), .CO(\CARRYB[13][7] ), .S0(\SUMB[13][7] ) );
  HS65_GS_FA1X4 S2_13_6 ( .A0(\ab[13][6] ), .B0(\CARRYB[12][6] ), .CI(
        \SUMB[12][7] ), .CO(\CARRYB[13][6] ), .S0(\SUMB[13][6] ) );
  HS65_GS_FA1X4 S2_13_5 ( .A0(\ab[13][5] ), .B0(\CARRYB[12][5] ), .CI(
        \SUMB[12][6] ), .CO(\CARRYB[13][5] ), .S0(\SUMB[13][5] ) );
  HS65_GS_FA1X4 S2_11_8 ( .A0(\ab[11][8] ), .B0(\CARRYB[10][8] ), .CI(
        \SUMB[10][9] ), .CO(\CARRYB[11][8] ), .S0(\SUMB[11][8] ) );
  HS65_GS_FA1X4 S2_11_7 ( .A0(\ab[11][7] ), .B0(\CARRYB[10][7] ), .CI(
        \SUMB[10][8] ), .CO(\CARRYB[11][7] ), .S0(\SUMB[11][7] ) );
  HS65_GS_FA1X4 S2_13_4 ( .A0(\ab[13][4] ), .B0(\CARRYB[12][4] ), .CI(
        \SUMB[12][5] ), .CO(\CARRYB[13][4] ), .S0(\SUMB[13][4] ) );
  HS65_GS_FA1X4 S2_11_5 ( .A0(\ab[11][5] ), .B0(\CARRYB[10][5] ), .CI(
        \SUMB[10][6] ), .CO(\CARRYB[11][5] ), .S0(\SUMB[11][5] ) );
  HS65_GS_FA1X4 S2_11_6 ( .A0(\ab[11][6] ), .B0(\CARRYB[10][6] ), .CI(
        \SUMB[10][7] ), .CO(\CARRYB[11][6] ), .S0(\SUMB[11][6] ) );
  HS65_GS_FA1X4 S2_9_7 ( .A0(\ab[9][7] ), .B0(\CARRYB[8][7] ), .CI(
        \SUMB[8][8] ), .CO(\CARRYB[9][7] ), .S0(\SUMB[9][7] ) );
  HS65_GS_FA1X4 S2_9_6 ( .A0(\ab[9][6] ), .B0(\CARRYB[8][6] ), .CI(
        \SUMB[8][7] ), .CO(\CARRYB[9][6] ), .S0(\SUMB[9][6] ) );
  HS65_GS_FA1X4 S2_9_8 ( .A0(\ab[9][8] ), .B0(\CARRYB[8][8] ), .CI(
        \SUMB[8][9] ), .CO(\CARRYB[9][8] ), .S0(\SUMB[9][8] ) );
  HS65_GS_FA1X4 S2_13_9 ( .A0(\ab[13][9] ), .B0(\CARRYB[12][9] ), .CI(
        \SUMB[12][10] ), .CO(\CARRYB[13][9] ), .S0(\SUMB[13][9] ) );
  HS65_GS_FA1X4 S2_11_9 ( .A0(\ab[11][9] ), .B0(\CARRYB[10][9] ), .CI(
        \SUMB[10][10] ), .CO(\CARRYB[11][9] ), .S0(\SUMB[11][9] ) );
  HS65_GS_FA1X4 S2_9_9 ( .A0(\ab[9][9] ), .B0(\CARRYB[8][9] ), .CI(
        \SUMB[8][10] ), .CO(\CARRYB[9][9] ), .S0(\SUMB[9][9] ) );
  HS65_GS_FA1X4 S2_7_9 ( .A0(\ab[7][9] ), .B0(\CARRYB[6][9] ), .CI(
        \SUMB[6][10] ), .CO(\CARRYB[7][9] ), .S0(\SUMB[7][9] ) );
  HS65_GS_FA1X4 S2_7_8 ( .A0(\ab[7][8] ), .B0(\CARRYB[6][8] ), .CI(
        \SUMB[6][9] ), .CO(\CARRYB[7][8] ), .S0(\SUMB[7][8] ) );
  HS65_GS_FA1X4 S2_7_7 ( .A0(\ab[7][7] ), .B0(\CARRYB[6][7] ), .CI(
        \SUMB[6][8] ), .CO(\CARRYB[7][7] ), .S0(\SUMB[7][7] ) );
  HS65_GS_FA1X4 S2_11_10 ( .A0(\ab[11][10] ), .B0(\CARRYB[10][10] ), .CI(
        \SUMB[10][11] ), .CO(\CARRYB[11][10] ), .S0(\SUMB[11][10] ) );
  HS65_GS_FA1X4 S2_9_10 ( .A0(\ab[9][10] ), .B0(\CARRYB[8][10] ), .CI(
        \SUMB[8][11] ), .CO(\CARRYB[9][10] ), .S0(\SUMB[9][10] ) );
  HS65_GS_FA1X4 S2_7_10 ( .A0(\ab[7][10] ), .B0(\CARRYB[6][10] ), .CI(
        \SUMB[6][11] ), .CO(\CARRYB[7][10] ), .S0(\SUMB[7][10] ) );
  HS65_GS_FA1X4 S2_11_11 ( .A0(\ab[11][11] ), .B0(\CARRYB[10][11] ), .CI(
        \SUMB[10][12] ), .CO(\CARRYB[11][11] ), .S0(\SUMB[11][11] ) );
  HS65_GS_FA1X4 S2_9_11 ( .A0(\ab[9][11] ), .B0(\CARRYB[8][11] ), .CI(
        \SUMB[8][12] ), .CO(\CARRYB[9][11] ), .S0(\SUMB[9][11] ) );
  HS65_GS_FA1X4 S2_7_11 ( .A0(\ab[7][11] ), .B0(\CARRYB[6][11] ), .CI(
        \SUMB[6][12] ), .CO(\CARRYB[7][11] ), .S0(\SUMB[7][11] ) );
  HS65_GS_FA1X4 S2_7_12 ( .A0(\ab[7][12] ), .B0(\CARRYB[6][12] ), .CI(
        \SUMB[6][13] ), .CO(\CARRYB[7][12] ), .S0(\SUMB[7][12] ) );
  HS65_GS_FA1X4 S2_9_12 ( .A0(\ab[9][12] ), .B0(\CARRYB[8][12] ), .CI(
        \SUMB[8][13] ), .CO(\CARRYB[9][12] ), .S0(\SUMB[9][12] ) );
  HS65_GS_FA1X4 S2_11_1 ( .A0(\ab[11][1] ), .B0(\CARRYB[10][1] ), .CI(
        \SUMB[10][2] ), .CO(\CARRYB[11][1] ), .S0(\SUMB[11][1] ) );
  HS65_GS_FA1X4 S2_9_1 ( .A0(\ab[9][1] ), .B0(\CARRYB[8][1] ), .CI(
        \SUMB[8][2] ), .CO(\CARRYB[9][1] ), .S0(\SUMB[9][1] ) );
  HS65_GS_FA1X4 S2_13_1 ( .A0(\ab[13][1] ), .B0(\CARRYB[12][1] ), .CI(
        \SUMB[12][2] ), .CO(\CARRYB[13][1] ), .S0(\SUMB[13][1] ) );
  HS65_GS_FA1X4 S2_7_1 ( .A0(\ab[7][1] ), .B0(\CARRYB[6][1] ), .CI(
        \SUMB[6][2] ), .CO(\CARRYB[7][1] ), .S0(\SUMB[7][1] ) );
  HS65_GS_FA1X4 S2_13_3 ( .A0(\ab[13][3] ), .B0(\CARRYB[12][3] ), .CI(
        \SUMB[12][4] ), .CO(\CARRYB[13][3] ), .S0(\SUMB[13][3] ) );
  HS65_GS_FA1X4 S2_13_2 ( .A0(\ab[13][2] ), .B0(\CARRYB[12][2] ), .CI(
        \SUMB[12][3] ), .CO(\CARRYB[13][2] ), .S0(\SUMB[13][2] ) );
  HS65_GS_FA1X4 S2_11_4 ( .A0(\ab[11][4] ), .B0(\CARRYB[10][4] ), .CI(
        \SUMB[10][5] ), .CO(\CARRYB[11][4] ), .S0(\SUMB[11][4] ) );
  HS65_GS_FA1X4 S2_11_3 ( .A0(\ab[11][3] ), .B0(\CARRYB[10][3] ), .CI(
        \SUMB[10][4] ), .CO(\CARRYB[11][3] ), .S0(\SUMB[11][3] ) );
  HS65_GS_FA1X4 S2_11_2 ( .A0(\ab[11][2] ), .B0(\CARRYB[10][2] ), .CI(
        \SUMB[10][3] ), .CO(\CARRYB[11][2] ), .S0(\SUMB[11][2] ) );
  HS65_GS_FA1X4 S2_9_5 ( .A0(\ab[9][5] ), .B0(\CARRYB[8][5] ), .CI(
        \SUMB[8][6] ), .CO(\CARRYB[9][5] ), .S0(\SUMB[9][5] ) );
  HS65_GS_FA1X4 S2_9_4 ( .A0(\ab[9][4] ), .B0(\CARRYB[8][4] ), .CI(
        \SUMB[8][5] ), .CO(\CARRYB[9][4] ), .S0(\SUMB[9][4] ) );
  HS65_GS_FA1X4 S2_9_3 ( .A0(\ab[9][3] ), .B0(\CARRYB[8][3] ), .CI(
        \SUMB[8][4] ), .CO(\CARRYB[9][3] ), .S0(\SUMB[9][3] ) );
  HS65_GS_FA1X4 S2_9_2 ( .A0(\ab[9][2] ), .B0(\CARRYB[8][2] ), .CI(
        \SUMB[8][3] ), .CO(\CARRYB[9][2] ), .S0(\SUMB[9][2] ) );
  HS65_GS_FA1X4 S2_7_6 ( .A0(\ab[7][6] ), .B0(\CARRYB[6][6] ), .CI(
        \SUMB[6][7] ), .CO(\CARRYB[7][6] ), .S0(\SUMB[7][6] ) );
  HS65_GS_FA1X4 S2_7_5 ( .A0(\ab[7][5] ), .B0(\CARRYB[6][5] ), .CI(
        \SUMB[6][6] ), .CO(\CARRYB[7][5] ), .S0(\SUMB[7][5] ) );
  HS65_GS_FA1X4 S2_7_4 ( .A0(\ab[7][4] ), .B0(\CARRYB[6][4] ), .CI(
        \SUMB[6][5] ), .CO(\CARRYB[7][4] ), .S0(\SUMB[7][4] ) );
  HS65_GS_FA1X4 S2_7_3 ( .A0(\ab[7][3] ), .B0(\CARRYB[6][3] ), .CI(
        \SUMB[6][4] ), .CO(\CARRYB[7][3] ), .S0(\SUMB[7][3] ) );
  HS65_GS_FA1X4 S2_7_2 ( .A0(\ab[7][2] ), .B0(\CARRYB[6][2] ), .CI(
        \SUMB[6][3] ), .CO(\CARRYB[7][2] ), .S0(\SUMB[7][2] ) );
  HS65_GS_FA1X4 S2_9_13 ( .A0(\ab[9][13] ), .B0(\CARRYB[8][13] ), .CI(
        \SUMB[8][14] ), .CO(\CARRYB[9][13] ), .S0(\SUMB[9][13] ) );
  HS65_GS_FA1X4 S2_7_13 ( .A0(\ab[7][13] ), .B0(\CARRYB[6][13] ), .CI(
        \SUMB[6][14] ), .CO(\CARRYB[7][13] ), .S0(\SUMB[7][13] ) );
  HS65_GS_FA1X4 S4_0 ( .A0(\ab[15][0] ), .B0(\CARRYB[14][0] ), .CI(
        \SUMB[14][1] ), .CO(\CARRYB[15][0] ), .S0(\SUMB[15][0] ) );
  HS65_GS_FA1X4 S4_1 ( .A0(\ab[15][1] ), .B0(\CARRYB[14][1] ), .CI(
        \SUMB[14][2] ), .CO(\CARRYB[15][1] ), .S0(\SUMB[15][1] ) );
  HS65_GS_FA1X4 S4_2 ( .A0(\ab[15][2] ), .B0(\CARRYB[14][2] ), .CI(
        \SUMB[14][3] ), .CO(\CARRYB[15][2] ), .S0(\SUMB[15][2] ) );
  HS65_GS_FA1X4 S4_8 ( .A0(\ab[15][8] ), .B0(\CARRYB[14][8] ), .CI(
        \SUMB[14][9] ), .CO(\CARRYB[15][8] ), .S0(\SUMB[15][8] ) );
  HS65_GS_FA1X4 S4_7 ( .A0(\ab[15][7] ), .B0(\CARRYB[14][7] ), .CI(
        \SUMB[14][8] ), .CO(\CARRYB[15][7] ), .S0(\SUMB[15][7] ) );
  HS65_GS_FA1X4 S4_6 ( .A0(\ab[15][6] ), .B0(\CARRYB[14][6] ), .CI(
        \SUMB[14][7] ), .CO(\CARRYB[15][6] ), .S0(\SUMB[15][6] ) );
  HS65_GS_FA1X4 S4_5 ( .A0(\ab[15][5] ), .B0(\CARRYB[14][5] ), .CI(
        \SUMB[14][6] ), .CO(\CARRYB[15][5] ), .S0(\SUMB[15][5] ) );
  HS65_GS_FA1X4 S4_4 ( .A0(\ab[15][4] ), .B0(\CARRYB[14][4] ), .CI(
        \SUMB[14][5] ), .CO(\CARRYB[15][4] ), .S0(\SUMB[15][4] ) );
  HS65_GS_FA1X4 S4_3 ( .A0(\ab[15][3] ), .B0(\CARRYB[14][3] ), .CI(
        \SUMB[14][4] ), .CO(\CARRYB[15][3] ), .S0(\SUMB[15][3] ) );
  HS65_GS_AND2X4 U2 ( .A(\SUMB[15][13] ), .B(\CARRYB[15][12] ), .Z(n2) );
  HS65_GS_AND2X4 U3 ( .A(\ab[15][15] ), .B(\CARRYB[15][14] ), .Z(n3) );
  HS65_GS_AND2X4 U4 ( .A(\SUMB[15][14] ), .B(\CARRYB[15][13] ), .Z(n4) );
  HS65_GS_AND2X4 U5 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Z(n5) );
  HS65_GS_AND2X4 U6 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Z(n6) );
  HS65_GS_AND2X4 U7 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Z(n7) );
  HS65_GS_AND2X4 U8 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Z(n8) );
  HS65_GS_AND2X4 U9 ( .A(\ab[1][7] ), .B(\ab[0][8] ), .Z(n9) );
  HS65_GS_AND2X4 U10 ( .A(\ab[1][8] ), .B(\ab[0][9] ), .Z(n10) );
  HS65_GS_AND2X4 U11 ( .A(\ab[1][9] ), .B(\ab[0][10] ), .Z(n11) );
  HS65_GS_AND2X4 U12 ( .A(\ab[1][10] ), .B(\ab[0][11] ), .Z(n12) );
  HS65_GS_AND2X4 U13 ( .A(\ab[1][11] ), .B(\ab[0][12] ), .Z(n13) );
  HS65_GS_AND2X4 U14 ( .A(\ab[1][14] ), .B(\ab[0][15] ), .Z(n14) );
  HS65_GS_AND2X4 U15 ( .A(\ab[1][12] ), .B(\ab[0][13] ), .Z(n15) );
  HS65_GS_AND2X4 U16 ( .A(\ab[1][13] ), .B(\ab[0][14] ), .Z(n16) );
  HS65_GS_AND2X4 U17 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Z(n17) );
  HS65_GS_AND2X4 U18 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Z(n18) );
  HS65_GS_AND2X4 U19 ( .A(\SUMB[15][12] ), .B(\CARRYB[15][11] ), .Z(n19) );
  HS65_GS_BFX9 U20 ( .A(B[1]), .Z(n39) );
  HS65_GS_BFX9 U21 ( .A(B[14]), .Z(n65) );
  HS65_GS_BFX9 U22 ( .A(B[15]), .Z(n67) );
  HS65_GS_BFX9 U23 ( .A(B[13]), .Z(n63) );
  HS65_GS_BFX9 U24 ( .A(B[10]), .Z(n57) );
  HS65_GS_BFX9 U25 ( .A(B[2]), .Z(n41) );
  HS65_GS_BFX9 U26 ( .A(B[4]), .Z(n45) );
  HS65_GS_BFX9 U27 ( .A(B[5]), .Z(n47) );
  HS65_GS_BFX9 U28 ( .A(B[6]), .Z(n49) );
  HS65_GS_BFX9 U29 ( .A(B[7]), .Z(n51) );
  HS65_GS_BFX9 U30 ( .A(B[8]), .Z(n53) );
  HS65_GS_BFX9 U31 ( .A(B[11]), .Z(n59) );
  HS65_GS_BFX9 U32 ( .A(B[12]), .Z(n61) );
  HS65_GS_BFX9 U33 ( .A(B[3]), .Z(n43) );
  HS65_GS_BFX9 U34 ( .A(B[9]), .Z(n55) );
  HS65_GS_BFX9 U35 ( .A(A[15]), .Z(n35) );
  HS65_GS_BFX9 U36 ( .A(B[0]), .Z(n37) );
  HS65_GSS_XOR2X6 U37 ( .A(\SUMB[15][13] ), .B(\CARRYB[15][12] ), .Z(\A1[26] )
         );
  HS65_GSS_XOR2X6 U38 ( .A(\SUMB[15][4] ), .B(\CARRYB[15][3] ), .Z(\A1[17] )
         );
  HS65_GSS_XOR2X6 U39 ( .A(\SUMB[15][6] ), .B(\CARRYB[15][5] ), .Z(\A1[19] )
         );
  HS65_GSS_XOR2X6 U40 ( .A(\SUMB[15][8] ), .B(\CARRYB[15][7] ), .Z(\A1[21] )
         );
  HS65_GSS_XOR2X6 U41 ( .A(\SUMB[15][2] ), .B(\CARRYB[15][1] ), .Z(\A1[15] )
         );
  HS65_GSS_XOR2X6 U42 ( .A(\SUMB[15][3] ), .B(\CARRYB[15][2] ), .Z(\A1[16] )
         );
  HS65_GSS_XOR2X6 U43 ( .A(\SUMB[15][5] ), .B(\CARRYB[15][4] ), .Z(\A1[18] )
         );
  HS65_GSS_XOR2X6 U44 ( .A(\SUMB[15][7] ), .B(\CARRYB[15][6] ), .Z(\A1[20] )
         );
  HS65_GS_AND2X4 U45 ( .A(\SUMB[15][5] ), .B(\CARRYB[15][4] ), .Z(n20) );
  HS65_GS_AND2X4 U46 ( .A(\SUMB[15][6] ), .B(\CARRYB[15][5] ), .Z(n21) );
  HS65_GS_IVX9 U47 ( .A(n39), .Z(n40) );
  HS65_GS_IVX9 U48 ( .A(n43), .Z(n44) );
  HS65_GS_IVX9 U49 ( .A(n45), .Z(n46) );
  HS65_GS_IVX9 U50 ( .A(n47), .Z(n48) );
  HS65_GS_IVX9 U51 ( .A(n49), .Z(n50) );
  HS65_GS_IVX9 U52 ( .A(n51), .Z(n52) );
  HS65_GS_IVX9 U53 ( .A(n53), .Z(n54) );
  HS65_GS_IVX9 U54 ( .A(n55), .Z(n56) );
  HS65_GS_IVX9 U55 ( .A(n41), .Z(n42) );
  HS65_GS_IVX9 U56 ( .A(n57), .Z(n58) );
  HS65_GS_IVX9 U57 ( .A(n59), .Z(n60) );
  HS65_GS_IVX9 U58 ( .A(n61), .Z(n62) );
  HS65_GS_IVX9 U59 ( .A(n63), .Z(n64) );
  HS65_GS_IVX9 U60 ( .A(n65), .Z(n66) );
  HS65_GS_IVX9 U61 ( .A(n67), .Z(n68) );
  HS65_GS_AND2X4 U62 ( .A(\SUMB[15][3] ), .B(\CARRYB[15][2] ), .Z(n22) );
  HS65_GS_AND2X4 U63 ( .A(\SUMB[15][1] ), .B(\CARRYB[15][0] ), .Z(n23) );
  HS65_GS_AND2X4 U64 ( .A(\SUMB[15][2] ), .B(\CARRYB[15][1] ), .Z(n24) );
  HS65_GS_AND2X4 U65 ( .A(\SUMB[15][4] ), .B(\CARRYB[15][3] ), .Z(n25) );
  HS65_GSS_XOR2X6 U66 ( .A(\SUMB[15][12] ), .B(\CARRYB[15][11] ), .Z(\A1[25] )
         );
  HS65_GSS_XOR2X6 U67 ( .A(\SUMB[15][11] ), .B(\CARRYB[15][10] ), .Z(\A1[24] )
         );
  HS65_GSS_XOR2X6 U68 ( .A(\SUMB[15][10] ), .B(\CARRYB[15][9] ), .Z(\A1[23] )
         );
  HS65_GSS_XOR2X6 U69 ( .A(\SUMB[15][9] ), .B(\CARRYB[15][8] ), .Z(\A1[22] )
         );
  HS65_GS_AND2X4 U70 ( .A(\SUMB[15][7] ), .B(\CARRYB[15][6] ), .Z(n26) );
  HS65_GS_AND2X4 U71 ( .A(\SUMB[15][8] ), .B(\CARRYB[15][7] ), .Z(n27) );
  HS65_GS_AND2X4 U72 ( .A(\SUMB[15][11] ), .B(\CARRYB[15][10] ), .Z(n28) );
  HS65_GS_AND2X4 U73 ( .A(\SUMB[15][10] ), .B(\CARRYB[15][9] ), .Z(n29) );
  HS65_GS_AND2X4 U74 ( .A(\SUMB[15][9] ), .B(\CARRYB[15][8] ), .Z(n30) );
  HS65_GS_IVX9 U75 ( .A(n35), .Z(n36) );
  HS65_GSS_XOR2X6 U76 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Z(\SUMB[1][1] ) );
  HS65_GS_IVX9 U77 ( .A(n37), .Z(n38) );
  HS65_GS_IVX9 U78 ( .A(A[7]), .Z(n31) );
  HS65_GS_IVX9 U79 ( .A(A[11]), .Z(n33) );
  HS65_GS_IVX9 U80 ( .A(A[13]), .Z(n34) );
  HS65_GS_IVX9 U81 ( .A(A[9]), .Z(n32) );
  HS65_GSS_XOR2X6 U82 ( .A(\ab[15][15] ), .B(\CARRYB[15][14] ), .Z(\A1[28] )
         );
  HS65_GSS_XOR2X6 U83 ( .A(\SUMB[15][14] ), .B(\CARRYB[15][13] ), .Z(\A1[27] )
         );
  HS65_GSS_XOR2X6 U84 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Z(\SUMB[1][3] ) );
  HS65_GSS_XOR2X6 U85 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Z(\SUMB[1][4] ) );
  HS65_GSS_XOR2X6 U86 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Z(\SUMB[1][6] ) );
  HS65_GSS_XOR2X6 U87 ( .A(\ab[0][8] ), .B(\ab[1][7] ), .Z(\SUMB[1][7] ) );
  HS65_GSS_XOR2X6 U88 ( .A(\ab[0][9] ), .B(\ab[1][8] ), .Z(\SUMB[1][8] ) );
  HS65_GSS_XOR2X6 U89 ( .A(\ab[0][10] ), .B(\ab[1][9] ), .Z(\SUMB[1][9] ) );
  HS65_GSS_XOR2X6 U90 ( .A(\ab[0][11] ), .B(\ab[1][10] ), .Z(\SUMB[1][10] ) );
  HS65_GSS_XOR2X6 U91 ( .A(\ab[0][12] ), .B(\ab[1][11] ), .Z(\SUMB[1][11] ) );
  HS65_GSS_XOR2X6 U92 ( .A(\ab[0][13] ), .B(\ab[1][12] ), .Z(\SUMB[1][12] ) );
  HS65_GSS_XOR2X6 U93 ( .A(\ab[0][14] ), .B(\ab[1][13] ), .Z(\SUMB[1][13] ) );
  HS65_GSS_XOR2X6 U94 ( .A(\ab[0][15] ), .B(\ab[1][14] ), .Z(\SUMB[1][14] ) );
  HS65_GSS_XOR2X6 U95 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Z(\SUMB[1][5] ) );
  HS65_GSS_XOR2X6 U96 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Z(\SUMB[1][2] ) );
  HS65_GSS_XOR2X6 U97 ( .A(\SUMB[15][1] ), .B(\CARRYB[15][0] ), .Z(\A1[14] )
         );
  HS65_GS_IVX9 U98 ( .A(A[0]), .Z(n79) );
  HS65_GS_IVX9 U99 ( .A(A[2]), .Z(n77) );
  HS65_GS_IVX9 U100 ( .A(A[6]), .Z(n73) );
  HS65_GS_IVX9 U101 ( .A(A[3]), .Z(n76) );
  HS65_GS_IVX9 U102 ( .A(A[5]), .Z(n74) );
  HS65_GS_IVX9 U103 ( .A(A[4]), .Z(n75) );
  HS65_GS_IVX9 U104 ( .A(A[8]), .Z(n72) );
  HS65_GS_IVX9 U105 ( .A(A[1]), .Z(n78) );
  HS65_GS_IVX9 U106 ( .A(A[10]), .Z(n71) );
  HS65_GS_IVX9 U107 ( .A(A[14]), .Z(n69) );
  HS65_GS_IVX9 U108 ( .A(A[12]), .Z(n70) );
  HS65_GS_NOR2X2 U110 ( .A(n32), .B(n56), .Z(\ab[9][9] ) );
  HS65_GS_NOR2X2 U111 ( .A(n32), .B(n54), .Z(\ab[9][8] ) );
  HS65_GS_NOR2X2 U112 ( .A(n32), .B(n52), .Z(\ab[9][7] ) );
  HS65_GS_NOR2X2 U113 ( .A(n32), .B(n50), .Z(\ab[9][6] ) );
  HS65_GS_NOR2X2 U114 ( .A(n32), .B(n48), .Z(\ab[9][5] ) );
  HS65_GS_NOR2X2 U115 ( .A(n32), .B(n46), .Z(\ab[9][4] ) );
  HS65_GS_NOR2X2 U116 ( .A(n32), .B(n44), .Z(\ab[9][3] ) );
  HS65_GS_NOR2X2 U117 ( .A(n32), .B(n42), .Z(\ab[9][2] ) );
  HS65_GS_NOR2X2 U118 ( .A(n32), .B(n40), .Z(\ab[9][1] ) );
  HS65_GS_NOR2X2 U119 ( .A(n32), .B(n68), .Z(\ab[9][15] ) );
  HS65_GS_NOR2X2 U120 ( .A(n32), .B(n66), .Z(\ab[9][14] ) );
  HS65_GS_NOR2X2 U121 ( .A(n32), .B(n64), .Z(\ab[9][13] ) );
  HS65_GS_NOR2X2 U122 ( .A(n32), .B(n62), .Z(\ab[9][12] ) );
  HS65_GS_NOR2X2 U123 ( .A(n32), .B(n60), .Z(\ab[9][11] ) );
  HS65_GS_NOR2X2 U124 ( .A(n32), .B(n58), .Z(\ab[9][10] ) );
  HS65_GS_NOR2X2 U125 ( .A(n32), .B(n38), .Z(\ab[9][0] ) );
  HS65_GS_NOR2X2 U126 ( .A(n56), .B(n72), .Z(\ab[8][9] ) );
  HS65_GS_NOR2X2 U127 ( .A(n54), .B(n72), .Z(\ab[8][8] ) );
  HS65_GS_NOR2X2 U128 ( .A(n52), .B(n72), .Z(\ab[8][7] ) );
  HS65_GS_NOR2X2 U129 ( .A(n50), .B(n72), .Z(\ab[8][6] ) );
  HS65_GS_NOR2X2 U130 ( .A(n48), .B(n72), .Z(\ab[8][5] ) );
  HS65_GS_NOR2X2 U131 ( .A(n46), .B(n72), .Z(\ab[8][4] ) );
  HS65_GS_NOR2X2 U132 ( .A(n44), .B(n72), .Z(\ab[8][3] ) );
  HS65_GS_NOR2X2 U133 ( .A(n42), .B(n72), .Z(\ab[8][2] ) );
  HS65_GS_NOR2X2 U134 ( .A(n40), .B(n72), .Z(\ab[8][1] ) );
  HS65_GS_NOR2X2 U135 ( .A(n68), .B(n72), .Z(\ab[8][15] ) );
  HS65_GS_NOR2X2 U136 ( .A(n66), .B(n72), .Z(\ab[8][14] ) );
  HS65_GS_NOR2X2 U137 ( .A(n64), .B(n72), .Z(\ab[8][13] ) );
  HS65_GS_NOR2X2 U138 ( .A(n62), .B(n72), .Z(\ab[8][12] ) );
  HS65_GS_NOR2X2 U139 ( .A(n60), .B(n72), .Z(\ab[8][11] ) );
  HS65_GS_NOR2X2 U140 ( .A(n58), .B(n72), .Z(\ab[8][10] ) );
  HS65_GS_NOR2X2 U141 ( .A(n38), .B(n72), .Z(\ab[8][0] ) );
  HS65_GS_NOR2X2 U142 ( .A(n56), .B(n31), .Z(\ab[7][9] ) );
  HS65_GS_NOR2X2 U143 ( .A(n54), .B(n31), .Z(\ab[7][8] ) );
  HS65_GS_NOR2X2 U144 ( .A(n52), .B(n31), .Z(\ab[7][7] ) );
  HS65_GS_NOR2X2 U145 ( .A(n50), .B(n31), .Z(\ab[7][6] ) );
  HS65_GS_NOR2X2 U146 ( .A(n48), .B(n31), .Z(\ab[7][5] ) );
  HS65_GS_NOR2X2 U147 ( .A(n46), .B(n31), .Z(\ab[7][4] ) );
  HS65_GS_NOR2X2 U148 ( .A(n44), .B(n31), .Z(\ab[7][3] ) );
  HS65_GS_NOR2X2 U149 ( .A(n42), .B(n31), .Z(\ab[7][2] ) );
  HS65_GS_NOR2X2 U150 ( .A(n40), .B(n31), .Z(\ab[7][1] ) );
  HS65_GS_NOR2X2 U151 ( .A(n68), .B(n31), .Z(\ab[7][15] ) );
  HS65_GS_NOR2X2 U152 ( .A(n66), .B(n31), .Z(\ab[7][14] ) );
  HS65_GS_NOR2X2 U153 ( .A(n64), .B(n31), .Z(\ab[7][13] ) );
  HS65_GS_NOR2X2 U154 ( .A(n62), .B(n31), .Z(\ab[7][12] ) );
  HS65_GS_NOR2X2 U155 ( .A(n60), .B(n31), .Z(\ab[7][11] ) );
  HS65_GS_NOR2X2 U156 ( .A(n58), .B(n31), .Z(\ab[7][10] ) );
  HS65_GS_NOR2X2 U157 ( .A(n38), .B(n31), .Z(\ab[7][0] ) );
  HS65_GS_NOR2X2 U158 ( .A(n56), .B(n73), .Z(\ab[6][9] ) );
  HS65_GS_NOR2X2 U159 ( .A(n54), .B(n73), .Z(\ab[6][8] ) );
  HS65_GS_NOR2X2 U160 ( .A(n52), .B(n73), .Z(\ab[6][7] ) );
  HS65_GS_NOR2X2 U161 ( .A(n50), .B(n73), .Z(\ab[6][6] ) );
  HS65_GS_NOR2X2 U162 ( .A(n48), .B(n73), .Z(\ab[6][5] ) );
  HS65_GS_NOR2X2 U163 ( .A(n46), .B(n73), .Z(\ab[6][4] ) );
  HS65_GS_NOR2X2 U164 ( .A(n44), .B(n73), .Z(\ab[6][3] ) );
  HS65_GS_NOR2X2 U165 ( .A(n42), .B(n73), .Z(\ab[6][2] ) );
  HS65_GS_NOR2X2 U166 ( .A(n40), .B(n73), .Z(\ab[6][1] ) );
  HS65_GS_NOR2X2 U167 ( .A(n68), .B(n73), .Z(\ab[6][15] ) );
  HS65_GS_NOR2X2 U168 ( .A(n66), .B(n73), .Z(\ab[6][14] ) );
  HS65_GS_NOR2X2 U169 ( .A(n64), .B(n73), .Z(\ab[6][13] ) );
  HS65_GS_NOR2X2 U170 ( .A(n62), .B(n73), .Z(\ab[6][12] ) );
  HS65_GS_NOR2X2 U171 ( .A(n60), .B(n73), .Z(\ab[6][11] ) );
  HS65_GS_NOR2X2 U172 ( .A(n58), .B(n73), .Z(\ab[6][10] ) );
  HS65_GS_NOR2X2 U173 ( .A(n38), .B(n73), .Z(\ab[6][0] ) );
  HS65_GS_NOR2X2 U174 ( .A(n56), .B(n74), .Z(\ab[5][9] ) );
  HS65_GS_NOR2X2 U175 ( .A(n54), .B(n74), .Z(\ab[5][8] ) );
  HS65_GS_NOR2X2 U176 ( .A(n52), .B(n74), .Z(\ab[5][7] ) );
  HS65_GS_NOR2X2 U177 ( .A(n50), .B(n74), .Z(\ab[5][6] ) );
  HS65_GS_NOR2X2 U178 ( .A(n48), .B(n74), .Z(\ab[5][5] ) );
  HS65_GS_NOR2X2 U179 ( .A(n46), .B(n74), .Z(\ab[5][4] ) );
  HS65_GS_NOR2X2 U180 ( .A(n44), .B(n74), .Z(\ab[5][3] ) );
  HS65_GS_NOR2X2 U181 ( .A(n42), .B(n74), .Z(\ab[5][2] ) );
  HS65_GS_NOR2X2 U182 ( .A(n40), .B(n74), .Z(\ab[5][1] ) );
  HS65_GS_NOR2X2 U183 ( .A(n68), .B(n74), .Z(\ab[5][15] ) );
  HS65_GS_NOR2X2 U184 ( .A(n66), .B(n74), .Z(\ab[5][14] ) );
  HS65_GS_NOR2X2 U185 ( .A(n64), .B(n74), .Z(\ab[5][13] ) );
  HS65_GS_NOR2X2 U186 ( .A(n62), .B(n74), .Z(\ab[5][12] ) );
  HS65_GS_NOR2X2 U187 ( .A(n60), .B(n74), .Z(\ab[5][11] ) );
  HS65_GS_NOR2X2 U188 ( .A(n58), .B(n74), .Z(\ab[5][10] ) );
  HS65_GS_NOR2X2 U189 ( .A(n38), .B(n74), .Z(\ab[5][0] ) );
  HS65_GS_NOR2X2 U190 ( .A(n56), .B(n75), .Z(\ab[4][9] ) );
  HS65_GS_NOR2X2 U191 ( .A(n54), .B(n75), .Z(\ab[4][8] ) );
  HS65_GS_NOR2X2 U192 ( .A(n52), .B(n75), .Z(\ab[4][7] ) );
  HS65_GS_NOR2X2 U193 ( .A(n50), .B(n75), .Z(\ab[4][6] ) );
  HS65_GS_NOR2X2 U194 ( .A(n48), .B(n75), .Z(\ab[4][5] ) );
  HS65_GS_NOR2X2 U195 ( .A(n46), .B(n75), .Z(\ab[4][4] ) );
  HS65_GS_NOR2X2 U196 ( .A(n44), .B(n75), .Z(\ab[4][3] ) );
  HS65_GS_NOR2X2 U197 ( .A(n42), .B(n75), .Z(\ab[4][2] ) );
  HS65_GS_NOR2X2 U198 ( .A(n40), .B(n75), .Z(\ab[4][1] ) );
  HS65_GS_NOR2X2 U199 ( .A(n68), .B(n75), .Z(\ab[4][15] ) );
  HS65_GS_NOR2X2 U200 ( .A(n66), .B(n75), .Z(\ab[4][14] ) );
  HS65_GS_NOR2X2 U201 ( .A(n64), .B(n75), .Z(\ab[4][13] ) );
  HS65_GS_NOR2X2 U202 ( .A(n62), .B(n75), .Z(\ab[4][12] ) );
  HS65_GS_NOR2X2 U203 ( .A(n60), .B(n75), .Z(\ab[4][11] ) );
  HS65_GS_NOR2X2 U204 ( .A(n58), .B(n75), .Z(\ab[4][10] ) );
  HS65_GS_NOR2X2 U205 ( .A(n38), .B(n75), .Z(\ab[4][0] ) );
  HS65_GS_NOR2X2 U206 ( .A(n56), .B(n76), .Z(\ab[3][9] ) );
  HS65_GS_NOR2X2 U207 ( .A(n54), .B(n76), .Z(\ab[3][8] ) );
  HS65_GS_NOR2X2 U208 ( .A(n52), .B(n76), .Z(\ab[3][7] ) );
  HS65_GS_NOR2X2 U209 ( .A(n50), .B(n76), .Z(\ab[3][6] ) );
  HS65_GS_NOR2X2 U210 ( .A(n48), .B(n76), .Z(\ab[3][5] ) );
  HS65_GS_NOR2X2 U211 ( .A(n46), .B(n76), .Z(\ab[3][4] ) );
  HS65_GS_NOR2X2 U212 ( .A(n44), .B(n76), .Z(\ab[3][3] ) );
  HS65_GS_NOR2X2 U213 ( .A(n42), .B(n76), .Z(\ab[3][2] ) );
  HS65_GS_NOR2X2 U214 ( .A(n40), .B(n76), .Z(\ab[3][1] ) );
  HS65_GS_NOR2X2 U215 ( .A(n68), .B(n76), .Z(\ab[3][15] ) );
  HS65_GS_NOR2X2 U216 ( .A(n66), .B(n76), .Z(\ab[3][14] ) );
  HS65_GS_NOR2X2 U217 ( .A(n64), .B(n76), .Z(\ab[3][13] ) );
  HS65_GS_NOR2X2 U218 ( .A(n62), .B(n76), .Z(\ab[3][12] ) );
  HS65_GS_NOR2X2 U219 ( .A(n60), .B(n76), .Z(\ab[3][11] ) );
  HS65_GS_NOR2X2 U220 ( .A(n58), .B(n76), .Z(\ab[3][10] ) );
  HS65_GS_NOR2X2 U221 ( .A(n38), .B(n76), .Z(\ab[3][0] ) );
  HS65_GS_NOR2X2 U222 ( .A(n56), .B(n77), .Z(\ab[2][9] ) );
  HS65_GS_NOR2X2 U223 ( .A(n54), .B(n77), .Z(\ab[2][8] ) );
  HS65_GS_NOR2X2 U224 ( .A(n52), .B(n77), .Z(\ab[2][7] ) );
  HS65_GS_NOR2X2 U225 ( .A(n50), .B(n77), .Z(\ab[2][6] ) );
  HS65_GS_NOR2X2 U226 ( .A(n48), .B(n77), .Z(\ab[2][5] ) );
  HS65_GS_NOR2X2 U227 ( .A(n46), .B(n77), .Z(\ab[2][4] ) );
  HS65_GS_NOR2X2 U228 ( .A(n44), .B(n77), .Z(\ab[2][3] ) );
  HS65_GS_NOR2X2 U229 ( .A(n42), .B(n77), .Z(\ab[2][2] ) );
  HS65_GS_NOR2X2 U230 ( .A(n40), .B(n77), .Z(\ab[2][1] ) );
  HS65_GS_NOR2X2 U231 ( .A(n68), .B(n77), .Z(\ab[2][15] ) );
  HS65_GS_NOR2X2 U232 ( .A(n66), .B(n77), .Z(\ab[2][14] ) );
  HS65_GS_NOR2X2 U233 ( .A(n64), .B(n77), .Z(\ab[2][13] ) );
  HS65_GS_NOR2X2 U234 ( .A(n62), .B(n77), .Z(\ab[2][12] ) );
  HS65_GS_NOR2X2 U235 ( .A(n60), .B(n77), .Z(\ab[2][11] ) );
  HS65_GS_NOR2X2 U236 ( .A(n58), .B(n77), .Z(\ab[2][10] ) );
  HS65_GS_NOR2X2 U237 ( .A(n38), .B(n77), .Z(\ab[2][0] ) );
  HS65_GS_NOR2X2 U238 ( .A(n56), .B(n78), .Z(\ab[1][9] ) );
  HS65_GS_NOR2X2 U239 ( .A(n54), .B(n78), .Z(\ab[1][8] ) );
  HS65_GS_NOR2X2 U240 ( .A(n52), .B(n78), .Z(\ab[1][7] ) );
  HS65_GS_NOR2X2 U241 ( .A(n50), .B(n78), .Z(\ab[1][6] ) );
  HS65_GS_NOR2X2 U242 ( .A(n48), .B(n78), .Z(\ab[1][5] ) );
  HS65_GS_NOR2X2 U243 ( .A(n46), .B(n78), .Z(\ab[1][4] ) );
  HS65_GS_NOR2X2 U244 ( .A(n44), .B(n78), .Z(\ab[1][3] ) );
  HS65_GS_NOR2X2 U245 ( .A(n42), .B(n78), .Z(\ab[1][2] ) );
  HS65_GS_NOR2X2 U246 ( .A(n68), .B(n78), .Z(\ab[1][15] ) );
  HS65_GS_NOR2X2 U247 ( .A(n66), .B(n78), .Z(\ab[1][14] ) );
  HS65_GS_NOR2X2 U248 ( .A(n64), .B(n78), .Z(\ab[1][13] ) );
  HS65_GS_NOR2X2 U249 ( .A(n62), .B(n78), .Z(\ab[1][12] ) );
  HS65_GS_NOR2X2 U250 ( .A(n60), .B(n78), .Z(\ab[1][11] ) );
  HS65_GS_NOR2X2 U251 ( .A(n58), .B(n78), .Z(\ab[1][10] ) );
  HS65_GS_NOR2X2 U252 ( .A(n56), .B(n36), .Z(\ab[15][9] ) );
  HS65_GS_NOR2X2 U253 ( .A(n54), .B(n36), .Z(\ab[15][8] ) );
  HS65_GS_NOR2X2 U254 ( .A(n52), .B(n36), .Z(\ab[15][7] ) );
  HS65_GS_NOR2X2 U255 ( .A(n50), .B(n36), .Z(\ab[15][6] ) );
  HS65_GS_NOR2X2 U256 ( .A(n48), .B(n36), .Z(\ab[15][5] ) );
  HS65_GS_NOR2X2 U257 ( .A(n46), .B(n36), .Z(\ab[15][4] ) );
  HS65_GS_NOR2X2 U258 ( .A(n44), .B(n36), .Z(\ab[15][3] ) );
  HS65_GS_NOR2X2 U259 ( .A(n42), .B(n36), .Z(\ab[15][2] ) );
  HS65_GS_NOR2X2 U260 ( .A(n40), .B(n36), .Z(\ab[15][1] ) );
  HS65_GS_NOR2X2 U261 ( .A(n68), .B(n36), .Z(\ab[15][15] ) );
  HS65_GS_NOR2X2 U262 ( .A(n66), .B(n36), .Z(\ab[15][14] ) );
  HS65_GS_NOR2X2 U263 ( .A(n64), .B(n36), .Z(\ab[15][13] ) );
  HS65_GS_NOR2X2 U264 ( .A(n62), .B(n36), .Z(\ab[15][12] ) );
  HS65_GS_NOR2X2 U265 ( .A(n60), .B(n36), .Z(\ab[15][11] ) );
  HS65_GS_NOR2X2 U266 ( .A(n58), .B(n36), .Z(\ab[15][10] ) );
  HS65_GS_NOR2X2 U267 ( .A(n38), .B(n36), .Z(\ab[15][0] ) );
  HS65_GS_NOR2X2 U268 ( .A(n56), .B(n69), .Z(\ab[14][9] ) );
  HS65_GS_NOR2X2 U269 ( .A(n54), .B(n69), .Z(\ab[14][8] ) );
  HS65_GS_NOR2X2 U270 ( .A(n52), .B(n69), .Z(\ab[14][7] ) );
  HS65_GS_NOR2X2 U271 ( .A(n50), .B(n69), .Z(\ab[14][6] ) );
  HS65_GS_NOR2X2 U272 ( .A(n48), .B(n69), .Z(\ab[14][5] ) );
  HS65_GS_NOR2X2 U273 ( .A(n46), .B(n69), .Z(\ab[14][4] ) );
  HS65_GS_NOR2X2 U274 ( .A(n44), .B(n69), .Z(\ab[14][3] ) );
  HS65_GS_NOR2X2 U275 ( .A(n42), .B(n69), .Z(\ab[14][2] ) );
  HS65_GS_NOR2X2 U276 ( .A(n40), .B(n69), .Z(\ab[14][1] ) );
  HS65_GS_NOR2X2 U277 ( .A(n68), .B(n69), .Z(\ab[14][15] ) );
  HS65_GS_NOR2X2 U278 ( .A(n66), .B(n69), .Z(\ab[14][14] ) );
  HS65_GS_NOR2X2 U279 ( .A(n64), .B(n69), .Z(\ab[14][13] ) );
  HS65_GS_NOR2X2 U280 ( .A(n62), .B(n69), .Z(\ab[14][12] ) );
  HS65_GS_NOR2X2 U281 ( .A(n60), .B(n69), .Z(\ab[14][11] ) );
  HS65_GS_NOR2X2 U282 ( .A(n58), .B(n69), .Z(\ab[14][10] ) );
  HS65_GS_NOR2X2 U283 ( .A(n38), .B(n69), .Z(\ab[14][0] ) );
  HS65_GS_NOR2X2 U284 ( .A(n56), .B(n34), .Z(\ab[13][9] ) );
  HS65_GS_NOR2X2 U285 ( .A(n54), .B(n34), .Z(\ab[13][8] ) );
  HS65_GS_NOR2X2 U286 ( .A(n52), .B(n34), .Z(\ab[13][7] ) );
  HS65_GS_NOR2X2 U287 ( .A(n50), .B(n34), .Z(\ab[13][6] ) );
  HS65_GS_NOR2X2 U288 ( .A(n48), .B(n34), .Z(\ab[13][5] ) );
  HS65_GS_NOR2X2 U289 ( .A(n46), .B(n34), .Z(\ab[13][4] ) );
  HS65_GS_NOR2X2 U290 ( .A(n44), .B(n34), .Z(\ab[13][3] ) );
  HS65_GS_NOR2X2 U291 ( .A(n42), .B(n34), .Z(\ab[13][2] ) );
  HS65_GS_NOR2X2 U292 ( .A(n40), .B(n34), .Z(\ab[13][1] ) );
  HS65_GS_NOR2X2 U293 ( .A(n68), .B(n34), .Z(\ab[13][15] ) );
  HS65_GS_NOR2X2 U294 ( .A(n66), .B(n34), .Z(\ab[13][14] ) );
  HS65_GS_NOR2X2 U295 ( .A(n64), .B(n34), .Z(\ab[13][13] ) );
  HS65_GS_NOR2X2 U296 ( .A(n62), .B(n34), .Z(\ab[13][12] ) );
  HS65_GS_NOR2X2 U297 ( .A(n60), .B(n34), .Z(\ab[13][11] ) );
  HS65_GS_NOR2X2 U298 ( .A(n58), .B(n34), .Z(\ab[13][10] ) );
  HS65_GS_NOR2X2 U299 ( .A(n38), .B(n34), .Z(\ab[13][0] ) );
  HS65_GS_NOR2X2 U300 ( .A(n56), .B(n70), .Z(\ab[12][9] ) );
  HS65_GS_NOR2X2 U301 ( .A(n54), .B(n70), .Z(\ab[12][8] ) );
  HS65_GS_NOR2X2 U302 ( .A(n52), .B(n70), .Z(\ab[12][7] ) );
  HS65_GS_NOR2X2 U303 ( .A(n50), .B(n70), .Z(\ab[12][6] ) );
  HS65_GS_NOR2X2 U304 ( .A(n48), .B(n70), .Z(\ab[12][5] ) );
  HS65_GS_NOR2X2 U305 ( .A(n46), .B(n70), .Z(\ab[12][4] ) );
  HS65_GS_NOR2X2 U306 ( .A(n44), .B(n70), .Z(\ab[12][3] ) );
  HS65_GS_NOR2X2 U307 ( .A(n42), .B(n70), .Z(\ab[12][2] ) );
  HS65_GS_NOR2X2 U308 ( .A(n40), .B(n70), .Z(\ab[12][1] ) );
  HS65_GS_NOR2X2 U309 ( .A(n68), .B(n70), .Z(\ab[12][15] ) );
  HS65_GS_NOR2X2 U310 ( .A(n66), .B(n70), .Z(\ab[12][14] ) );
  HS65_GS_NOR2X2 U311 ( .A(n64), .B(n70), .Z(\ab[12][13] ) );
  HS65_GS_NOR2X2 U312 ( .A(n62), .B(n70), .Z(\ab[12][12] ) );
  HS65_GS_NOR2X2 U313 ( .A(n60), .B(n70), .Z(\ab[12][11] ) );
  HS65_GS_NOR2X2 U314 ( .A(n58), .B(n70), .Z(\ab[12][10] ) );
  HS65_GS_NOR2X2 U315 ( .A(n38), .B(n70), .Z(\ab[12][0] ) );
  HS65_GS_NOR2X2 U316 ( .A(n56), .B(n33), .Z(\ab[11][9] ) );
  HS65_GS_NOR2X2 U317 ( .A(n54), .B(n33), .Z(\ab[11][8] ) );
  HS65_GS_NOR2X2 U318 ( .A(n52), .B(n33), .Z(\ab[11][7] ) );
  HS65_GS_NOR2X2 U319 ( .A(n50), .B(n33), .Z(\ab[11][6] ) );
  HS65_GS_NOR2X2 U320 ( .A(n48), .B(n33), .Z(\ab[11][5] ) );
  HS65_GS_NOR2X2 U321 ( .A(n46), .B(n33), .Z(\ab[11][4] ) );
  HS65_GS_NOR2X2 U322 ( .A(n44), .B(n33), .Z(\ab[11][3] ) );
  HS65_GS_NOR2X2 U323 ( .A(n42), .B(n33), .Z(\ab[11][2] ) );
  HS65_GS_NOR2X2 U324 ( .A(n40), .B(n33), .Z(\ab[11][1] ) );
  HS65_GS_NOR2X2 U325 ( .A(n68), .B(n33), .Z(\ab[11][15] ) );
  HS65_GS_NOR2X2 U326 ( .A(n66), .B(n33), .Z(\ab[11][14] ) );
  HS65_GS_NOR2X2 U327 ( .A(n64), .B(n33), .Z(\ab[11][13] ) );
  HS65_GS_NOR2X2 U328 ( .A(n62), .B(n33), .Z(\ab[11][12] ) );
  HS65_GS_NOR2X2 U329 ( .A(n60), .B(n33), .Z(\ab[11][11] ) );
  HS65_GS_NOR2X2 U330 ( .A(n58), .B(n33), .Z(\ab[11][10] ) );
  HS65_GS_NOR2X2 U331 ( .A(n38), .B(n33), .Z(\ab[11][0] ) );
  HS65_GS_NOR2X2 U332 ( .A(n56), .B(n71), .Z(\ab[10][9] ) );
  HS65_GS_NOR2X2 U333 ( .A(n54), .B(n71), .Z(\ab[10][8] ) );
  HS65_GS_NOR2X2 U334 ( .A(n52), .B(n71), .Z(\ab[10][7] ) );
  HS65_GS_NOR2X2 U335 ( .A(n50), .B(n71), .Z(\ab[10][6] ) );
  HS65_GS_NOR2X2 U336 ( .A(n48), .B(n71), .Z(\ab[10][5] ) );
  HS65_GS_NOR2X2 U337 ( .A(n46), .B(n71), .Z(\ab[10][4] ) );
  HS65_GS_NOR2X2 U338 ( .A(n44), .B(n71), .Z(\ab[10][3] ) );
  HS65_GS_NOR2X2 U339 ( .A(n42), .B(n71), .Z(\ab[10][2] ) );
  HS65_GS_NOR2X2 U340 ( .A(n40), .B(n71), .Z(\ab[10][1] ) );
  HS65_GS_NOR2X2 U341 ( .A(n68), .B(n71), .Z(\ab[10][15] ) );
  HS65_GS_NOR2X2 U342 ( .A(n66), .B(n71), .Z(\ab[10][14] ) );
  HS65_GS_NOR2X2 U343 ( .A(n64), .B(n71), .Z(\ab[10][13] ) );
  HS65_GS_NOR2X2 U344 ( .A(n62), .B(n71), .Z(\ab[10][12] ) );
  HS65_GS_NOR2X2 U345 ( .A(n60), .B(n71), .Z(\ab[10][11] ) );
  HS65_GS_NOR2X2 U346 ( .A(n58), .B(n71), .Z(\ab[10][10] ) );
  HS65_GS_NOR2X2 U347 ( .A(n38), .B(n71), .Z(\ab[10][0] ) );
  HS65_GS_NOR2X2 U348 ( .A(n56), .B(n79), .Z(\ab[0][9] ) );
  HS65_GS_NOR2X2 U349 ( .A(n54), .B(n79), .Z(\ab[0][8] ) );
  HS65_GS_NOR2X2 U350 ( .A(n52), .B(n79), .Z(\ab[0][7] ) );
  HS65_GS_NOR2X2 U351 ( .A(n50), .B(n79), .Z(\ab[0][6] ) );
  HS65_GS_NOR2X2 U352 ( .A(n48), .B(n79), .Z(\ab[0][5] ) );
  HS65_GS_NOR2X2 U353 ( .A(n46), .B(n79), .Z(\ab[0][4] ) );
  HS65_GS_NOR2X2 U354 ( .A(n44), .B(n79), .Z(\ab[0][3] ) );
  HS65_GS_NOR2X2 U355 ( .A(n42), .B(n79), .Z(\ab[0][2] ) );
  HS65_GS_NOR2X2 U356 ( .A(n68), .B(n79), .Z(\ab[0][15] ) );
  HS65_GS_NOR2X2 U357 ( .A(n66), .B(n79), .Z(\ab[0][14] ) );
  HS65_GS_NOR2X2 U358 ( .A(n64), .B(n79), .Z(\ab[0][13] ) );
  HS65_GS_NOR2X2 U359 ( .A(n62), .B(n79), .Z(\ab[0][12] ) );
  HS65_GS_NOR2X2 U360 ( .A(n60), .B(n79), .Z(\ab[0][11] ) );
  HS65_GS_NOR2X2 U361 ( .A(n58), .B(n79), .Z(\ab[0][10] ) );
  HS65_GS_NOR3AX2 U362 ( .A(\ab[1][1] ), .B(n38), .C(n79), .Z(\CARRYB[1][0] )
         );
  HS65_GS_NOR2X2 U363 ( .A(n78), .B(n40), .Z(\ab[1][1] ) );
endmodule


module findMyBest_DW01_add_4 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   \A[1] , \A[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58;
  assign SUM[2] = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  HS65_GS_IVX9 U2 ( .A(n36), .Z(n1) );
  HS65_GS_IVX9 U3 ( .A(n37), .Z(n2) );
  HS65_GS_NAND2X7 U4 ( .A(A[3]), .B(B[3]), .Z(n24) );
  HS65_GSS_XOR2X6 U5 ( .A(B[3]), .B(A[3]), .Z(SUM[3]) );
  HS65_GSS_XOR2X3 U6 ( .A(n3), .B(n4), .Z(SUM[9]) );
  HS65_GS_NAND2AX4 U7 ( .A(n5), .B(n6), .Z(n3) );
  HS65_GSS_XNOR2X3 U8 ( .A(n7), .B(n8), .Z(SUM[8]) );
  HS65_GS_NOR2AX3 U9 ( .A(n9), .B(n10), .Z(n8) );
  HS65_GSS_XOR2X3 U10 ( .A(n11), .B(n12), .Z(SUM[7]) );
  HS65_GS_NOR2AX3 U11 ( .A(n13), .B(n14), .Z(n12) );
  HS65_GS_OAI12X2 U12 ( .A(n15), .B(n16), .C(n17), .Z(n11) );
  HS65_GSS_XNOR2X3 U13 ( .A(n16), .B(n18), .Z(SUM[6]) );
  HS65_GS_NOR2AX3 U14 ( .A(n17), .B(n15), .Z(n18) );
  HS65_GS_OA12X4 U15 ( .A(n19), .B(n20), .C(n21), .Z(n16) );
  HS65_GSS_XOR2X3 U16 ( .A(n22), .B(n20), .Z(SUM[5]) );
  HS65_GS_NAND2AX4 U17 ( .A(n19), .B(n21), .Z(n22) );
  HS65_GSS_XOR2X3 U18 ( .A(n23), .B(n24), .Z(SUM[4]) );
  HS65_GS_NAND2AX4 U19 ( .A(n25), .B(n26), .Z(n23) );
  HS65_GS_OAI12X2 U20 ( .A(n27), .B(n28), .C(n29), .Z(SUM[17]) );
  HS65_GSS_XNOR2X3 U21 ( .A(n28), .B(n30), .Z(SUM[16]) );
  HS65_GS_NOR2AX3 U22 ( .A(n29), .B(n27), .Z(n30) );
  HS65_GS_NOR2X2 U23 ( .A(B[16]), .B(A[16]), .Z(n27) );
  HS65_GS_NAND2X2 U24 ( .A(B[16]), .B(A[16]), .Z(n29) );
  HS65_GS_CB4I1X4 U25 ( .A(n31), .B(n32), .C(n33), .D(n34), .Z(n28) );
  HS65_GS_CB4I6X4 U26 ( .A(n35), .B(n36), .C(n37), .D(n38), .Z(n32) );
  HS65_GS_OA12X4 U27 ( .A(n39), .B(n40), .C(n41), .Z(n35) );
  HS65_GSS_XOR2X3 U28 ( .A(n42), .B(n43), .Z(SUM[15]) );
  HS65_GS_NOR2AX3 U29 ( .A(n34), .B(n33), .Z(n43) );
  HS65_GS_NOR2X2 U30 ( .A(B[15]), .B(A[15]), .Z(n33) );
  HS65_GS_NAND2X2 U31 ( .A(B[15]), .B(A[15]), .Z(n34) );
  HS65_GS_OAI12X2 U32 ( .A(n38), .B(n44), .C(n31), .Z(n42) );
  HS65_GSS_XNOR2X3 U33 ( .A(n44), .B(n45), .Z(SUM[14]) );
  HS65_GS_NOR2AX3 U34 ( .A(n31), .B(n38), .Z(n45) );
  HS65_GS_NOR2X2 U35 ( .A(B[14]), .B(A[14]), .Z(n38) );
  HS65_GS_NAND2X2 U36 ( .A(B[14]), .B(A[14]), .Z(n31) );
  HS65_GS_AOI12X2 U37 ( .A(n1), .B(n46), .C(n2), .Z(n44) );
  HS65_GSS_XOR2X3 U38 ( .A(n46), .B(n47), .Z(SUM[13]) );
  HS65_GS_NOR2X2 U39 ( .A(n2), .B(n36), .Z(n47) );
  HS65_GS_NOR2X2 U40 ( .A(B[13]), .B(A[13]), .Z(n36) );
  HS65_GS_NAND2X2 U41 ( .A(B[13]), .B(A[13]), .Z(n37) );
  HS65_GS_OAI12X2 U42 ( .A(n39), .B(n40), .C(n41), .Z(n46) );
  HS65_GSS_XNOR2X3 U43 ( .A(n40), .B(n48), .Z(SUM[12]) );
  HS65_GS_NOR2AX3 U44 ( .A(n41), .B(n39), .Z(n48) );
  HS65_GS_NOR2X2 U45 ( .A(B[12]), .B(A[12]), .Z(n39) );
  HS65_GS_NAND2X2 U46 ( .A(B[12]), .B(A[12]), .Z(n41) );
  HS65_GS_CB4I1X4 U47 ( .A(n49), .B(n50), .C(n51), .D(n52), .Z(n40) );
  HS65_GS_CB4I6X4 U48 ( .A(n4), .B(n5), .C(n6), .D(n53), .Z(n50) );
  HS65_GSS_XOR2X3 U49 ( .A(n54), .B(n55), .Z(SUM[11]) );
  HS65_GS_NOR2AX3 U50 ( .A(n52), .B(n51), .Z(n55) );
  HS65_GS_NOR2X2 U51 ( .A(B[11]), .B(A[11]), .Z(n51) );
  HS65_GS_NAND2X2 U52 ( .A(B[11]), .B(A[11]), .Z(n52) );
  HS65_GS_OAI12X2 U53 ( .A(n53), .B(n56), .C(n49), .Z(n54) );
  HS65_GSS_XNOR2X3 U54 ( .A(n56), .B(n57), .Z(SUM[10]) );
  HS65_GS_NOR2AX3 U55 ( .A(n49), .B(n53), .Z(n57) );
  HS65_GS_NOR2X2 U56 ( .A(B[10]), .B(A[10]), .Z(n53) );
  HS65_GS_NAND2X2 U57 ( .A(B[10]), .B(A[10]), .Z(n49) );
  HS65_GS_OA12X4 U58 ( .A(n4), .B(n5), .C(n6), .Z(n56) );
  HS65_GS_NAND2X2 U59 ( .A(B[9]), .B(A[9]), .Z(n6) );
  HS65_GS_NOR2X2 U60 ( .A(B[9]), .B(A[9]), .Z(n5) );
  HS65_GS_OA12X4 U61 ( .A(n7), .B(n10), .C(n9), .Z(n4) );
  HS65_GS_NAND2X2 U62 ( .A(B[8]), .B(A[8]), .Z(n9) );
  HS65_GS_NOR2X2 U63 ( .A(B[8]), .B(A[8]), .Z(n10) );
  HS65_GS_CB4I1X4 U64 ( .A(n17), .B(n58), .C(n14), .D(n13), .Z(n7) );
  HS65_GS_NAND2X2 U65 ( .A(B[7]), .B(A[7]), .Z(n13) );
  HS65_GS_NOR2X2 U66 ( .A(B[7]), .B(A[7]), .Z(n14) );
  HS65_GS_CB4I6X4 U67 ( .A(n20), .B(n19), .C(n21), .D(n15), .Z(n58) );
  HS65_GS_NOR2X2 U68 ( .A(B[6]), .B(A[6]), .Z(n15) );
  HS65_GS_NAND2X2 U69 ( .A(B[5]), .B(A[5]), .Z(n21) );
  HS65_GS_NOR2X2 U70 ( .A(B[5]), .B(A[5]), .Z(n19) );
  HS65_GS_OA12X4 U71 ( .A(n24), .B(n25), .C(n26), .Z(n20) );
  HS65_GS_NAND2X2 U72 ( .A(B[4]), .B(A[4]), .Z(n26) );
  HS65_GS_NOR2X2 U73 ( .A(B[4]), .B(A[4]), .Z(n25) );
  HS65_GS_NAND2X2 U74 ( .A(B[6]), .B(A[6]), .Z(n17) );
endmodule


module findMyBest_DW02_mult_1 ( A, B, TC, PRODUCT );
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

  findMyBest_DW01_add_4 FS_1 ( .A({1'b0, \ab[3][15] , \A1[15] , \A1[14] , 
        \A1[13] , \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , 
        \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \SUMB[3][0] , \ab[3][1] }), .B({1'b0, n29, n2, n4, n6, n12, n14, n9, n8, n11, n13, n7, n5, n10, n3, 1'b0, 
        1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[19:2]) );
  HS65_GSS_XOR2X6 U2 ( .A(\SUMB[3][2] ), .B(n16), .Z(\A1[3] ) );
  HS65_GSS_XOR2X6 U3 ( .A(\SUMB[3][13] ), .B(n15), .Z(\A1[14] ) );
  HS65_GSS_XOR2X6 U4 ( .A(\SUMB[3][12] ), .B(n25), .Z(\A1[13] ) );
  HS65_GSS_XOR2X6 U5 ( .A(\SUMB[3][3] ), .B(n17), .Z(\A1[4] ) );
  HS65_GSS_XOR2X6 U6 ( .A(\SUMB[3][4] ), .B(n22), .Z(\A1[5] ) );
  HS65_GSS_XOR2X6 U7 ( .A(\SUMB[3][7] ), .B(n19), .Z(\A1[8] ) );
  HS65_GSS_XOR2X6 U8 ( .A(\SUMB[3][11] ), .B(n21), .Z(\A1[12] ) );
  HS65_GSS_XOR2X6 U9 ( .A(\SUMB[3][8] ), .B(n26), .Z(\A1[9] ) );
  HS65_GSS_XOR2X6 U10 ( .A(\SUMB[3][6] ), .B(n18), .Z(\A1[7] ) );
  HS65_GSS_XOR2X6 U11 ( .A(\SUMB[3][5] ), .B(n23), .Z(\A1[6] ) );
  HS65_GSS_XOR2X6 U12 ( .A(\SUMB[3][10] ), .B(n20), .Z(\A1[11] ) );
  HS65_GSS_XOR2X6 U13 ( .A(\SUMB[3][9] ), .B(n24), .Z(\A1[10] ) );
  HS65_GS_AND2X4 U14 ( .A(\SUMB[3][13] ), .B(n15), .Z(n2) );
  HS65_GS_AND2X4 U15 ( .A(\SUMB[3][1] ), .B(n28), .Z(n3) );
  HS65_GS_AND2X4 U16 ( .A(\SUMB[3][12] ), .B(n25), .Z(n4) );
  HS65_GS_AND2X4 U17 ( .A(\SUMB[3][3] ), .B(n17), .Z(n5) );
  HS65_GS_AND2X4 U18 ( .A(\SUMB[3][11] ), .B(n21), .Z(n6) );
  HS65_GS_AND2X4 U19 ( .A(\SUMB[3][4] ), .B(n22), .Z(n7) );
  HS65_GS_AND2X4 U20 ( .A(\SUMB[3][7] ), .B(n19), .Z(n8) );
  HS65_GS_AND2X4 U21 ( .A(\SUMB[3][8] ), .B(n26), .Z(n9) );
  HS65_GS_AND2X4 U22 ( .A(\SUMB[3][2] ), .B(n16), .Z(n10) );
  HS65_GS_AND2X4 U23 ( .A(\SUMB[3][6] ), .B(n18), .Z(n11) );
  HS65_GS_AND2X4 U24 ( .A(\SUMB[3][10] ), .B(n20), .Z(n12) );
  HS65_GS_AND2X4 U25 ( .A(\SUMB[3][5] ), .B(n23), .Z(n13) );
  HS65_GS_AND2X4 U26 ( .A(\SUMB[3][9] ), .B(n24), .Z(n14) );
  HS65_GSS_XOR2X6 U27 ( .A(\SUMB[3][1] ), .B(n28), .Z(\A1[2] ) );
  HS65_GSS_XOR2X6 U28 ( .A(\ab[3][2] ), .B(\ab[3][0] ), .Z(\SUMB[3][0] ) );
  HS65_GSS_XOR2X6 U29 ( .A(\ab[3][14] ), .B(\ab[3][12] ), .Z(\SUMB[3][12] ) );
  HS65_GSS_XOR2X6 U30 ( .A(\ab[3][5] ), .B(\ab[3][3] ), .Z(\SUMB[3][3] ) );
  HS65_GSS_XOR2X6 U31 ( .A(\ab[3][6] ), .B(\ab[3][4] ), .Z(\SUMB[3][4] ) );
  HS65_GSS_XOR2X6 U32 ( .A(\ab[3][9] ), .B(\ab[3][7] ), .Z(\SUMB[3][7] ) );
  HS65_GSS_XOR2X6 U33 ( .A(\ab[3][13] ), .B(\ab[3][11] ), .Z(\SUMB[3][11] ) );
  HS65_GSS_XOR2X6 U34 ( .A(\ab[3][10] ), .B(\ab[3][8] ), .Z(\SUMB[3][8] ) );
  HS65_GSS_XOR2X6 U35 ( .A(\ab[3][4] ), .B(\ab[3][2] ), .Z(\SUMB[3][2] ) );
  HS65_GSS_XOR2X6 U36 ( .A(\ab[3][3] ), .B(\ab[3][1] ), .Z(\SUMB[3][1] ) );
  HS65_GSS_XOR2X6 U37 ( .A(\ab[3][8] ), .B(\ab[3][6] ), .Z(\SUMB[3][6] ) );
  HS65_GSS_XOR2X6 U38 ( .A(\ab[3][12] ), .B(\ab[3][10] ), .Z(\SUMB[3][10] ) );
  HS65_GSS_XOR2X6 U39 ( .A(\ab[3][7] ), .B(\ab[3][5] ), .Z(\SUMB[3][5] ) );
  HS65_GSS_XOR2X6 U40 ( .A(\ab[3][11] ), .B(\ab[3][9] ), .Z(\SUMB[3][9] ) );
  HS65_GSS_XOR2X6 U41 ( .A(\ab[3][15] ), .B(\ab[3][13] ), .Z(\SUMB[3][13] ) );
  HS65_GS_AND2X4 U42 ( .A(\ab[3][12] ), .B(\ab[3][14] ), .Z(n15) );
  HS65_GSS_XOR2X6 U43 ( .A(\ab[3][14] ), .B(n27), .Z(\A1[15] ) );
  HS65_GS_AND2X4 U44 ( .A(\ab[3][1] ), .B(\ab[3][3] ), .Z(n16) );
  HS65_GS_AND2X4 U45 ( .A(\ab[3][2] ), .B(\ab[3][4] ), .Z(n17) );
  HS65_GS_AND2X4 U46 ( .A(\ab[3][5] ), .B(\ab[3][7] ), .Z(n18) );
  HS65_GS_AND2X4 U47 ( .A(\ab[3][6] ), .B(\ab[3][8] ), .Z(n19) );
  HS65_GS_AND2X4 U48 ( .A(\ab[3][9] ), .B(\ab[3][11] ), .Z(n20) );
  HS65_GS_AND2X4 U49 ( .A(\ab[3][10] ), .B(\ab[3][12] ), .Z(n21) );
  HS65_GS_AND2X4 U50 ( .A(\ab[3][3] ), .B(\ab[3][5] ), .Z(n22) );
  HS65_GS_AND2X4 U51 ( .A(\ab[3][4] ), .B(\ab[3][6] ), .Z(n23) );
  HS65_GS_AND2X4 U52 ( .A(\ab[3][8] ), .B(\ab[3][10] ), .Z(n24) );
  HS65_GS_AND2X4 U53 ( .A(\ab[3][11] ), .B(\ab[3][13] ), .Z(n25) );
  HS65_GS_AND2X4 U54 ( .A(\ab[3][7] ), .B(\ab[3][9] ), .Z(n26) );
  HS65_GS_AND2X4 U55 ( .A(\ab[3][13] ), .B(\ab[3][15] ), .Z(n27) );
  HS65_GS_AND2X4 U56 ( .A(\ab[3][0] ), .B(\ab[3][2] ), .Z(n28) );
  HS65_GS_AND2X4 U57 ( .A(\ab[3][14] ), .B(n27), .Z(n29) );
endmodule


module findMyBest ( clock, nrst, en, start, address, data_in, MY_BATTERY_STAT, 
        mybest, done );
  output [10:0] address;
  input [15:0] data_in;
  input [15:0] MY_BATTERY_STAT;
  output [15:0] mybest;
  input clock, nrst, en, start;
  output done;
  wire   n285, n286, n287, n288, n289, n290, n291, n292, N73, N74, N75, N76,
         N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N88, N89, N90, N91,
         N92, N93, N94, N95, N96, N97, N98, N99, N101, N102, N103, N104, N105,
         N106, N107, N108, N109, N110, N111, N112, N113, N114, N115, N116,
         N117, N118, N119, N122, N123, N124, N125, N126, N127, N154, N161,
         N166, N167, N168, N169, N170, N171, N172, N173, N174, N175, N192,
         N193, N194, N195, N196, N197, N198, N199, N200, N201, N202, N203,
         N204, N205, N206, N207, N444, N446, N448, N450, N452, N454, N458, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182,
         N181, \add_84/carry[10] , \add_84/carry[9] , \add_84/carry[8] ,
         \add_84/carry[7] , \add_84/carry[6] , \add_84/carry[5] ,
         \add_75/carry[4] , \add_75/carry[3] , \add_75/carry[2] ,
         \add_55/carry[10] , \add_55/carry[9] , \add_55/carry[8] ,
         \add_55/carry[7] , \add_55/carry[6] , \add_55/carry[5] ,
         \add_93/carry[15] , \add_93/carry[14] , \add_93/carry[13] ,
         \add_93/carry[12] , \add_93/carry[11] , \add_93/carry[10] ,
         \add_93/carry[9] , \add_93/carry[8] , \add_93/carry[7] , n1, n3, n6,
         n7, n8, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n31, n34, n163, n165, n166,
         n167, n168, n169, n170, n171, n172, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n283, n284;
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

  HS65_GS_DFPQX9 \l_reg[0]  ( .D(n203), .CP(clock), .Q(l[0]) );
  HS65_GS_DFPQX9 \state_reg[0]  ( .D(n201), .CP(clock), .Q(state[0]) );
  HS65_GS_DFPQX9 \state_reg[2]  ( .D(n199), .CP(clock), .Q(state[2]) );
  HS65_GS_DFPQX9 \state_reg[3]  ( .D(n202), .CP(clock), .Q(state[3]) );
  HS65_GS_DFPQX9 \state_reg[1]  ( .D(n200), .CP(clock), .Q(state[1]) );
  HS65_GS_DFPQX9 \mybest_buf_reg[15]  ( .D(n146), .CP(clock), .Q(mybest[15])
         );
  HS65_GS_DFPQX9 \mybest_buf_reg[14]  ( .D(n147), .CP(clock), .Q(mybest[14])
         );
  HS65_GS_DFPQX9 \mybest_buf_reg[13]  ( .D(n148), .CP(clock), .Q(n285) );
  HS65_GS_DFPQX9 \mybest_buf_reg[12]  ( .D(n149), .CP(clock), .Q(mybest[12])
         );
  HS65_GS_DFPQX9 \mybest_buf_reg[11]  ( .D(n150), .CP(clock), .Q(n286) );
  HS65_GS_DFPQX9 \mybest_buf_reg[10]  ( .D(n151), .CP(clock), .Q(n287) );
  HS65_GS_DFPQX9 \mybest_buf_reg[9]  ( .D(n152), .CP(clock), .Q(n288) );
  HS65_GS_DFPQX9 \mybest_buf_reg[8]  ( .D(n153), .CP(clock), .Q(mybest[8]) );
  HS65_GS_DFPQX9 \mybest_buf_reg[7]  ( .D(n154), .CP(clock), .Q(n289) );
  HS65_GS_DFPQX9 \mybest_buf_reg[6]  ( .D(n155), .CP(clock), .Q(n290) );
  HS65_GS_DFPQX9 \mybest_buf_reg[5]  ( .D(n156), .CP(clock), .Q(mybest[5]) );
  HS65_GS_DFPQX9 \mybest_buf_reg[4]  ( .D(n157), .CP(clock), .Q(mybest[4]) );
  HS65_GS_DFPQX9 \mybest_buf_reg[3]  ( .D(n158), .CP(clock), .Q(mybest[3]) );
  HS65_GS_DFPQX9 \mybest_buf_reg[2]  ( .D(n159), .CP(clock), .Q(n291) );
  HS65_GS_DFPQX9 \mybest_buf_reg[1]  ( .D(n160), .CP(clock), .Q(mybest[1]) );
  HS65_GS_DFPQX9 \mybest_buf_reg[0]  ( .D(n161), .CP(clock), .Q(n292) );
  HS65_GS_DFPQX9 done_buf_reg ( .D(n162), .CP(clock), .Q(done) );
  HS65_GS_DFPQX9 \neighborCount_reg[15]  ( .D(n130), .CP(clock), .Q(
        neighborCount[15]) );
  HS65_GS_DFPQX9 \neighborCount_reg[14]  ( .D(n131), .CP(clock), .Q(
        neighborCount[14]) );
  HS65_GS_DFPQX9 \neighborCount_reg[13]  ( .D(n132), .CP(clock), .Q(
        neighborCount[13]) );
  HS65_GS_DFPQX9 \neighborCount_reg[12]  ( .D(n133), .CP(clock), .Q(
        neighborCount[12]) );
  HS65_GS_DFPQX9 \neighborCount_reg[11]  ( .D(n134), .CP(clock), .Q(
        neighborCount[11]) );
  HS65_GS_DFPQX9 \neighborCount_reg[10]  ( .D(n135), .CP(clock), .Q(
        neighborCount[10]) );
  HS65_GS_DFPQX9 \neighborCount_reg[9]  ( .D(n136), .CP(clock), .Q(
        neighborCount[9]) );
  HS65_GS_DFPQX9 \neighborCount_reg[8]  ( .D(n137), .CP(clock), .Q(
        neighborCount[8]) );
  HS65_GS_DFPQX9 \neighborCount_reg[7]  ( .D(n138), .CP(clock), .Q(
        neighborCount[7]) );
  HS65_GS_DFPQX9 \neighborCount_reg[6]  ( .D(n139), .CP(clock), .Q(
        neighborCount[6]) );
  HS65_GS_DFPQX9 \neighborCount_reg[5]  ( .D(n140), .CP(clock), .Q(
        neighborCount[5]) );
  HS65_GS_DFPQX9 \neighborCount_reg[4]  ( .D(n141), .CP(clock), .Q(
        neighborCount[4]) );
  HS65_GS_DFPQX9 \neighborCount_reg[3]  ( .D(n142), .CP(clock), .Q(
        neighborCount[3]) );
  HS65_GS_DFPQX9 \neighborCount_reg[2]  ( .D(n143), .CP(clock), .Q(
        neighborCount[2]) );
  HS65_GS_DFPQX9 \neighborCount_reg[1]  ( .D(n144), .CP(clock), .Q(
        neighborCount[1]) );
  HS65_GS_DFPQX9 \neighborCount_reg[0]  ( .D(n145), .CP(clock), .Q(
        neighborCount[0]) );
  HS65_GS_DFPQX9 \l_reg[14]  ( .D(n105), .CP(clock), .Q(l[14]) );
  HS65_GS_DFPQX9 \l_reg[13]  ( .D(n106), .CP(clock), .Q(l[13]) );
  HS65_GS_DFPQX9 \l_reg[12]  ( .D(n107), .CP(clock), .Q(l[12]) );
  HS65_GS_DFPQX9 \l_reg[11]  ( .D(n108), .CP(clock), .Q(l[11]) );
  HS65_GS_DFPQX9 \l_reg[10]  ( .D(n109), .CP(clock), .Q(l[10]) );
  HS65_GS_DFPQX9 \l_reg[9]  ( .D(n110), .CP(clock), .Q(l[9]) );
  HS65_GS_DFPQX9 \l_reg[8]  ( .D(n111), .CP(clock), .Q(l[8]) );
  HS65_GS_DFPQX9 \l_reg[7]  ( .D(n112), .CP(clock), .Q(l[7]) );
  HS65_GS_DFPQX9 \l_reg[6]  ( .D(n113), .CP(clock), .Q(l[6]) );
  HS65_GS_DFPQX9 \l_reg[5]  ( .D(n114), .CP(clock), .Q(l[5]) );
  HS65_GS_DFPQX9 \l_reg[4]  ( .D(n115), .CP(clock), .Q(l[4]) );
  HS65_GS_DFPQX9 \l_reg[3]  ( .D(n116), .CP(clock), .Q(l[3]) );
  HS65_GS_DFPQX9 \l_reg[2]  ( .D(n117), .CP(clock), .Q(l[2]) );
  HS65_GS_DFPQX9 \l_reg[1]  ( .D(n118), .CP(clock), .Q(l[1]) );
  HS65_GS_DFPQX9 \kTemp_reg[19]  ( .D(n179), .CP(clock), .Q(kTemp[19]) );
  HS65_GS_DFPQX9 \kTemp_reg[18]  ( .D(n180), .CP(clock), .Q(kTemp[18]) );
  HS65_GS_DFPQX9 \kTemp_reg[17]  ( .D(n181), .CP(clock), .Q(kTemp[17]) );
  HS65_GS_DFPQX9 \kTemp_reg[16]  ( .D(n182), .CP(clock), .Q(kTemp[16]) );
  HS65_GS_DFPQX9 \kTemp_reg[15]  ( .D(n183), .CP(clock), .Q(kTemp[15]) );
  HS65_GS_DFPQX9 \kTemp_reg[14]  ( .D(n184), .CP(clock), .Q(kTemp[14]) );
  HS65_GS_DFPQX9 \kTemp_reg[13]  ( .D(n185), .CP(clock), .Q(kTemp[13]) );
  HS65_GS_DFPQX9 \kTemp_reg[12]  ( .D(n186), .CP(clock), .Q(kTemp[12]) );
  HS65_GS_DFPQX9 \kTemp_reg[11]  ( .D(n187), .CP(clock), .Q(kTemp[11]) );
  HS65_GS_DFPQX9 \kTemp_reg[10]  ( .D(n188), .CP(clock), .Q(kTemp[10]) );
  HS65_GS_DFPQX9 \kTemp_reg[9]  ( .D(n189), .CP(clock), .Q(kTemp[9]) );
  HS65_GS_DFPQX9 \kTemp_reg[8]  ( .D(n190), .CP(clock), .Q(kTemp[8]) );
  HS65_GS_DFPQX9 \kTemp_reg[7]  ( .D(n191), .CP(clock), .Q(kTemp[7]) );
  HS65_GS_DFPQX9 \kTemp_reg[6]  ( .D(n192), .CP(clock), .Q(kTemp[6]) );
  HS65_GS_DFPQX9 \kTemp_reg[5]  ( .D(n193), .CP(clock), .Q(kTemp[5]) );
  HS65_GS_DFPQX9 \kTemp_reg[4]  ( .D(n194), .CP(clock), .Q(kTemp[4]) );
  HS65_GS_DFPQX9 \kTemp_reg[3]  ( .D(n195), .CP(clock), .Q(kTemp[3]) );
  HS65_GS_DFPQX9 \kTemp_reg[2]  ( .D(n196), .CP(clock), .Q(kTemp[2]) );
  HS65_GS_DFPQX9 \kTemp_reg[1]  ( .D(n197), .CP(clock), .Q(kTemp[1]) );
  HS65_GS_DFPQX9 \kTemp_reg[0]  ( .D(n198), .CP(clock), .Q(kTemp[0]) );
  HS65_GS_DFPQX9 \k_reg[0]  ( .D(n178), .CP(clock), .Q(k[0]) );
  HS65_GS_DFPQX9 \k_reg[15]  ( .D(n27), .CP(clock), .Q(k[15]) );
  HS65_GS_DFPQX9 \k_reg[14]  ( .D(n23), .CP(clock), .Q(k[14]) );
  HS65_GS_DFPQX9 \k_reg[13]  ( .D(n24), .CP(clock), .Q(k[13]) );
  HS65_GS_DFPQX9 \k_reg[12]  ( .D(n26), .CP(clock), .Q(k[12]) );
  HS65_GS_DFPQX9 \k_reg[11]  ( .D(n25), .CP(clock), .Q(k[11]) );
  HS65_GS_DFPQX9 \k_reg[10]  ( .D(n22), .CP(clock), .Q(k[10]) );
  HS65_GS_DFPQX9 \k_reg[9]  ( .D(n19), .CP(clock), .Q(k[9]) );
  HS65_GS_DFPQX9 \k_reg[8]  ( .D(n18), .CP(clock), .Q(k[8]) );
  HS65_GS_DFPQX9 \k_reg[7]  ( .D(n20), .CP(clock), .Q(k[7]) );
  HS65_GS_DFPQX9 \k_reg[6]  ( .D(n21), .CP(clock), .Q(k[6]) );
  HS65_GS_DFPQX9 \k_reg[5]  ( .D(n173), .CP(clock), .Q(k[5]) );
  HS65_GS_DFPQX9 \k_reg[4]  ( .D(n174), .CP(clock), .Q(k[4]) );
  HS65_GS_DFPQX9 \k_reg[2]  ( .D(n176), .CP(clock), .Q(k[2]) );
  HS65_GS_DFPQX9 \k_reg[3]  ( .D(n175), .CP(clock), .Q(k[3]) );
  HS65_GS_DFPQX9 \k_reg[1]  ( .D(n177), .CP(clock), .Q(k[1]) );
  HS65_GS_DFPQX9 \address_count_reg[0]  ( .D(n129), .CP(clock), .Q(address[0])
         );
  HS65_GS_DFPQX9 \address_count_reg[1]  ( .D(n128), .CP(clock), .Q(address[1])
         );
  HS65_GS_DFPQX9 \address_count_reg[2]  ( .D(n127), .CP(clock), .Q(address[2])
         );
  HS65_GS_DFPQX9 \address_count_reg[3]  ( .D(n126), .CP(clock), .Q(address[3])
         );
  HS65_GS_DFPQX9 \address_count_reg[4]  ( .D(n125), .CP(clock), .Q(address[4])
         );
  HS65_GS_DFPQX9 \address_count_reg[5]  ( .D(n124), .CP(clock), .Q(address[5])
         );
  HS65_GS_DFPQX9 \address_count_reg[6]  ( .D(n123), .CP(clock), .Q(address[6])
         );
  HS65_GS_DFPQX9 \address_count_reg[7]  ( .D(n122), .CP(clock), .Q(address[7])
         );
  HS65_GS_DFPQX9 \address_count_reg[8]  ( .D(n121), .CP(clock), .Q(address[8])
         );
  HS65_GS_DFPQX9 \address_count_reg[9]  ( .D(n120), .CP(clock), .Q(address[9])
         );
  HS65_GS_DFPQX9 \address_count_reg[10]  ( .D(n119), .CP(clock), .Q(
        address[10]) );
  HS65_GS_DFPQX9 \l_reg[15]  ( .D(n104), .CP(clock), .Q(l[15]) );
  findMyBest_DW01_inc_1 add_54 ( .A(l), .SUM({N86, N85, N84, N83, N82, N81, 
        N80, N79, N78, N77, N76, N75, N74, N73, N89, N88}) );
  findMyBest_DW02_mult_0 mult_91 ( .A({mybest[15], n16, n163, n12, n286, n7, 
        n288, n15, n289, n290, n14, n10, n11, n291, mybest[1], n292}), .B({
        data_in[15:1], n166}), .TC(1'b0), .PRODUCT({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, N191, N190, N189, 
        N188, N187, N186, N185, N184, N183, N182, N181, N196, N195, N194, N193, 
        N192, SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15}) );
  findMyBest_DW02_mult_1 mult_68 ( .A({1'b1, 1'b0, 1'b1, 1'b0}), .B(
        MY_BATTERY_STAT), .TC(1'b0), .PRODUCT({N119, N118, N117, N116, N115, 
        N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, 
        N102, N101, SYNOPSYS_UNCONNECTED__16}) );
  HS65_GS_IVX2 U3 ( .A(n291), .Z(n1) );
  HS65_GS_IVX9 U4 ( .A(n1), .Z(mybest[2]) );
  HS65_GS_IVX2 U5 ( .A(n290), .Z(n3) );
  HS65_GS_IVX9 U6 ( .A(n3), .Z(mybest[6]) );
  HS65_GS_IVX9 U7 ( .A(n6), .Z(mybest[10]) );
  HS65_GS_IVX2 U8 ( .A(n287), .Z(n6) );
  HS65_GS_IVX2 U9 ( .A(n6), .Z(n7) );
  HS65_GS_IVX2 U10 ( .A(n292), .Z(n8) );
  HS65_GS_IVX7 U11 ( .A(n8), .Z(mybest[0]) );
  HS65_GS_BFX9 U12 ( .A(mybest[4]), .Z(n10) );
  HS65_GS_BFX9 U13 ( .A(mybest[3]), .Z(n11) );
  HS65_GS_BFX9 U14 ( .A(mybest[12]), .Z(n12) );
  HS65_GS_BFX9 U15 ( .A(n17), .Z(n13) );
  HS65_GS_BFX9 U16 ( .A(mybest[5]), .Z(n14) );
  HS65_GS_BFX9 U17 ( .A(mybest[8]), .Z(n15) );
  HS65_GS_BFX9 U18 ( .A(mybest[14]), .Z(n16) );
  HS65_GS_AOI112X4 U19 ( .A(N98), .B(n267), .C(n28), .D(n269), .Z(n56) );
  HS65_GS_IVX9 U20 ( .A(n213), .Z(n214) );
  HS65_GS_NAND2X7 U21 ( .A(n213), .B(n268), .Z(n49) );
  HS65_GS_NOR2AX3 U22 ( .A(n49), .B(n56), .Z(n59) );
  HS65_GS_NOR2X6 U23 ( .A(n75), .B(n56), .Z(n55) );
  HS65_GS_NOR2X6 U24 ( .A(n214), .B(n75), .Z(n36) );
  HS65_GS_NOR2X6 U25 ( .A(n214), .B(n17), .Z(n90) );
  HS65_GS_NOR2X6 U26 ( .A(n269), .B(n267), .Z(n35) );
  HS65_GS_NOR2X6 U27 ( .A(n269), .B(n273), .Z(n53) );
  HS65_GS_NAND2X7 U28 ( .A(n213), .B(n95), .Z(n93) );
  HS65_GS_CBI4I1X5 U29 ( .A(n94), .B(n75), .C(n93), .D(n95), .Z(n200) );
  HS65_GS_IVX9 U30 ( .A(n79), .Z(n263) );
  HS65_GS_BFX9 U31 ( .A(nrst), .Z(n213) );
  HS65_GS_IVX9 U32 ( .A(n46), .Z(n265) );
  HS65_GS_IVX9 U33 ( .A(n75), .Z(n267) );
  HS65_GS_IVX9 U34 ( .A(n103), .Z(n268) );
  HS65_GS_AO212X4 U35 ( .A(n55), .B(data_in[13]), .C(mybest[13]), .D(n56), .E(
        n61), .Z(n148) );
  HS65_GS_AO12X9 U36 ( .A(N205), .B(n28), .C(n59), .Z(n61) );
  HS65_GS_AO212X4 U37 ( .A(n55), .B(data_in[15]), .C(mybest[15]), .D(n56), .E(
        n57), .Z(n146) );
  HS65_GS_AO12X9 U38 ( .A(N207), .B(n28), .C(n59), .Z(n57) );
  HS65_GS_AO212X4 U39 ( .A(n55), .B(data_in[7]), .C(n31), .D(n56), .E(n67), 
        .Z(n154) );
  HS65_GS_AO12X9 U40 ( .A(N199), .B(n28), .C(n59), .Z(n67) );
  HS65_GS_AO212X4 U41 ( .A(n55), .B(data_in[9]), .C(mybest[9]), .D(n56), .E(
        n65), .Z(n152) );
  HS65_GS_AO12X9 U42 ( .A(N201), .B(n28), .C(n59), .Z(n65) );
  HS65_GS_AO212X4 U43 ( .A(n55), .B(data_in[11]), .C(n34), .D(n56), .E(n63), 
        .Z(n150) );
  HS65_GS_AO12X9 U44 ( .A(N203), .B(n28), .C(n59), .Z(n63) );
  HS65_GS_IVX9 U45 ( .A(n76), .Z(n269) );
  HS65_GS_NOR2AX3 U46 ( .A(n83), .B(n84), .Z(n77) );
  HS65_GS_NOR2X6 U47 ( .A(n45), .B(n214), .Z(n54) );
  HS65_GS_AND2X4 U48 ( .A(n213), .B(n91), .Z(n17) );
  HS65_GS_NOR2X6 U49 ( .A(n51), .B(n214), .Z(n43) );
  HS65_GS_NAND2X7 U50 ( .A(n83), .B(n84), .Z(n79) );
  HS65_GS_OAI21X3 U51 ( .A(n48), .B(n49), .C(n50), .Z(n46) );
  HS65_GS_IVX9 U52 ( .A(n50), .Z(n264) );
  HS65_GS_NAND4ABX3 U53 ( .A(n271), .B(n262), .C(n94), .D(n97), .Z(n95) );
  HS65_GS_NOR4ABX2 U54 ( .A(n275), .B(n17), .C(n48), .D(N99), .Z(n97) );
  HS65_GS_AOI13X5 U55 ( .A(n91), .B(n51), .C(n92), .D(n93), .Z(n199) );
  HS65_GS_NAND2X7 U56 ( .A(n45), .B(n46), .Z(n40) );
  HS65_GS_NOR2X6 U57 ( .A(n89), .B(n214), .Z(n83) );
  HS65_GS_OR3X9 U58 ( .A(n29), .B(n214), .C(n51), .Z(n80) );
  HS65_GS_BFX9 U59 ( .A(n78), .Z(n29) );
  HS65_GS_AOI112X4 U60 ( .A(n272), .B(N154), .C(n262), .D(n269), .Z(n78) );
  HS65_GS_BFX9 U61 ( .A(mybest[7]), .Z(n31) );
  HS65_GS_NAND3X5 U62 ( .A(n270), .B(n274), .C(n100), .Z(n75) );
  HS65_GS_IVX9 U63 ( .A(n45), .Z(n273) );
  HS65_GS_NOR3X4 U64 ( .A(n272), .B(n273), .C(n28), .Z(n94) );
  HS65_GS_NAND3X5 U65 ( .A(n276), .B(n274), .C(n270), .Z(n101) );
  HS65_GS_IVX9 U66 ( .A(n51), .Z(n272) );
  HS65_GS_NOR2X6 U67 ( .A(n275), .B(n101), .Z(n103) );
  HS65_GS_NOR2X6 U68 ( .A(n262), .B(n28), .Z(n92) );
  HS65_GS_IVX9 U69 ( .A(n89), .Z(n262) );
  HS65_GS_IVX9 U70 ( .A(n99), .Z(n271) );
  HS65_GS_BFX9 U71 ( .A(n163), .Z(mybest[13]) );
  HS65_GS_BFX9 U72 ( .A(mybest[11]), .Z(n34) );
  HS65_GS_BFX9 U73 ( .A(n288), .Z(mybest[9]) );
  HS65_GS_IVX9 U74 ( .A(N89), .Z(n256) );
  HS65_GS_AO212X4 U75 ( .A(n55), .B(data_in[14]), .C(n16), .D(n56), .E(n60), 
        .Z(n147) );
  HS65_GS_AO12X9 U76 ( .A(N206), .B(n28), .C(n59), .Z(n60) );
  HS65_GS_AO212X4 U77 ( .A(n55), .B(data_in[12]), .C(n12), .D(n56), .E(n62), 
        .Z(n149) );
  HS65_GS_AO12X9 U78 ( .A(N204), .B(n28), .C(n59), .Z(n62) );
  HS65_GS_IVX9 U79 ( .A(data_in[13]), .Z(n210) );
  HS65_GS_IVX9 U80 ( .A(data_in[10]), .Z(n207) );
  HS65_GS_IVX9 U81 ( .A(data_in[2]), .Z(n168) );
  HS65_GS_IVX9 U82 ( .A(data_in[3]), .Z(n169) );
  HS65_GS_IVX9 U83 ( .A(data_in[5]), .Z(n171) );
  HS65_GS_IVX9 U84 ( .A(data_in[7]), .Z(n204) );
  HS65_GS_IVX9 U85 ( .A(data_in[11]), .Z(n208) );
  HS65_GS_IVX9 U86 ( .A(data_in[4]), .Z(n170) );
  HS65_GS_IVX9 U87 ( .A(data_in[6]), .Z(n172) );
  HS65_GS_IVX9 U88 ( .A(data_in[8]), .Z(n205) );
  HS65_GS_IVX9 U89 ( .A(data_in[12]), .Z(n209) );
  HS65_GS_IVX9 U90 ( .A(data_in[9]), .Z(n206) );
  HS65_GS_IVX9 U91 ( .A(data_in[14]), .Z(n211) );
  HS65_GS_IVX9 U92 ( .A(data_in[15]), .Z(n212) );
  HS65_GS_IVX9 U93 ( .A(data_in[1]), .Z(n167) );
  HS65_GS_BFX9 U94 ( .A(data_in[0]), .Z(n166) );
  HS65_GS_AO22X9 U95 ( .A(n292), .B(n56), .C(n213), .D(n74), .Z(n161) );
  HS65_GS_AO22X9 U96 ( .A(n55), .B(n166), .C(N192), .D(n28), .Z(n74) );
  HS65_GS_AO212X4 U97 ( .A(n55), .B(data_in[3]), .C(n11), .D(n56), .E(n71), 
        .Z(n158) );
  HS65_GS_AO12X9 U98 ( .A(N195), .B(n28), .C(n59), .Z(n71) );
  HS65_GS_AO212X4 U99 ( .A(n55), .B(data_in[5]), .C(n14), .D(n56), .E(n69), 
        .Z(n156) );
  HS65_GS_AO12X9 U100 ( .A(N197), .B(n28), .C(n59), .Z(n69) );
  HS65_GS_IVX9 U101 ( .A(N181), .Z(N197) );
  HS65_GS_AO212X4 U102 ( .A(n55), .B(data_in[4]), .C(n10), .D(n56), .E(n70), 
        .Z(n157) );
  HS65_GS_AO12X9 U103 ( .A(N196), .B(n28), .C(n59), .Z(n70) );
  HS65_GS_AO212X4 U104 ( .A(n55), .B(data_in[8]), .C(n15), .D(n56), .E(n66), 
        .Z(n153) );
  HS65_GS_AO12X9 U105 ( .A(N200), .B(n28), .C(n59), .Z(n66) );
  HS65_GS_AO212X4 U106 ( .A(n55), .B(data_in[1]), .C(mybest[1]), .D(n56), .E(
        n73), .Z(n160) );
  HS65_GS_AO12X9 U107 ( .A(N193), .B(n28), .C(n59), .Z(n73) );
  HS65_GS_AO212X4 U108 ( .A(n55), .B(data_in[2]), .C(n291), .D(n56), .E(n72), 
        .Z(n159) );
  HS65_GS_AO12X9 U109 ( .A(N194), .B(n28), .C(n59), .Z(n72) );
  HS65_GS_AO212X4 U110 ( .A(n55), .B(data_in[6]), .C(n290), .D(n56), .E(n68), 
        .Z(n155) );
  HS65_GS_AO12X9 U111 ( .A(N198), .B(n28), .C(n59), .Z(n68) );
  HS65_GS_AO212X4 U112 ( .A(n55), .B(data_in[10]), .C(n287), .D(n56), .E(n64), 
        .Z(n151) );
  HS65_GS_AO12X9 U113 ( .A(N202), .B(n28), .C(n59), .Z(n64) );
  HS65_GS_NAND3X5 U114 ( .A(n51), .B(n45), .C(n52), .Z(n50) );
  HS65_GS_AOI12X2 U115 ( .A(start), .B(n48), .C(n266), .Z(n52) );
  HS65_GS_IVX9 U116 ( .A(n35), .Z(n266) );
  HS65_GS_AOI12X2 U117 ( .A(n103), .B(en), .C(n214), .Z(n76) );
  HS65_GS_OAI211X5 U118 ( .A(en), .B(n268), .C(n99), .D(n102), .Z(n202) );
  HS65_GS_AOI12X2 U119 ( .A(state[3]), .B(n101), .C(n214), .Z(n102) );
  HS65_GS_OAI211X5 U120 ( .A(n79), .B(n278), .C(n80), .D(n82), .Z(n177) );
  HS65_GS_IVX9 U121 ( .A(kTemp[16]), .Z(n278) );
  HS65_GS_AOI22X6 U122 ( .A(N123), .B(n77), .C(k[1]), .D(n29), .Z(n82) );
  HS65_GS_OAI211X5 U123 ( .A(n79), .B(n277), .C(n80), .D(n81), .Z(n175) );
  HS65_GS_IVX9 U124 ( .A(kTemp[18]), .Z(n277) );
  HS65_GS_AOI22X6 U125 ( .A(N125), .B(n77), .C(k[3]), .D(n29), .Z(n81) );
  HS65_GS_AOI12X2 U126 ( .A(n96), .B(n92), .C(n93), .Z(n201) );
  HS65_GS_AOI12X2 U127 ( .A(start), .B(n48), .C(n267), .Z(n96) );
  HS65_GS_AO222X4 U128 ( .A(N122), .B(n77), .C(kTemp[15]), .D(n263), .E(k[0]), 
        .F(n29), .Z(n178) );
  HS65_GS_IVX9 U129 ( .A(kTemp[15]), .Z(N122) );
  HS65_GS_AO222X4 U130 ( .A(N124), .B(n77), .C(kTemp[17]), .D(n263), .E(k[2]), 
        .F(n29), .Z(n176) );
  HS65_GS_AO222X4 U131 ( .A(N126), .B(n77), .C(kTemp[19]), .D(n263), .E(k[4]), 
        .F(n29), .Z(n174) );
  HS65_GS_AO222X4 U132 ( .A(N92), .B(n36), .C(N170), .D(n43), .E(address[5]), 
        .F(n264), .Z(n124) );
  HS65_GS_AO222X4 U133 ( .A(N91), .B(n36), .C(N169), .D(n43), .E(address[4]), 
        .F(n264), .Z(n125) );
  HS65_GS_AO222X4 U134 ( .A(N89), .B(n36), .C(N167), .D(n43), .E(address[2]), 
        .F(n264), .Z(n127) );
  HS65_GS_OR2X9 U135 ( .A(k[1]), .B(N154), .Z(N167) );
  HS65_GS_AO112X9 U136 ( .A(address[7]), .B(n264), .C(n40), .D(n41), .Z(n122)
         );
  HS65_GS_AO22X9 U137 ( .A(N94), .B(n267), .C(N172), .D(n272), .Z(n41) );
  HS65_GS_AO112X9 U138 ( .A(address[3]), .B(n264), .C(n40), .D(n44), .Z(n126)
         );
  HS65_GS_AO22X9 U139 ( .A(N90), .B(n267), .C(N168), .D(n272), .Z(n44) );
  HS65_GS_IVX9 U140 ( .A(N73), .Z(N90) );
  HS65_GS_IVX9 U141 ( .A(N458), .Z(N168) );
  HS65_GS_AO112X9 U142 ( .A(N174), .B(n272), .C(n265), .D(n38), .Z(n120) );
  HS65_GS_AO22X9 U143 ( .A(address[9]), .B(n264), .C(N96), .D(n267), .Z(n38)
         );
  HS65_GS_AO112X9 U144 ( .A(N175), .B(n272), .C(n265), .D(n37), .Z(n119) );
  HS65_GS_AO22X9 U145 ( .A(address[10]), .B(n264), .C(N97), .D(n267), .Z(n37)
         );
  HS65_GS_NOR2AX3 U146 ( .A(k[9]), .B(N154), .Z(N444) );
  HS65_GS_AO112X9 U147 ( .A(N166), .B(n272), .C(n265), .D(n47), .Z(n128) );
  HS65_GS_NOR2AX3 U148 ( .A(k[0]), .B(N154), .Z(N166) );
  HS65_GS_AO22X9 U149 ( .A(address[1]), .B(n264), .C(N88), .D(n267), .Z(n47)
         );
  HS65_GS_AO22X9 U150 ( .A(kTemp[19]), .B(n13), .C(N119), .D(n90), .Z(n179) );
  HS65_GS_AO22X9 U151 ( .A(kTemp[1]), .B(n17), .C(N101), .D(n90), .Z(n197) );
  HS65_GS_AO22X9 U152 ( .A(kTemp[15]), .B(n17), .C(N115), .D(n90), .Z(n183) );
  HS65_GS_AO22X9 U153 ( .A(l[15]), .B(n35), .C(N86), .D(n36), .Z(n104) );
  HS65_GS_AO22X9 U154 ( .A(l[0]), .B(n35), .C(N88), .D(n36), .Z(n203) );
  HS65_GS_AO22X9 U155 ( .A(done), .B(n76), .C(n271), .D(n213), .Z(n162) );
  HS65_GS_AO22X9 U156 ( .A(l[2]), .B(n35), .C(N73), .D(n36), .Z(n117) );
  HS65_GS_AO22X9 U157 ( .A(kTemp[18]), .B(n17), .C(N118), .D(n90), .Z(n180) );
  HS65_GS_AO22X9 U158 ( .A(l[1]), .B(n35), .C(N89), .D(n36), .Z(n118) );
  HS65_GS_AO22X9 U159 ( .A(kTemp[16]), .B(n17), .C(N116), .D(n90), .Z(n182) );
  HS65_GS_AO22X9 U160 ( .A(kTemp[17]), .B(n17), .C(N117), .D(n90), .Z(n181) );
  HS65_GS_AO22X9 U161 ( .A(l[5]), .B(n35), .C(N76), .D(n36), .Z(n114) );
  HS65_GS_AO22X9 U162 ( .A(l[6]), .B(n35), .C(N77), .D(n36), .Z(n113) );
  HS65_GS_AO22X9 U163 ( .A(l[7]), .B(n35), .C(N78), .D(n36), .Z(n112) );
  HS65_GS_NAND2X7 U164 ( .A(n283), .B(n284), .Z(n173) );
  HS65_GS_NAND2X7 U165 ( .A(N127), .B(n77), .Z(n283) );
  HS65_GS_NAND2X7 U166 ( .A(k[5]), .B(n29), .Z(n284) );
  HS65_GS_AO22X9 U167 ( .A(l[3]), .B(n35), .C(N74), .D(n36), .Z(n116) );
  HS65_GS_AO22X9 U168 ( .A(l[4]), .B(n35), .C(N75), .D(n36), .Z(n115) );
  HS65_GS_AO22X9 U169 ( .A(l[8]), .B(n35), .C(N79), .D(n36), .Z(n111) );
  HS65_GS_AO22X9 U170 ( .A(kTemp[8]), .B(n17), .C(N108), .D(n90), .Z(n190) );
  HS65_GS_AO22X9 U171 ( .A(kTemp[12]), .B(n17), .C(N112), .D(n90), .Z(n186) );
  HS65_GS_AO22X9 U172 ( .A(kTemp[14]), .B(n17), .C(N114), .D(n90), .Z(n184) );
  HS65_GS_AO22X9 U173 ( .A(kTemp[10]), .B(n17), .C(N110), .D(n90), .Z(n188) );
  HS65_GS_AO22X9 U174 ( .A(kTemp[9]), .B(n17), .C(N109), .D(n90), .Z(n189) );
  HS65_GS_AO22X9 U175 ( .A(kTemp[13]), .B(n17), .C(N113), .D(n90), .Z(n185) );
  HS65_GS_AO22X9 U176 ( .A(l[9]), .B(n35), .C(N80), .D(n36), .Z(n110) );
  HS65_GS_AO22X9 U177 ( .A(kTemp[7]), .B(n17), .C(N107), .D(n90), .Z(n191) );
  HS65_GS_AO22X9 U178 ( .A(kTemp[11]), .B(n17), .C(N111), .D(n90), .Z(n187) );
  HS65_GS_AO22X9 U179 ( .A(kTemp[6]), .B(n17), .C(N106), .D(n90), .Z(n192) );
  HS65_GS_AO22X9 U180 ( .A(l[10]), .B(n35), .C(N81), .D(n36), .Z(n109) );
  HS65_GS_AO22X9 U181 ( .A(l[11]), .B(n35), .C(N82), .D(n36), .Z(n108) );
  HS65_GS_AO22X9 U182 ( .A(l[12]), .B(n35), .C(N83), .D(n36), .Z(n107) );
  HS65_GS_AO22X9 U183 ( .A(l[13]), .B(n35), .C(N84), .D(n36), .Z(n106) );
  HS65_GS_AO22X9 U184 ( .A(l[14]), .B(n35), .C(N85), .D(n36), .Z(n105) );
  HS65_GS_AO22X9 U185 ( .A(neighborCount[1]), .B(n53), .C(data_in[1]), .D(n54), 
        .Z(n144) );
  HS65_GS_AO22X9 U186 ( .A(address[8]), .B(n264), .C(n213), .D(n39), .Z(n121)
         );
  HS65_GS_AO212X4 U187 ( .A(N173), .B(n272), .C(N95), .D(n267), .E(n273), .Z(
        n39) );
  HS65_GS_AO22X9 U188 ( .A(address[6]), .B(n264), .C(n213), .D(n42), .Z(n123)
         );
  HS65_GS_AO212X4 U189 ( .A(N171), .B(n272), .C(N93), .D(n267), .E(n273), .Z(
        n42) );
  HS65_GS_AO22X9 U190 ( .A(kTemp[2]), .B(n13), .C(N102), .D(n90), .Z(n196) );
  HS65_GS_AO22X9 U191 ( .A(kTemp[4]), .B(n17), .C(N104), .D(n90), .Z(n194) );
  HS65_GS_AO22X9 U192 ( .A(kTemp[5]), .B(n17), .C(N105), .D(n90), .Z(n193) );
  HS65_GS_AO22X9 U193 ( .A(kTemp[3]), .B(n17), .C(N103), .D(n90), .Z(n195) );
  HS65_GS_AO22X9 U194 ( .A(neighborCount[0]), .B(n53), .C(n166), .D(n54), .Z(
        n145) );
  HS65_GS_AO22X9 U195 ( .A(neighborCount[2]), .B(n53), .C(data_in[2]), .D(n54), 
        .Z(n143) );
  HS65_GS_AO22X9 U196 ( .A(neighborCount[3]), .B(n53), .C(data_in[3]), .D(n54), 
        .Z(n142) );
  HS65_GS_AO22X9 U197 ( .A(neighborCount[4]), .B(n53), .C(data_in[4]), .D(n54), 
        .Z(n141) );
  HS65_GS_AO22X9 U198 ( .A(neighborCount[7]), .B(n53), .C(data_in[7]), .D(n54), 
        .Z(n138) );
  HS65_GS_AO22X9 U199 ( .A(neighborCount[8]), .B(n53), .C(data_in[8]), .D(n54), 
        .Z(n137) );
  HS65_GS_AO22X9 U200 ( .A(neighborCount[11]), .B(n53), .C(data_in[11]), .D(
        n54), .Z(n134) );
  HS65_GS_AO22X9 U201 ( .A(neighborCount[12]), .B(n53), .C(data_in[12]), .D(
        n54), .Z(n133) );
  HS65_GS_AO22X9 U202 ( .A(neighborCount[15]), .B(n53), .C(data_in[15]), .D(
        n54), .Z(n130) );
  HS65_GS_AO22X9 U203 ( .A(neighborCount[5]), .B(n53), .C(data_in[5]), .D(n54), 
        .Z(n140) );
  HS65_GS_AO22X9 U204 ( .A(neighborCount[6]), .B(n53), .C(data_in[6]), .D(n54), 
        .Z(n139) );
  HS65_GS_AO22X9 U205 ( .A(neighborCount[9]), .B(n53), .C(data_in[9]), .D(n54), 
        .Z(n136) );
  HS65_GS_AO22X9 U206 ( .A(neighborCount[10]), .B(n53), .C(data_in[10]), .D(
        n54), .Z(n135) );
  HS65_GS_AO22X9 U207 ( .A(neighborCount[13]), .B(n53), .C(data_in[13]), .D(
        n54), .Z(n132) );
  HS65_GS_AO22X9 U208 ( .A(neighborCount[14]), .B(n53), .C(data_in[14]), .D(
        n54), .Z(n131) );
  HS65_GS_AND2X4 U209 ( .A(kTemp[0]), .B(n13), .Z(n198) );
  HS65_GS_AND2X4 U210 ( .A(address[0]), .B(n264), .Z(n129) );
  HS65_GS_AND2X4 U211 ( .A(k[8]), .B(n29), .Z(n18) );
  HS65_GS_AND2X4 U212 ( .A(k[9]), .B(n29), .Z(n19) );
  HS65_GS_AND2X4 U213 ( .A(k[7]), .B(n29), .Z(n20) );
  HS65_GS_AND2X4 U214 ( .A(k[6]), .B(n29), .Z(n21) );
  HS65_GS_AND2X4 U215 ( .A(k[10]), .B(n29), .Z(n22) );
  HS65_GS_AND2X4 U216 ( .A(k[14]), .B(n29), .Z(n23) );
  HS65_GS_AND2X4 U217 ( .A(k[13]), .B(n29), .Z(n24) );
  HS65_GS_AND2X4 U218 ( .A(k[11]), .B(n29), .Z(n25) );
  HS65_GS_AND2X4 U219 ( .A(k[12]), .B(n29), .Z(n26) );
  HS65_GS_AND2X4 U220 ( .A(k[15]), .B(n29), .Z(n27) );
  HS65_GS_BFX9 U221 ( .A(n289), .Z(mybest[7]) );
  HS65_GS_IVX9 U222 ( .A(mybest[15]), .Z(n165) );
  HS65_GS_BFX9 U223 ( .A(n286), .Z(mybest[11]) );
  HS65_GS_BFX9 U224 ( .A(n285), .Z(n163) );
  HS65_GS_BFX9 U225 ( .A(n58), .Z(n28) );
  HS65_GS_NOR3AX2 U226 ( .A(n100), .B(state[0]), .C(n274), .Z(n58) );
  HS65_GS_NOR2X6 U227 ( .A(n101), .B(state[3]), .Z(n48) );
  HS65_GS_NAND3X5 U228 ( .A(n98), .B(n274), .C(state[0]), .Z(n45) );
  HS65_GS_NAND3X5 U229 ( .A(n261), .B(n260), .C(n259), .Z(N154) );
  HS65_GS_NAND3X5 U230 ( .A(state[0]), .B(n98), .C(state[2]), .Z(n51) );
  HS65_GS_NOR2X6 U231 ( .A(n276), .B(state[3]), .Z(n100) );
  HS65_GS_IVX9 U232 ( .A(state[2]), .Z(n274) );
  HS65_GS_IVX9 U233 ( .A(n16), .Z(n232) );
  HS65_GS_NOR2X6 U234 ( .A(state[3]), .B(state[1]), .Z(n98) );
  HS65_GS_IVX9 U235 ( .A(state[0]), .Z(n270) );
  HS65_GS_NAND3X5 U236 ( .A(n100), .B(n274), .C(state[0]), .Z(n91) );
  HS65_GS_NOR4ABX2 U237 ( .A(n85), .B(n86), .C(n87), .D(n88), .Z(n84) );
  HS65_GS_OR4X4 U238 ( .A(kTemp[5]), .B(kTemp[4]), .C(kTemp[2]), .D(kTemp[3]), 
        .Z(n88) );
  HS65_GS_OR4X4 U239 ( .A(kTemp[9]), .B(kTemp[8]), .C(kTemp[6]), .D(kTemp[7]), 
        .Z(n87) );
  HS65_GS_NOR3X4 U240 ( .A(kTemp[0]), .B(kTemp[11]), .C(kTemp[10]), .Z(n85) );
  HS65_GS_NAND3X5 U241 ( .A(state[0]), .B(n100), .C(state[2]), .Z(n99) );
  HS65_GS_NAND3X5 U242 ( .A(n98), .B(n270), .C(state[2]), .Z(n89) );
  HS65_GS_NOR2AX3 U243 ( .A(k[2]), .B(N154), .Z(N458) );
  HS65_GS_IVX9 U244 ( .A(state[3]), .Z(n275) );
  HS65_GS_HA1X4 U245 ( .A0(kTemp[16]), .B0(kTemp[15]), .CO(\add_75/carry[2] ), 
        .S0(N123) );
  HS65_GS_HA1X4 U246 ( .A0(kTemp[18]), .B0(\add_75/carry[3] ), .CO(
        \add_75/carry[4] ), .S0(N125) );
  HS65_GS_HA1X4 U247 ( .A0(kTemp[17]), .B0(\add_75/carry[2] ), .CO(
        \add_75/carry[3] ), .S0(N124) );
  HS65_GS_IVX9 U248 ( .A(state[1]), .Z(n276) );
  HS65_GS_HA1X4 U249 ( .A0(kTemp[19]), .B0(\add_75/carry[4] ), .CO(N127), .S0(
        N126) );
  HS65_GS_NOR2AX3 U250 ( .A(k[8]), .B(N154), .Z(N446) );
  HS65_GS_NOR2AX3 U251 ( .A(k[5]), .B(N154), .Z(N452) );
  HS65_GS_NOR2AX3 U252 ( .A(k[4]), .B(N154), .Z(N454) );
  HS65_GS_NOR2AX3 U253 ( .A(k[7]), .B(N154), .Z(N448) );
  HS65_GS_NOR2AX3 U254 ( .A(k[6]), .B(N154), .Z(N450) );
  HS65_GS_OR2X9 U255 ( .A(k[3]), .B(N154), .Z(N161) );
  HS65_GS_IVX9 U256 ( .A(neighborCount[1]), .Z(n255) );
  HS65_GS_NOR4X4 U257 ( .A(kTemp[12]), .B(kTemp[13]), .C(kTemp[1]), .D(
        kTemp[14]), .Z(n86) );
  HS65_GSS_XOR2X3 U258 ( .A(N80), .B(\add_55/carry[10] ), .Z(N97) );
  HS65_GSS_XNOR2X3 U259 ( .A(N444), .B(\add_84/carry[10] ), .Z(N175) );
  HS65_GS_AND2X4 U260 ( .A(N79), .B(\add_55/carry[9] ), .Z(\add_55/carry[10] )
         );
  HS65_GSS_XOR2X3 U261 ( .A(\add_55/carry[9] ), .B(N79), .Z(N96) );
  HS65_GS_OR2X4 U262 ( .A(\add_84/carry[9] ), .B(N446), .Z(\add_84/carry[10] )
         );
  HS65_GSS_XNOR2X3 U263 ( .A(N446), .B(\add_84/carry[9] ), .Z(N174) );
  HS65_GS_OR2X4 U264 ( .A(\add_55/carry[8] ), .B(N78), .Z(\add_55/carry[9] )
         );
  HS65_GSS_XNOR2X3 U265 ( .A(N78), .B(\add_55/carry[8] ), .Z(N95) );
  HS65_GS_AND2X4 U266 ( .A(N448), .B(\add_84/carry[8] ), .Z(\add_84/carry[9] )
         );
  HS65_GSS_XOR2X3 U267 ( .A(\add_84/carry[8] ), .B(N448), .Z(N173) );
  HS65_GS_AND2X4 U268 ( .A(N450), .B(\add_84/carry[7] ), .Z(\add_84/carry[8] )
         );
  HS65_GSS_XOR2X3 U269 ( .A(\add_84/carry[7] ), .B(N450), .Z(N172) );
  HS65_GS_OR2X4 U270 ( .A(\add_55/carry[7] ), .B(N77), .Z(\add_55/carry[8] )
         );
  HS65_GSS_XNOR2X3 U271 ( .A(N77), .B(\add_55/carry[7] ), .Z(N94) );
  HS65_GS_OR2X4 U272 ( .A(\add_55/carry[6] ), .B(N76), .Z(\add_55/carry[7] )
         );
  HS65_GSS_XNOR2X3 U273 ( .A(N76), .B(\add_55/carry[6] ), .Z(N93) );
  HS65_GS_OR2X4 U274 ( .A(\add_84/carry[6] ), .B(N452), .Z(\add_84/carry[7] )
         );
  HS65_GSS_XNOR2X3 U275 ( .A(N452), .B(\add_84/carry[6] ), .Z(N171) );
  HS65_GS_AND2X4 U276 ( .A(N454), .B(\add_84/carry[5] ), .Z(\add_84/carry[6] )
         );
  HS65_GSS_XOR2X3 U277 ( .A(\add_84/carry[5] ), .B(N454), .Z(N170) );
  HS65_GS_AND2X4 U278 ( .A(N75), .B(\add_55/carry[5] ), .Z(\add_55/carry[6] )
         );
  HS65_GSS_XOR2X3 U279 ( .A(\add_55/carry[5] ), .B(N75), .Z(N92) );
  HS65_GS_AND2X4 U280 ( .A(N161), .B(N458), .Z(\add_84/carry[5] ) );
  HS65_GSS_XOR2X3 U281 ( .A(N458), .B(N161), .Z(N169) );
  HS65_GS_AND2X4 U282 ( .A(N74), .B(N73), .Z(\add_55/carry[5] ) );
  HS65_GSS_XOR2X3 U283 ( .A(N73), .B(N74), .Z(N91) );
  HS65_GSS_XOR2X3 U284 ( .A(N191), .B(\add_93/carry[15] ), .Z(N207) );
  HS65_GS_AND2X4 U285 ( .A(N190), .B(\add_93/carry[14] ), .Z(
        \add_93/carry[15] ) );
  HS65_GSS_XOR2X3 U286 ( .A(\add_93/carry[14] ), .B(N190), .Z(N206) );
  HS65_GS_AND2X4 U287 ( .A(N189), .B(\add_93/carry[13] ), .Z(
        \add_93/carry[14] ) );
  HS65_GSS_XOR2X3 U288 ( .A(\add_93/carry[13] ), .B(N189), .Z(N205) );
  HS65_GS_AND2X4 U289 ( .A(N188), .B(\add_93/carry[12] ), .Z(
        \add_93/carry[13] ) );
  HS65_GSS_XOR2X3 U290 ( .A(\add_93/carry[12] ), .B(N188), .Z(N204) );
  HS65_GS_AND2X4 U291 ( .A(N187), .B(\add_93/carry[11] ), .Z(
        \add_93/carry[12] ) );
  HS65_GSS_XOR2X3 U292 ( .A(\add_93/carry[11] ), .B(N187), .Z(N203) );
  HS65_GS_AND2X4 U293 ( .A(N186), .B(\add_93/carry[10] ), .Z(
        \add_93/carry[11] ) );
  HS65_GSS_XOR2X3 U294 ( .A(\add_93/carry[10] ), .B(N186), .Z(N202) );
  HS65_GS_AND2X4 U295 ( .A(N185), .B(\add_93/carry[9] ), .Z(\add_93/carry[10] ) );
  HS65_GSS_XOR2X3 U296 ( .A(\add_93/carry[9] ), .B(N185), .Z(N201) );
  HS65_GS_AND2X4 U297 ( .A(N184), .B(\add_93/carry[8] ), .Z(\add_93/carry[9] )
         );
  HS65_GSS_XOR2X3 U298 ( .A(\add_93/carry[8] ), .B(N184), .Z(N200) );
  HS65_GS_AND2X4 U299 ( .A(N183), .B(\add_93/carry[7] ), .Z(\add_93/carry[8] )
         );
  HS65_GSS_XOR2X3 U300 ( .A(\add_93/carry[7] ), .B(N183), .Z(N199) );
  HS65_GS_AND2X4 U301 ( .A(N182), .B(N181), .Z(\add_93/carry[7] ) );
  HS65_GSS_XOR2X3 U302 ( .A(N181), .B(N182), .Z(N198) );
  HS65_GS_NOR2AX3 U303 ( .A(mybest[0]), .B(n166), .Z(n216) );
  HS65_GS_NOR2AX3 U304 ( .A(n216), .B(data_in[1]), .Z(n215) );
  HS65_GS_OA222X4 U305 ( .A(n216), .B(n167), .C(mybest[1]), .D(n215), .E(n291), 
        .F(n168), .Z(n217) );
  HS65_GS_AO212X4 U306 ( .A(n168), .B(n291), .C(n169), .D(n11), .E(n217), .Z(
        n218) );
  HS65_GS_OA212X4 U307 ( .A(n11), .B(n169), .C(n10), .D(n170), .E(n218), .Z(
        n219) );
  HS65_GS_AO212X4 U308 ( .A(n170), .B(n10), .C(n171), .D(n14), .E(n219), .Z(
        n220) );
  HS65_GS_OA212X4 U309 ( .A(n14), .B(n171), .C(n290), .D(n172), .E(n220), .Z(
        n221) );
  HS65_GS_AO212X4 U310 ( .A(n172), .B(n290), .C(n204), .D(n31), .E(n221), .Z(
        n222) );
  HS65_GS_OA212X4 U311 ( .A(n31), .B(n204), .C(n15), .D(n205), .E(n222), .Z(
        n223) );
  HS65_GS_AO212X4 U312 ( .A(n205), .B(n15), .C(n206), .D(mybest[9]), .E(n223), 
        .Z(n224) );
  HS65_GS_OA212X4 U313 ( .A(n287), .B(n207), .C(mybest[9]), .D(n206), .E(n224), 
        .Z(n225) );
  HS65_GS_AO212X4 U314 ( .A(n207), .B(n287), .C(n208), .D(n34), .E(n225), .Z(
        n226) );
  HS65_GS_OA212X4 U315 ( .A(n34), .B(n208), .C(n12), .D(n209), .E(n226), .Z(
        n227) );
  HS65_GS_AO212X4 U316 ( .A(n209), .B(n12), .C(n210), .D(mybest[13]), .E(n227), 
        .Z(n228) );
  HS65_GS_OAI212X3 U317 ( .A(mybest[13]), .B(n210), .C(n16), .D(n211), .E(n228), .Z(n229) );
  HS65_GS_OAI12X2 U318 ( .A(data_in[14]), .B(n232), .C(n229), .Z(n230) );
  HS65_GS_OAI12X2 U319 ( .A(mybest[15]), .B(n212), .C(n230), .Z(n231) );
  HS65_GS_OAI12X2 U320 ( .A(data_in[15]), .B(n165), .C(n231), .Z(N98) );
  HS65_GSS_XNOR2X3 U321 ( .A(neighborCount[14]), .B(N85), .Z(n236) );
  HS65_GSS_XNOR2X3 U322 ( .A(neighborCount[13]), .B(N84), .Z(n235) );
  HS65_GSS_XOR2X3 U323 ( .A(neighborCount[11]), .B(N82), .Z(n234) );
  HS65_GSS_XOR2X3 U324 ( .A(neighborCount[12]), .B(N83), .Z(n233) );
  HS65_GS_NOR4ABX2 U325 ( .A(n236), .B(n235), .C(n234), .D(n233), .Z(n254) );
  HS65_GSS_XNOR2X3 U326 ( .A(neighborCount[10]), .B(N81), .Z(n240) );
  HS65_GSS_XNOR2X3 U327 ( .A(neighborCount[9]), .B(N80), .Z(n239) );
  HS65_GSS_XOR2X3 U328 ( .A(neighborCount[7]), .B(N78), .Z(n238) );
  HS65_GSS_XOR2X3 U329 ( .A(neighborCount[8]), .B(N79), .Z(n237) );
  HS65_GS_NOR4ABX2 U330 ( .A(n240), .B(n239), .C(n238), .D(n237), .Z(n253) );
  HS65_GSS_XOR2X3 U331 ( .A(neighborCount[15]), .B(N86), .Z(n246) );
  HS65_GSS_XOR2X3 U332 ( .A(neighborCount[2]), .B(N73), .Z(n245) );
  HS65_GS_NOR2AX3 U333 ( .A(N88), .B(neighborCount[0]), .Z(n241) );
  HS65_GS_OAI22X1 U334 ( .A(N89), .B(n241), .C(n241), .D(n255), .Z(n244) );
  HS65_GS_NOR2AX3 U335 ( .A(neighborCount[0]), .B(N88), .Z(n242) );
  HS65_GS_OAI22X1 U336 ( .A(n242), .B(n256), .C(neighborCount[1]), .D(n242), 
        .Z(n243) );
  HS65_GS_NAND4ABX3 U337 ( .A(n246), .B(n245), .C(n244), .D(n243), .Z(n252) );
  HS65_GSS_XOR2X3 U338 ( .A(neighborCount[3]), .B(N74), .Z(n250) );
  HS65_GSS_XOR2X3 U339 ( .A(neighborCount[4]), .B(N75), .Z(n249) );
  HS65_GSS_XNOR2X3 U340 ( .A(neighborCount[6]), .B(N77), .Z(n248) );
  HS65_GSS_XNOR2X3 U341 ( .A(neighborCount[5]), .B(N76), .Z(n247) );
  HS65_GS_NAND4ABX3 U342 ( .A(n250), .B(n249), .C(n248), .D(n247), .Z(n251) );
  HS65_GS_NOR4ABX2 U343 ( .A(n254), .B(n253), .C(n252), .D(n251), .Z(N99) );
  HS65_GS_NOR3X1 U344 ( .A(k[15]), .B(k[5]), .C(k[4]), .Z(n261) );
  HS65_GS_NOR4X4 U345 ( .A(k[9]), .B(k[8]), .C(k[7]), .D(k[6]), .Z(n260) );
  HS65_GS_CBI4I1X3 U346 ( .A(k[1]), .B(k[0]), .C(k[2]), .D(k[3]), .Z(n258) );
  HS65_GS_NOR3X1 U347 ( .A(k[12]), .B(k[14]), .C(k[13]), .Z(n257) );
  HS65_GS_NOR4ABX2 U348 ( .A(n258), .B(n257), .C(k[11]), .D(k[10]), .Z(n259)
         );
endmodule


module betterNeighborsInMyCluster_DW01_inc_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HS65_GS_HA1X4 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .CO(carry[15]), .S0(
        SUM[14]) );
  HS65_GS_HA1X4 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .CO(carry[4]), .S0(SUM[3])
         );
  HS65_GS_HA1X4 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .CO(carry[14]), .S0(
        SUM[13]) );
  HS65_GS_HA1X4 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .CO(carry[13]), .S0(
        SUM[12]) );
  HS65_GS_HA1X4 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .CO(carry[12]), .S0(
        SUM[11]) );
  HS65_GS_HA1X4 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .CO(carry[11]), .S0(
        SUM[10]) );
  HS65_GS_HA1X4 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .CO(carry[10]), .S0(SUM[9])
         );
  HS65_GS_HA1X4 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .CO(carry[9]), .S0(SUM[8])
         );
  HS65_GS_HA1X4 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .CO(carry[8]), .S0(SUM[7])
         );
  HS65_GS_HA1X4 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .CO(carry[7]), .S0(SUM[6])
         );
  HS65_GS_HA1X4 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .CO(carry[6]), .S0(SUM[5])
         );
  HS65_GS_HA1X4 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .CO(carry[5]), .S0(SUM[4])
         );
  HS65_GS_HA1X4 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .CO(carry[3]), .S0(SUM[2])
         );
  HS65_GS_HA1X4 U1_1_1 ( .A0(A[1]), .B0(A[0]), .CO(carry[2]), .S0(SUM[1]) );
  HS65_GS_IVX9 U1 ( .A(A[0]), .Z(SUM[0]) );
  HS65_GSS_XOR2X3 U2 ( .A(carry[15]), .B(A[15]), .Z(SUM[15]) );
endmodule


module betterNeighborsInMyCluster_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HS65_GS_HA1X4 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .CO(carry[15]), .S0(
        SUM[14]) );
  HS65_GS_HA1X4 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .CO(carry[8]), .S0(SUM[7])
         );
  HS65_GS_HA1X4 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .CO(carry[7]), .S0(SUM[6])
         );
  HS65_GS_HA1X4 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .CO(carry[6]), .S0(SUM[5])
         );
  HS65_GS_HA1X4 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .CO(carry[14]), .S0(
        SUM[13]) );
  HS65_GS_HA1X4 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .CO(carry[13]), .S0(
        SUM[12]) );
  HS65_GS_HA1X4 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .CO(carry[12]), .S0(
        SUM[11]) );
  HS65_GS_HA1X4 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .CO(carry[11]), .S0(
        SUM[10]) );
  HS65_GS_HA1X4 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .CO(carry[10]), .S0(SUM[9])
         );
  HS65_GS_HA1X4 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .CO(carry[9]), .S0(SUM[8])
         );
  HS65_GS_HA1X4 U1_1_1 ( .A0(A[1]), .B0(A[0]), .CO(carry[2]), .S0(SUM[1]) );
  HS65_GS_HA1X4 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .CO(carry[5]), .S0(SUM[4])
         );
  HS65_GS_HA1X4 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .CO(carry[4]), .S0(SUM[3])
         );
  HS65_GS_HA1X4 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .CO(carry[3]), .S0(SUM[2])
         );
  HS65_GS_IVX9 U1 ( .A(A[0]), .Z(SUM[0]) );
  HS65_GSS_XOR2X3 U2 ( .A(carry[15]), .B(A[15]), .Z(SUM[15]) );
endmodule


module betterNeighborsInMyCluster_DW01_inc_2 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HS65_GS_HA1X4 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .CO(carry[15]), .S0(
        SUM[14]) );
  HS65_GS_HA1X4 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .CO(carry[9]), .S0(SUM[8])
         );
  HS65_GS_HA1X4 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .CO(carry[5]), .S0(SUM[4])
         );
  HS65_GS_HA1X4 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .CO(carry[4]), .S0(SUM[3])
         );
  HS65_GS_HA1X4 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .CO(carry[8]), .S0(SUM[7])
         );
  HS65_GS_HA1X4 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .CO(carry[7]), .S0(SUM[6])
         );
  HS65_GS_HA1X4 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .CO(carry[6]), .S0(SUM[5])
         );
  HS65_GS_HA1X4 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .CO(carry[3]), .S0(SUM[2])
         );
  HS65_GS_HA1X4 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .CO(carry[14]), .S0(
        SUM[13]) );
  HS65_GS_HA1X4 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .CO(carry[13]), .S0(
        SUM[12]) );
  HS65_GS_HA1X4 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .CO(carry[12]), .S0(
        SUM[11]) );
  HS65_GS_HA1X4 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .CO(carry[11]), .S0(
        SUM[10]) );
  HS65_GS_HA1X4 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .CO(carry[10]), .S0(SUM[9])
         );
  HS65_GS_HA1X4 U1_1_1 ( .A0(A[1]), .B0(A[0]), .CO(carry[2]), .S0(SUM[1]) );
  HS65_GS_IVX9 U1 ( .A(A[0]), .Z(SUM[0]) );
  HS65_GSS_XOR2X3 U2 ( .A(carry[15]), .B(A[15]), .Z(SUM[15]) );
endmodule


module betterNeighborsInMyCluster_DW01_inc_3 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HS65_GS_HA1X4 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .CO(carry[15]), .S0(
        SUM[14]) );
  HS65_GS_HA1X4 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .CO(carry[14]), .S0(
        SUM[13]) );
  HS65_GS_HA1X4 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .CO(carry[13]), .S0(
        SUM[12]) );
  HS65_GS_HA1X4 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .CO(carry[12]), .S0(
        SUM[11]) );
  HS65_GS_HA1X4 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .CO(carry[11]), .S0(
        SUM[10]) );
  HS65_GS_HA1X4 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .CO(carry[10]), .S0(SUM[9])
         );
  HS65_GS_HA1X4 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .CO(carry[9]), .S0(SUM[8])
         );
  HS65_GS_HA1X4 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .CO(carry[8]), .S0(SUM[7])
         );
  HS65_GS_HA1X4 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .CO(carry[7]), .S0(SUM[6])
         );
  HS65_GS_HA1X4 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .CO(carry[6]), .S0(SUM[5])
         );
  HS65_GS_HA1X4 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .CO(carry[5]), .S0(SUM[4])
         );
  HS65_GS_HA1X4 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .CO(carry[4]), .S0(SUM[3])
         );
  HS65_GS_HA1X4 U1_1_1 ( .A0(A[1]), .B0(A[0]), .CO(carry[2]), .S0(SUM[1]) );
  HS65_GS_HA1X4 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .CO(carry[3]), .S0(SUM[2])
         );
  HS65_GS_IVX9 U1 ( .A(A[0]), .Z(SUM[0]) );
  HS65_GSS_XOR2X3 U2 ( .A(carry[15]), .B(A[15]), .Z(SUM[15]) );
endmodule


module betterNeighborsInMyCluster_DW01_add_10 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   \A[1] , \A[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58;
  assign SUM[2] = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  HS65_GS_IVX9 U2 ( .A(n36), .Z(n1) );
  HS65_GS_IVX9 U3 ( .A(n37), .Z(n2) );
  HS65_GS_NAND2X7 U4 ( .A(A[3]), .B(B[3]), .Z(n24) );
  HS65_GSS_XOR2X6 U5 ( .A(B[3]), .B(A[3]), .Z(SUM[3]) );
  HS65_GSS_XOR2X3 U6 ( .A(n3), .B(n4), .Z(SUM[9]) );
  HS65_GS_NAND2AX4 U7 ( .A(n5), .B(n6), .Z(n3) );
  HS65_GSS_XNOR2X3 U8 ( .A(n7), .B(n8), .Z(SUM[8]) );
  HS65_GS_NOR2AX3 U9 ( .A(n9), .B(n10), .Z(n8) );
  HS65_GSS_XOR2X3 U10 ( .A(n11), .B(n12), .Z(SUM[7]) );
  HS65_GS_NOR2AX3 U11 ( .A(n13), .B(n14), .Z(n12) );
  HS65_GS_OAI12X2 U12 ( .A(n15), .B(n16), .C(n17), .Z(n11) );
  HS65_GSS_XNOR2X3 U13 ( .A(n16), .B(n18), .Z(SUM[6]) );
  HS65_GS_NOR2AX3 U14 ( .A(n17), .B(n15), .Z(n18) );
  HS65_GS_OA12X4 U15 ( .A(n19), .B(n20), .C(n21), .Z(n16) );
  HS65_GSS_XOR2X3 U16 ( .A(n22), .B(n20), .Z(SUM[5]) );
  HS65_GS_NAND2AX4 U17 ( .A(n19), .B(n21), .Z(n22) );
  HS65_GSS_XOR2X3 U18 ( .A(n23), .B(n24), .Z(SUM[4]) );
  HS65_GS_NAND2AX4 U19 ( .A(n25), .B(n26), .Z(n23) );
  HS65_GS_OAI12X2 U20 ( .A(n27), .B(n28), .C(n29), .Z(SUM[17]) );
  HS65_GSS_XNOR2X3 U21 ( .A(n28), .B(n30), .Z(SUM[16]) );
  HS65_GS_NOR2AX3 U22 ( .A(n29), .B(n27), .Z(n30) );
  HS65_GS_NOR2X2 U23 ( .A(B[16]), .B(A[16]), .Z(n27) );
  HS65_GS_NAND2X2 U24 ( .A(B[16]), .B(A[16]), .Z(n29) );
  HS65_GS_CB4I1X4 U25 ( .A(n31), .B(n32), .C(n33), .D(n34), .Z(n28) );
  HS65_GS_CB4I6X4 U26 ( .A(n35), .B(n36), .C(n37), .D(n38), .Z(n32) );
  HS65_GS_OA12X4 U27 ( .A(n39), .B(n40), .C(n41), .Z(n35) );
  HS65_GSS_XOR2X3 U28 ( .A(n42), .B(n43), .Z(SUM[15]) );
  HS65_GS_NOR2AX3 U29 ( .A(n34), .B(n33), .Z(n43) );
  HS65_GS_NOR2X2 U30 ( .A(B[15]), .B(A[15]), .Z(n33) );
  HS65_GS_NAND2X2 U31 ( .A(B[15]), .B(A[15]), .Z(n34) );
  HS65_GS_OAI12X2 U32 ( .A(n38), .B(n44), .C(n31), .Z(n42) );
  HS65_GSS_XNOR2X3 U33 ( .A(n44), .B(n45), .Z(SUM[14]) );
  HS65_GS_NOR2AX3 U34 ( .A(n31), .B(n38), .Z(n45) );
  HS65_GS_NOR2X2 U35 ( .A(B[14]), .B(A[14]), .Z(n38) );
  HS65_GS_NAND2X2 U36 ( .A(B[14]), .B(A[14]), .Z(n31) );
  HS65_GS_AOI12X2 U37 ( .A(n1), .B(n46), .C(n2), .Z(n44) );
  HS65_GSS_XOR2X3 U38 ( .A(n46), .B(n47), .Z(SUM[13]) );
  HS65_GS_NOR2X2 U39 ( .A(n2), .B(n36), .Z(n47) );
  HS65_GS_NOR2X2 U40 ( .A(B[13]), .B(A[13]), .Z(n36) );
  HS65_GS_NAND2X2 U41 ( .A(B[13]), .B(A[13]), .Z(n37) );
  HS65_GS_OAI12X2 U42 ( .A(n39), .B(n40), .C(n41), .Z(n46) );
  HS65_GSS_XNOR2X3 U43 ( .A(n40), .B(n48), .Z(SUM[12]) );
  HS65_GS_NOR2AX3 U44 ( .A(n41), .B(n39), .Z(n48) );
  HS65_GS_NOR2X2 U45 ( .A(B[12]), .B(A[12]), .Z(n39) );
  HS65_GS_NAND2X2 U46 ( .A(B[12]), .B(A[12]), .Z(n41) );
  HS65_GS_CB4I1X4 U47 ( .A(n49), .B(n50), .C(n51), .D(n52), .Z(n40) );
  HS65_GS_CB4I6X4 U48 ( .A(n4), .B(n5), .C(n6), .D(n53), .Z(n50) );
  HS65_GSS_XOR2X3 U49 ( .A(n54), .B(n55), .Z(SUM[11]) );
  HS65_GS_NOR2AX3 U50 ( .A(n52), .B(n51), .Z(n55) );
  HS65_GS_NOR2X2 U51 ( .A(B[11]), .B(A[11]), .Z(n51) );
  HS65_GS_NAND2X2 U52 ( .A(B[11]), .B(A[11]), .Z(n52) );
  HS65_GS_OAI12X2 U53 ( .A(n53), .B(n56), .C(n49), .Z(n54) );
  HS65_GSS_XNOR2X3 U54 ( .A(n56), .B(n57), .Z(SUM[10]) );
  HS65_GS_NOR2AX3 U55 ( .A(n49), .B(n53), .Z(n57) );
  HS65_GS_NOR2X2 U56 ( .A(B[10]), .B(A[10]), .Z(n53) );
  HS65_GS_NAND2X2 U57 ( .A(B[10]), .B(A[10]), .Z(n49) );
  HS65_GS_OA12X4 U58 ( .A(n4), .B(n5), .C(n6), .Z(n56) );
  HS65_GS_NAND2X2 U59 ( .A(B[9]), .B(A[9]), .Z(n6) );
  HS65_GS_NOR2X2 U60 ( .A(B[9]), .B(A[9]), .Z(n5) );
  HS65_GS_OA12X4 U61 ( .A(n7), .B(n10), .C(n9), .Z(n4) );
  HS65_GS_NAND2X2 U62 ( .A(B[8]), .B(A[8]), .Z(n9) );
  HS65_GS_NOR2X2 U63 ( .A(B[8]), .B(A[8]), .Z(n10) );
  HS65_GS_CB4I1X4 U64 ( .A(n17), .B(n58), .C(n14), .D(n13), .Z(n7) );
  HS65_GS_NAND2X2 U65 ( .A(B[7]), .B(A[7]), .Z(n13) );
  HS65_GS_NOR2X2 U66 ( .A(B[7]), .B(A[7]), .Z(n14) );
  HS65_GS_CB4I6X4 U67 ( .A(n20), .B(n19), .C(n21), .D(n15), .Z(n58) );
  HS65_GS_NOR2X2 U68 ( .A(B[6]), .B(A[6]), .Z(n15) );
  HS65_GS_NAND2X2 U69 ( .A(B[5]), .B(A[5]), .Z(n21) );
  HS65_GS_NOR2X2 U70 ( .A(B[5]), .B(A[5]), .Z(n19) );
  HS65_GS_OA12X4 U71 ( .A(n24), .B(n25), .C(n26), .Z(n20) );
  HS65_GS_NAND2X2 U72 ( .A(B[4]), .B(A[4]), .Z(n26) );
  HS65_GS_NOR2X2 U73 ( .A(B[4]), .B(A[4]), .Z(n25) );
  HS65_GS_NAND2X2 U74 ( .A(B[6]), .B(A[6]), .Z(n17) );
endmodule


module betterNeighborsInMyCluster_DW02_mult_0 ( A, B, TC, PRODUCT );
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

  betterNeighborsInMyCluster_DW01_add_10 FS_1 ( .A({1'b0, \ab[3][15] , 
        \A1[15] , \A1[14] , \A1[13] , \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , 
        \SUMB[3][0] , \ab[3][1] }), .B({1'b0, n29, n14, n6, n4, n3, n13, n5, 
        n12, n9, n11, n10, n8, n7, n2, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[19:2]) );
  HS65_GSS_XOR2X6 U2 ( .A(\SUMB[3][2] ), .B(n17), .Z(\A1[3] ) );
  HS65_GSS_XOR2X6 U3 ( .A(\SUMB[3][12] ), .B(n24), .Z(\A1[13] ) );
  HS65_GSS_XOR2X6 U4 ( .A(\SUMB[3][3] ), .B(n18), .Z(\A1[4] ) );
  HS65_GSS_XOR2X6 U5 ( .A(\SUMB[3][4] ), .B(n19), .Z(\A1[5] ) );
  HS65_GSS_XOR2X6 U6 ( .A(\SUMB[3][7] ), .B(n21), .Z(\A1[8] ) );
  HS65_GSS_XOR2X6 U7 ( .A(\SUMB[3][11] ), .B(n23), .Z(\A1[12] ) );
  HS65_GSS_XOR2X6 U8 ( .A(\SUMB[3][5] ), .B(n25), .Z(\A1[6] ) );
  HS65_GSS_XOR2X6 U9 ( .A(\SUMB[3][6] ), .B(n20), .Z(\A1[7] ) );
  HS65_GSS_XOR2X6 U10 ( .A(\SUMB[3][8] ), .B(n26), .Z(\A1[9] ) );
  HS65_GSS_XOR2X6 U11 ( .A(\SUMB[3][9] ), .B(n27), .Z(\A1[10] ) );
  HS65_GSS_XOR2X6 U12 ( .A(\SUMB[3][10] ), .B(n22), .Z(\A1[11] ) );
  HS65_GSS_XOR2X6 U13 ( .A(\SUMB[3][13] ), .B(n15), .Z(\A1[14] ) );
  HS65_GS_AND2X4 U14 ( .A(\SUMB[3][1] ), .B(n16), .Z(n2) );
  HS65_GS_AND2X4 U15 ( .A(\SUMB[3][10] ), .B(n22), .Z(n3) );
  HS65_GS_AND2X4 U16 ( .A(\SUMB[3][11] ), .B(n23), .Z(n4) );
  HS65_GS_AND2X4 U17 ( .A(\SUMB[3][8] ), .B(n26), .Z(n5) );
  HS65_GS_AND2X4 U18 ( .A(\SUMB[3][12] ), .B(n24), .Z(n6) );
  HS65_GS_AND2X4 U19 ( .A(\SUMB[3][2] ), .B(n17), .Z(n7) );
  HS65_GS_AND2X4 U20 ( .A(\SUMB[3][3] ), .B(n18), .Z(n8) );
  HS65_GS_AND2X4 U21 ( .A(\SUMB[3][6] ), .B(n20), .Z(n9) );
  HS65_GS_AND2X4 U22 ( .A(\SUMB[3][4] ), .B(n19), .Z(n10) );
  HS65_GS_AND2X4 U23 ( .A(\SUMB[3][5] ), .B(n25), .Z(n11) );
  HS65_GS_AND2X4 U24 ( .A(\SUMB[3][7] ), .B(n21), .Z(n12) );
  HS65_GS_AND2X4 U25 ( .A(\SUMB[3][9] ), .B(n27), .Z(n13) );
  HS65_GS_AND2X4 U26 ( .A(\SUMB[3][13] ), .B(n15), .Z(n14) );
  HS65_GSS_XOR2X6 U27 ( .A(\ab[3][2] ), .B(\ab[3][0] ), .Z(\SUMB[3][0] ) );
  HS65_GSS_XOR2X6 U28 ( .A(\SUMB[3][1] ), .B(n16), .Z(\A1[2] ) );
  HS65_GSS_XOR2X6 U29 ( .A(\ab[3][14] ), .B(\ab[3][12] ), .Z(\SUMB[3][12] ) );
  HS65_GSS_XOR2X6 U30 ( .A(\ab[3][3] ), .B(\ab[3][1] ), .Z(\SUMB[3][1] ) );
  HS65_GSS_XOR2X6 U31 ( .A(\ab[3][4] ), .B(\ab[3][2] ), .Z(\SUMB[3][2] ) );
  HS65_GSS_XOR2X6 U32 ( .A(\ab[3][5] ), .B(\ab[3][3] ), .Z(\SUMB[3][3] ) );
  HS65_GSS_XOR2X6 U33 ( .A(\ab[3][6] ), .B(\ab[3][4] ), .Z(\SUMB[3][4] ) );
  HS65_GSS_XOR2X6 U34 ( .A(\ab[3][8] ), .B(\ab[3][6] ), .Z(\SUMB[3][6] ) );
  HS65_GSS_XOR2X6 U35 ( .A(\ab[3][9] ), .B(\ab[3][7] ), .Z(\SUMB[3][7] ) );
  HS65_GSS_XOR2X6 U36 ( .A(\ab[3][12] ), .B(\ab[3][10] ), .Z(\SUMB[3][10] ) );
  HS65_GSS_XOR2X6 U37 ( .A(\ab[3][13] ), .B(\ab[3][11] ), .Z(\SUMB[3][11] ) );
  HS65_GSS_XOR2X6 U38 ( .A(\ab[3][7] ), .B(\ab[3][5] ), .Z(\SUMB[3][5] ) );
  HS65_GSS_XOR2X6 U39 ( .A(\ab[3][10] ), .B(\ab[3][8] ), .Z(\SUMB[3][8] ) );
  HS65_GSS_XOR2X6 U40 ( .A(\ab[3][11] ), .B(\ab[3][9] ), .Z(\SUMB[3][9] ) );
  HS65_GSS_XOR2X6 U41 ( .A(\ab[3][15] ), .B(\ab[3][13] ), .Z(\SUMB[3][13] ) );
  HS65_GSS_XOR2X6 U42 ( .A(\ab[3][14] ), .B(n28), .Z(\A1[15] ) );
  HS65_GS_AND2X4 U43 ( .A(\ab[3][12] ), .B(\ab[3][14] ), .Z(n15) );
  HS65_GS_AND2X4 U44 ( .A(\ab[3][0] ), .B(\ab[3][2] ), .Z(n16) );
  HS65_GS_AND2X4 U45 ( .A(\ab[3][1] ), .B(\ab[3][3] ), .Z(n17) );
  HS65_GS_AND2X4 U46 ( .A(\ab[3][2] ), .B(\ab[3][4] ), .Z(n18) );
  HS65_GS_AND2X4 U47 ( .A(\ab[3][3] ), .B(\ab[3][5] ), .Z(n19) );
  HS65_GS_AND2X4 U48 ( .A(\ab[3][5] ), .B(\ab[3][7] ), .Z(n20) );
  HS65_GS_AND2X4 U49 ( .A(\ab[3][6] ), .B(\ab[3][8] ), .Z(n21) );
  HS65_GS_AND2X4 U50 ( .A(\ab[3][9] ), .B(\ab[3][11] ), .Z(n22) );
  HS65_GS_AND2X4 U51 ( .A(\ab[3][10] ), .B(\ab[3][12] ), .Z(n23) );
  HS65_GS_AND2X4 U52 ( .A(\ab[3][11] ), .B(\ab[3][13] ), .Z(n24) );
  HS65_GS_AND2X4 U53 ( .A(\ab[3][4] ), .B(\ab[3][6] ), .Z(n25) );
  HS65_GS_AND2X4 U54 ( .A(\ab[3][7] ), .B(\ab[3][9] ), .Z(n26) );
  HS65_GS_AND2X4 U55 ( .A(\ab[3][8] ), .B(\ab[3][10] ), .Z(n27) );
  HS65_GS_AND2X4 U56 ( .A(\ab[3][13] ), .B(\ab[3][15] ), .Z(n28) );
  HS65_GS_AND2X4 U57 ( .A(\ab[3][14] ), .B(n28), .Z(n29) );
endmodule


module betterNeighborsInMyCluster_DW01_add_11 ( A, B, CI, SUM, CO );
  input [29:0] A;
  input [29:0] B;
  output [29:0] SUM;
  input CI;
  output CO;
  wire   \A[14] , \A[13] , \A[12] , \A[11] , \A[10] , \A[9] , \A[8] , \A[7] ,
         \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58;
  assign SUM[14] = \A[14] ;
  assign \A[14]  = A[14];
  assign SUM[13] = \A[13] ;
  assign \A[13]  = A[13];
  assign SUM[12] = \A[12] ;
  assign \A[12]  = A[12];
  assign SUM[11] = \A[11] ;
  assign \A[11]  = A[11];
  assign SUM[10] = \A[10] ;
  assign \A[10]  = A[10];
  assign SUM[9] = \A[9] ;
  assign \A[9]  = A[9];
  assign SUM[8] = \A[8] ;
  assign \A[8]  = A[8];
  assign SUM[7] = \A[7] ;
  assign \A[7]  = A[7];
  assign SUM[6] = \A[6] ;
  assign \A[6]  = A[6];
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  HS65_GS_IVX9 U2 ( .A(n41), .Z(n6) );
  HS65_GS_IVX9 U3 ( .A(n33), .Z(n5) );
  HS65_GS_IVX9 U4 ( .A(n25), .Z(n4) );
  HS65_GS_IVX9 U5 ( .A(n17), .Z(n3) );
  HS65_GS_IVX9 U6 ( .A(n49), .Z(n7) );
  HS65_GS_IVX9 U7 ( .A(n56), .Z(n8) );
  HS65_GS_IVX9 U8 ( .A(n58), .Z(n9) );
  HS65_GS_AND2X4 U9 ( .A(n2), .B(n58), .Z(SUM[15]) );
  HS65_GS_OR2X9 U10 ( .A(B[15]), .B(A[15]), .Z(n2) );
  HS65_GSS_XOR3X2 U11 ( .A(B[28]), .B(A[28]), .C(n10), .Z(SUM[28]) );
  HS65_GS_OAI12X2 U12 ( .A(n11), .B(n12), .C(n13), .Z(n10) );
  HS65_GSS_XOR2X3 U13 ( .A(n14), .B(n12), .Z(SUM[27]) );
  HS65_GS_AOI12X2 U14 ( .A(n3), .B(n15), .C(n16), .Z(n12) );
  HS65_GS_NAND2AX4 U15 ( .A(n11), .B(n13), .Z(n14) );
  HS65_GS_NAND2X2 U16 ( .A(B[27]), .B(A[27]), .Z(n13) );
  HS65_GS_NOR2X2 U17 ( .A(B[27]), .B(A[27]), .Z(n11) );
  HS65_GSS_XOR2X3 U18 ( .A(n15), .B(n18), .Z(SUM[26]) );
  HS65_GS_NOR2X2 U19 ( .A(n16), .B(n17), .Z(n18) );
  HS65_GS_NOR2X2 U20 ( .A(B[26]), .B(A[26]), .Z(n17) );
  HS65_GS_AND2X4 U21 ( .A(B[26]), .B(A[26]), .Z(n16) );
  HS65_GS_OAI12X2 U22 ( .A(n19), .B(n20), .C(n21), .Z(n15) );
  HS65_GSS_XOR2X3 U23 ( .A(n22), .B(n20), .Z(SUM[25]) );
  HS65_GS_AOI12X2 U24 ( .A(n4), .B(n23), .C(n24), .Z(n20) );
  HS65_GS_NAND2AX4 U25 ( .A(n19), .B(n21), .Z(n22) );
  HS65_GS_NAND2X2 U26 ( .A(B[25]), .B(A[25]), .Z(n21) );
  HS65_GS_NOR2X2 U27 ( .A(B[25]), .B(A[25]), .Z(n19) );
  HS65_GSS_XOR2X3 U28 ( .A(n23), .B(n26), .Z(SUM[24]) );
  HS65_GS_NOR2X2 U29 ( .A(n24), .B(n25), .Z(n26) );
  HS65_GS_NOR2X2 U30 ( .A(B[24]), .B(A[24]), .Z(n25) );
  HS65_GS_AND2X4 U31 ( .A(B[24]), .B(A[24]), .Z(n24) );
  HS65_GS_OAI12X2 U32 ( .A(n27), .B(n28), .C(n29), .Z(n23) );
  HS65_GSS_XOR2X3 U33 ( .A(n30), .B(n28), .Z(SUM[23]) );
  HS65_GS_AOI12X2 U34 ( .A(n5), .B(n31), .C(n32), .Z(n28) );
  HS65_GS_NAND2AX4 U35 ( .A(n27), .B(n29), .Z(n30) );
  HS65_GS_NAND2X2 U36 ( .A(B[23]), .B(A[23]), .Z(n29) );
  HS65_GS_NOR2X2 U37 ( .A(B[23]), .B(A[23]), .Z(n27) );
  HS65_GSS_XOR2X3 U38 ( .A(n31), .B(n34), .Z(SUM[22]) );
  HS65_GS_NOR2X2 U39 ( .A(n32), .B(n33), .Z(n34) );
  HS65_GS_NOR2X2 U40 ( .A(B[22]), .B(A[22]), .Z(n33) );
  HS65_GS_AND2X4 U41 ( .A(B[22]), .B(A[22]), .Z(n32) );
  HS65_GS_OAI12X2 U42 ( .A(n35), .B(n36), .C(n37), .Z(n31) );
  HS65_GSS_XOR2X3 U43 ( .A(n38), .B(n36), .Z(SUM[21]) );
  HS65_GS_AOI12X2 U44 ( .A(n6), .B(n39), .C(n40), .Z(n36) );
  HS65_GS_NAND2AX4 U45 ( .A(n35), .B(n37), .Z(n38) );
  HS65_GS_NAND2X2 U46 ( .A(B[21]), .B(A[21]), .Z(n37) );
  HS65_GS_NOR2X2 U47 ( .A(B[21]), .B(A[21]), .Z(n35) );
  HS65_GSS_XOR2X3 U48 ( .A(n39), .B(n42), .Z(SUM[20]) );
  HS65_GS_NOR2X2 U49 ( .A(n40), .B(n41), .Z(n42) );
  HS65_GS_NOR2X2 U50 ( .A(B[20]), .B(A[20]), .Z(n41) );
  HS65_GS_AND2X4 U51 ( .A(B[20]), .B(A[20]), .Z(n40) );
  HS65_GS_OAI12X2 U52 ( .A(n43), .B(n44), .C(n45), .Z(n39) );
  HS65_GSS_XOR2X3 U53 ( .A(n46), .B(n44), .Z(SUM[19]) );
  HS65_GS_AOI12X2 U54 ( .A(n7), .B(n47), .C(n48), .Z(n44) );
  HS65_GS_NAND2AX4 U55 ( .A(n43), .B(n45), .Z(n46) );
  HS65_GS_NAND2X2 U56 ( .A(B[19]), .B(A[19]), .Z(n45) );
  HS65_GS_NOR2X2 U57 ( .A(B[19]), .B(A[19]), .Z(n43) );
  HS65_GSS_XOR2X3 U58 ( .A(n47), .B(n50), .Z(SUM[18]) );
  HS65_GS_NOR2X2 U59 ( .A(n48), .B(n49), .Z(n50) );
  HS65_GS_NOR2X2 U60 ( .A(B[18]), .B(A[18]), .Z(n49) );
  HS65_GS_AND2X4 U61 ( .A(B[18]), .B(A[18]), .Z(n48) );
  HS65_GS_OAI12X2 U62 ( .A(n51), .B(n52), .C(n53), .Z(n47) );
  HS65_GSS_XOR2X3 U63 ( .A(n54), .B(n52), .Z(SUM[17]) );
  HS65_GS_AOI12X2 U64 ( .A(n8), .B(n9), .C(n55), .Z(n52) );
  HS65_GS_NAND2AX4 U65 ( .A(n51), .B(n53), .Z(n54) );
  HS65_GS_NAND2X2 U66 ( .A(B[17]), .B(A[17]), .Z(n53) );
  HS65_GS_NOR2X2 U67 ( .A(B[17]), .B(A[17]), .Z(n51) );
  HS65_GSS_XOR2X3 U68 ( .A(n9), .B(n57), .Z(SUM[16]) );
  HS65_GS_NOR2X2 U69 ( .A(n55), .B(n56), .Z(n57) );
  HS65_GS_NOR2X2 U70 ( .A(B[16]), .B(A[16]), .Z(n56) );
  HS65_GS_AND2X4 U71 ( .A(B[16]), .B(A[16]), .Z(n55) );
  HS65_GS_NAND2X2 U72 ( .A(B[15]), .B(A[15]), .Z(n58) );
endmodule


module betterNeighborsInMyCluster_DW02_mult_1 ( A, B, TC, PRODUCT );
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
         \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] , \ab[1][0] ,
         \ab[0][15] , \ab[0][14] , \ab[0][13] , \ab[0][12] , \ab[0][11] ,
         \ab[0][10] , \ab[0][9] , \ab[0][8] , \ab[0][7] , \ab[0][6] ,
         \ab[0][5] , \ab[0][4] , \ab[0][3] , \ab[0][2] , \ab[0][1] ,
         \CARRYB[15][14] , \CARRYB[15][13] , \CARRYB[15][12] ,
         \CARRYB[15][11] , \CARRYB[15][10] , \CARRYB[15][9] , \CARRYB[15][8] ,
         \CARRYB[15][7] , \CARRYB[15][6] , \CARRYB[15][5] , \CARRYB[15][4] ,
         \CARRYB[15][3] , \CARRYB[15][2] , \CARRYB[15][1] , \CARRYB[15][0] ,
         \CARRYB[14][14] , \CARRYB[14][13] , \CARRYB[14][12] ,
         \CARRYB[14][11] , \CARRYB[14][10] , \CARRYB[14][9] , \CARRYB[14][8] ,
         \CARRYB[14][7] , \CARRYB[14][6] , \CARRYB[14][5] , \CARRYB[14][4] ,
         \CARRYB[14][3] , \CARRYB[14][2] , \CARRYB[14][1] , \CARRYB[14][0] ,
         \CARRYB[13][14] , \CARRYB[13][13] , \CARRYB[13][12] ,
         \CARRYB[13][11] , \CARRYB[13][10] , \CARRYB[13][9] , \CARRYB[13][8] ,
         \CARRYB[13][7] , \CARRYB[13][6] , \CARRYB[13][5] , \CARRYB[13][4] ,
         \CARRYB[13][3] , \CARRYB[13][2] , \CARRYB[13][1] , \CARRYB[13][0] ,
         \CARRYB[12][14] , \CARRYB[12][13] , \CARRYB[12][12] ,
         \CARRYB[12][11] , \CARRYB[12][10] , \CARRYB[12][9] , \CARRYB[12][8] ,
         \CARRYB[12][7] , \CARRYB[12][6] , \CARRYB[12][5] , \CARRYB[12][4] ,
         \CARRYB[12][3] , \CARRYB[12][2] , \CARRYB[12][1] , \CARRYB[12][0] ,
         \CARRYB[11][14] , \CARRYB[11][13] , \CARRYB[11][12] ,
         \CARRYB[11][11] , \CARRYB[11][10] , \CARRYB[11][9] , \CARRYB[11][8] ,
         \CARRYB[11][7] , \CARRYB[11][6] , \CARRYB[11][5] , \CARRYB[11][4] ,
         \CARRYB[11][3] , \CARRYB[11][2] , \CARRYB[11][1] , \CARRYB[11][0] ,
         \CARRYB[10][14] , \CARRYB[10][13] , \CARRYB[10][12] ,
         \CARRYB[10][11] , \CARRYB[10][10] , \CARRYB[10][9] , \CARRYB[10][8] ,
         \CARRYB[10][7] , \CARRYB[10][6] , \CARRYB[10][5] , \CARRYB[10][4] ,
         \CARRYB[10][3] , \CARRYB[10][2] , \CARRYB[10][1] , \CARRYB[10][0] ,
         \CARRYB[9][14] , \CARRYB[9][13] , \CARRYB[9][12] , \CARRYB[9][11] ,
         \CARRYB[9][10] , \CARRYB[9][9] , \CARRYB[9][8] , \CARRYB[9][7] ,
         \CARRYB[9][6] , \CARRYB[9][5] , \CARRYB[9][4] , \CARRYB[9][3] ,
         \CARRYB[9][2] , \CARRYB[9][1] , \CARRYB[9][0] , \CARRYB[8][14] ,
         \CARRYB[8][13] , \CARRYB[8][12] , \CARRYB[8][11] , \CARRYB[8][10] ,
         \CARRYB[8][9] , \CARRYB[8][8] , \CARRYB[8][7] , \CARRYB[8][6] ,
         \CARRYB[8][5] , \CARRYB[8][4] , \CARRYB[8][3] , \CARRYB[8][2] ,
         \CARRYB[8][1] , \CARRYB[8][0] , \CARRYB[7][14] , \CARRYB[7][13] ,
         \CARRYB[7][12] , \CARRYB[7][11] , \CARRYB[7][10] , \CARRYB[7][9] ,
         \CARRYB[7][8] , \CARRYB[7][7] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][14] , \CARRYB[6][13] , \CARRYB[6][12] ,
         \CARRYB[6][11] , \CARRYB[6][10] , \CARRYB[6][9] , \CARRYB[6][8] ,
         \CARRYB[6][7] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][14] , \CARRYB[5][13] , \CARRYB[5][12] , \CARRYB[5][11] ,
         \CARRYB[5][10] , \CARRYB[5][9] , \CARRYB[5][8] , \CARRYB[5][7] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][14] ,
         \CARRYB[4][13] , \CARRYB[4][12] , \CARRYB[4][11] , \CARRYB[4][10] ,
         \CARRYB[4][9] , \CARRYB[4][8] , \CARRYB[4][7] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][14] , \CARRYB[3][13] ,
         \CARRYB[3][12] , \CARRYB[3][11] , \CARRYB[3][10] , \CARRYB[3][9] ,
         \CARRYB[3][8] , \CARRYB[3][7] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][14] , \CARRYB[2][13] , \CARRYB[2][12] ,
         \CARRYB[2][11] , \CARRYB[2][10] , \CARRYB[2][9] , \CARRYB[2][8] ,
         \CARRYB[2][7] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
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
         \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] , n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77;
  wire   SYNOPSYS_UNCONNECTED__0;

  betterNeighborsInMyCluster_DW01_add_11 FS_1 ( .A({1'b0, \A1[28] , \A1[27] , 
        \A1[26] , \A1[25] , \A1[24] , \A1[23] , \A1[22] , \A1[21] , \A1[20] , 
        \A1[19] , \A1[18] , \A1[17] , \A1[16] , \A1[15] , \A1[14] , 
        \SUMB[15][0] , \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , 
        \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({
        n2, n18, n31, n30, n24, n29, n23, n28, n22, n27, n21, n26, n20, n25, 
        n19, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__0, 
        PRODUCT[30:2]}) );
  HS65_GS_FA1X4 S5_14 ( .A0(\ab[15][14] ), .B0(\CARRYB[14][14] ), .CI(
        \ab[14][15] ), .CO(\CARRYB[15][14] ), .S0(\SUMB[15][14] ) );
  HS65_GS_FA1X4 S3_2_14 ( .A0(\ab[2][14] ), .B0(n3), .CI(\ab[1][15] ), .CO(
        \CARRYB[2][14] ), .S0(\SUMB[2][14] ) );
  HS65_GS_FA1X4 S2_14_8 ( .A0(\ab[14][8] ), .B0(\CARRYB[13][8] ), .CI(
        \SUMB[13][9] ), .CO(\CARRYB[14][8] ), .S0(\SUMB[14][8] ) );
  HS65_GS_FA1X4 S2_14_7 ( .A0(\ab[14][7] ), .B0(\CARRYB[13][7] ), .CI(
        \SUMB[13][8] ), .CO(\CARRYB[14][7] ), .S0(\SUMB[14][7] ) );
  HS65_GS_FA1X4 S2_13_8 ( .A0(\ab[13][8] ), .B0(\CARRYB[12][8] ), .CI(
        \SUMB[12][9] ), .CO(\CARRYB[13][8] ), .S0(\SUMB[13][8] ) );
  HS65_GS_FA1X4 S2_14_6 ( .A0(\ab[14][6] ), .B0(\CARRYB[13][6] ), .CI(
        \SUMB[13][7] ), .CO(\CARRYB[14][6] ), .S0(\SUMB[14][6] ) );
  HS65_GS_FA1X4 S2_13_7 ( .A0(\ab[13][7] ), .B0(\CARRYB[12][7] ), .CI(
        \SUMB[12][8] ), .CO(\CARRYB[13][7] ), .S0(\SUMB[13][7] ) );
  HS65_GS_FA1X4 S2_12_8 ( .A0(\ab[12][8] ), .B0(\CARRYB[11][8] ), .CI(
        \SUMB[11][9] ), .CO(\CARRYB[12][8] ), .S0(\SUMB[12][8] ) );
  HS65_GS_FA1X4 S2_14_5 ( .A0(\ab[14][5] ), .B0(\CARRYB[13][5] ), .CI(
        \SUMB[13][6] ), .CO(\CARRYB[14][5] ), .S0(\SUMB[14][5] ) );
  HS65_GS_FA1X4 S2_14_4 ( .A0(\ab[14][4] ), .B0(\CARRYB[13][4] ), .CI(
        \SUMB[13][5] ), .CO(\CARRYB[14][4] ), .S0(\SUMB[14][4] ) );
  HS65_GS_FA1X4 S2_13_6 ( .A0(\ab[13][6] ), .B0(\CARRYB[12][6] ), .CI(
        \SUMB[12][7] ), .CO(\CARRYB[13][6] ), .S0(\SUMB[13][6] ) );
  HS65_GS_FA1X4 S2_13_5 ( .A0(\ab[13][5] ), .B0(\CARRYB[12][5] ), .CI(
        \SUMB[12][6] ), .CO(\CARRYB[13][5] ), .S0(\SUMB[13][5] ) );
  HS65_GS_FA1X4 S2_12_7 ( .A0(\ab[12][7] ), .B0(\CARRYB[11][7] ), .CI(
        \SUMB[11][8] ), .CO(\CARRYB[12][7] ), .S0(\SUMB[12][7] ) );
  HS65_GS_FA1X4 S2_12_6 ( .A0(\ab[12][6] ), .B0(\CARRYB[11][6] ), .CI(
        \SUMB[11][7] ), .CO(\CARRYB[12][6] ), .S0(\SUMB[12][6] ) );
  HS65_GS_FA1X4 S2_13_4 ( .A0(\ab[13][4] ), .B0(\CARRYB[12][4] ), .CI(
        \SUMB[12][5] ), .CO(\CARRYB[13][4] ), .S0(\SUMB[13][4] ) );
  HS65_GS_FA1X4 S2_11_8 ( .A0(\ab[11][8] ), .B0(\CARRYB[10][8] ), .CI(
        \SUMB[10][9] ), .CO(\CARRYB[11][8] ), .S0(\SUMB[11][8] ) );
  HS65_GS_FA1X4 S2_11_7 ( .A0(\ab[11][7] ), .B0(\CARRYB[10][7] ), .CI(
        \SUMB[10][8] ), .CO(\CARRYB[11][7] ), .S0(\SUMB[11][7] ) );
  HS65_GS_FA1X4 S2_12_5 ( .A0(\ab[12][5] ), .B0(\CARRYB[11][5] ), .CI(
        \SUMB[11][6] ), .CO(\CARRYB[12][5] ), .S0(\SUMB[12][5] ) );
  HS65_GS_FA1X4 S2_10_8 ( .A0(\ab[10][8] ), .B0(\CARRYB[9][8] ), .CI(
        \SUMB[9][9] ), .CO(\CARRYB[10][8] ), .S0(\SUMB[10][8] ) );
  HS65_GS_FA1X4 S2_11_6 ( .A0(\ab[11][6] ), .B0(\CARRYB[10][6] ), .CI(
        \SUMB[10][7] ), .CO(\CARRYB[11][6] ), .S0(\SUMB[11][6] ) );
  HS65_GS_FA1X4 S2_10_7 ( .A0(\ab[10][7] ), .B0(\CARRYB[9][7] ), .CI(
        \SUMB[9][8] ), .CO(\CARRYB[10][7] ), .S0(\SUMB[10][7] ) );
  HS65_GS_FA1X4 S2_9_8 ( .A0(\ab[9][8] ), .B0(\CARRYB[8][8] ), .CI(
        \SUMB[8][9] ), .CO(\CARRYB[9][8] ), .S0(\SUMB[9][8] ) );
  HS65_GS_FA1X4 S2_11_5 ( .A0(\ab[11][5] ), .B0(\CARRYB[10][5] ), .CI(
        \SUMB[10][6] ), .CO(\CARRYB[11][5] ), .S0(\SUMB[11][5] ) );
  HS65_GS_FA1X4 S2_10_6 ( .A0(\ab[10][6] ), .B0(\CARRYB[9][6] ), .CI(
        \SUMB[9][7] ), .CO(\CARRYB[10][6] ), .S0(\SUMB[10][6] ) );
  HS65_GS_FA1X4 S2_9_7 ( .A0(\ab[9][7] ), .B0(\CARRYB[8][7] ), .CI(
        \SUMB[8][8] ), .CO(\CARRYB[9][7] ), .S0(\SUMB[9][7] ) );
  HS65_GS_FA1X4 S2_9_6 ( .A0(\ab[9][6] ), .B0(\CARRYB[8][6] ), .CI(
        \SUMB[8][7] ), .CO(\CARRYB[9][6] ), .S0(\SUMB[9][6] ) );
  HS65_GS_FA1X4 S2_8_8 ( .A0(\ab[8][8] ), .B0(\CARRYB[7][8] ), .CI(
        \SUMB[7][9] ), .CO(\CARRYB[8][8] ), .S0(\SUMB[8][8] ) );
  HS65_GS_FA1X4 S2_8_7 ( .A0(\ab[8][7] ), .B0(\CARRYB[7][7] ), .CI(
        \SUMB[7][8] ), .CO(\CARRYB[8][7] ), .S0(\SUMB[8][7] ) );
  HS65_GS_FA1X4 S2_14_9 ( .A0(\ab[14][9] ), .B0(\CARRYB[13][9] ), .CI(
        \SUMB[13][10] ), .CO(\CARRYB[14][9] ), .S0(\SUMB[14][9] ) );
  HS65_GS_FA1X4 S2_13_9 ( .A0(\ab[13][9] ), .B0(\CARRYB[12][9] ), .CI(
        \SUMB[12][10] ), .CO(\CARRYB[13][9] ), .S0(\SUMB[13][9] ) );
  HS65_GS_FA1X4 S2_12_9 ( .A0(\ab[12][9] ), .B0(\CARRYB[11][9] ), .CI(
        \SUMB[11][10] ), .CO(\CARRYB[12][9] ), .S0(\SUMB[12][9] ) );
  HS65_GS_FA1X4 S2_11_9 ( .A0(\ab[11][9] ), .B0(\CARRYB[10][9] ), .CI(
        \SUMB[10][10] ), .CO(\CARRYB[11][9] ), .S0(\SUMB[11][9] ) );
  HS65_GS_FA1X4 S2_10_9 ( .A0(\ab[10][9] ), .B0(\CARRYB[9][9] ), .CI(
        \SUMB[9][10] ), .CO(\CARRYB[10][9] ), .S0(\SUMB[10][9] ) );
  HS65_GS_FA1X4 S2_9_9 ( .A0(\ab[9][9] ), .B0(\CARRYB[8][9] ), .CI(
        \SUMB[8][10] ), .CO(\CARRYB[9][9] ), .S0(\SUMB[9][9] ) );
  HS65_GS_FA1X4 S2_8_9 ( .A0(\ab[8][9] ), .B0(\CARRYB[7][9] ), .CI(
        \SUMB[7][10] ), .CO(\CARRYB[8][9] ), .S0(\SUMB[8][9] ) );
  HS65_GS_FA1X4 S2_7_9 ( .A0(\ab[7][9] ), .B0(\CARRYB[6][9] ), .CI(
        \SUMB[6][10] ), .CO(\CARRYB[7][9] ), .S0(\SUMB[7][9] ) );
  HS65_GS_FA1X4 S2_7_8 ( .A0(\ab[7][8] ), .B0(\CARRYB[6][8] ), .CI(
        \SUMB[6][9] ), .CO(\CARRYB[7][8] ), .S0(\SUMB[7][8] ) );
  HS65_GS_FA1X4 S2_7_7 ( .A0(\ab[7][7] ), .B0(\CARRYB[6][7] ), .CI(
        \SUMB[6][8] ), .CO(\CARRYB[7][7] ), .S0(\SUMB[7][7] ) );
  HS65_GS_FA1X4 S2_6_9 ( .A0(\ab[6][9] ), .B0(\CARRYB[5][9] ), .CI(
        \SUMB[5][10] ), .CO(\CARRYB[6][9] ), .S0(\SUMB[6][9] ) );
  HS65_GS_FA1X4 S2_6_8 ( .A0(\ab[6][8] ), .B0(\CARRYB[5][8] ), .CI(
        \SUMB[5][9] ), .CO(\CARRYB[6][8] ), .S0(\SUMB[6][8] ) );
  HS65_GS_FA1X4 S2_14_10 ( .A0(\ab[14][10] ), .B0(\CARRYB[13][10] ), .CI(
        \SUMB[13][11] ), .CO(\CARRYB[14][10] ), .S0(\SUMB[14][10] ) );
  HS65_GS_FA1X4 S2_13_10 ( .A0(\ab[13][10] ), .B0(\CARRYB[12][10] ), .CI(
        \SUMB[12][11] ), .CO(\CARRYB[13][10] ), .S0(\SUMB[13][10] ) );
  HS65_GS_FA1X4 S2_12_10 ( .A0(\ab[12][10] ), .B0(\CARRYB[11][10] ), .CI(
        \SUMB[11][11] ), .CO(\CARRYB[12][10] ), .S0(\SUMB[12][10] ) );
  HS65_GS_FA1X4 S2_11_10 ( .A0(\ab[11][10] ), .B0(\CARRYB[10][10] ), .CI(
        \SUMB[10][11] ), .CO(\CARRYB[11][10] ), .S0(\SUMB[11][10] ) );
  HS65_GS_FA1X4 S2_10_10 ( .A0(\ab[10][10] ), .B0(\CARRYB[9][10] ), .CI(
        \SUMB[9][11] ), .CO(\CARRYB[10][10] ), .S0(\SUMB[10][10] ) );
  HS65_GS_FA1X4 S2_9_10 ( .A0(\ab[9][10] ), .B0(\CARRYB[8][10] ), .CI(
        \SUMB[8][11] ), .CO(\CARRYB[9][10] ), .S0(\SUMB[9][10] ) );
  HS65_GS_FA1X4 S2_8_10 ( .A0(\ab[8][10] ), .B0(\CARRYB[7][10] ), .CI(
        \SUMB[7][11] ), .CO(\CARRYB[8][10] ), .S0(\SUMB[8][10] ) );
  HS65_GS_FA1X4 S2_7_10 ( .A0(\ab[7][10] ), .B0(\CARRYB[6][10] ), .CI(
        \SUMB[6][11] ), .CO(\CARRYB[7][10] ), .S0(\SUMB[7][10] ) );
  HS65_GS_FA1X4 S2_6_10 ( .A0(\ab[6][10] ), .B0(\CARRYB[5][10] ), .CI(
        \SUMB[5][11] ), .CO(\CARRYB[6][10] ), .S0(\SUMB[6][10] ) );
  HS65_GS_FA1X4 S2_5_10 ( .A0(\ab[5][10] ), .B0(\CARRYB[4][10] ), .CI(
        \SUMB[4][11] ), .CO(\CARRYB[5][10] ), .S0(\SUMB[5][10] ) );
  HS65_GS_FA1X4 S2_5_9 ( .A0(\ab[5][9] ), .B0(\CARRYB[4][9] ), .CI(
        \SUMB[4][10] ), .CO(\CARRYB[5][9] ), .S0(\SUMB[5][9] ) );
  HS65_GS_FA1X4 S2_5_8 ( .A0(\ab[5][8] ), .B0(\CARRYB[4][8] ), .CI(
        \SUMB[4][9] ), .CO(\CARRYB[5][8] ), .S0(\SUMB[5][8] ) );
  HS65_GS_FA1X4 S2_14_11 ( .A0(\ab[14][11] ), .B0(\CARRYB[13][11] ), .CI(
        \SUMB[13][12] ), .CO(\CARRYB[14][11] ), .S0(\SUMB[14][11] ) );
  HS65_GS_FA1X4 S2_13_11 ( .A0(\ab[13][11] ), .B0(\CARRYB[12][11] ), .CI(
        \SUMB[12][12] ), .CO(\CARRYB[13][11] ), .S0(\SUMB[13][11] ) );
  HS65_GS_FA1X4 S2_12_11 ( .A0(\ab[12][11] ), .B0(\CARRYB[11][11] ), .CI(
        \SUMB[11][12] ), .CO(\CARRYB[12][11] ), .S0(\SUMB[12][11] ) );
  HS65_GS_FA1X4 S2_11_11 ( .A0(\ab[11][11] ), .B0(\CARRYB[10][11] ), .CI(
        \SUMB[10][12] ), .CO(\CARRYB[11][11] ), .S0(\SUMB[11][11] ) );
  HS65_GS_FA1X4 S2_10_11 ( .A0(\ab[10][11] ), .B0(\CARRYB[9][11] ), .CI(
        \SUMB[9][12] ), .CO(\CARRYB[10][11] ), .S0(\SUMB[10][11] ) );
  HS65_GS_FA1X4 S2_9_11 ( .A0(\ab[9][11] ), .B0(\CARRYB[8][11] ), .CI(
        \SUMB[8][12] ), .CO(\CARRYB[9][11] ), .S0(\SUMB[9][11] ) );
  HS65_GS_FA1X4 S2_8_11 ( .A0(\ab[8][11] ), .B0(\CARRYB[7][11] ), .CI(
        \SUMB[7][12] ), .CO(\CARRYB[8][11] ), .S0(\SUMB[8][11] ) );
  HS65_GS_FA1X4 S2_7_11 ( .A0(\ab[7][11] ), .B0(\CARRYB[6][11] ), .CI(
        \SUMB[6][12] ), .CO(\CARRYB[7][11] ), .S0(\SUMB[7][11] ) );
  HS65_GS_FA1X4 S2_6_11 ( .A0(\ab[6][11] ), .B0(\CARRYB[5][11] ), .CI(
        \SUMB[5][12] ), .CO(\CARRYB[6][11] ), .S0(\SUMB[6][11] ) );
  HS65_GS_FA1X4 S2_5_11 ( .A0(\ab[5][11] ), .B0(\CARRYB[4][11] ), .CI(
        \SUMB[4][12] ), .CO(\CARRYB[5][11] ), .S0(\SUMB[5][11] ) );
  HS65_GS_FA1X4 S2_4_11 ( .A0(\ab[4][11] ), .B0(\CARRYB[3][11] ), .CI(
        \SUMB[3][12] ), .CO(\CARRYB[4][11] ), .S0(\SUMB[4][11] ) );
  HS65_GS_FA1X4 S2_4_10 ( .A0(\ab[4][10] ), .B0(\CARRYB[3][10] ), .CI(
        \SUMB[3][11] ), .CO(\CARRYB[4][10] ), .S0(\SUMB[4][10] ) );
  HS65_GS_FA1X4 S2_4_9 ( .A0(\ab[4][9] ), .B0(\CARRYB[3][9] ), .CI(
        \SUMB[3][10] ), .CO(\CARRYB[4][9] ), .S0(\SUMB[4][9] ) );
  HS65_GS_FA1X4 S2_12_12 ( .A0(\ab[12][12] ), .B0(\CARRYB[11][12] ), .CI(
        \SUMB[11][13] ), .CO(\CARRYB[12][12] ), .S0(\SUMB[12][12] ) );
  HS65_GS_FA1X4 S2_14_12 ( .A0(\ab[14][12] ), .B0(\CARRYB[13][12] ), .CI(
        \SUMB[13][13] ), .CO(\CARRYB[14][12] ), .S0(\SUMB[14][12] ) );
  HS65_GS_FA1X4 S2_13_12 ( .A0(\ab[13][12] ), .B0(\CARRYB[12][12] ), .CI(
        \SUMB[12][13] ), .CO(\CARRYB[13][12] ), .S0(\SUMB[13][12] ) );
  HS65_GS_FA1X4 S2_11_12 ( .A0(\ab[11][12] ), .B0(\CARRYB[10][12] ), .CI(
        \SUMB[10][13] ), .CO(\CARRYB[11][12] ), .S0(\SUMB[11][12] ) );
  HS65_GS_FA1X4 S2_10_12 ( .A0(\ab[10][12] ), .B0(\CARRYB[9][12] ), .CI(
        \SUMB[9][13] ), .CO(\CARRYB[10][12] ), .S0(\SUMB[10][12] ) );
  HS65_GS_FA1X4 S2_9_12 ( .A0(\ab[9][12] ), .B0(\CARRYB[8][12] ), .CI(
        \SUMB[8][13] ), .CO(\CARRYB[9][12] ), .S0(\SUMB[9][12] ) );
  HS65_GS_FA1X4 S2_8_12 ( .A0(\ab[8][12] ), .B0(\CARRYB[7][12] ), .CI(
        \SUMB[7][13] ), .CO(\CARRYB[8][12] ), .S0(\SUMB[8][12] ) );
  HS65_GS_FA1X4 S2_7_12 ( .A0(\ab[7][12] ), .B0(\CARRYB[6][12] ), .CI(
        \SUMB[6][13] ), .CO(\CARRYB[7][12] ), .S0(\SUMB[7][12] ) );
  HS65_GS_FA1X4 S2_6_12 ( .A0(\ab[6][12] ), .B0(\CARRYB[5][12] ), .CI(
        \SUMB[5][13] ), .CO(\CARRYB[6][12] ), .S0(\SUMB[6][12] ) );
  HS65_GS_FA1X4 S2_5_12 ( .A0(\ab[5][12] ), .B0(\CARRYB[4][12] ), .CI(
        \SUMB[4][13] ), .CO(\CARRYB[5][12] ), .S0(\SUMB[5][12] ) );
  HS65_GS_FA1X4 S2_4_12 ( .A0(\ab[4][12] ), .B0(\CARRYB[3][12] ), .CI(
        \SUMB[3][13] ), .CO(\CARRYB[4][12] ), .S0(\SUMB[4][12] ) );
  HS65_GS_FA1X4 S2_3_12 ( .A0(\ab[3][12] ), .B0(\CARRYB[2][12] ), .CI(
        \SUMB[2][13] ), .CO(\CARRYB[3][12] ), .S0(\SUMB[3][12] ) );
  HS65_GS_FA1X4 S2_3_11 ( .A0(\ab[3][11] ), .B0(\CARRYB[2][11] ), .CI(
        \SUMB[2][12] ), .CO(\CARRYB[3][11] ), .S0(\SUMB[3][11] ) );
  HS65_GS_FA1X4 S2_3_10 ( .A0(\ab[3][10] ), .B0(\CARRYB[2][10] ), .CI(
        \SUMB[2][11] ), .CO(\CARRYB[3][10] ), .S0(\SUMB[3][10] ) );
  HS65_GS_FA1X4 S2_3_9 ( .A0(\ab[3][9] ), .B0(\CARRYB[2][9] ), .CI(
        \SUMB[2][10] ), .CO(\CARRYB[3][9] ), .S0(\SUMB[3][9] ) );
  HS65_GS_FA1X4 S1_9_0 ( .A0(\ab[9][0] ), .B0(\CARRYB[8][0] ), .CI(
        \SUMB[8][1] ), .CO(\CARRYB[9][0] ), .S0(\A1[7] ) );
  HS65_GS_FA1X4 S2_9_5 ( .A0(\ab[9][5] ), .B0(\CARRYB[8][5] ), .CI(
        \SUMB[8][6] ), .CO(\CARRYB[9][5] ), .S0(\SUMB[9][5] ) );
  HS65_GS_FA1X4 S2_9_4 ( .A0(\ab[9][4] ), .B0(\CARRYB[8][4] ), .CI(
        \SUMB[8][5] ), .CO(\CARRYB[9][4] ), .S0(\SUMB[9][4] ) );
  HS65_GS_FA1X4 S2_9_3 ( .A0(\ab[9][3] ), .B0(\CARRYB[8][3] ), .CI(
        \SUMB[8][4] ), .CO(\CARRYB[9][3] ), .S0(\SUMB[9][3] ) );
  HS65_GS_FA1X4 S2_9_2 ( .A0(\ab[9][2] ), .B0(\CARRYB[8][2] ), .CI(
        \SUMB[8][3] ), .CO(\CARRYB[9][2] ), .S0(\SUMB[9][2] ) );
  HS65_GS_FA1X4 S2_9_1 ( .A0(\ab[9][1] ), .B0(\CARRYB[8][1] ), .CI(
        \SUMB[8][2] ), .CO(\CARRYB[9][1] ), .S0(\SUMB[9][1] ) );
  HS65_GS_FA1X4 S1_14_0 ( .A0(\ab[14][0] ), .B0(\CARRYB[13][0] ), .CI(
        \SUMB[13][1] ), .CO(\CARRYB[14][0] ), .S0(\A1[12] ) );
  HS65_GS_FA1X4 S2_14_3 ( .A0(\ab[14][3] ), .B0(\CARRYB[13][3] ), .CI(
        \SUMB[13][4] ), .CO(\CARRYB[14][3] ), .S0(\SUMB[14][3] ) );
  HS65_GS_FA1X4 S1_13_0 ( .A0(\ab[13][0] ), .B0(\CARRYB[12][0] ), .CI(
        \SUMB[12][1] ), .CO(\CARRYB[13][0] ), .S0(\A1[11] ) );
  HS65_GS_FA1X4 S1_12_0 ( .A0(\ab[12][0] ), .B0(\CARRYB[11][0] ), .CI(
        \SUMB[11][1] ), .CO(\CARRYB[12][0] ), .S0(\A1[10] ) );
  HS65_GS_FA1X4 S1_11_0 ( .A0(\ab[11][0] ), .B0(\CARRYB[10][0] ), .CI(
        \SUMB[10][1] ), .CO(\CARRYB[11][0] ), .S0(\A1[9] ) );
  HS65_GS_FA1X4 S2_14_2 ( .A0(\ab[14][2] ), .B0(\CARRYB[13][2] ), .CI(
        \SUMB[13][3] ), .CO(\CARRYB[14][2] ), .S0(\SUMB[14][2] ) );
  HS65_GS_FA1X4 S2_14_1 ( .A0(\ab[14][1] ), .B0(\CARRYB[13][1] ), .CI(
        \SUMB[13][2] ), .CO(\CARRYB[14][1] ), .S0(\SUMB[14][1] ) );
  HS65_GS_FA1X4 S1_10_0 ( .A0(\ab[10][0] ), .B0(\CARRYB[9][0] ), .CI(
        \SUMB[9][1] ), .CO(\CARRYB[10][0] ), .S0(\A1[8] ) );
  HS65_GS_FA1X4 S2_13_3 ( .A0(\ab[13][3] ), .B0(\CARRYB[12][3] ), .CI(
        \SUMB[12][4] ), .CO(\CARRYB[13][3] ), .S0(\SUMB[13][3] ) );
  HS65_GS_FA1X4 S2_13_2 ( .A0(\ab[13][2] ), .B0(\CARRYB[12][2] ), .CI(
        \SUMB[12][3] ), .CO(\CARRYB[13][2] ), .S0(\SUMB[13][2] ) );
  HS65_GS_FA1X4 S2_13_1 ( .A0(\ab[13][1] ), .B0(\CARRYB[12][1] ), .CI(
        \SUMB[12][2] ), .CO(\CARRYB[13][1] ), .S0(\SUMB[13][1] ) );
  HS65_GS_FA1X4 S2_12_4 ( .A0(\ab[12][4] ), .B0(\CARRYB[11][4] ), .CI(
        \SUMB[11][5] ), .CO(\CARRYB[12][4] ), .S0(\SUMB[12][4] ) );
  HS65_GS_FA1X4 S2_12_3 ( .A0(\ab[12][3] ), .B0(\CARRYB[11][3] ), .CI(
        \SUMB[11][4] ), .CO(\CARRYB[12][3] ), .S0(\SUMB[12][3] ) );
  HS65_GS_FA1X4 S2_12_2 ( .A0(\ab[12][2] ), .B0(\CARRYB[11][2] ), .CI(
        \SUMB[11][3] ), .CO(\CARRYB[12][2] ), .S0(\SUMB[12][2] ) );
  HS65_GS_FA1X4 S2_12_1 ( .A0(\ab[12][1] ), .B0(\CARRYB[11][1] ), .CI(
        \SUMB[11][2] ), .CO(\CARRYB[12][1] ), .S0(\SUMB[12][1] ) );
  HS65_GS_FA1X4 S1_8_0 ( .A0(\ab[8][0] ), .B0(\CARRYB[7][0] ), .CI(
        \SUMB[7][1] ), .CO(\CARRYB[8][0] ), .S0(\A1[6] ) );
  HS65_GS_FA1X4 S2_11_4 ( .A0(\ab[11][4] ), .B0(\CARRYB[10][4] ), .CI(
        \SUMB[10][5] ), .CO(\CARRYB[11][4] ), .S0(\SUMB[11][4] ) );
  HS65_GS_FA1X4 S2_11_3 ( .A0(\ab[11][3] ), .B0(\CARRYB[10][3] ), .CI(
        \SUMB[10][4] ), .CO(\CARRYB[11][3] ), .S0(\SUMB[11][3] ) );
  HS65_GS_FA1X4 S2_11_2 ( .A0(\ab[11][2] ), .B0(\CARRYB[10][2] ), .CI(
        \SUMB[10][3] ), .CO(\CARRYB[11][2] ), .S0(\SUMB[11][2] ) );
  HS65_GS_FA1X4 S2_11_1 ( .A0(\ab[11][1] ), .B0(\CARRYB[10][1] ), .CI(
        \SUMB[10][2] ), .CO(\CARRYB[11][1] ), .S0(\SUMB[11][1] ) );
  HS65_GS_FA1X4 S1_7_0 ( .A0(\ab[7][0] ), .B0(\CARRYB[6][0] ), .CI(
        \SUMB[6][1] ), .CO(\CARRYB[7][0] ), .S0(\A1[5] ) );
  HS65_GS_FA1X4 S2_10_5 ( .A0(\ab[10][5] ), .B0(\CARRYB[9][5] ), .CI(
        \SUMB[9][6] ), .CO(\CARRYB[10][5] ), .S0(\SUMB[10][5] ) );
  HS65_GS_FA1X4 S2_10_4 ( .A0(\ab[10][4] ), .B0(\CARRYB[9][4] ), .CI(
        \SUMB[9][5] ), .CO(\CARRYB[10][4] ), .S0(\SUMB[10][4] ) );
  HS65_GS_FA1X4 S2_10_3 ( .A0(\ab[10][3] ), .B0(\CARRYB[9][3] ), .CI(
        \SUMB[9][4] ), .CO(\CARRYB[10][3] ), .S0(\SUMB[10][3] ) );
  HS65_GS_FA1X4 S2_10_2 ( .A0(\ab[10][2] ), .B0(\CARRYB[9][2] ), .CI(
        \SUMB[9][3] ), .CO(\CARRYB[10][2] ), .S0(\SUMB[10][2] ) );
  HS65_GS_FA1X4 S2_10_1 ( .A0(\ab[10][1] ), .B0(\CARRYB[9][1] ), .CI(
        \SUMB[9][2] ), .CO(\CARRYB[10][1] ), .S0(\SUMB[10][1] ) );
  HS65_GS_FA1X4 S1_6_0 ( .A0(\ab[6][0] ), .B0(\CARRYB[5][0] ), .CI(
        \SUMB[5][1] ), .CO(\CARRYB[6][0] ), .S0(\A1[4] ) );
  HS65_GS_FA1X4 S1_5_0 ( .A0(\ab[5][0] ), .B0(\CARRYB[4][0] ), .CI(
        \SUMB[4][1] ), .CO(\CARRYB[5][0] ), .S0(\A1[3] ) );
  HS65_GS_FA1X4 S2_8_6 ( .A0(\ab[8][6] ), .B0(\CARRYB[7][6] ), .CI(
        \SUMB[7][7] ), .CO(\CARRYB[8][6] ), .S0(\SUMB[8][6] ) );
  HS65_GS_FA1X4 S2_8_5 ( .A0(\ab[8][5] ), .B0(\CARRYB[7][5] ), .CI(
        \SUMB[7][6] ), .CO(\CARRYB[8][5] ), .S0(\SUMB[8][5] ) );
  HS65_GS_FA1X4 S2_8_4 ( .A0(\ab[8][4] ), .B0(\CARRYB[7][4] ), .CI(
        \SUMB[7][5] ), .CO(\CARRYB[8][4] ), .S0(\SUMB[8][4] ) );
  HS65_GS_FA1X4 S2_8_3 ( .A0(\ab[8][3] ), .B0(\CARRYB[7][3] ), .CI(
        \SUMB[7][4] ), .CO(\CARRYB[8][3] ), .S0(\SUMB[8][3] ) );
  HS65_GS_FA1X4 S2_8_2 ( .A0(\ab[8][2] ), .B0(\CARRYB[7][2] ), .CI(
        \SUMB[7][3] ), .CO(\CARRYB[8][2] ), .S0(\SUMB[8][2] ) );
  HS65_GS_FA1X4 S2_8_1 ( .A0(\ab[8][1] ), .B0(\CARRYB[7][1] ), .CI(
        \SUMB[7][2] ), .CO(\CARRYB[8][1] ), .S0(\SUMB[8][1] ) );
  HS65_GS_FA1X4 S1_4_0 ( .A0(\ab[4][0] ), .B0(\CARRYB[3][0] ), .CI(
        \SUMB[3][1] ), .CO(\CARRYB[4][0] ), .S0(\A1[2] ) );
  HS65_GS_FA1X4 S2_7_6 ( .A0(\ab[7][6] ), .B0(\CARRYB[6][6] ), .CI(
        \SUMB[6][7] ), .CO(\CARRYB[7][6] ), .S0(\SUMB[7][6] ) );
  HS65_GS_FA1X4 S2_7_5 ( .A0(\ab[7][5] ), .B0(\CARRYB[6][5] ), .CI(
        \SUMB[6][6] ), .CO(\CARRYB[7][5] ), .S0(\SUMB[7][5] ) );
  HS65_GS_FA1X4 S2_7_4 ( .A0(\ab[7][4] ), .B0(\CARRYB[6][4] ), .CI(
        \SUMB[6][5] ), .CO(\CARRYB[7][4] ), .S0(\SUMB[7][4] ) );
  HS65_GS_FA1X4 S2_7_3 ( .A0(\ab[7][3] ), .B0(\CARRYB[6][3] ), .CI(
        \SUMB[6][4] ), .CO(\CARRYB[7][3] ), .S0(\SUMB[7][3] ) );
  HS65_GS_FA1X4 S2_7_2 ( .A0(\ab[7][2] ), .B0(\CARRYB[6][2] ), .CI(
        \SUMB[6][3] ), .CO(\CARRYB[7][2] ), .S0(\SUMB[7][2] ) );
  HS65_GS_FA1X4 S2_7_1 ( .A0(\ab[7][1] ), .B0(\CARRYB[6][1] ), .CI(
        \SUMB[6][2] ), .CO(\CARRYB[7][1] ), .S0(\SUMB[7][1] ) );
  HS65_GS_FA1X4 S1_3_0 ( .A0(\ab[3][0] ), .B0(\CARRYB[2][0] ), .CI(
        \SUMB[2][1] ), .CO(\CARRYB[3][0] ), .S0(\A1[1] ) );
  HS65_GS_FA1X4 S2_6_7 ( .A0(\ab[6][7] ), .B0(\CARRYB[5][7] ), .CI(
        \SUMB[5][8] ), .CO(\CARRYB[6][7] ), .S0(\SUMB[6][7] ) );
  HS65_GS_FA1X4 S2_6_6 ( .A0(\ab[6][6] ), .B0(\CARRYB[5][6] ), .CI(
        \SUMB[5][7] ), .CO(\CARRYB[6][6] ), .S0(\SUMB[6][6] ) );
  HS65_GS_FA1X4 S2_6_5 ( .A0(\ab[6][5] ), .B0(\CARRYB[5][5] ), .CI(
        \SUMB[5][6] ), .CO(\CARRYB[6][5] ), .S0(\SUMB[6][5] ) );
  HS65_GS_FA1X4 S2_6_4 ( .A0(\ab[6][4] ), .B0(\CARRYB[5][4] ), .CI(
        \SUMB[5][5] ), .CO(\CARRYB[6][4] ), .S0(\SUMB[6][4] ) );
  HS65_GS_FA1X4 S2_6_3 ( .A0(\ab[6][3] ), .B0(\CARRYB[5][3] ), .CI(
        \SUMB[5][4] ), .CO(\CARRYB[6][3] ), .S0(\SUMB[6][3] ) );
  HS65_GS_FA1X4 S2_6_2 ( .A0(\ab[6][2] ), .B0(\CARRYB[5][2] ), .CI(
        \SUMB[5][3] ), .CO(\CARRYB[6][2] ), .S0(\SUMB[6][2] ) );
  HS65_GS_FA1X4 S2_6_1 ( .A0(\ab[6][1] ), .B0(\CARRYB[5][1] ), .CI(
        \SUMB[5][2] ), .CO(\CARRYB[6][1] ), .S0(\SUMB[6][1] ) );
  HS65_GS_FA1X4 S1_2_0 ( .A0(\ab[2][0] ), .B0(n17), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S0(\A1[0] ) );
  HS65_GS_FA1X4 S2_5_7 ( .A0(\ab[5][7] ), .B0(\CARRYB[4][7] ), .CI(
        \SUMB[4][8] ), .CO(\CARRYB[5][7] ), .S0(\SUMB[5][7] ) );
  HS65_GS_FA1X4 S2_5_6 ( .A0(\ab[5][6] ), .B0(\CARRYB[4][6] ), .CI(
        \SUMB[4][7] ), .CO(\CARRYB[5][6] ), .S0(\SUMB[5][6] ) );
  HS65_GS_FA1X4 S2_5_5 ( .A0(\ab[5][5] ), .B0(\CARRYB[4][5] ), .CI(
        \SUMB[4][6] ), .CO(\CARRYB[5][5] ), .S0(\SUMB[5][5] ) );
  HS65_GS_FA1X4 S2_5_4 ( .A0(\ab[5][4] ), .B0(\CARRYB[4][4] ), .CI(
        \SUMB[4][5] ), .CO(\CARRYB[5][4] ), .S0(\SUMB[5][4] ) );
  HS65_GS_FA1X4 S2_5_3 ( .A0(\ab[5][3] ), .B0(\CARRYB[4][3] ), .CI(
        \SUMB[4][4] ), .CO(\CARRYB[5][3] ), .S0(\SUMB[5][3] ) );
  HS65_GS_FA1X4 S2_5_2 ( .A0(\ab[5][2] ), .B0(\CARRYB[4][2] ), .CI(
        \SUMB[4][3] ), .CO(\CARRYB[5][2] ), .S0(\SUMB[5][2] ) );
  HS65_GS_FA1X4 S2_5_1 ( .A0(\ab[5][1] ), .B0(\CARRYB[4][1] ), .CI(
        \SUMB[4][2] ), .CO(\CARRYB[5][1] ), .S0(\SUMB[5][1] ) );
  HS65_GS_FA1X4 S2_4_8 ( .A0(\ab[4][8] ), .B0(\CARRYB[3][8] ), .CI(
        \SUMB[3][9] ), .CO(\CARRYB[4][8] ), .S0(\SUMB[4][8] ) );
  HS65_GS_FA1X4 S2_4_7 ( .A0(\ab[4][7] ), .B0(\CARRYB[3][7] ), .CI(
        \SUMB[3][8] ), .CO(\CARRYB[4][7] ), .S0(\SUMB[4][7] ) );
  HS65_GS_FA1X4 S2_4_6 ( .A0(\ab[4][6] ), .B0(\CARRYB[3][6] ), .CI(
        \SUMB[3][7] ), .CO(\CARRYB[4][6] ), .S0(\SUMB[4][6] ) );
  HS65_GS_FA1X4 S2_4_5 ( .A0(\ab[4][5] ), .B0(\CARRYB[3][5] ), .CI(
        \SUMB[3][6] ), .CO(\CARRYB[4][5] ), .S0(\SUMB[4][5] ) );
  HS65_GS_FA1X4 S2_4_4 ( .A0(\ab[4][4] ), .B0(\CARRYB[3][4] ), .CI(
        \SUMB[3][5] ), .CO(\CARRYB[4][4] ), .S0(\SUMB[4][4] ) );
  HS65_GS_FA1X4 S2_4_3 ( .A0(\ab[4][3] ), .B0(\CARRYB[3][3] ), .CI(
        \SUMB[3][4] ), .CO(\CARRYB[4][3] ), .S0(\SUMB[4][3] ) );
  HS65_GS_FA1X4 S2_4_2 ( .A0(\ab[4][2] ), .B0(\CARRYB[3][2] ), .CI(
        \SUMB[3][3] ), .CO(\CARRYB[4][2] ), .S0(\SUMB[4][2] ) );
  HS65_GS_FA1X4 S2_4_1 ( .A0(\ab[4][1] ), .B0(\CARRYB[3][1] ), .CI(
        \SUMB[3][2] ), .CO(\CARRYB[4][1] ), .S0(\SUMB[4][1] ) );
  HS65_GS_FA1X4 S2_3_8 ( .A0(\ab[3][8] ), .B0(\CARRYB[2][8] ), .CI(
        \SUMB[2][9] ), .CO(\CARRYB[3][8] ), .S0(\SUMB[3][8] ) );
  HS65_GS_FA1X4 S2_3_7 ( .A0(\ab[3][7] ), .B0(\CARRYB[2][7] ), .CI(
        \SUMB[2][8] ), .CO(\CARRYB[3][7] ), .S0(\SUMB[3][7] ) );
  HS65_GS_FA1X4 S2_3_6 ( .A0(\ab[3][6] ), .B0(\CARRYB[2][6] ), .CI(
        \SUMB[2][7] ), .CO(\CARRYB[3][6] ), .S0(\SUMB[3][6] ) );
  HS65_GS_FA1X4 S2_3_5 ( .A0(\ab[3][5] ), .B0(\CARRYB[2][5] ), .CI(
        \SUMB[2][6] ), .CO(\CARRYB[3][5] ), .S0(\SUMB[3][5] ) );
  HS65_GS_FA1X4 S2_3_4 ( .A0(\ab[3][4] ), .B0(\CARRYB[2][4] ), .CI(
        \SUMB[2][5] ), .CO(\CARRYB[3][4] ), .S0(\SUMB[3][4] ) );
  HS65_GS_FA1X4 S2_3_3 ( .A0(\ab[3][3] ), .B0(\CARRYB[2][3] ), .CI(
        \SUMB[2][4] ), .CO(\CARRYB[3][3] ), .S0(\SUMB[3][3] ) );
  HS65_GS_FA1X4 S2_3_2 ( .A0(\ab[3][2] ), .B0(\CARRYB[2][2] ), .CI(
        \SUMB[2][3] ), .CO(\CARRYB[3][2] ), .S0(\SUMB[3][2] ) );
  HS65_GS_FA1X4 S2_3_1 ( .A0(\ab[3][1] ), .B0(\CARRYB[2][1] ), .CI(
        \SUMB[2][2] ), .CO(\CARRYB[3][1] ), .S0(\SUMB[3][1] ) );
  HS65_GS_FA1X4 S2_2_11 ( .A0(\ab[2][11] ), .B0(n16), .CI(\SUMB[1][12] ), .CO(
        \CARRYB[2][11] ), .S0(\SUMB[2][11] ) );
  HS65_GS_FA1X4 S2_2_10 ( .A0(\ab[2][10] ), .B0(n15), .CI(\SUMB[1][11] ), .CO(
        \CARRYB[2][10] ), .S0(\SUMB[2][10] ) );
  HS65_GS_FA1X4 S2_2_9 ( .A0(\ab[2][9] ), .B0(n14), .CI(\SUMB[1][10] ), .CO(
        \CARRYB[2][9] ), .S0(\SUMB[2][9] ) );
  HS65_GS_FA1X4 S2_2_8 ( .A0(\ab[2][8] ), .B0(n13), .CI(\SUMB[1][9] ), .CO(
        \CARRYB[2][8] ), .S0(\SUMB[2][8] ) );
  HS65_GS_FA1X4 S2_2_7 ( .A0(\ab[2][7] ), .B0(n12), .CI(\SUMB[1][8] ), .CO(
        \CARRYB[2][7] ), .S0(\SUMB[2][7] ) );
  HS65_GS_FA1X4 S2_2_6 ( .A0(\ab[2][6] ), .B0(n11), .CI(\SUMB[1][7] ), .CO(
        \CARRYB[2][6] ), .S0(\SUMB[2][6] ) );
  HS65_GS_FA1X4 S2_2_5 ( .A0(\ab[2][5] ), .B0(n10), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S0(\SUMB[2][5] ) );
  HS65_GS_FA1X4 S2_2_4 ( .A0(\ab[2][4] ), .B0(n9), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S0(\SUMB[2][4] ) );
  HS65_GS_FA1X4 S2_2_3 ( .A0(\ab[2][3] ), .B0(n8), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S0(\SUMB[2][3] ) );
  HS65_GS_FA1X4 S2_2_2 ( .A0(\ab[2][2] ), .B0(n7), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S0(\SUMB[2][2] ) );
  HS65_GS_FA1X4 S2_2_1 ( .A0(\ab[2][1] ), .B0(n6), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S0(\SUMB[2][1] ) );
  HS65_GS_FA1X4 S2_11_13 ( .A0(\ab[11][13] ), .B0(\CARRYB[10][13] ), .CI(
        \SUMB[10][14] ), .CO(\CARRYB[11][13] ), .S0(\SUMB[11][13] ) );
  HS65_GS_FA1X4 S2_14_13 ( .A0(\ab[14][13] ), .B0(\CARRYB[13][13] ), .CI(
        \SUMB[13][14] ), .CO(\CARRYB[14][13] ), .S0(\SUMB[14][13] ) );
  HS65_GS_FA1X4 S2_13_13 ( .A0(\ab[13][13] ), .B0(\CARRYB[12][13] ), .CI(
        \SUMB[12][14] ), .CO(\CARRYB[13][13] ), .S0(\SUMB[13][13] ) );
  HS65_GS_FA1X4 S2_12_13 ( .A0(\ab[12][13] ), .B0(\CARRYB[11][13] ), .CI(
        \SUMB[11][14] ), .CO(\CARRYB[12][13] ), .S0(\SUMB[12][13] ) );
  HS65_GS_FA1X4 S2_10_13 ( .A0(\ab[10][13] ), .B0(\CARRYB[9][13] ), .CI(
        \SUMB[9][14] ), .CO(\CARRYB[10][13] ), .S0(\SUMB[10][13] ) );
  HS65_GS_FA1X4 S2_9_13 ( .A0(\ab[9][13] ), .B0(\CARRYB[8][13] ), .CI(
        \SUMB[8][14] ), .CO(\CARRYB[9][13] ), .S0(\SUMB[9][13] ) );
  HS65_GS_FA1X4 S2_8_13 ( .A0(\ab[8][13] ), .B0(\CARRYB[7][13] ), .CI(
        \SUMB[7][14] ), .CO(\CARRYB[8][13] ), .S0(\SUMB[8][13] ) );
  HS65_GS_FA1X4 S2_7_13 ( .A0(\ab[7][13] ), .B0(\CARRYB[6][13] ), .CI(
        \SUMB[6][14] ), .CO(\CARRYB[7][13] ), .S0(\SUMB[7][13] ) );
  HS65_GS_FA1X4 S2_6_13 ( .A0(\ab[6][13] ), .B0(\CARRYB[5][13] ), .CI(
        \SUMB[5][14] ), .CO(\CARRYB[6][13] ), .S0(\SUMB[6][13] ) );
  HS65_GS_FA1X4 S2_5_13 ( .A0(\ab[5][13] ), .B0(\CARRYB[4][13] ), .CI(
        \SUMB[4][14] ), .CO(\CARRYB[5][13] ), .S0(\SUMB[5][13] ) );
  HS65_GS_FA1X4 S2_4_13 ( .A0(\ab[4][13] ), .B0(\CARRYB[3][13] ), .CI(
        \SUMB[3][14] ), .CO(\CARRYB[4][13] ), .S0(\SUMB[4][13] ) );
  HS65_GS_FA1X4 S2_3_13 ( .A0(\ab[3][13] ), .B0(\CARRYB[2][13] ), .CI(
        \SUMB[2][14] ), .CO(\CARRYB[3][13] ), .S0(\SUMB[3][13] ) );
  HS65_GS_FA1X4 S2_2_13 ( .A0(\ab[2][13] ), .B0(n5), .CI(\SUMB[1][14] ), .CO(
        \CARRYB[2][13] ), .S0(\SUMB[2][13] ) );
  HS65_GS_FA1X4 S4_2 ( .A0(\ab[15][2] ), .B0(\CARRYB[14][2] ), .CI(
        \SUMB[14][3] ), .CO(\CARRYB[15][2] ), .S0(\SUMB[15][2] ) );
  HS65_GS_FA1X4 S4_0 ( .A0(\ab[15][0] ), .B0(\CARRYB[14][0] ), .CI(
        \SUMB[14][1] ), .CO(\CARRYB[15][0] ), .S0(\SUMB[15][0] ) );
  HS65_GS_FA1X4 S4_1 ( .A0(\ab[15][1] ), .B0(\CARRYB[14][1] ), .CI(
        \SUMB[14][2] ), .CO(\CARRYB[15][1] ), .S0(\SUMB[15][1] ) );
  HS65_GS_FA1X4 S3_10_14 ( .A0(\ab[10][14] ), .B0(\CARRYB[9][14] ), .CI(
        \ab[9][15] ), .CO(\CARRYB[10][14] ), .S0(\SUMB[10][14] ) );
  HS65_GS_FA1X4 S3_14_14 ( .A0(\ab[14][14] ), .B0(\CARRYB[13][14] ), .CI(
        \ab[13][15] ), .CO(\CARRYB[14][14] ), .S0(\SUMB[14][14] ) );
  HS65_GS_FA1X4 S3_13_14 ( .A0(\ab[13][14] ), .B0(\CARRYB[12][14] ), .CI(
        \ab[12][15] ), .CO(\CARRYB[13][14] ), .S0(\SUMB[13][14] ) );
  HS65_GS_FA1X4 S3_12_14 ( .A0(\ab[12][14] ), .B0(\CARRYB[11][14] ), .CI(
        \ab[11][15] ), .CO(\CARRYB[12][14] ), .S0(\SUMB[12][14] ) );
  HS65_GS_FA1X4 S3_11_14 ( .A0(\ab[11][14] ), .B0(\CARRYB[10][14] ), .CI(
        \ab[10][15] ), .CO(\CARRYB[11][14] ), .S0(\SUMB[11][14] ) );
  HS65_GS_FA1X4 S3_9_14 ( .A0(\ab[9][14] ), .B0(\CARRYB[8][14] ), .CI(
        \ab[8][15] ), .CO(\CARRYB[9][14] ), .S0(\SUMB[9][14] ) );
  HS65_GS_FA1X4 S3_8_14 ( .A0(\ab[8][14] ), .B0(\CARRYB[7][14] ), .CI(
        \ab[7][15] ), .CO(\CARRYB[8][14] ), .S0(\SUMB[8][14] ) );
  HS65_GS_FA1X4 S3_7_14 ( .A0(\ab[7][14] ), .B0(\CARRYB[6][14] ), .CI(
        \ab[6][15] ), .CO(\CARRYB[7][14] ), .S0(\SUMB[7][14] ) );
  HS65_GS_FA1X4 S3_6_14 ( .A0(\ab[6][14] ), .B0(\CARRYB[5][14] ), .CI(
        \ab[5][15] ), .CO(\CARRYB[6][14] ), .S0(\SUMB[6][14] ) );
  HS65_GS_FA1X4 S3_5_14 ( .A0(\ab[5][14] ), .B0(\CARRYB[4][14] ), .CI(
        \ab[4][15] ), .CO(\CARRYB[5][14] ), .S0(\SUMB[5][14] ) );
  HS65_GS_FA1X4 S3_4_14 ( .A0(\ab[4][14] ), .B0(\CARRYB[3][14] ), .CI(
        \ab[3][15] ), .CO(\CARRYB[4][14] ), .S0(\SUMB[4][14] ) );
  HS65_GS_FA1X4 S3_3_14 ( .A0(\ab[3][14] ), .B0(\CARRYB[2][14] ), .CI(
        \ab[2][15] ), .CO(\CARRYB[3][14] ), .S0(\SUMB[3][14] ) );
  HS65_GS_FA1X4 S4_9 ( .A0(\ab[15][9] ), .B0(\CARRYB[14][9] ), .CI(
        \SUMB[14][10] ), .CO(\CARRYB[15][9] ), .S0(\SUMB[15][9] ) );
  HS65_GS_FA1X4 S4_8 ( .A0(\ab[15][8] ), .B0(\CARRYB[14][8] ), .CI(
        \SUMB[14][9] ), .CO(\CARRYB[15][8] ), .S0(\SUMB[15][8] ) );
  HS65_GS_FA1X4 S4_7 ( .A0(\ab[15][7] ), .B0(\CARRYB[14][7] ), .CI(
        \SUMB[14][8] ), .CO(\CARRYB[15][7] ), .S0(\SUMB[15][7] ) );
  HS65_GS_FA1X4 S4_6 ( .A0(\ab[15][6] ), .B0(\CARRYB[14][6] ), .CI(
        \SUMB[14][7] ), .CO(\CARRYB[15][6] ), .S0(\SUMB[15][6] ) );
  HS65_GS_FA1X4 S4_5 ( .A0(\ab[15][5] ), .B0(\CARRYB[14][5] ), .CI(
        \SUMB[14][6] ), .CO(\CARRYB[15][5] ), .S0(\SUMB[15][5] ) );
  HS65_GS_FA1X4 S4_4 ( .A0(\ab[15][4] ), .B0(\CARRYB[14][4] ), .CI(
        \SUMB[14][5] ), .CO(\CARRYB[15][4] ), .S0(\SUMB[15][4] ) );
  HS65_GS_FA1X4 S4_3 ( .A0(\ab[15][3] ), .B0(\CARRYB[14][3] ), .CI(
        \SUMB[14][4] ), .CO(\CARRYB[15][3] ), .S0(\SUMB[15][3] ) );
  HS65_GS_FA1X4 S4_10 ( .A0(\ab[15][10] ), .B0(\CARRYB[14][10] ), .CI(
        \SUMB[14][11] ), .CO(\CARRYB[15][10] ), .S0(\SUMB[15][10] ) );
  HS65_GS_FA1X4 S4_11 ( .A0(\ab[15][11] ), .B0(\CARRYB[14][11] ), .CI(
        \SUMB[14][12] ), .CO(\CARRYB[15][11] ), .S0(\SUMB[15][11] ) );
  HS65_GS_FA1X4 S4_12 ( .A0(\ab[15][12] ), .B0(\CARRYB[14][12] ), .CI(
        \SUMB[14][13] ), .CO(\CARRYB[15][12] ), .S0(\SUMB[15][12] ) );
  HS65_GS_FA1X4 S4_13 ( .A0(\ab[15][13] ), .B0(\CARRYB[14][13] ), .CI(
        \SUMB[14][14] ), .CO(\CARRYB[15][13] ), .S0(\SUMB[15][13] ) );
  HS65_GS_FA1X4 S2_2_12 ( .A0(\ab[2][12] ), .B0(n4), .CI(\SUMB[1][13] ), .CO(
        \CARRYB[2][12] ), .S0(\SUMB[2][12] ) );
  HS65_GS_AND2X4 U2 ( .A(\ab[15][15] ), .B(\CARRYB[15][14] ), .Z(n2) );
  HS65_GS_AND2X4 U3 ( .A(\ab[1][14] ), .B(\ab[0][15] ), .Z(n3) );
  HS65_GS_AND2X4 U4 ( .A(\ab[1][12] ), .B(\ab[0][13] ), .Z(n4) );
  HS65_GS_AND2X4 U5 ( .A(\ab[1][13] ), .B(\ab[0][14] ), .Z(n5) );
  HS65_GS_AND2X4 U6 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Z(n6) );
  HS65_GS_AND2X4 U7 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Z(n7) );
  HS65_GS_AND2X4 U8 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Z(n8) );
  HS65_GS_AND2X4 U9 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Z(n9) );
  HS65_GS_AND2X4 U10 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Z(n10) );
  HS65_GS_AND2X4 U11 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Z(n11) );
  HS65_GS_AND2X4 U12 ( .A(\ab[1][7] ), .B(\ab[0][8] ), .Z(n12) );
  HS65_GS_AND2X4 U13 ( .A(\ab[1][8] ), .B(\ab[0][9] ), .Z(n13) );
  HS65_GS_AND2X4 U14 ( .A(\ab[1][9] ), .B(\ab[0][10] ), .Z(n14) );
  HS65_GS_AND2X4 U15 ( .A(\ab[1][10] ), .B(\ab[0][11] ), .Z(n15) );
  HS65_GS_AND2X4 U16 ( .A(\ab[1][11] ), .B(\ab[0][12] ), .Z(n16) );
  HS65_GS_AND2X4 U17 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Z(n17) );
  HS65_GS_AND2X4 U18 ( .A(\SUMB[15][14] ), .B(\CARRYB[15][13] ), .Z(n18) );
  HS65_GS_BFX9 U19 ( .A(B[15]), .Z(n60) );
  HS65_GS_BFX9 U20 ( .A(B[4]), .Z(n39) );
  HS65_GS_BFX9 U21 ( .A(B[3]), .Z(n37) );
  HS65_GS_BFX9 U22 ( .A(B[5]), .Z(n41) );
  HS65_GS_BFX9 U23 ( .A(B[6]), .Z(n43) );
  HS65_GS_BFX9 U24 ( .A(B[9]), .Z(n49) );
  HS65_GS_BFX9 U25 ( .A(B[8]), .Z(n47) );
  HS65_GS_BFX9 U26 ( .A(B[12]), .Z(n55) );
  HS65_GS_BFX9 U27 ( .A(B[13]), .Z(n57) );
  HS65_GS_BFX9 U28 ( .A(B[7]), .Z(n45) );
  HS65_GS_BFX9 U29 ( .A(B[11]), .Z(n53) );
  HS65_GS_BFX9 U30 ( .A(B[2]), .Z(n35) );
  HS65_GS_BFX9 U31 ( .A(B[10]), .Z(n51) );
  HS65_GS_BFX9 U32 ( .A(B[1]), .Z(n33) );
  HS65_GS_IVX9 U33 ( .A(n35), .Z(n36) );
  HS65_GS_IVX9 U34 ( .A(n37), .Z(n38) );
  HS65_GS_IVX9 U35 ( .A(n39), .Z(n40) );
  HS65_GS_IVX9 U36 ( .A(n41), .Z(n42) );
  HS65_GS_IVX9 U37 ( .A(n43), .Z(n44) );
  HS65_GS_IVX9 U38 ( .A(n45), .Z(n46) );
  HS65_GS_IVX9 U39 ( .A(n47), .Z(n48) );
  HS65_GS_IVX9 U40 ( .A(n49), .Z(n50) );
  HS65_GS_IVX9 U41 ( .A(n51), .Z(n52) );
  HS65_GS_IVX9 U42 ( .A(n53), .Z(n54) );
  HS65_GS_IVX9 U43 ( .A(n55), .Z(n56) );
  HS65_GS_IVX9 U44 ( .A(n57), .Z(n58) );
  HS65_GS_IVX9 U45 ( .A(n60), .Z(n61) );
  HS65_GS_IVX9 U46 ( .A(B[14]), .Z(n59) );
  HS65_GS_IVX9 U47 ( .A(n33), .Z(n34) );
  HS65_GS_IVX9 U48 ( .A(B[0]), .Z(n32) );
  HS65_GSS_XOR2X6 U49 ( .A(\SUMB[15][1] ), .B(\CARRYB[15][0] ), .Z(\A1[14] )
         );
  HS65_GSS_XOR2X6 U50 ( .A(\SUMB[15][13] ), .B(\CARRYB[15][12] ), .Z(\A1[26] )
         );
  HS65_GSS_XOR2X6 U51 ( .A(\SUMB[15][12] ), .B(\CARRYB[15][11] ), .Z(\A1[25] )
         );
  HS65_GSS_XOR2X6 U52 ( .A(\SUMB[15][11] ), .B(\CARRYB[15][10] ), .Z(\A1[24] )
         );
  HS65_GSS_XOR2X6 U53 ( .A(\SUMB[15][10] ), .B(\CARRYB[15][9] ), .Z(\A1[23] )
         );
  HS65_GSS_XOR2X6 U54 ( .A(\SUMB[15][2] ), .B(\CARRYB[15][1] ), .Z(\A1[15] )
         );
  HS65_GSS_XOR2X6 U55 ( .A(\SUMB[15][4] ), .B(\CARRYB[15][3] ), .Z(\A1[17] )
         );
  HS65_GSS_XOR2X6 U56 ( .A(\SUMB[15][6] ), .B(\CARRYB[15][5] ), .Z(\A1[19] )
         );
  HS65_GSS_XOR2X6 U57 ( .A(\SUMB[15][8] ), .B(\CARRYB[15][7] ), .Z(\A1[21] )
         );
  HS65_GSS_XOR2X6 U58 ( .A(\SUMB[15][3] ), .B(\CARRYB[15][2] ), .Z(\A1[16] )
         );
  HS65_GSS_XOR2X6 U59 ( .A(\SUMB[15][5] ), .B(\CARRYB[15][4] ), .Z(\A1[18] )
         );
  HS65_GSS_XOR2X6 U60 ( .A(\SUMB[15][7] ), .B(\CARRYB[15][6] ), .Z(\A1[20] )
         );
  HS65_GSS_XOR2X6 U61 ( .A(\SUMB[15][9] ), .B(\CARRYB[15][8] ), .Z(\A1[22] )
         );
  HS65_GS_AND2X4 U62 ( .A(\SUMB[15][1] ), .B(\CARRYB[15][0] ), .Z(n19) );
  HS65_GS_AND2X4 U63 ( .A(\SUMB[15][3] ), .B(\CARRYB[15][2] ), .Z(n20) );
  HS65_GS_AND2X4 U64 ( .A(\SUMB[15][5] ), .B(\CARRYB[15][4] ), .Z(n21) );
  HS65_GS_AND2X4 U65 ( .A(\SUMB[15][7] ), .B(\CARRYB[15][6] ), .Z(n22) );
  HS65_GS_AND2X4 U66 ( .A(\SUMB[15][9] ), .B(\CARRYB[15][8] ), .Z(n23) );
  HS65_GS_AND2X4 U67 ( .A(\SUMB[15][11] ), .B(\CARRYB[15][10] ), .Z(n24) );
  HS65_GS_AND2X4 U68 ( .A(\SUMB[15][2] ), .B(\CARRYB[15][1] ), .Z(n25) );
  HS65_GS_AND2X4 U69 ( .A(\SUMB[15][4] ), .B(\CARRYB[15][3] ), .Z(n26) );
  HS65_GS_AND2X4 U70 ( .A(\SUMB[15][6] ), .B(\CARRYB[15][5] ), .Z(n27) );
  HS65_GS_AND2X4 U71 ( .A(\SUMB[15][8] ), .B(\CARRYB[15][7] ), .Z(n28) );
  HS65_GS_AND2X4 U72 ( .A(\SUMB[15][10] ), .B(\CARRYB[15][9] ), .Z(n29) );
  HS65_GS_AND2X4 U73 ( .A(\SUMB[15][12] ), .B(\CARRYB[15][11] ), .Z(n30) );
  HS65_GSS_XOR2X6 U74 ( .A(\SUMB[15][14] ), .B(\CARRYB[15][13] ), .Z(\A1[27] )
         );
  HS65_GS_AND2X4 U75 ( .A(\SUMB[15][13] ), .B(\CARRYB[15][12] ), .Z(n31) );
  HS65_GSS_XOR2X6 U76 ( .A(\ab[0][14] ), .B(\ab[1][13] ), .Z(\SUMB[1][13] ) );
  HS65_GSS_XOR2X6 U77 ( .A(\ab[0][15] ), .B(\ab[1][14] ), .Z(\SUMB[1][14] ) );
  HS65_GSS_XOR2X6 U78 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Z(\SUMB[1][2] ) );
  HS65_GSS_XOR2X6 U79 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Z(\SUMB[1][3] ) );
  HS65_GSS_XOR2X6 U80 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Z(\SUMB[1][4] ) );
  HS65_GSS_XOR2X6 U81 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Z(\SUMB[1][5] ) );
  HS65_GSS_XOR2X6 U82 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Z(\SUMB[1][6] ) );
  HS65_GSS_XOR2X6 U83 ( .A(\ab[0][8] ), .B(\ab[1][7] ), .Z(\SUMB[1][7] ) );
  HS65_GSS_XOR2X6 U84 ( .A(\ab[0][9] ), .B(\ab[1][8] ), .Z(\SUMB[1][8] ) );
  HS65_GSS_XOR2X6 U85 ( .A(\ab[0][10] ), .B(\ab[1][9] ), .Z(\SUMB[1][9] ) );
  HS65_GSS_XOR2X6 U86 ( .A(\ab[0][11] ), .B(\ab[1][10] ), .Z(\SUMB[1][10] ) );
  HS65_GSS_XOR2X6 U87 ( .A(\ab[0][12] ), .B(\ab[1][11] ), .Z(\SUMB[1][11] ) );
  HS65_GSS_XOR2X6 U88 ( .A(\ab[0][13] ), .B(\ab[1][12] ), .Z(\SUMB[1][12] ) );
  HS65_GSS_XOR2X6 U89 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Z(\SUMB[1][1] ) );
  HS65_GSS_XOR2X6 U90 ( .A(\ab[15][15] ), .B(\CARRYB[15][14] ), .Z(\A1[28] )
         );
  HS65_GSS_XOR2X6 U91 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Z(PRODUCT[1]) );
  HS65_GS_IVX9 U92 ( .A(A[0]), .Z(n77) );
  HS65_GS_IVX9 U93 ( .A(A[1]), .Z(n76) );
  HS65_GS_IVX9 U94 ( .A(A[3]), .Z(n74) );
  HS65_GS_IVX9 U95 ( .A(A[4]), .Z(n73) );
  HS65_GS_IVX9 U96 ( .A(A[5]), .Z(n72) );
  HS65_GS_IVX9 U97 ( .A(A[2]), .Z(n75) );
  HS65_GS_IVX9 U98 ( .A(A[6]), .Z(n71) );
  HS65_GS_IVX9 U99 ( .A(A[7]), .Z(n70) );
  HS65_GS_IVX9 U100 ( .A(A[8]), .Z(n69) );
  HS65_GS_IVX9 U101 ( .A(A[10]), .Z(n67) );
  HS65_GS_IVX9 U102 ( .A(A[11]), .Z(n66) );
  HS65_GS_IVX9 U103 ( .A(A[12]), .Z(n65) );
  HS65_GS_IVX9 U104 ( .A(A[13]), .Z(n64) );
  HS65_GS_IVX9 U105 ( .A(A[14]), .Z(n63) );
  HS65_GS_IVX9 U106 ( .A(A[15]), .Z(n62) );
  HS65_GS_IVX9 U107 ( .A(A[9]), .Z(n68) );
  HS65_GS_NOR2X2 U109 ( .A(n68), .B(n50), .Z(\ab[9][9] ) );
  HS65_GS_NOR2X2 U110 ( .A(n68), .B(n48), .Z(\ab[9][8] ) );
  HS65_GS_NOR2X2 U111 ( .A(n68), .B(n46), .Z(\ab[9][7] ) );
  HS65_GS_NOR2X2 U112 ( .A(n68), .B(n44), .Z(\ab[9][6] ) );
  HS65_GS_NOR2X2 U113 ( .A(n68), .B(n42), .Z(\ab[9][5] ) );
  HS65_GS_NOR2X2 U114 ( .A(n68), .B(n40), .Z(\ab[9][4] ) );
  HS65_GS_NOR2X2 U115 ( .A(n68), .B(n38), .Z(\ab[9][3] ) );
  HS65_GS_NOR2X2 U116 ( .A(n68), .B(n36), .Z(\ab[9][2] ) );
  HS65_GS_NOR2X2 U117 ( .A(n68), .B(n34), .Z(\ab[9][1] ) );
  HS65_GS_NOR2X2 U118 ( .A(n68), .B(n61), .Z(\ab[9][15] ) );
  HS65_GS_NOR2X2 U119 ( .A(n68), .B(n59), .Z(\ab[9][14] ) );
  HS65_GS_NOR2X2 U120 ( .A(n68), .B(n58), .Z(\ab[9][13] ) );
  HS65_GS_NOR2X2 U121 ( .A(n68), .B(n56), .Z(\ab[9][12] ) );
  HS65_GS_NOR2X2 U122 ( .A(n68), .B(n54), .Z(\ab[9][11] ) );
  HS65_GS_NOR2X2 U123 ( .A(n68), .B(n52), .Z(\ab[9][10] ) );
  HS65_GS_NOR2X2 U124 ( .A(n68), .B(n32), .Z(\ab[9][0] ) );
  HS65_GS_NOR2X2 U125 ( .A(n50), .B(n69), .Z(\ab[8][9] ) );
  HS65_GS_NOR2X2 U126 ( .A(n48), .B(n69), .Z(\ab[8][8] ) );
  HS65_GS_NOR2X2 U127 ( .A(n46), .B(n69), .Z(\ab[8][7] ) );
  HS65_GS_NOR2X2 U128 ( .A(n44), .B(n69), .Z(\ab[8][6] ) );
  HS65_GS_NOR2X2 U129 ( .A(n42), .B(n69), .Z(\ab[8][5] ) );
  HS65_GS_NOR2X2 U130 ( .A(n40), .B(n69), .Z(\ab[8][4] ) );
  HS65_GS_NOR2X2 U131 ( .A(n38), .B(n69), .Z(\ab[8][3] ) );
  HS65_GS_NOR2X2 U132 ( .A(n36), .B(n69), .Z(\ab[8][2] ) );
  HS65_GS_NOR2X2 U133 ( .A(n34), .B(n69), .Z(\ab[8][1] ) );
  HS65_GS_NOR2X2 U134 ( .A(n61), .B(n69), .Z(\ab[8][15] ) );
  HS65_GS_NOR2X2 U135 ( .A(n59), .B(n69), .Z(\ab[8][14] ) );
  HS65_GS_NOR2X2 U136 ( .A(n58), .B(n69), .Z(\ab[8][13] ) );
  HS65_GS_NOR2X2 U137 ( .A(n56), .B(n69), .Z(\ab[8][12] ) );
  HS65_GS_NOR2X2 U138 ( .A(n54), .B(n69), .Z(\ab[8][11] ) );
  HS65_GS_NOR2X2 U139 ( .A(n52), .B(n69), .Z(\ab[8][10] ) );
  HS65_GS_NOR2X2 U140 ( .A(n32), .B(n69), .Z(\ab[8][0] ) );
  HS65_GS_NOR2X2 U141 ( .A(n50), .B(n70), .Z(\ab[7][9] ) );
  HS65_GS_NOR2X2 U142 ( .A(n48), .B(n70), .Z(\ab[7][8] ) );
  HS65_GS_NOR2X2 U143 ( .A(n46), .B(n70), .Z(\ab[7][7] ) );
  HS65_GS_NOR2X2 U144 ( .A(n44), .B(n70), .Z(\ab[7][6] ) );
  HS65_GS_NOR2X2 U145 ( .A(n42), .B(n70), .Z(\ab[7][5] ) );
  HS65_GS_NOR2X2 U146 ( .A(n40), .B(n70), .Z(\ab[7][4] ) );
  HS65_GS_NOR2X2 U147 ( .A(n38), .B(n70), .Z(\ab[7][3] ) );
  HS65_GS_NOR2X2 U148 ( .A(n36), .B(n70), .Z(\ab[7][2] ) );
  HS65_GS_NOR2X2 U149 ( .A(n34), .B(n70), .Z(\ab[7][1] ) );
  HS65_GS_NOR2X2 U150 ( .A(n61), .B(n70), .Z(\ab[7][15] ) );
  HS65_GS_NOR2X2 U151 ( .A(n59), .B(n70), .Z(\ab[7][14] ) );
  HS65_GS_NOR2X2 U152 ( .A(n58), .B(n70), .Z(\ab[7][13] ) );
  HS65_GS_NOR2X2 U153 ( .A(n56), .B(n70), .Z(\ab[7][12] ) );
  HS65_GS_NOR2X2 U154 ( .A(n54), .B(n70), .Z(\ab[7][11] ) );
  HS65_GS_NOR2X2 U155 ( .A(n52), .B(n70), .Z(\ab[7][10] ) );
  HS65_GS_NOR2X2 U156 ( .A(n32), .B(n70), .Z(\ab[7][0] ) );
  HS65_GS_NOR2X2 U157 ( .A(n50), .B(n71), .Z(\ab[6][9] ) );
  HS65_GS_NOR2X2 U158 ( .A(n48), .B(n71), .Z(\ab[6][8] ) );
  HS65_GS_NOR2X2 U159 ( .A(n46), .B(n71), .Z(\ab[6][7] ) );
  HS65_GS_NOR2X2 U160 ( .A(n44), .B(n71), .Z(\ab[6][6] ) );
  HS65_GS_NOR2X2 U161 ( .A(n42), .B(n71), .Z(\ab[6][5] ) );
  HS65_GS_NOR2X2 U162 ( .A(n40), .B(n71), .Z(\ab[6][4] ) );
  HS65_GS_NOR2X2 U163 ( .A(n38), .B(n71), .Z(\ab[6][3] ) );
  HS65_GS_NOR2X2 U164 ( .A(n36), .B(n71), .Z(\ab[6][2] ) );
  HS65_GS_NOR2X2 U165 ( .A(n34), .B(n71), .Z(\ab[6][1] ) );
  HS65_GS_NOR2X2 U166 ( .A(n61), .B(n71), .Z(\ab[6][15] ) );
  HS65_GS_NOR2X2 U167 ( .A(n59), .B(n71), .Z(\ab[6][14] ) );
  HS65_GS_NOR2X2 U168 ( .A(n58), .B(n71), .Z(\ab[6][13] ) );
  HS65_GS_NOR2X2 U169 ( .A(n56), .B(n71), .Z(\ab[6][12] ) );
  HS65_GS_NOR2X2 U170 ( .A(n54), .B(n71), .Z(\ab[6][11] ) );
  HS65_GS_NOR2X2 U171 ( .A(n52), .B(n71), .Z(\ab[6][10] ) );
  HS65_GS_NOR2X2 U172 ( .A(n32), .B(n71), .Z(\ab[6][0] ) );
  HS65_GS_NOR2X2 U173 ( .A(n50), .B(n72), .Z(\ab[5][9] ) );
  HS65_GS_NOR2X2 U174 ( .A(n48), .B(n72), .Z(\ab[5][8] ) );
  HS65_GS_NOR2X2 U175 ( .A(n46), .B(n72), .Z(\ab[5][7] ) );
  HS65_GS_NOR2X2 U176 ( .A(n44), .B(n72), .Z(\ab[5][6] ) );
  HS65_GS_NOR2X2 U177 ( .A(n42), .B(n72), .Z(\ab[5][5] ) );
  HS65_GS_NOR2X2 U178 ( .A(n40), .B(n72), .Z(\ab[5][4] ) );
  HS65_GS_NOR2X2 U179 ( .A(n38), .B(n72), .Z(\ab[5][3] ) );
  HS65_GS_NOR2X2 U180 ( .A(n36), .B(n72), .Z(\ab[5][2] ) );
  HS65_GS_NOR2X2 U181 ( .A(n34), .B(n72), .Z(\ab[5][1] ) );
  HS65_GS_NOR2X2 U182 ( .A(n61), .B(n72), .Z(\ab[5][15] ) );
  HS65_GS_NOR2X2 U183 ( .A(n59), .B(n72), .Z(\ab[5][14] ) );
  HS65_GS_NOR2X2 U184 ( .A(n58), .B(n72), .Z(\ab[5][13] ) );
  HS65_GS_NOR2X2 U185 ( .A(n56), .B(n72), .Z(\ab[5][12] ) );
  HS65_GS_NOR2X2 U186 ( .A(n54), .B(n72), .Z(\ab[5][11] ) );
  HS65_GS_NOR2X2 U187 ( .A(n52), .B(n72), .Z(\ab[5][10] ) );
  HS65_GS_NOR2X2 U188 ( .A(n32), .B(n72), .Z(\ab[5][0] ) );
  HS65_GS_NOR2X2 U189 ( .A(n50), .B(n73), .Z(\ab[4][9] ) );
  HS65_GS_NOR2X2 U190 ( .A(n48), .B(n73), .Z(\ab[4][8] ) );
  HS65_GS_NOR2X2 U191 ( .A(n46), .B(n73), .Z(\ab[4][7] ) );
  HS65_GS_NOR2X2 U192 ( .A(n44), .B(n73), .Z(\ab[4][6] ) );
  HS65_GS_NOR2X2 U193 ( .A(n42), .B(n73), .Z(\ab[4][5] ) );
  HS65_GS_NOR2X2 U194 ( .A(n40), .B(n73), .Z(\ab[4][4] ) );
  HS65_GS_NOR2X2 U195 ( .A(n38), .B(n73), .Z(\ab[4][3] ) );
  HS65_GS_NOR2X2 U196 ( .A(n36), .B(n73), .Z(\ab[4][2] ) );
  HS65_GS_NOR2X2 U197 ( .A(n34), .B(n73), .Z(\ab[4][1] ) );
  HS65_GS_NOR2X2 U198 ( .A(n61), .B(n73), .Z(\ab[4][15] ) );
  HS65_GS_NOR2X2 U199 ( .A(n59), .B(n73), .Z(\ab[4][14] ) );
  HS65_GS_NOR2X2 U200 ( .A(n58), .B(n73), .Z(\ab[4][13] ) );
  HS65_GS_NOR2X2 U201 ( .A(n56), .B(n73), .Z(\ab[4][12] ) );
  HS65_GS_NOR2X2 U202 ( .A(n54), .B(n73), .Z(\ab[4][11] ) );
  HS65_GS_NOR2X2 U203 ( .A(n52), .B(n73), .Z(\ab[4][10] ) );
  HS65_GS_NOR2X2 U204 ( .A(n32), .B(n73), .Z(\ab[4][0] ) );
  HS65_GS_NOR2X2 U205 ( .A(n50), .B(n74), .Z(\ab[3][9] ) );
  HS65_GS_NOR2X2 U206 ( .A(n48), .B(n74), .Z(\ab[3][8] ) );
  HS65_GS_NOR2X2 U207 ( .A(n46), .B(n74), .Z(\ab[3][7] ) );
  HS65_GS_NOR2X2 U208 ( .A(n44), .B(n74), .Z(\ab[3][6] ) );
  HS65_GS_NOR2X2 U209 ( .A(n42), .B(n74), .Z(\ab[3][5] ) );
  HS65_GS_NOR2X2 U210 ( .A(n40), .B(n74), .Z(\ab[3][4] ) );
  HS65_GS_NOR2X2 U211 ( .A(n38), .B(n74), .Z(\ab[3][3] ) );
  HS65_GS_NOR2X2 U212 ( .A(n36), .B(n74), .Z(\ab[3][2] ) );
  HS65_GS_NOR2X2 U213 ( .A(n34), .B(n74), .Z(\ab[3][1] ) );
  HS65_GS_NOR2X2 U214 ( .A(n61), .B(n74), .Z(\ab[3][15] ) );
  HS65_GS_NOR2X2 U215 ( .A(n59), .B(n74), .Z(\ab[3][14] ) );
  HS65_GS_NOR2X2 U216 ( .A(n58), .B(n74), .Z(\ab[3][13] ) );
  HS65_GS_NOR2X2 U217 ( .A(n56), .B(n74), .Z(\ab[3][12] ) );
  HS65_GS_NOR2X2 U218 ( .A(n54), .B(n74), .Z(\ab[3][11] ) );
  HS65_GS_NOR2X2 U219 ( .A(n52), .B(n74), .Z(\ab[3][10] ) );
  HS65_GS_NOR2X2 U220 ( .A(n32), .B(n74), .Z(\ab[3][0] ) );
  HS65_GS_NOR2X2 U221 ( .A(n50), .B(n75), .Z(\ab[2][9] ) );
  HS65_GS_NOR2X2 U222 ( .A(n48), .B(n75), .Z(\ab[2][8] ) );
  HS65_GS_NOR2X2 U223 ( .A(n46), .B(n75), .Z(\ab[2][7] ) );
  HS65_GS_NOR2X2 U224 ( .A(n44), .B(n75), .Z(\ab[2][6] ) );
  HS65_GS_NOR2X2 U225 ( .A(n42), .B(n75), .Z(\ab[2][5] ) );
  HS65_GS_NOR2X2 U226 ( .A(n40), .B(n75), .Z(\ab[2][4] ) );
  HS65_GS_NOR2X2 U227 ( .A(n38), .B(n75), .Z(\ab[2][3] ) );
  HS65_GS_NOR2X2 U228 ( .A(n36), .B(n75), .Z(\ab[2][2] ) );
  HS65_GS_NOR2X2 U229 ( .A(n34), .B(n75), .Z(\ab[2][1] ) );
  HS65_GS_NOR2X2 U230 ( .A(n61), .B(n75), .Z(\ab[2][15] ) );
  HS65_GS_NOR2X2 U231 ( .A(n59), .B(n75), .Z(\ab[2][14] ) );
  HS65_GS_NOR2X2 U232 ( .A(n58), .B(n75), .Z(\ab[2][13] ) );
  HS65_GS_NOR2X2 U233 ( .A(n56), .B(n75), .Z(\ab[2][12] ) );
  HS65_GS_NOR2X2 U234 ( .A(n54), .B(n75), .Z(\ab[2][11] ) );
  HS65_GS_NOR2X2 U235 ( .A(n52), .B(n75), .Z(\ab[2][10] ) );
  HS65_GS_NOR2X2 U236 ( .A(n32), .B(n75), .Z(\ab[2][0] ) );
  HS65_GS_NOR2X2 U237 ( .A(n50), .B(n76), .Z(\ab[1][9] ) );
  HS65_GS_NOR2X2 U238 ( .A(n48), .B(n76), .Z(\ab[1][8] ) );
  HS65_GS_NOR2X2 U239 ( .A(n46), .B(n76), .Z(\ab[1][7] ) );
  HS65_GS_NOR2X2 U240 ( .A(n44), .B(n76), .Z(\ab[1][6] ) );
  HS65_GS_NOR2X2 U241 ( .A(n42), .B(n76), .Z(\ab[1][5] ) );
  HS65_GS_NOR2X2 U242 ( .A(n40), .B(n76), .Z(\ab[1][4] ) );
  HS65_GS_NOR2X2 U243 ( .A(n38), .B(n76), .Z(\ab[1][3] ) );
  HS65_GS_NOR2X2 U244 ( .A(n36), .B(n76), .Z(\ab[1][2] ) );
  HS65_GS_NOR2X2 U245 ( .A(n34), .B(n76), .Z(\ab[1][1] ) );
  HS65_GS_NOR2X2 U246 ( .A(n61), .B(n76), .Z(\ab[1][15] ) );
  HS65_GS_NOR2X2 U247 ( .A(n59), .B(n76), .Z(\ab[1][14] ) );
  HS65_GS_NOR2X2 U248 ( .A(n58), .B(n76), .Z(\ab[1][13] ) );
  HS65_GS_NOR2X2 U249 ( .A(n56), .B(n76), .Z(\ab[1][12] ) );
  HS65_GS_NOR2X2 U250 ( .A(n54), .B(n76), .Z(\ab[1][11] ) );
  HS65_GS_NOR2X2 U251 ( .A(n52), .B(n76), .Z(\ab[1][10] ) );
  HS65_GS_NOR2X2 U252 ( .A(n32), .B(n76), .Z(\ab[1][0] ) );
  HS65_GS_NOR2X2 U253 ( .A(n50), .B(n62), .Z(\ab[15][9] ) );
  HS65_GS_NOR2X2 U254 ( .A(n48), .B(n62), .Z(\ab[15][8] ) );
  HS65_GS_NOR2X2 U255 ( .A(n46), .B(n62), .Z(\ab[15][7] ) );
  HS65_GS_NOR2X2 U256 ( .A(n44), .B(n62), .Z(\ab[15][6] ) );
  HS65_GS_NOR2X2 U257 ( .A(n42), .B(n62), .Z(\ab[15][5] ) );
  HS65_GS_NOR2X2 U258 ( .A(n40), .B(n62), .Z(\ab[15][4] ) );
  HS65_GS_NOR2X2 U259 ( .A(n38), .B(n62), .Z(\ab[15][3] ) );
  HS65_GS_NOR2X2 U260 ( .A(n36), .B(n62), .Z(\ab[15][2] ) );
  HS65_GS_NOR2X2 U261 ( .A(n34), .B(n62), .Z(\ab[15][1] ) );
  HS65_GS_NOR2X2 U262 ( .A(n61), .B(n62), .Z(\ab[15][15] ) );
  HS65_GS_NOR2X2 U263 ( .A(n59), .B(n62), .Z(\ab[15][14] ) );
  HS65_GS_NOR2X2 U264 ( .A(n58), .B(n62), .Z(\ab[15][13] ) );
  HS65_GS_NOR2X2 U265 ( .A(n56), .B(n62), .Z(\ab[15][12] ) );
  HS65_GS_NOR2X2 U266 ( .A(n54), .B(n62), .Z(\ab[15][11] ) );
  HS65_GS_NOR2X2 U267 ( .A(n52), .B(n62), .Z(\ab[15][10] ) );
  HS65_GS_NOR2X2 U268 ( .A(n32), .B(n62), .Z(\ab[15][0] ) );
  HS65_GS_NOR2X2 U269 ( .A(n50), .B(n63), .Z(\ab[14][9] ) );
  HS65_GS_NOR2X2 U270 ( .A(n48), .B(n63), .Z(\ab[14][8] ) );
  HS65_GS_NOR2X2 U271 ( .A(n46), .B(n63), .Z(\ab[14][7] ) );
  HS65_GS_NOR2X2 U272 ( .A(n44), .B(n63), .Z(\ab[14][6] ) );
  HS65_GS_NOR2X2 U273 ( .A(n42), .B(n63), .Z(\ab[14][5] ) );
  HS65_GS_NOR2X2 U274 ( .A(n40), .B(n63), .Z(\ab[14][4] ) );
  HS65_GS_NOR2X2 U275 ( .A(n38), .B(n63), .Z(\ab[14][3] ) );
  HS65_GS_NOR2X2 U276 ( .A(n36), .B(n63), .Z(\ab[14][2] ) );
  HS65_GS_NOR2X2 U277 ( .A(n34), .B(n63), .Z(\ab[14][1] ) );
  HS65_GS_NOR2X2 U278 ( .A(n61), .B(n63), .Z(\ab[14][15] ) );
  HS65_GS_NOR2X2 U279 ( .A(n59), .B(n63), .Z(\ab[14][14] ) );
  HS65_GS_NOR2X2 U280 ( .A(n58), .B(n63), .Z(\ab[14][13] ) );
  HS65_GS_NOR2X2 U281 ( .A(n56), .B(n63), .Z(\ab[14][12] ) );
  HS65_GS_NOR2X2 U282 ( .A(n54), .B(n63), .Z(\ab[14][11] ) );
  HS65_GS_NOR2X2 U283 ( .A(n52), .B(n63), .Z(\ab[14][10] ) );
  HS65_GS_NOR2X2 U284 ( .A(n32), .B(n63), .Z(\ab[14][0] ) );
  HS65_GS_NOR2X2 U285 ( .A(n50), .B(n64), .Z(\ab[13][9] ) );
  HS65_GS_NOR2X2 U286 ( .A(n48), .B(n64), .Z(\ab[13][8] ) );
  HS65_GS_NOR2X2 U287 ( .A(n46), .B(n64), .Z(\ab[13][7] ) );
  HS65_GS_NOR2X2 U288 ( .A(n44), .B(n64), .Z(\ab[13][6] ) );
  HS65_GS_NOR2X2 U289 ( .A(n42), .B(n64), .Z(\ab[13][5] ) );
  HS65_GS_NOR2X2 U290 ( .A(n40), .B(n64), .Z(\ab[13][4] ) );
  HS65_GS_NOR2X2 U291 ( .A(n38), .B(n64), .Z(\ab[13][3] ) );
  HS65_GS_NOR2X2 U292 ( .A(n36), .B(n64), .Z(\ab[13][2] ) );
  HS65_GS_NOR2X2 U293 ( .A(n34), .B(n64), .Z(\ab[13][1] ) );
  HS65_GS_NOR2X2 U294 ( .A(n61), .B(n64), .Z(\ab[13][15] ) );
  HS65_GS_NOR2X2 U295 ( .A(n59), .B(n64), .Z(\ab[13][14] ) );
  HS65_GS_NOR2X2 U296 ( .A(n58), .B(n64), .Z(\ab[13][13] ) );
  HS65_GS_NOR2X2 U297 ( .A(n56), .B(n64), .Z(\ab[13][12] ) );
  HS65_GS_NOR2X2 U298 ( .A(n54), .B(n64), .Z(\ab[13][11] ) );
  HS65_GS_NOR2X2 U299 ( .A(n52), .B(n64), .Z(\ab[13][10] ) );
  HS65_GS_NOR2X2 U300 ( .A(n32), .B(n64), .Z(\ab[13][0] ) );
  HS65_GS_NOR2X2 U301 ( .A(n50), .B(n65), .Z(\ab[12][9] ) );
  HS65_GS_NOR2X2 U302 ( .A(n48), .B(n65), .Z(\ab[12][8] ) );
  HS65_GS_NOR2X2 U303 ( .A(n46), .B(n65), .Z(\ab[12][7] ) );
  HS65_GS_NOR2X2 U304 ( .A(n44), .B(n65), .Z(\ab[12][6] ) );
  HS65_GS_NOR2X2 U305 ( .A(n42), .B(n65), .Z(\ab[12][5] ) );
  HS65_GS_NOR2X2 U306 ( .A(n40), .B(n65), .Z(\ab[12][4] ) );
  HS65_GS_NOR2X2 U307 ( .A(n38), .B(n65), .Z(\ab[12][3] ) );
  HS65_GS_NOR2X2 U308 ( .A(n36), .B(n65), .Z(\ab[12][2] ) );
  HS65_GS_NOR2X2 U309 ( .A(n34), .B(n65), .Z(\ab[12][1] ) );
  HS65_GS_NOR2X2 U310 ( .A(n61), .B(n65), .Z(\ab[12][15] ) );
  HS65_GS_NOR2X2 U311 ( .A(n59), .B(n65), .Z(\ab[12][14] ) );
  HS65_GS_NOR2X2 U312 ( .A(n58), .B(n65), .Z(\ab[12][13] ) );
  HS65_GS_NOR2X2 U313 ( .A(n56), .B(n65), .Z(\ab[12][12] ) );
  HS65_GS_NOR2X2 U314 ( .A(n54), .B(n65), .Z(\ab[12][11] ) );
  HS65_GS_NOR2X2 U315 ( .A(n52), .B(n65), .Z(\ab[12][10] ) );
  HS65_GS_NOR2X2 U316 ( .A(n32), .B(n65), .Z(\ab[12][0] ) );
  HS65_GS_NOR2X2 U317 ( .A(n50), .B(n66), .Z(\ab[11][9] ) );
  HS65_GS_NOR2X2 U318 ( .A(n48), .B(n66), .Z(\ab[11][8] ) );
  HS65_GS_NOR2X2 U319 ( .A(n46), .B(n66), .Z(\ab[11][7] ) );
  HS65_GS_NOR2X2 U320 ( .A(n44), .B(n66), .Z(\ab[11][6] ) );
  HS65_GS_NOR2X2 U321 ( .A(n42), .B(n66), .Z(\ab[11][5] ) );
  HS65_GS_NOR2X2 U322 ( .A(n40), .B(n66), .Z(\ab[11][4] ) );
  HS65_GS_NOR2X2 U323 ( .A(n38), .B(n66), .Z(\ab[11][3] ) );
  HS65_GS_NOR2X2 U324 ( .A(n36), .B(n66), .Z(\ab[11][2] ) );
  HS65_GS_NOR2X2 U325 ( .A(n34), .B(n66), .Z(\ab[11][1] ) );
  HS65_GS_NOR2X2 U326 ( .A(n61), .B(n66), .Z(\ab[11][15] ) );
  HS65_GS_NOR2X2 U327 ( .A(n59), .B(n66), .Z(\ab[11][14] ) );
  HS65_GS_NOR2X2 U328 ( .A(n58), .B(n66), .Z(\ab[11][13] ) );
  HS65_GS_NOR2X2 U329 ( .A(n56), .B(n66), .Z(\ab[11][12] ) );
  HS65_GS_NOR2X2 U330 ( .A(n54), .B(n66), .Z(\ab[11][11] ) );
  HS65_GS_NOR2X2 U331 ( .A(n52), .B(n66), .Z(\ab[11][10] ) );
  HS65_GS_NOR2X2 U332 ( .A(n32), .B(n66), .Z(\ab[11][0] ) );
  HS65_GS_NOR2X2 U333 ( .A(n50), .B(n67), .Z(\ab[10][9] ) );
  HS65_GS_NOR2X2 U334 ( .A(n48), .B(n67), .Z(\ab[10][8] ) );
  HS65_GS_NOR2X2 U335 ( .A(n46), .B(n67), .Z(\ab[10][7] ) );
  HS65_GS_NOR2X2 U336 ( .A(n44), .B(n67), .Z(\ab[10][6] ) );
  HS65_GS_NOR2X2 U337 ( .A(n42), .B(n67), .Z(\ab[10][5] ) );
  HS65_GS_NOR2X2 U338 ( .A(n40), .B(n67), .Z(\ab[10][4] ) );
  HS65_GS_NOR2X2 U339 ( .A(n38), .B(n67), .Z(\ab[10][3] ) );
  HS65_GS_NOR2X2 U340 ( .A(n36), .B(n67), .Z(\ab[10][2] ) );
  HS65_GS_NOR2X2 U341 ( .A(n34), .B(n67), .Z(\ab[10][1] ) );
  HS65_GS_NOR2X2 U342 ( .A(n61), .B(n67), .Z(\ab[10][15] ) );
  HS65_GS_NOR2X2 U343 ( .A(n59), .B(n67), .Z(\ab[10][14] ) );
  HS65_GS_NOR2X2 U344 ( .A(n58), .B(n67), .Z(\ab[10][13] ) );
  HS65_GS_NOR2X2 U345 ( .A(n56), .B(n67), .Z(\ab[10][12] ) );
  HS65_GS_NOR2X2 U346 ( .A(n54), .B(n67), .Z(\ab[10][11] ) );
  HS65_GS_NOR2X2 U347 ( .A(n52), .B(n67), .Z(\ab[10][10] ) );
  HS65_GS_NOR2X2 U348 ( .A(n32), .B(n67), .Z(\ab[10][0] ) );
  HS65_GS_NOR2X2 U349 ( .A(n50), .B(n77), .Z(\ab[0][9] ) );
  HS65_GS_NOR2X2 U350 ( .A(n48), .B(n77), .Z(\ab[0][8] ) );
  HS65_GS_NOR2X2 U351 ( .A(n46), .B(n77), .Z(\ab[0][7] ) );
  HS65_GS_NOR2X2 U352 ( .A(n44), .B(n77), .Z(\ab[0][6] ) );
  HS65_GS_NOR2X2 U353 ( .A(n42), .B(n77), .Z(\ab[0][5] ) );
  HS65_GS_NOR2X2 U354 ( .A(n40), .B(n77), .Z(\ab[0][4] ) );
  HS65_GS_NOR2X2 U355 ( .A(n38), .B(n77), .Z(\ab[0][3] ) );
  HS65_GS_NOR2X2 U356 ( .A(n36), .B(n77), .Z(\ab[0][2] ) );
  HS65_GS_NOR2X2 U357 ( .A(n34), .B(n77), .Z(\ab[0][1] ) );
  HS65_GS_NOR2X2 U358 ( .A(n61), .B(n77), .Z(\ab[0][15] ) );
  HS65_GS_NOR2X2 U359 ( .A(n59), .B(n77), .Z(\ab[0][14] ) );
  HS65_GS_NOR2X2 U360 ( .A(n58), .B(n77), .Z(\ab[0][13] ) );
  HS65_GS_NOR2X2 U361 ( .A(n56), .B(n77), .Z(\ab[0][12] ) );
  HS65_GS_NOR2X2 U362 ( .A(n54), .B(n77), .Z(\ab[0][11] ) );
  HS65_GS_NOR2X2 U363 ( .A(n52), .B(n77), .Z(\ab[0][10] ) );
  HS65_GS_NOR2X2 U364 ( .A(n32), .B(n77), .Z(PRODUCT[0]) );
endmodule


module betterNeighborsInMyCluster ( clock, nrst, en, start, address, wr_en, 
        data_in, MY_CLUSTER_ID, mybest, besthop, bestvalue, bestneighborID, 
        nextsinks, data_out, done );
  output [10:0] address;
  input [15:0] data_in;
  input [15:0] MY_CLUSTER_ID;
  input [15:0] mybest;
  output [15:0] besthop;
  output [15:0] bestvalue;
  output [15:0] bestneighborID;
  output [15:0] nextsinks;
  output [15:0] data_out;
  input clock, nrst, en, start;
  output wr_en, done;
  wire   N130, N135, N136, N137, N138, N139, N140, N141, N142, N143, N144,
         N145, N146, N147, N148, N150, N151, N153, N154, N155, N156, N157,
         N158, N159, N160, N163, N164, N165, N166, N167, N168, N169, N170,
         N171, N172, N188, N189, N190, N191, N192, N193, N194, N230, N231,
         N232, N233, N234, N235, N236, N237, N266, N267, N268, N269, N270,
         N271, N272, N273, N292, N293, N294, N295, N296, N297, N298, N299,
         N300, N301, N302, N303, N304, N305, N306, N307, N319, N320, N321,
         N322, N323, N324, N325, N326, N327, N328, N330, N331, N333, N334,
         N335, N336, N337, N338, N339, N353, N354, N355, N356, N357, N358,
         N359, N360, N361, N362, N363, N364, N365, N366, N367, N368, N369,
         N370, N371, N374, N375, N376, N377, N378, N379, N380, N381, N382,
         N383, N384, N385, N386, N387, N388, N389, N406, N413, N418, N419,
         N420, N421, N422, N423, N424, N425, N426, N427, N428, N429, N430,
         N431, N432, N433, N434, N435, N436, N437, N438, N439, N440, N441,
         N442, N443, N444, N445, N446, N447, N448, N449, N450, N451, N452,
         N453, N454, N455, N456, N457, N458, N459, N472, N473, N474, N475,
         N476, N477, N478, N479, N480, N481, N483, N486, N487, N488, N489,
         N490, N491, N492, N493, N494, N495, N496, N497, N498, N499, N501,
         N502, N503, N504, N505, N506, N507, N508, N509, N510, N511, N534,
         N535, N536, N537, N538, N539, N540, N1262, N1264, N1266, N1268, N1270,
         N1272, N1276, n84, n101, n111, n131, n164, n165, n225, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         N317, N316, N315, N314, N313, N312, N311, N310, \add_218/carry[10] ,
         \add_218/carry[9] , \add_218/carry[8] , \add_218/carry[7] ,
         \add_218/carry[6] , \add_218/carry[5] , \add_212/carry[10] ,
         \add_212/carry[9] , \add_212/carry[8] , \add_212/carry[7] ,
         \add_212/carry[6] , \add_212/carry[5] , \add_199/carry[10] ,
         \add_199/carry[9] , \add_199/carry[8] , \add_199/carry[7] ,
         \add_199/carry[6] , \add_199/carry[5] , \add_177/carry[10] ,
         \add_177/carry[9] , \add_177/carry[8] , \add_177/carry[7] ,
         \add_177/carry[6] , \add_177/carry[5] , \add_137/carry[10] ,
         \add_137/carry[9] , \add_137/carry[8] , \add_137/carry[7] ,
         \add_137/carry[6] , \add_137/carry[5] , \add_128/carry[10] ,
         \add_128/carry[9] , \add_128/carry[8] , \add_128/carry[7] ,
         \add_128/carry[6] , \add_128/carry[5] , \add_117/carry[10] ,
         \add_117/carry[9] , \add_117/carry[8] , \add_117/carry[7] ,
         \add_117/carry[6] , \add_117/carry[5] , \add_108/carry[10] ,
         \add_108/carry[9] , \add_108/carry[8] , \add_108/carry[7] ,
         \add_108/carry[6] , \add_108/carry[5] , \r221/carry[10] ,
         \r221/carry[9] , \r221/carry[8] , \r221/carry[7] , \r221/carry[6] ,
         \r221/carry[5] , \r212/carry[10] , \r212/carry[9] , \r212/carry[8] ,
         \r212/carry[7] , \r212/carry[6] , \r212/carry[5] ,
         \add_151/carry[10] , \add_151/carry[9] , \add_151/carry[8] ,
         \add_151/carry[7] , \add_151/carry[6] , \add_151/carry[5] , n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582,
         n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593,
         n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, n604,
         n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615,
         n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670,
         n671, n672;
  wire   [3:0] state;
  wire   [15:0] i;
  wire   [15:0] neighborCount;
  wire   [15:0] betterneighborCount;
  wire   [30:0] fpTemp;
  wire   [15:0] j;
  wire   [15:0] k;
  wire   [15:0] batteryStat;
  wire   [15:0] knownSinkCount;
  wire   [15:0] neighborID;
  wire   [15:0] qValue;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign besthop[0] = N163;
  assign besthop[1] = N164;

  HS65_GS_DFPQX9 \neighborCount_reg[0]  ( .D(n506), .CP(clock), .Q(
        neighborCount[0]) );
  HS65_GS_DFPQX9 \state_reg[0]  ( .D(n505), .CP(clock), .Q(state[0]) );
  HS65_GS_DFPQX9 \state_reg[2]  ( .D(n503), .CP(clock), .Q(state[2]) );
  HS65_GS_DFPQX9 \state_reg[1]  ( .D(n504), .CP(clock), .Q(state[1]) );
  HS65_GS_DFPQX9 \neighborID_reg[15]  ( .D(n471), .CP(clock), .Q(
        neighborID[15]) );
  HS65_GS_DFPQX9 \neighborID_reg[14]  ( .D(n472), .CP(clock), .Q(
        neighborID[14]) );
  HS65_GS_DFPQX9 \neighborID_reg[13]  ( .D(n473), .CP(clock), .Q(
        neighborID[13]) );
  HS65_GS_DFPQX9 \neighborID_reg[12]  ( .D(n474), .CP(clock), .Q(
        neighborID[12]) );
  HS65_GS_DFPQX9 \neighborID_reg[11]  ( .D(n475), .CP(clock), .Q(
        neighborID[11]) );
  HS65_GS_DFPQX9 \neighborID_reg[10]  ( .D(n476), .CP(clock), .Q(
        neighborID[10]) );
  HS65_GS_DFPQX9 \neighborID_reg[9]  ( .D(n477), .CP(clock), .Q(neighborID[9])
         );
  HS65_GS_DFPQX9 \neighborID_reg[8]  ( .D(n478), .CP(clock), .Q(neighborID[8])
         );
  HS65_GS_DFPQX9 \neighborID_reg[7]  ( .D(n479), .CP(clock), .Q(neighborID[7])
         );
  HS65_GS_DFPQX9 \neighborID_reg[6]  ( .D(n480), .CP(clock), .Q(neighborID[6])
         );
  HS65_GS_DFPQX9 \neighborID_reg[5]  ( .D(n481), .CP(clock), .Q(neighborID[5])
         );
  HS65_GS_DFPQX9 \neighborID_reg[4]  ( .D(n482), .CP(clock), .Q(neighborID[4])
         );
  HS65_GS_DFPQX9 \neighborID_reg[3]  ( .D(n483), .CP(clock), .Q(neighborID[3])
         );
  HS65_GS_DFPQX9 \neighborID_reg[2]  ( .D(n484), .CP(clock), .Q(neighborID[2])
         );
  HS65_GS_DFPQX9 \neighborID_reg[1]  ( .D(n485), .CP(clock), .Q(neighborID[1])
         );
  HS65_GS_DFPQX9 \neighborID_reg[0]  ( .D(n486), .CP(clock), .Q(neighborID[0])
         );
  HS65_GS_DFPQX9 \knownSinkCount_reg[15]  ( .D(n440), .CP(clock), .Q(
        knownSinkCount[15]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[14]  ( .D(n441), .CP(clock), .Q(
        knownSinkCount[14]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[13]  ( .D(n442), .CP(clock), .Q(
        knownSinkCount[13]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[12]  ( .D(n443), .CP(clock), .Q(
        knownSinkCount[12]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[11]  ( .D(n444), .CP(clock), .Q(
        knownSinkCount[11]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[10]  ( .D(n445), .CP(clock), .Q(
        knownSinkCount[10]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[9]  ( .D(n446), .CP(clock), .Q(
        knownSinkCount[9]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[8]  ( .D(n447), .CP(clock), .Q(
        knownSinkCount[8]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[7]  ( .D(n448), .CP(clock), .Q(
        knownSinkCount[7]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[6]  ( .D(n449), .CP(clock), .Q(
        knownSinkCount[6]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[5]  ( .D(n450), .CP(clock), .Q(
        knownSinkCount[5]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[4]  ( .D(n451), .CP(clock), .Q(
        knownSinkCount[4]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[3]  ( .D(n452), .CP(clock), .Q(
        knownSinkCount[3]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[2]  ( .D(n453), .CP(clock), .Q(
        knownSinkCount[2]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[1]  ( .D(n454), .CP(clock), .Q(
        knownSinkCount[1]) );
  HS65_GS_DFPQX9 \knownSinkCount_reg[0]  ( .D(n455), .CP(clock), .Q(
        knownSinkCount[0]) );
  HS65_GS_DFPQX9 \batteryStat_reg[15]  ( .D(n487), .CP(clock), .Q(
        batteryStat[15]) );
  HS65_GS_DFPQX9 \batteryStat_reg[14]  ( .D(n488), .CP(clock), .Q(
        batteryStat[14]) );
  HS65_GS_DFPQX9 \batteryStat_reg[13]  ( .D(n489), .CP(clock), .Q(
        batteryStat[13]) );
  HS65_GS_DFPQX9 \batteryStat_reg[12]  ( .D(n490), .CP(clock), .Q(
        batteryStat[12]) );
  HS65_GS_DFPQX9 \batteryStat_reg[11]  ( .D(n491), .CP(clock), .Q(
        batteryStat[11]) );
  HS65_GS_DFPQX9 \batteryStat_reg[10]  ( .D(n492), .CP(clock), .Q(
        batteryStat[10]) );
  HS65_GS_DFPQX9 \batteryStat_reg[9]  ( .D(n493), .CP(clock), .Q(
        batteryStat[9]) );
  HS65_GS_DFPQX9 \batteryStat_reg[8]  ( .D(n494), .CP(clock), .Q(
        batteryStat[8]) );
  HS65_GS_DFPQX9 \batteryStat_reg[7]  ( .D(n495), .CP(clock), .Q(
        batteryStat[7]) );
  HS65_GS_DFPQX9 \batteryStat_reg[6]  ( .D(n496), .CP(clock), .Q(
        batteryStat[6]) );
  HS65_GS_DFPQX9 \batteryStat_reg[5]  ( .D(n497), .CP(clock), .Q(
        batteryStat[5]) );
  HS65_GS_DFPQX9 \batteryStat_reg[4]  ( .D(n498), .CP(clock), .Q(
        batteryStat[4]) );
  HS65_GS_DFPQX9 \batteryStat_reg[3]  ( .D(n499), .CP(clock), .Q(
        batteryStat[3]) );
  HS65_GS_DFPQX9 \batteryStat_reg[2]  ( .D(n500), .CP(clock), .Q(
        batteryStat[2]) );
  HS65_GS_DFPQX9 \batteryStat_reg[1]  ( .D(n501), .CP(clock), .Q(
        batteryStat[1]) );
  HS65_GS_DFPQX9 \batteryStat_reg[0]  ( .D(n502), .CP(clock), .Q(
        batteryStat[0]) );
  HS65_GS_DFPQX9 \j_reg[0]  ( .D(n439), .CP(clock), .Q(N472) );
  HS65_GS_DFPQX9 \j_reg[1]  ( .D(n438), .CP(clock), .Q(N473) );
  HS65_GS_DFPQX9 \j_reg[2]  ( .D(n437), .CP(clock), .Q(j[2]) );
  HS65_GS_DFPQX9 \j_reg[3]  ( .D(n436), .CP(clock), .Q(j[3]) );
  HS65_GS_DFPQX9 \j_reg[4]  ( .D(n435), .CP(clock), .Q(j[4]) );
  HS65_GS_DFPQX9 \j_reg[5]  ( .D(n434), .CP(clock), .Q(j[5]) );
  HS65_GS_DFPQX9 \j_reg[6]  ( .D(n433), .CP(clock), .Q(j[6]) );
  HS65_GS_DFPQX9 \j_reg[7]  ( .D(n432), .CP(clock), .Q(j[7]) );
  HS65_GS_DFPQX9 \j_reg[8]  ( .D(n431), .CP(clock), .Q(j[8]) );
  HS65_GS_DFPQX9 \j_reg[9]  ( .D(n430), .CP(clock), .Q(j[9]) );
  HS65_GS_DFPQX9 \j_reg[10]  ( .D(n429), .CP(clock), .Q(j[10]) );
  HS65_GS_DFPQX9 \j_reg[11]  ( .D(n428), .CP(clock), .Q(j[11]) );
  HS65_GS_DFPQX9 \j_reg[12]  ( .D(n427), .CP(clock), .Q(j[12]) );
  HS65_GS_DFPQX9 \j_reg[13]  ( .D(n426), .CP(clock), .Q(j[13]) );
  HS65_GS_DFPQX9 \j_reg[14]  ( .D(n425), .CP(clock), .Q(j[14]) );
  HS65_GS_DFPQX9 \j_reg[15]  ( .D(n424), .CP(clock), .Q(j[15]) );
  HS65_GS_DFPQX9 \i_reg[15]  ( .D(n423), .CP(clock), .Q(i[15]) );
  HS65_GS_DFPQX9 \i_reg[0]  ( .D(n422), .CP(clock), .Q(N330) );
  HS65_GS_DFPQX9 \nextsinks_buf_reg[0]  ( .D(n407), .CP(clock), .Q(
        nextsinks[0]) );
  HS65_GS_DFPQX9 \i_reg[1]  ( .D(n421), .CP(clock), .Q(N331) );
  HS65_GS_DFPQX9 \nextsinks_buf_reg[1]  ( .D(n406), .CP(clock), .Q(
        nextsinks[1]) );
  HS65_GS_DFPQX9 \nextsinks_buf_reg[2]  ( .D(n405), .CP(clock), .Q(
        nextsinks[2]) );
  HS65_GS_DFPQX9 \nextsinks_buf_reg[3]  ( .D(n404), .CP(clock), .Q(
        nextsinks[3]) );
  HS65_GS_DFPQX9 \nextsinks_buf_reg[4]  ( .D(n403), .CP(clock), .Q(
        nextsinks[4]) );
  HS65_GS_DFPQX9 \nextsinks_buf_reg[5]  ( .D(n402), .CP(clock), .Q(
        nextsinks[5]) );
  HS65_GS_DFPQX9 \nextsinks_buf_reg[6]  ( .D(n401), .CP(clock), .Q(
        nextsinks[6]) );
  HS65_GS_DFPQX9 \nextsinks_buf_reg[7]  ( .D(n400), .CP(clock), .Q(
        nextsinks[7]) );
  HS65_GS_DFPQX9 \nextsinks_buf_reg[8]  ( .D(n399), .CP(clock), .Q(
        nextsinks[8]) );
  HS65_GS_DFPQX9 \i_reg[9]  ( .D(n413), .CP(clock), .Q(i[9]) );
  HS65_GS_DFPQX9 \nextsinks_buf_reg[9]  ( .D(n398), .CP(clock), .Q(
        nextsinks[9]) );
  HS65_GS_DFPQX9 \i_reg[10]  ( .D(n412), .CP(clock), .Q(i[10]) );
  HS65_GS_DFPQX9 \nextsinks_buf_reg[10]  ( .D(n397), .CP(clock), .Q(
        nextsinks[10]) );
  HS65_GS_DFPQX9 \i_reg[11]  ( .D(n411), .CP(clock), .Q(i[11]) );
  HS65_GS_DFPQX9 \nextsinks_buf_reg[11]  ( .D(n396), .CP(clock), .Q(
        nextsinks[11]) );
  HS65_GS_DFPQX9 \i_reg[12]  ( .D(n410), .CP(clock), .Q(i[12]) );
  HS65_GS_DFPQX9 \nextsinks_buf_reg[12]  ( .D(n395), .CP(clock), .Q(
        nextsinks[12]) );
  HS65_GS_DFPQX9 \i_reg[13]  ( .D(n409), .CP(clock), .Q(i[13]) );
  HS65_GS_DFPQX9 \nextsinks_buf_reg[13]  ( .D(n394), .CP(clock), .Q(
        nextsinks[13]) );
  HS65_GS_DFPQX9 \i_reg[14]  ( .D(n408), .CP(clock), .Q(i[14]) );
  HS65_GS_DFPQX9 \nextsinks_buf_reg[14]  ( .D(n393), .CP(clock), .Q(
        nextsinks[14]) );
  HS65_GS_DFPQX9 \nextsinks_buf_reg[15]  ( .D(n392), .CP(clock), .Q(
        nextsinks[15]) );
  HS65_GS_DFPQX9 \neighborCount_reg[15]  ( .D(n456), .CP(clock), .Q(
        neighborCount[15]) );
  HS65_GS_DFPQX9 \neighborCount_reg[14]  ( .D(n457), .CP(clock), .Q(
        neighborCount[14]) );
  HS65_GS_DFPQX9 \neighborCount_reg[13]  ( .D(n458), .CP(clock), .Q(
        neighborCount[13]) );
  HS65_GS_DFPQX9 \neighborCount_reg[12]  ( .D(n459), .CP(clock), .Q(
        neighborCount[12]) );
  HS65_GS_DFPQX9 \neighborCount_reg[11]  ( .D(n460), .CP(clock), .Q(
        neighborCount[11]) );
  HS65_GS_DFPQX9 \neighborCount_reg[10]  ( .D(n461), .CP(clock), .Q(
        neighborCount[10]) );
  HS65_GS_DFPQX9 \neighborCount_reg[9]  ( .D(n462), .CP(clock), .Q(
        neighborCount[9]) );
  HS65_GS_DFPQX9 \neighborCount_reg[8]  ( .D(n463), .CP(clock), .Q(
        neighborCount[8]) );
  HS65_GS_DFPQX9 \neighborCount_reg[7]  ( .D(n464), .CP(clock), .Q(
        neighborCount[7]) );
  HS65_GS_DFPQX9 \neighborCount_reg[6]  ( .D(n465), .CP(clock), .Q(
        neighborCount[6]) );
  HS65_GS_DFPQX9 \neighborCount_reg[5]  ( .D(n466), .CP(clock), .Q(
        neighborCount[5]) );
  HS65_GS_DFPQX9 \neighborCount_reg[4]  ( .D(n467), .CP(clock), .Q(
        neighborCount[4]) );
  HS65_GS_DFPQX9 \neighborCount_reg[3]  ( .D(n468), .CP(clock), .Q(
        neighborCount[3]) );
  HS65_GS_DFPQX9 \neighborCount_reg[2]  ( .D(n469), .CP(clock), .Q(
        neighborCount[2]) );
  HS65_GS_DFPQX9 \neighborCount_reg[1]  ( .D(n470), .CP(clock), .Q(
        neighborCount[1]) );
  HS65_GS_DFPQX9 \fpTemp_reg[30]  ( .D(n391), .CP(clock), .Q(fpTemp[30]) );
  HS65_GS_DFPQX9 \fpTemp_reg[29]  ( .D(n390), .CP(clock), .Q(fpTemp[29]) );
  HS65_GS_DFPQX9 \fpTemp_reg[28]  ( .D(n389), .CP(clock), .Q(fpTemp[28]) );
  HS65_GS_DFPQX9 \fpTemp_reg[27]  ( .D(n388), .CP(clock), .Q(fpTemp[27]) );
  HS65_GS_DFPQX9 \fpTemp_reg[26]  ( .D(n387), .CP(clock), .Q(fpTemp[26]) );
  HS65_GS_DFPQX9 \fpTemp_reg[25]  ( .D(n386), .CP(clock), .Q(fpTemp[25]) );
  HS65_GS_DFPQX9 \fpTemp_reg[24]  ( .D(n385), .CP(clock), .Q(fpTemp[24]) );
  HS65_GS_DFPQX9 \fpTemp_reg[23]  ( .D(n384), .CP(clock), .Q(fpTemp[23]) );
  HS65_GS_DFPQX9 \fpTemp_reg[22]  ( .D(n383), .CP(clock), .Q(fpTemp[22]) );
  HS65_GS_DFPQX9 \fpTemp_reg[21]  ( .D(n382), .CP(clock), .Q(fpTemp[21]) );
  HS65_GS_DFPQX9 \fpTemp_reg[20]  ( .D(n381), .CP(clock), .Q(fpTemp[20]) );
  HS65_GS_DFPQX9 \fpTemp_reg[19]  ( .D(n380), .CP(clock), .Q(fpTemp[19]) );
  HS65_GS_DFPQX9 \fpTemp_reg[18]  ( .D(n379), .CP(clock), .Q(fpTemp[18]) );
  HS65_GS_DFPQX9 \fpTemp_reg[17]  ( .D(n378), .CP(clock), .Q(fpTemp[17]) );
  HS65_GS_DFPQX9 \fpTemp_reg[16]  ( .D(n377), .CP(clock), .Q(fpTemp[16]) );
  HS65_GS_DFPQX9 \fpTemp_reg[15]  ( .D(n376), .CP(clock), .Q(fpTemp[15]) );
  HS65_GS_DFPQX9 \fpTemp_reg[14]  ( .D(n375), .CP(clock), .Q(fpTemp[14]) );
  HS65_GS_DFPQX9 \fpTemp_reg[13]  ( .D(n374), .CP(clock), .Q(fpTemp[13]) );
  HS65_GS_DFPQX9 \fpTemp_reg[12]  ( .D(n373), .CP(clock), .Q(fpTemp[12]) );
  HS65_GS_DFPQX9 \fpTemp_reg[11]  ( .D(n372), .CP(clock), .Q(fpTemp[11]) );
  HS65_GS_DFPQX9 \fpTemp_reg[10]  ( .D(n371), .CP(clock), .Q(fpTemp[10]) );
  HS65_GS_DFPQX9 \fpTemp_reg[9]  ( .D(n370), .CP(clock), .Q(fpTemp[9]) );
  HS65_GS_DFPQX9 \fpTemp_reg[8]  ( .D(n369), .CP(clock), .Q(fpTemp[8]) );
  HS65_GS_DFPQX9 \fpTemp_reg[7]  ( .D(n368), .CP(clock), .Q(fpTemp[7]) );
  HS65_GS_DFPQX9 \fpTemp_reg[6]  ( .D(n367), .CP(clock), .Q(fpTemp[6]) );
  HS65_GS_DFPQX9 \fpTemp_reg[5]  ( .D(n366), .CP(clock), .Q(fpTemp[5]) );
  HS65_GS_DFPQX9 \fpTemp_reg[4]  ( .D(n365), .CP(clock), .Q(fpTemp[4]) );
  HS65_GS_DFPQX9 \fpTemp_reg[3]  ( .D(n364), .CP(clock), .Q(fpTemp[3]) );
  HS65_GS_DFPQX9 \fpTemp_reg[2]  ( .D(n363), .CP(clock), .Q(fpTemp[2]) );
  HS65_GS_DFPQX9 \fpTemp_reg[1]  ( .D(n362), .CP(clock), .Q(fpTemp[1]) );
  HS65_GS_DFPQX9 \fpTemp_reg[0]  ( .D(n361), .CP(clock), .Q(fpTemp[0]) );
  HS65_GS_DFPQX9 \k_reg[15]  ( .D(n360), .CP(clock), .Q(k[15]) );
  HS65_GS_DFPQX9 \k_reg[14]  ( .D(n345), .CP(clock), .Q(k[14]) );
  HS65_GS_DFPQX9 \k_reg[13]  ( .D(n346), .CP(clock), .Q(k[13]) );
  HS65_GS_DFPQX9 \k_reg[12]  ( .D(n347), .CP(clock), .Q(k[12]) );
  HS65_GS_DFPQX9 \k_reg[11]  ( .D(n348), .CP(clock), .Q(k[11]) );
  HS65_GS_DFPQX9 \k_reg[10]  ( .D(n349), .CP(clock), .Q(k[10]) );
  HS65_GS_DFPQX9 \k_reg[9]  ( .D(n350), .CP(clock), .Q(k[9]) );
  HS65_GS_DFPQX9 \k_reg[8]  ( .D(n351), .CP(clock), .Q(k[8]) );
  HS65_GS_DFPQX9 \k_reg[7]  ( .D(n352), .CP(clock), .Q(k[7]) );
  HS65_GS_DFPQX9 \k_reg[6]  ( .D(n353), .CP(clock), .Q(k[6]) );
  HS65_GS_DFPQX9 \k_reg[5]  ( .D(n354), .CP(clock), .Q(k[5]) );
  HS65_GS_DFPQX9 \k_reg[4]  ( .D(n355), .CP(clock), .Q(k[4]) );
  HS65_GS_DFPQX9 \k_reg[2]  ( .D(n357), .CP(clock), .Q(k[2]) );
  HS65_GS_DFPQX9 \k_reg[3]  ( .D(n356), .CP(clock), .Q(k[3]) );
  HS65_GS_DFPQX9 \k_reg[1]  ( .D(n358), .CP(clock), .Q(k[1]) );
  HS65_GS_DFPQX9 \k_reg[0]  ( .D(n359), .CP(clock), .Q(k[0]) );
  HS65_GS_DFPQX9 \bestneighborID_buf_reg[15]  ( .D(n344), .CP(clock), .Q(
        bestneighborID[15]) );
  HS65_GS_DFPQX9 \bestneighborID_buf_reg[14]  ( .D(n343), .CP(clock), .Q(
        bestneighborID[14]) );
  HS65_GS_DFPQX9 \bestneighborID_buf_reg[13]  ( .D(n342), .CP(clock), .Q(
        bestneighborID[13]) );
  HS65_GS_DFPQX9 \bestneighborID_buf_reg[12]  ( .D(n341), .CP(clock), .Q(
        bestneighborID[12]) );
  HS65_GS_DFPQX9 \bestneighborID_buf_reg[11]  ( .D(n340), .CP(clock), .Q(
        bestneighborID[11]) );
  HS65_GS_DFPQX9 \bestneighborID_buf_reg[10]  ( .D(n339), .CP(clock), .Q(
        bestneighborID[10]) );
  HS65_GS_DFPQX9 \bestneighborID_buf_reg[9]  ( .D(n338), .CP(clock), .Q(
        bestneighborID[9]) );
  HS65_GS_DFPQX9 \bestneighborID_buf_reg[8]  ( .D(n337), .CP(clock), .Q(
        bestneighborID[8]) );
  HS65_GS_DFPQX9 \bestneighborID_buf_reg[7]  ( .D(n336), .CP(clock), .Q(
        bestneighborID[7]) );
  HS65_GS_DFPQX9 \bestneighborID_buf_reg[6]  ( .D(n335), .CP(clock), .Q(
        bestneighborID[6]) );
  HS65_GS_DFPQX9 \bestneighborID_buf_reg[5]  ( .D(n334), .CP(clock), .Q(
        bestneighborID[5]) );
  HS65_GS_DFPQX9 \bestneighborID_buf_reg[4]  ( .D(n333), .CP(clock), .Q(
        bestneighborID[4]) );
  HS65_GS_DFPQX9 \bestneighborID_buf_reg[3]  ( .D(n332), .CP(clock), .Q(
        bestneighborID[3]) );
  HS65_GS_DFPQX9 \bestneighborID_buf_reg[2]  ( .D(n331), .CP(clock), .Q(
        bestneighborID[2]) );
  HS65_GS_DFPQX9 \bestneighborID_buf_reg[1]  ( .D(n330), .CP(clock), .Q(
        bestneighborID[1]) );
  HS65_GS_DFPQX9 \bestneighborID_buf_reg[0]  ( .D(n329), .CP(clock), .Q(
        bestneighborID[0]) );
  HS65_GS_DFPQX9 \qValue_reg[15]  ( .D(n328), .CP(clock), .Q(qValue[15]) );
  HS65_GS_DFPQX9 \qValue_reg[14]  ( .D(n327), .CP(clock), .Q(qValue[14]) );
  HS65_GS_DFPQX9 \qValue_reg[13]  ( .D(n326), .CP(clock), .Q(qValue[13]) );
  HS65_GS_DFPQX9 \qValue_reg[12]  ( .D(n325), .CP(clock), .Q(qValue[12]) );
  HS65_GS_DFPQX9 \qValue_reg[11]  ( .D(n324), .CP(clock), .Q(qValue[11]) );
  HS65_GS_DFPQX9 \qValue_reg[10]  ( .D(n323), .CP(clock), .Q(qValue[10]) );
  HS65_GS_DFPQX9 \qValue_reg[9]  ( .D(n322), .CP(clock), .Q(qValue[9]) );
  HS65_GS_DFPQX9 \qValue_reg[8]  ( .D(n321), .CP(clock), .Q(qValue[8]) );
  HS65_GS_DFPQX9 \qValue_reg[7]  ( .D(n320), .CP(clock), .Q(qValue[7]) );
  HS65_GS_DFPQX9 \qValue_reg[6]  ( .D(n319), .CP(clock), .Q(qValue[6]) );
  HS65_GS_DFPQX9 \qValue_reg[5]  ( .D(n318), .CP(clock), .Q(qValue[5]) );
  HS65_GS_DFPQX9 \qValue_reg[4]  ( .D(n317), .CP(clock), .Q(qValue[4]) );
  HS65_GS_DFPQX9 \qValue_reg[3]  ( .D(n316), .CP(clock), .Q(qValue[3]) );
  HS65_GS_DFPQX9 \qValue_reg[2]  ( .D(n315), .CP(clock), .Q(qValue[2]) );
  HS65_GS_DFPQX9 \qValue_reg[1]  ( .D(n314), .CP(clock), .Q(qValue[1]) );
  HS65_GS_DFPQX9 \qValue_reg[0]  ( .D(n313), .CP(clock), .Q(qValue[0]) );
  HS65_GS_DFPQX9 done_buf_reg ( .D(n312), .CP(clock), .Q(done) );
  HS65_GS_DFPQX9 \betterneighborCount_reg[0]  ( .D(n311), .CP(clock), .Q(
        betterneighborCount[0]) );
  HS65_GS_DFPQX9 \betterneighborCount_reg[1]  ( .D(n310), .CP(clock), .Q(
        betterneighborCount[1]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[1]  ( .D(n294), .CP(clock), .Q(data_out[1])
         );
  HS65_GS_DFPQX9 \betterneighborCount_reg[2]  ( .D(n309), .CP(clock), .Q(
        betterneighborCount[2]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[2]  ( .D(n293), .CP(clock), .Q(data_out[2])
         );
  HS65_GS_DFPQX9 \betterneighborCount_reg[3]  ( .D(n308), .CP(clock), .Q(
        betterneighborCount[3]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[3]  ( .D(n292), .CP(clock), .Q(data_out[3])
         );
  HS65_GS_DFPQX9 \betterneighborCount_reg[4]  ( .D(n307), .CP(clock), .Q(
        betterneighborCount[4]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[4]  ( .D(n291), .CP(clock), .Q(data_out[4])
         );
  HS65_GS_DFPQX9 \betterneighborCount_reg[5]  ( .D(n306), .CP(clock), .Q(
        betterneighborCount[5]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[5]  ( .D(n290), .CP(clock), .Q(data_out[5])
         );
  HS65_GS_DFPQX9 \betterneighborCount_reg[6]  ( .D(n305), .CP(clock), .Q(
        betterneighborCount[6]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[6]  ( .D(n289), .CP(clock), .Q(data_out[6])
         );
  HS65_GS_DFPQX9 \betterneighborCount_reg[7]  ( .D(n304), .CP(clock), .Q(
        betterneighborCount[7]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[7]  ( .D(n288), .CP(clock), .Q(data_out[7])
         );
  HS65_GS_DFPQX9 \betterneighborCount_reg[8]  ( .D(n303), .CP(clock), .Q(
        betterneighborCount[8]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[8]  ( .D(n287), .CP(clock), .Q(data_out[8])
         );
  HS65_GS_DFPQX9 \betterneighborCount_reg[9]  ( .D(n302), .CP(clock), .Q(
        betterneighborCount[9]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[9]  ( .D(n286), .CP(clock), .Q(data_out[9])
         );
  HS65_GS_DFPQX9 \betterneighborCount_reg[10]  ( .D(n301), .CP(clock), .Q(
        betterneighborCount[10]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[10]  ( .D(n285), .CP(clock), .Q(
        data_out[10]) );
  HS65_GS_DFPQX9 \betterneighborCount_reg[11]  ( .D(n300), .CP(clock), .Q(
        betterneighborCount[11]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[11]  ( .D(n284), .CP(clock), .Q(
        data_out[11]) );
  HS65_GS_DFPQX9 \betterneighborCount_reg[12]  ( .D(n299), .CP(clock), .Q(
        betterneighborCount[12]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[12]  ( .D(n283), .CP(clock), .Q(
        data_out[12]) );
  HS65_GS_DFPQX9 \betterneighborCount_reg[13]  ( .D(n298), .CP(clock), .Q(
        betterneighborCount[13]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[13]  ( .D(n282), .CP(clock), .Q(
        data_out[13]) );
  HS65_GS_DFPQX9 \betterneighborCount_reg[14]  ( .D(n297), .CP(clock), .Q(
        betterneighborCount[14]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[14]  ( .D(n281), .CP(clock), .Q(
        data_out[14]) );
  HS65_GS_DFPQX9 \betterneighborCount_reg[15]  ( .D(n296), .CP(clock), .Q(
        betterneighborCount[15]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[15]  ( .D(n280), .CP(clock), .Q(
        data_out[15]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[0]  ( .D(n295), .CP(clock), .Q(data_out[0])
         );
  HS65_GS_DFPQX9 \bestvalue_buf_reg[0]  ( .D(n279), .CP(clock), .Q(
        bestvalue[0]) );
  HS65_GS_DFPQX9 \bestvalue_buf_reg[15]  ( .D(n241), .CP(clock), .Q(
        bestvalue[15]) );
  HS65_GS_DFPQX9 \bestvalue_buf_reg[14]  ( .D(n242), .CP(clock), .Q(
        bestvalue[14]) );
  HS65_GS_DFPQX9 \bestvalue_buf_reg[13]  ( .D(n243), .CP(clock), .Q(
        bestvalue[13]) );
  HS65_GS_DFPQX9 \bestvalue_buf_reg[12]  ( .D(n244), .CP(clock), .Q(
        bestvalue[12]) );
  HS65_GS_DFPQX9 \bestvalue_buf_reg[11]  ( .D(n245), .CP(clock), .Q(
        bestvalue[11]) );
  HS65_GS_DFPQX9 \bestvalue_buf_reg[10]  ( .D(n246), .CP(clock), .Q(
        bestvalue[10]) );
  HS65_GS_DFPQX9 \bestvalue_buf_reg[9]  ( .D(n247), .CP(clock), .Q(
        bestvalue[9]) );
  HS65_GS_DFPQX9 \bestvalue_buf_reg[8]  ( .D(n248), .CP(clock), .Q(
        bestvalue[8]) );
  HS65_GS_DFPQX9 \bestvalue_buf_reg[7]  ( .D(n249), .CP(clock), .Q(
        bestvalue[7]) );
  HS65_GS_DFPQX9 \bestvalue_buf_reg[6]  ( .D(n250), .CP(clock), .Q(
        bestvalue[6]) );
  HS65_GS_DFPQX9 \bestvalue_buf_reg[5]  ( .D(n251), .CP(clock), .Q(
        bestvalue[5]) );
  HS65_GS_DFPQX9 \bestvalue_buf_reg[4]  ( .D(n252), .CP(clock), .Q(
        bestvalue[4]) );
  HS65_GS_DFPQX9 \bestvalue_buf_reg[3]  ( .D(n253), .CP(clock), .Q(
        bestvalue[3]) );
  HS65_GS_DFPQX9 \bestvalue_buf_reg[2]  ( .D(n254), .CP(clock), .Q(
        bestvalue[2]) );
  HS65_GS_DFPQX9 \bestvalue_buf_reg[1]  ( .D(n255), .CP(clock), .Q(
        bestvalue[1]) );
  HS65_GS_DFPQX9 \besthop_buf_reg[6]  ( .D(n272), .CP(clock), .Q(besthop[6])
         );
  HS65_GS_DFPQX9 \besthop_buf_reg[0]  ( .D(n278), .CP(clock), .Q(N163) );
  HS65_GS_DFPQX9 \besthop_buf_reg[15]  ( .D(n256), .CP(clock), .Q(besthop[15])
         );
  HS65_GS_DFPQX9 \besthop_buf_reg[14]  ( .D(n257), .CP(clock), .Q(besthop[14])
         );
  HS65_GS_DFPQX9 \besthop_buf_reg[13]  ( .D(n258), .CP(clock), .Q(besthop[13])
         );
  HS65_GS_DFPQX9 \besthop_buf_reg[12]  ( .D(n259), .CP(clock), .Q(besthop[12])
         );
  HS65_GS_DFPQX9 \besthop_buf_reg[11]  ( .D(n260), .CP(clock), .Q(besthop[11])
         );
  HS65_GS_DFPQX9 \besthop_buf_reg[10]  ( .D(n261), .CP(clock), .Q(besthop[10])
         );
  HS65_GS_DFPQX9 \besthop_buf_reg[9]  ( .D(n269), .CP(clock), .Q(besthop[9])
         );
  HS65_GS_DFPQX9 \besthop_buf_reg[8]  ( .D(n270), .CP(clock), .Q(besthop[8])
         );
  HS65_GS_DFPQX9 \besthop_buf_reg[7]  ( .D(n271), .CP(clock), .Q(besthop[7])
         );
  HS65_GS_DFPQX9 \besthop_buf_reg[5]  ( .D(n273), .CP(clock), .Q(besthop[5])
         );
  HS65_GS_DFPQX9 \besthop_buf_reg[4]  ( .D(n274), .CP(clock), .Q(besthop[4])
         );
  HS65_GS_DFPQX9 \besthop_buf_reg[3]  ( .D(n275), .CP(clock), .Q(besthop[3])
         );
  HS65_GS_DFPQX9 \besthop_buf_reg[2]  ( .D(n276), .CP(clock), .Q(besthop[2])
         );
  HS65_GS_DFPQX9 \besthop_buf_reg[1]  ( .D(n277), .CP(clock), .Q(N164) );
  HS65_GS_DFPQX9 \address_count_reg[0]  ( .D(n268), .CP(clock), .Q(address[0])
         );
  HS65_GS_DFPQX9 \address_count_reg[1]  ( .D(n267), .CP(clock), .Q(address[1])
         );
  HS65_GS_DFPQX9 \address_count_reg[2]  ( .D(n266), .CP(clock), .Q(address[2])
         );
  HS65_GS_DFPQX9 \address_count_reg[4]  ( .D(n265), .CP(clock), .Q(address[4])
         );
  HS65_GS_DFPQX9 \address_count_reg[5]  ( .D(n264), .CP(clock), .Q(address[5])
         );
  HS65_GS_DFPQX9 \address_count_reg[6]  ( .D(n263), .CP(clock), .Q(address[6])
         );
  HS65_GS_DFPQX9 \address_count_reg[8]  ( .D(n262), .CP(clock), .Q(address[8])
         );
  betterNeighborsInMyCluster_DW01_inc_0 add_168 ( .A(fpTemp[30:15]), .SUM({
        N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379, N378, 
        N377, N376, N375, N374}) );
  betterNeighborsInMyCluster_DW01_inc_1 add_146 ( .A(betterneighborCount), 
        .SUM({N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, 
        N296, N295, N294, N293, N292}) );
  betterNeighborsInMyCluster_DW01_inc_2 r209 ( .A({i[15:2], N331, N330}), 
        .SUM({N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, 
        N137, N136, N135, N151, N150}) );
  betterNeighborsInMyCluster_DW01_inc_3 add_211 ( .A({j[15:2], N473, N472}), 
        .SUM({N499, N498, N497, N496, N495, N494, N493, N492, N491, N490, N489, 
        N488, N487, N486, N502, N501}) );
  betterNeighborsInMyCluster_DW02_mult_0 mult_163 ( .A({1'b1, 1'b0, 1'b1, 1'b0}), .B(batteryStat), .TC(1'b0), .PRODUCT({N371, N370, N369, N368, N367, N366, 
        N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, 
        N353, SYNOPSYS_UNCONNECTED__0}) );
  betterNeighborsInMyCluster_DW02_mult_1 mult_184 ( .A(qValue), .B(data_in), 
        .TC(1'b0), .PRODUCT({SYNOPSYS_UNCONNECTED__1, N458, N457, N456, N455, 
        N454, N453, N452, N451, N450, N449, N448, N447, N446, N445, N444, N443, 
        N442, N441, N440, N439, N438, N437, N436, N435, N434, N433, N432, N431, 
        N430, N429, N428}) );
  HS65_GS_DFPQX9 \i_reg[3]  ( .D(n419), .CP(clock), .Q(i[3]) );
  HS65_GS_DFPQX9 \i_reg[4]  ( .D(n418), .CP(clock), .Q(i[4]) );
  HS65_GS_DFPQX9 \i_reg[8]  ( .D(n414), .CP(clock), .Q(i[8]) );
  HS65_GS_DFPQX9 \i_reg[7]  ( .D(n415), .CP(clock), .Q(i[7]) );
  HS65_GS_DFPQX9 \i_reg[5]  ( .D(n417), .CP(clock), .Q(i[5]) );
  HS65_GS_DFPQX9 \i_reg[6]  ( .D(n416), .CP(clock), .Q(i[6]) );
  HS65_GS_DFPQX9 \i_reg[2]  ( .D(n420), .CP(clock), .Q(i[2]) );
  HS65_GS_DFPHQX4 \state_reg[3]  ( .D(n671), .E(n225), .CP(clock), .Q(state[3]) );
  HS65_GS_DFPHQX4 \address_count_reg[10]  ( .D(n84), .E(n672), .CP(clock), .Q(
        address[10]) );
  HS65_GS_DFPHQX4 \address_count_reg[9]  ( .D(n101), .E(n672), .CP(clock), .Q(
        address[9]) );
  HS65_GS_DFPHQX4 \address_count_reg[7]  ( .D(n111), .E(n672), .CP(clock), .Q(
        address[7]) );
  HS65_GS_DFPHQX4 \address_count_reg[3]  ( .D(n131), .E(n672), .CP(clock), .Q(
        address[3]) );
  HS65_GS_DFPHQX4 wr_en_buf_reg ( .D(n164), .E(n165), .CP(clock), .Q(wr_en) );
  HS65_GS_NOR3X4 U3 ( .A(n230), .B(n536), .C(n509), .Z(n1) );
  HS65_GS_AO12X9 U4 ( .A(N459), .B(n536), .C(n509), .Z(n2) );
  HS65_GS_BFX9 U5 ( .A(n554), .Z(n3) );
  HS65_GS_NOR2AX3 U6 ( .A(n647), .B(n629), .Z(n205) );
  HS65_GS_BFX9 U7 ( .A(nrst), .Z(n37) );
  HS65_GS_IVX9 U8 ( .A(N448), .Z(n157) );
  HS65_GS_IVX9 U9 ( .A(N450), .Z(n159) );
  HS65_GS_IVX9 U10 ( .A(N451), .Z(n160) );
  HS65_GS_IVX9 U11 ( .A(N453), .Z(n162) );
  HS65_GS_IVX9 U12 ( .A(N447), .Z(n156) );
  HS65_GS_IVX9 U13 ( .A(N445), .Z(n154) );
  HS65_GS_NOR2X6 U14 ( .A(n563), .B(n240), .Z(n564) );
  HS65_GS_BFX9 U15 ( .A(n1), .Z(n14) );
  HS65_GS_BFX9 U16 ( .A(n1), .Z(n13) );
  HS65_GS_BFX9 U17 ( .A(n1), .Z(n12) );
  HS65_GS_BFX9 U18 ( .A(n13), .Z(n15) );
  HS65_GS_BFX9 U19 ( .A(n9), .Z(n7) );
  HS65_GS_BFX9 U20 ( .A(n10), .Z(n4) );
  HS65_GS_BFX9 U21 ( .A(n10), .Z(n5) );
  HS65_GS_BFX9 U22 ( .A(n9), .Z(n6) );
  HS65_GS_BFX9 U23 ( .A(n9), .Z(n8) );
  HS65_GS_NOR2AX3 U24 ( .A(n7), .B(n17), .Z(n565) );
  HS65_GS_IVX9 U25 ( .A(N444), .Z(n153) );
  HS65_GS_NOR2X6 U26 ( .A(n563), .B(n561), .Z(n562) );
  HS65_GS_NOR3X4 U27 ( .A(n556), .B(n205), .C(n35), .Z(n240) );
  HS65_GS_IVX9 U28 ( .A(n37), .Z(n35) );
  HS65_GS_NOR2X6 U29 ( .A(n200), .B(n523), .Z(n213) );
  HS65_GS_NOR2X6 U30 ( .A(n526), .B(n35), .Z(n530) );
  HS65_GS_NOR2AX3 U31 ( .A(n528), .B(n555), .Z(n557) );
  HS65_GS_NOR2AX3 U32 ( .A(n215), .B(n35), .Z(n519) );
  HS65_GS_AND2X4 U33 ( .A(n196), .B(n200), .Z(n206) );
  HS65_GS_IVX9 U34 ( .A(n37), .Z(n36) );
  HS65_GS_BFX9 U35 ( .A(n11), .Z(n9) );
  HS65_GS_BFX9 U36 ( .A(n11), .Z(n10) );
  HS65_GS_IVX9 U37 ( .A(mybest[15]), .Z(n18) );
  HS65_GS_NAND2X7 U38 ( .A(n528), .B(n2), .Z(n567) );
  HS65_GS_IVX9 U39 ( .A(n2), .Z(n16) );
  HS65_GS_IVX9 U40 ( .A(n2), .Z(n17) );
  HS65_GS_IVX9 U41 ( .A(N443), .Z(n152) );
  HS65_GS_OAI21X3 U42 ( .A(n629), .B(n647), .C(n604), .Z(n191) );
  HS65_GS_NOR2X6 U43 ( .A(n509), .B(n205), .Z(n561) );
  HS65_GS_NOR2X6 U44 ( .A(n509), .B(n602), .Z(n558) );
  HS65_GS_NOR2X6 U45 ( .A(n199), .B(N160), .Z(n212) );
  HS65_GS_NOR2X6 U46 ( .A(n509), .B(n556), .Z(n555) );
  HS65_GS_NOR2X6 U47 ( .A(n509), .B(n231), .Z(n518) );
  HS65_GS_NOR3AX4 U48 ( .A(n522), .B(n520), .C(n35), .Z(n521) );
  HS65_GS_NOR2X6 U49 ( .A(n509), .B(n510), .Z(n507) );
  HS65_GS_NOR2X6 U50 ( .A(n509), .B(n224), .Z(n515) );
  HS65_GS_NOR2X6 U51 ( .A(n509), .B(n209), .Z(n511) );
  HS65_GS_NOR2X6 U52 ( .A(n509), .B(n514), .Z(n216) );
  HS65_GS_NOR2X6 U53 ( .A(n194), .B(n36), .Z(n554) );
  HS65_GS_NOR2X6 U54 ( .A(n513), .B(n36), .Z(n512) );
  HS65_GS_NOR2X6 U55 ( .A(n234), .B(n35), .Z(n535) );
  HS65_GS_BFX9 U56 ( .A(n534), .Z(n11) );
  HS65_GS_NOR2X6 U57 ( .A(n36), .B(n629), .Z(n559) );
  HS65_GS_NOR2X6 U58 ( .A(n36), .B(n219), .Z(n508) );
  HS65_GS_NOR2X6 U59 ( .A(n227), .B(n36), .Z(n217) );
  HS65_GS_NOR2X6 U60 ( .A(n517), .B(n36), .Z(n516) );
  HS65_GS_NOR2X6 U61 ( .A(n219), .B(n646), .Z(n207) );
  HS65_GS_NOR2X6 U62 ( .A(n235), .B(N130), .Z(n214) );
  HS65_GS_NOR2X6 U63 ( .A(n198), .B(N511), .Z(n215) );
  HS65_GS_NOR2AX3 U64 ( .A(n626), .B(N160), .Z(n211) );
  HS65_GS_IVX9 U65 ( .A(n39), .Z(n47) );
  HS65_GS_IVX9 U66 ( .A(n40), .Z(n48) );
  HS65_GS_IVX9 U67 ( .A(n41), .Z(n49) );
  HS65_GS_IVX9 U68 ( .A(n42), .Z(n50) );
  HS65_GS_IVX9 U69 ( .A(n43), .Z(n51) );
  HS65_GS_IVX9 U70 ( .A(n38), .Z(n46) );
  HS65_GS_IVX9 U71 ( .A(n194), .Z(n556) );
  HS65_GS_OAI21X6 U72 ( .A(N483), .B(n509), .C(n533), .Z(n529) );
  HS65_GS_NOR3AX4 U73 ( .A(n546), .B(n35), .C(n547), .Z(n539) );
  HS65_GS_AND2X4 U74 ( .A(n523), .B(n524), .Z(n520) );
  HS65_GS_NOR3X4 U75 ( .A(n547), .B(n35), .C(n546), .Z(n537) );
  HS65_GS_IVX9 U76 ( .A(N1276), .Z(N420) );
  HS65_GS_IVX9 U77 ( .A(N135), .Z(N230) );
  HS65_GS_IVX9 U78 ( .A(N486), .Z(N503) );
  HS65_GS_IVX9 U79 ( .A(N151), .Z(n125) );
  HS65_GS_IVX9 U80 ( .A(N502), .Z(n98) );
  HS65_GS_IVX9 U81 ( .A(N455), .Z(n166) );
  HS65_GS_IVX9 U82 ( .A(N454), .Z(n163) );
  HS65_GS_IVX9 U83 ( .A(N456), .Z(n167) );
  HS65_GS_IVX9 U84 ( .A(bestvalue[14]), .Z(n149) );
  HS65_GS_IVX9 U85 ( .A(N442), .Z(n151) );
  HS65_GS_IVX9 U86 ( .A(N452), .Z(n161) );
  HS65_GS_IVX9 U87 ( .A(N446), .Z(n155) );
  HS65_GS_IVX9 U88 ( .A(N449), .Z(n158) );
  HS65_GS_IVX9 U89 ( .A(data_in[1]), .Z(n20) );
  HS65_GS_IVX9 U90 ( .A(data_in[13]), .Z(n32) );
  HS65_GS_IVX9 U91 ( .A(data_in[10]), .Z(n29) );
  HS65_GS_IVX9 U92 ( .A(data_in[8]), .Z(n27) );
  HS65_GS_IVX9 U93 ( .A(data_in[7]), .Z(n26) );
  HS65_GS_IVX9 U94 ( .A(data_in[11]), .Z(n30) );
  HS65_GS_IVX9 U95 ( .A(data_in[12]), .Z(n31) );
  HS65_GS_IVX9 U96 ( .A(data_in[14]), .Z(n33) );
  HS65_GS_IVX9 U97 ( .A(data_in[3]), .Z(n22) );
  HS65_GS_IVX9 U98 ( .A(data_in[5]), .Z(n24) );
  HS65_GS_IVX9 U99 ( .A(data_in[9]), .Z(n28) );
  HS65_GS_IVX9 U100 ( .A(data_in[2]), .Z(n21) );
  HS65_GS_IVX9 U101 ( .A(data_in[4]), .Z(n23) );
  HS65_GS_IVX9 U102 ( .A(data_in[6]), .Z(n25) );
  HS65_GS_IVX9 U103 ( .A(data_in[0]), .Z(n19) );
  HS65_GS_IVX9 U104 ( .A(data_in[15]), .Z(n34) );
  HS65_GS_IVX9 U105 ( .A(N292), .Z(N319) );
  HS65_GS_IVX9 U106 ( .A(i[2]), .Z(N266) );
  HS65_GS_IVX9 U107 ( .A(N310), .Z(N321) );
  HS65_GS_IVX9 U108 ( .A(neighborID[1]), .Z(n190) );
  HS65_GS_NAND3X5 U109 ( .A(n130), .B(n129), .C(n128), .Z(N406) );
  HS65_GS_IVX9 U110 ( .A(besthop[2]), .Z(N165) );
  HS65_GS_IVX9 U111 ( .A(j[2]), .Z(N474) );
  HS65_GS_IVX9 U112 ( .A(bestvalue[15]), .Z(n150) );
  HS65_GS_IVX9 U113 ( .A(knownSinkCount[1]), .Z(n99) );
  HS65_GS_IVX9 U114 ( .A(neighborCount[1]), .Z(n124) );
  HS65_GS_IVX9 U115 ( .A(MY_CLUSTER_ID[1]), .Z(n74) );
  HS65_GS_IVX9 U116 ( .A(n540), .Z(n538) );
  HS65_GS_IVX9 U117 ( .A(n524), .Z(n509) );
  HS65_GS_IVX9 U118 ( .A(n513), .Z(n209) );
  HS65_GS_IVX9 U119 ( .A(n548), .Z(n208) );
  HS65_GSS_XOR2X3 U120 ( .A(i[9]), .B(\add_137/carry[10] ), .Z(N273) );
  HS65_GSS_XOR2X3 U121 ( .A(N142), .B(\add_108/carry[10] ), .Z(N159) );
  HS65_GSS_XNOR2X3 U122 ( .A(N317), .B(\add_151/carry[10] ), .Z(N328) );
  HS65_GSS_XOR2X3 U123 ( .A(j[9]), .B(\add_199/carry[10] ), .Z(N481) );
  HS65_GSS_XNOR2X3 U124 ( .A(N1262), .B(\add_177/carry[10] ), .Z(N427) );
  HS65_GSS_XOR2X3 U125 ( .A(i[9]), .B(\r221/carry[10] ), .Z(N339) );
  HS65_GSS_XOR2X3 U126 ( .A(N142), .B(\add_128/carry[10] ), .Z(N237) );
  HS65_GSS_XOR2X3 U127 ( .A(N142), .B(\add_218/carry[10] ), .Z(N540) );
  HS65_GSS_XOR2X3 U128 ( .A(N493), .B(\add_212/carry[10] ), .Z(N510) );
  HS65_GSS_XOR2X3 U129 ( .A(i[9]), .B(\add_117/carry[10] ), .Z(N194) );
  HS65_GSS_XOR2X3 U130 ( .A(besthop[9]), .B(\r212/carry[10] ), .Z(N172) );
  HS65_GS_AND2X4 U131 ( .A(i[8]), .B(\add_137/carry[9] ), .Z(
        \add_137/carry[10] ) );
  HS65_GSS_XOR2X3 U132 ( .A(\add_137/carry[9] ), .B(i[8]), .Z(N272) );
  HS65_GS_AND2X4 U133 ( .A(N141), .B(\add_108/carry[9] ), .Z(
        \add_108/carry[10] ) );
  HS65_GSS_XOR2X3 U134 ( .A(\add_108/carry[9] ), .B(N141), .Z(N158) );
  HS65_GS_OR2X4 U135 ( .A(\add_151/carry[9] ), .B(N316), .Z(
        \add_151/carry[10] ) );
  HS65_GSS_XNOR2X3 U136 ( .A(N316), .B(\add_151/carry[9] ), .Z(N327) );
  HS65_GS_AND2X4 U137 ( .A(j[8]), .B(\add_199/carry[9] ), .Z(
        \add_199/carry[10] ) );
  HS65_GSS_XOR2X3 U138 ( .A(\add_199/carry[9] ), .B(j[8]), .Z(N480) );
  HS65_GS_OR2X4 U139 ( .A(\add_177/carry[9] ), .B(N1264), .Z(
        \add_177/carry[10] ) );
  HS65_GSS_XNOR2X3 U140 ( .A(N1264), .B(\add_177/carry[9] ), .Z(N426) );
  HS65_GS_AND2X4 U141 ( .A(i[8]), .B(\r221/carry[9] ), .Z(\r221/carry[10] ) );
  HS65_GSS_XOR2X3 U142 ( .A(\r221/carry[9] ), .B(i[8]), .Z(N338) );
  HS65_GS_AND2X4 U143 ( .A(N141), .B(\add_128/carry[9] ), .Z(
        \add_128/carry[10] ) );
  HS65_GSS_XOR2X3 U144 ( .A(\add_128/carry[9] ), .B(N141), .Z(N236) );
  HS65_GS_AND2X4 U145 ( .A(N141), .B(\add_218/carry[9] ), .Z(
        \add_218/carry[10] ) );
  HS65_GSS_XOR2X3 U146 ( .A(\add_218/carry[9] ), .B(N141), .Z(N539) );
  HS65_GS_AND2X4 U147 ( .A(N492), .B(\add_212/carry[9] ), .Z(
        \add_212/carry[10] ) );
  HS65_GSS_XOR2X3 U148 ( .A(\add_212/carry[9] ), .B(N492), .Z(N509) );
  HS65_GS_AND2X4 U149 ( .A(i[8]), .B(\add_117/carry[9] ), .Z(
        \add_117/carry[10] ) );
  HS65_GSS_XOR2X3 U150 ( .A(\add_117/carry[9] ), .B(i[8]), .Z(N193) );
  HS65_GS_AND2X4 U151 ( .A(besthop[8]), .B(\r212/carry[9] ), .Z(
        \r212/carry[10] ) );
  HS65_GSS_XOR2X3 U152 ( .A(\r212/carry[9] ), .B(besthop[8]), .Z(N171) );
  HS65_GS_AND2X4 U153 ( .A(N315), .B(\add_151/carry[8] ), .Z(
        \add_151/carry[9] ) );
  HS65_GSS_XOR2X3 U154 ( .A(\add_151/carry[8] ), .B(N315), .Z(N326) );
  HS65_GS_AND2X4 U155 ( .A(N140), .B(\add_108/carry[8] ), .Z(
        \add_108/carry[9] ) );
  HS65_GSS_XOR2X3 U156 ( .A(\add_108/carry[8] ), .B(N140), .Z(N157) );
  HS65_GS_OR2X4 U157 ( .A(\add_137/carry[8] ), .B(i[7]), .Z(\add_137/carry[9] ) );
  HS65_GSS_XNOR2X3 U158 ( .A(i[7]), .B(\add_137/carry[8] ), .Z(N271) );
  HS65_GS_AND2X4 U159 ( .A(j[7]), .B(\add_199/carry[8] ), .Z(
        \add_199/carry[9] ) );
  HS65_GSS_XOR2X3 U160 ( .A(\add_199/carry[8] ), .B(j[7]), .Z(N479) );
  HS65_GS_AND2X4 U161 ( .A(N1266), .B(\add_177/carry[8] ), .Z(
        \add_177/carry[9] ) );
  HS65_GSS_XOR2X3 U162 ( .A(\add_177/carry[8] ), .B(N1266), .Z(N425) );
  HS65_GS_AND2X4 U163 ( .A(besthop[7]), .B(\r212/carry[8] ), .Z(
        \r212/carry[9] ) );
  HS65_GSS_XOR2X3 U164 ( .A(\r212/carry[8] ), .B(besthop[7]), .Z(N170) );
  HS65_GS_OR2X4 U165 ( .A(\add_117/carry[8] ), .B(i[7]), .Z(\add_117/carry[9] ) );
  HS65_GSS_XNOR2X3 U166 ( .A(i[7]), .B(\add_117/carry[8] ), .Z(N192) );
  HS65_GS_AND2X4 U167 ( .A(N491), .B(\add_212/carry[8] ), .Z(
        \add_212/carry[9] ) );
  HS65_GSS_XOR2X3 U168 ( .A(\add_212/carry[8] ), .B(N491), .Z(N508) );
  HS65_GS_AND2X4 U169 ( .A(N140), .B(\add_218/carry[8] ), .Z(
        \add_218/carry[9] ) );
  HS65_GSS_XOR2X3 U170 ( .A(\add_218/carry[8] ), .B(N140), .Z(N538) );
  HS65_GS_AND2X4 U171 ( .A(N140), .B(\add_128/carry[8] ), .Z(
        \add_128/carry[9] ) );
  HS65_GSS_XOR2X3 U172 ( .A(\add_128/carry[8] ), .B(N140), .Z(N235) );
  HS65_GS_AND2X4 U173 ( .A(i[7]), .B(\r221/carry[8] ), .Z(\r221/carry[9] ) );
  HS65_GSS_XOR2X3 U174 ( .A(\r221/carry[8] ), .B(i[7]), .Z(N337) );
  HS65_GS_OR2X4 U175 ( .A(\add_137/carry[7] ), .B(i[6]), .Z(\add_137/carry[8] ) );
  HS65_GSS_XNOR2X3 U176 ( .A(i[6]), .B(\add_137/carry[7] ), .Z(N270) );
  HS65_GS_OR2X4 U177 ( .A(\add_108/carry[7] ), .B(N139), .Z(\add_108/carry[8] ) );
  HS65_GSS_XNOR2X3 U178 ( .A(N139), .B(\add_108/carry[7] ), .Z(N156) );
  HS65_GS_AND2X4 U179 ( .A(N314), .B(\add_151/carry[7] ), .Z(
        \add_151/carry[8] ) );
  HS65_GSS_XOR2X3 U180 ( .A(\add_151/carry[7] ), .B(N314), .Z(N325) );
  HS65_GS_AND2X4 U181 ( .A(j[6]), .B(\add_199/carry[7] ), .Z(
        \add_199/carry[8] ) );
  HS65_GSS_XOR2X3 U182 ( .A(\add_199/carry[7] ), .B(j[6]), .Z(N478) );
  HS65_GS_AND2X4 U183 ( .A(N1268), .B(\add_177/carry[7] ), .Z(
        \add_177/carry[8] ) );
  HS65_GSS_XOR2X3 U184 ( .A(\add_177/carry[7] ), .B(N1268), .Z(N424) );
  HS65_GS_AND2X4 U185 ( .A(i[6]), .B(\r221/carry[7] ), .Z(\r221/carry[8] ) );
  HS65_GSS_XOR2X3 U186 ( .A(\r221/carry[7] ), .B(i[6]), .Z(N336) );
  HS65_GS_OR2X4 U187 ( .A(\add_128/carry[7] ), .B(N139), .Z(\add_128/carry[8] ) );
  HS65_GSS_XNOR2X3 U188 ( .A(N139), .B(\add_128/carry[7] ), .Z(N234) );
  HS65_GS_OR2X4 U189 ( .A(\add_218/carry[7] ), .B(N139), .Z(\add_218/carry[8] ) );
  HS65_GSS_XNOR2X3 U190 ( .A(N139), .B(\add_218/carry[7] ), .Z(N537) );
  HS65_GS_AND2X4 U191 ( .A(N490), .B(\add_212/carry[7] ), .Z(
        \add_212/carry[8] ) );
  HS65_GSS_XOR2X3 U192 ( .A(\add_212/carry[7] ), .B(N490), .Z(N507) );
  HS65_GS_AND2X4 U193 ( .A(i[6]), .B(\add_117/carry[7] ), .Z(
        \add_117/carry[8] ) );
  HS65_GSS_XOR2X3 U194 ( .A(\add_117/carry[7] ), .B(i[6]), .Z(N191) );
  HS65_GS_AND2X4 U195 ( .A(besthop[6]), .B(\r212/carry[7] ), .Z(
        \r212/carry[8] ) );
  HS65_GSS_XOR2X3 U196 ( .A(\r212/carry[7] ), .B(besthop[6]), .Z(N169) );
  HS65_GS_OR2X4 U197 ( .A(\add_108/carry[6] ), .B(N138), .Z(\add_108/carry[7] ) );
  HS65_GSS_XNOR2X3 U198 ( .A(N138), .B(\add_108/carry[6] ), .Z(N155) );
  HS65_GS_OR2X4 U199 ( .A(\r221/carry[6] ), .B(i[5]), .Z(\r221/carry[7] ) );
  HS65_GSS_XNOR2X3 U200 ( .A(i[5]), .B(\r221/carry[6] ), .Z(N335) );
  HS65_GS_OR2X4 U201 ( .A(\add_137/carry[6] ), .B(i[5]), .Z(\add_137/carry[7] ) );
  HS65_GSS_XNOR2X3 U202 ( .A(i[5]), .B(\add_137/carry[6] ), .Z(N269) );
  HS65_GS_OR2X4 U203 ( .A(\add_177/carry[6] ), .B(N1270), .Z(
        \add_177/carry[7] ) );
  HS65_GSS_XNOR2X3 U204 ( .A(N1270), .B(\add_177/carry[6] ), .Z(N423) );
  HS65_GS_OR2X4 U205 ( .A(\add_151/carry[6] ), .B(N313), .Z(\add_151/carry[7] ) );
  HS65_GSS_XNOR2X3 U206 ( .A(N313), .B(\add_151/carry[6] ), .Z(N324) );
  HS65_GS_AND2X4 U207 ( .A(j[5]), .B(\add_199/carry[6] ), .Z(
        \add_199/carry[7] ) );
  HS65_GSS_XOR2X3 U208 ( .A(\add_199/carry[6] ), .B(j[5]), .Z(N477) );
  HS65_GS_OR2X4 U209 ( .A(\add_218/carry[6] ), .B(N138), .Z(\add_218/carry[7] ) );
  HS65_GSS_XNOR2X3 U210 ( .A(N138), .B(\add_218/carry[6] ), .Z(N536) );
  HS65_GS_AND2X4 U211 ( .A(N489), .B(\add_212/carry[6] ), .Z(
        \add_212/carry[7] ) );
  HS65_GSS_XOR2X3 U212 ( .A(\add_212/carry[6] ), .B(N489), .Z(N506) );
  HS65_GS_OR2X4 U213 ( .A(\add_128/carry[6] ), .B(N138), .Z(\add_128/carry[7] ) );
  HS65_GSS_XNOR2X3 U214 ( .A(N138), .B(\add_128/carry[6] ), .Z(N233) );
  HS65_GS_OR2X4 U215 ( .A(\r212/carry[6] ), .B(besthop[5]), .Z(\r212/carry[7] ) );
  HS65_GSS_XNOR2X3 U216 ( .A(besthop[5]), .B(\r212/carry[6] ), .Z(N168) );
  HS65_GS_OR2X4 U217 ( .A(\add_117/carry[6] ), .B(i[5]), .Z(\add_117/carry[7] ) );
  HS65_GSS_XNOR2X3 U218 ( .A(i[5]), .B(\add_117/carry[6] ), .Z(N190) );
  HS65_GS_OR2X4 U219 ( .A(\add_151/carry[5] ), .B(N312), .Z(\add_151/carry[6] ) );
  HS65_GSS_XNOR2X3 U220 ( .A(N312), .B(\add_151/carry[5] ), .Z(N323) );
  HS65_GS_AND2X4 U221 ( .A(N137), .B(\add_108/carry[5] ), .Z(
        \add_108/carry[6] ) );
  HS65_GSS_XOR2X3 U222 ( .A(\add_108/carry[5] ), .B(N137), .Z(N154) );
  HS65_GS_AND2X4 U223 ( .A(i[4]), .B(\add_137/carry[5] ), .Z(
        \add_137/carry[6] ) );
  HS65_GSS_XOR2X3 U224 ( .A(\add_137/carry[5] ), .B(i[4]), .Z(N268) );
  HS65_GS_AND2X4 U225 ( .A(j[4]), .B(\add_199/carry[5] ), .Z(
        \add_199/carry[6] ) );
  HS65_GSS_XOR2X3 U226 ( .A(\add_199/carry[5] ), .B(j[4]), .Z(N476) );
  HS65_GS_AND2X4 U227 ( .A(N1272), .B(\add_177/carry[5] ), .Z(
        \add_177/carry[6] ) );
  HS65_GSS_XOR2X3 U228 ( .A(\add_177/carry[5] ), .B(N1272), .Z(N422) );
  HS65_GS_AND2X4 U229 ( .A(besthop[4]), .B(\r212/carry[5] ), .Z(
        \r212/carry[6] ) );
  HS65_GSS_XOR2X3 U230 ( .A(\r212/carry[5] ), .B(besthop[4]), .Z(N167) );
  HS65_GS_AND2X4 U231 ( .A(i[4]), .B(\add_117/carry[5] ), .Z(
        \add_117/carry[6] ) );
  HS65_GSS_XOR2X3 U232 ( .A(\add_117/carry[5] ), .B(i[4]), .Z(N189) );
  HS65_GS_AND2X4 U233 ( .A(N488), .B(\add_212/carry[5] ), .Z(
        \add_212/carry[6] ) );
  HS65_GSS_XOR2X3 U234 ( .A(\add_212/carry[5] ), .B(N488), .Z(N505) );
  HS65_GS_AND2X4 U235 ( .A(N137), .B(\add_218/carry[5] ), .Z(
        \add_218/carry[6] ) );
  HS65_GSS_XOR2X3 U236 ( .A(\add_218/carry[5] ), .B(N137), .Z(N535) );
  HS65_GS_AND2X4 U237 ( .A(N137), .B(\add_128/carry[5] ), .Z(
        \add_128/carry[6] ) );
  HS65_GSS_XOR2X3 U238 ( .A(\add_128/carry[5] ), .B(N137), .Z(N232) );
  HS65_GS_AND2X4 U239 ( .A(i[4]), .B(\r221/carry[5] ), .Z(\r221/carry[6] ) );
  HS65_GSS_XOR2X3 U240 ( .A(\r221/carry[5] ), .B(i[4]), .Z(N334) );
  HS65_GS_AND2X4 U241 ( .A(N311), .B(N310), .Z(\add_151/carry[5] ) );
  HS65_GSS_XOR2X3 U242 ( .A(N310), .B(N311), .Z(N322) );
  HS65_GS_AND2X4 U243 ( .A(N136), .B(N135), .Z(\add_108/carry[5] ) );
  HS65_GSS_XOR2X3 U244 ( .A(N135), .B(N136), .Z(N153) );
  HS65_GS_AND2X4 U245 ( .A(i[3]), .B(i[2]), .Z(\add_137/carry[5] ) );
  HS65_GSS_XOR2X3 U246 ( .A(i[2]), .B(i[3]), .Z(N267) );
  HS65_GS_AND2X4 U247 ( .A(j[3]), .B(j[2]), .Z(\add_199/carry[5] ) );
  HS65_GSS_XOR2X3 U248 ( .A(j[2]), .B(j[3]), .Z(N475) );
  HS65_GS_AND2X4 U249 ( .A(N413), .B(N1276), .Z(\add_177/carry[5] ) );
  HS65_GSS_XOR2X3 U250 ( .A(N1276), .B(N413), .Z(N421) );
  HS65_GS_AND2X4 U251 ( .A(besthop[3]), .B(besthop[2]), .Z(\r212/carry[5] ) );
  HS65_GSS_XOR2X3 U252 ( .A(besthop[2]), .B(besthop[3]), .Z(N166) );
  HS65_GS_AND2X4 U253 ( .A(i[3]), .B(i[2]), .Z(\add_117/carry[5] ) );
  HS65_GSS_XOR2X3 U254 ( .A(i[2]), .B(i[3]), .Z(N188) );
  HS65_GS_AND2X4 U255 ( .A(N487), .B(N486), .Z(\add_212/carry[5] ) );
  HS65_GSS_XOR2X3 U256 ( .A(N486), .B(N487), .Z(N504) );
  HS65_GS_AND2X4 U257 ( .A(N136), .B(N135), .Z(\add_218/carry[5] ) );
  HS65_GSS_XOR2X3 U258 ( .A(N135), .B(N136), .Z(N534) );
  HS65_GS_AND2X4 U259 ( .A(N136), .B(N135), .Z(\add_128/carry[5] ) );
  HS65_GSS_XOR2X3 U260 ( .A(N135), .B(N136), .Z(N231) );
  HS65_GS_AND2X4 U261 ( .A(i[3]), .B(i[2]), .Z(\r221/carry[5] ) );
  HS65_GSS_XOR2X3 U262 ( .A(i[2]), .B(i[3]), .Z(N333) );
  HS65_GS_NOR2X2 U263 ( .A(N293), .B(N292), .Z(n38) );
  HS65_GS_AO12X4 U264 ( .A(N292), .B(N293), .C(n38), .Z(N320) );
  HS65_GS_NOR2X2 U265 ( .A(n46), .B(N294), .Z(n39) );
  HS65_GS_AO12X4 U266 ( .A(n46), .B(N294), .C(n39), .Z(N310) );
  HS65_GS_NOR2X2 U267 ( .A(n47), .B(N295), .Z(n40) );
  HS65_GS_AO12X4 U268 ( .A(n47), .B(N295), .C(n40), .Z(N311) );
  HS65_GS_NOR2X2 U269 ( .A(n48), .B(N296), .Z(n41) );
  HS65_GS_AO12X4 U270 ( .A(n48), .B(N296), .C(n41), .Z(N312) );
  HS65_GS_NOR2X2 U271 ( .A(n49), .B(N297), .Z(n42) );
  HS65_GS_AO12X4 U272 ( .A(n49), .B(N297), .C(n42), .Z(N313) );
  HS65_GS_NOR2X2 U273 ( .A(n50), .B(N298), .Z(n43) );
  HS65_GS_AO12X4 U274 ( .A(n50), .B(N298), .C(n43), .Z(N314) );
  HS65_GS_NOR2X2 U275 ( .A(n51), .B(N299), .Z(n44) );
  HS65_GS_AO12X4 U276 ( .A(n51), .B(N299), .C(n44), .Z(N315) );
  HS65_GSS_XOR2X3 U277 ( .A(N300), .B(n44), .Z(N316) );
  HS65_GS_NOR2AX3 U278 ( .A(n44), .B(N300), .Z(n45) );
  HS65_GSS_XOR2X3 U279 ( .A(N301), .B(n45), .Z(N317) );
  HS65_GSS_XOR2X3 U280 ( .A(data_in[8]), .B(MY_CLUSTER_ID[8]), .Z(n55) );
  HS65_GSS_XOR2X3 U281 ( .A(data_in[9]), .B(MY_CLUSTER_ID[9]), .Z(n54) );
  HS65_GSS_XNOR2X3 U282 ( .A(data_in[11]), .B(MY_CLUSTER_ID[11]), .Z(n53) );
  HS65_GSS_XNOR2X3 U283 ( .A(data_in[10]), .B(MY_CLUSTER_ID[10]), .Z(n52) );
  HS65_GS_NAND4ABX3 U284 ( .A(n55), .B(n54), .C(n53), .D(n52), .Z(n73) );
  HS65_GSS_XOR2X3 U285 ( .A(data_in[2]), .B(MY_CLUSTER_ID[2]), .Z(n61) );
  HS65_GSS_XOR2X3 U286 ( .A(data_in[3]), .B(MY_CLUSTER_ID[3]), .Z(n60) );
  HS65_GS_NOR2AX3 U287 ( .A(data_in[0]), .B(MY_CLUSTER_ID[0]), .Z(n56) );
  HS65_GS_OAI22X1 U288 ( .A(n56), .B(n74), .C(data_in[1]), .D(n56), .Z(n59) );
  HS65_GS_NOR2AX3 U289 ( .A(MY_CLUSTER_ID[0]), .B(data_in[0]), .Z(n57) );
  HS65_GS_OAI22X1 U290 ( .A(MY_CLUSTER_ID[1]), .B(n57), .C(n57), .D(n20), .Z(
        n58) );
  HS65_GS_NAND4ABX3 U291 ( .A(n61), .B(n60), .C(n59), .D(n58), .Z(n72) );
  HS65_GSS_XNOR2X3 U292 ( .A(data_in[15]), .B(MY_CLUSTER_ID[15]), .Z(n65) );
  HS65_GSS_XNOR2X3 U293 ( .A(data_in[14]), .B(MY_CLUSTER_ID[14]), .Z(n64) );
  HS65_GSS_XOR2X3 U294 ( .A(data_in[12]), .B(MY_CLUSTER_ID[12]), .Z(n63) );
  HS65_GSS_XOR2X3 U295 ( .A(data_in[13]), .B(MY_CLUSTER_ID[13]), .Z(n62) );
  HS65_GS_NOR4ABX2 U296 ( .A(n65), .B(n64), .C(n63), .D(n62), .Z(n71) );
  HS65_GSS_XNOR2X3 U297 ( .A(data_in[7]), .B(MY_CLUSTER_ID[7]), .Z(n69) );
  HS65_GSS_XNOR2X3 U298 ( .A(data_in[6]), .B(MY_CLUSTER_ID[6]), .Z(n68) );
  HS65_GSS_XOR2X3 U299 ( .A(data_in[4]), .B(MY_CLUSTER_ID[4]), .Z(n67) );
  HS65_GSS_XOR2X3 U300 ( .A(data_in[5]), .B(MY_CLUSTER_ID[5]), .Z(n66) );
  HS65_GS_NOR4ABX2 U301 ( .A(n69), .B(n68), .C(n67), .D(n66), .Z(n70) );
  HS65_GS_NAND4ABX3 U302 ( .A(n73), .B(n72), .C(n71), .D(n70), .Z(N130) );
  HS65_GSS_XNOR2X3 U303 ( .A(knownSinkCount[14]), .B(N498), .Z(n78) );
  HS65_GSS_XNOR2X3 U304 ( .A(knownSinkCount[13]), .B(N497), .Z(n77) );
  HS65_GSS_XOR2X3 U305 ( .A(knownSinkCount[11]), .B(N495), .Z(n76) );
  HS65_GSS_XOR2X3 U306 ( .A(knownSinkCount[12]), .B(N496), .Z(n75) );
  HS65_GS_NOR4ABX2 U307 ( .A(n78), .B(n77), .C(n76), .D(n75), .Z(n97) );
  HS65_GSS_XNOR2X3 U308 ( .A(knownSinkCount[10]), .B(N494), .Z(n82) );
  HS65_GSS_XNOR2X3 U309 ( .A(knownSinkCount[9]), .B(N493), .Z(n81) );
  HS65_GSS_XOR2X3 U310 ( .A(knownSinkCount[7]), .B(N491), .Z(n80) );
  HS65_GSS_XOR2X3 U311 ( .A(knownSinkCount[8]), .B(N492), .Z(n79) );
  HS65_GS_NOR4ABX2 U312 ( .A(n82), .B(n81), .C(n80), .D(n79), .Z(n96) );
  HS65_GSS_XOR2X3 U313 ( .A(knownSinkCount[15]), .B(N499), .Z(n89) );
  HS65_GSS_XOR2X3 U314 ( .A(knownSinkCount[2]), .B(N486), .Z(n88) );
  HS65_GS_NOR2AX3 U315 ( .A(N501), .B(knownSinkCount[0]), .Z(n83) );
  HS65_GS_OAI22X1 U316 ( .A(N502), .B(n83), .C(n83), .D(n99), .Z(n87) );
  HS65_GS_NOR2AX3 U317 ( .A(knownSinkCount[0]), .B(N501), .Z(n85) );
  HS65_GS_OAI22X1 U318 ( .A(n85), .B(n98), .C(knownSinkCount[1]), .D(n85), .Z(
        n86) );
  HS65_GS_NAND4ABX3 U319 ( .A(n89), .B(n88), .C(n87), .D(n86), .Z(n95) );
  HS65_GSS_XOR2X3 U320 ( .A(knownSinkCount[3]), .B(N487), .Z(n93) );
  HS65_GSS_XOR2X3 U321 ( .A(knownSinkCount[4]), .B(N488), .Z(n92) );
  HS65_GSS_XNOR2X3 U322 ( .A(knownSinkCount[6]), .B(N490), .Z(n91) );
  HS65_GSS_XNOR2X3 U323 ( .A(knownSinkCount[5]), .B(N489), .Z(n90) );
  HS65_GS_NAND4ABX3 U324 ( .A(n93), .B(n92), .C(n91), .D(n90), .Z(n94) );
  HS65_GS_NOR4ABX2 U325 ( .A(n97), .B(n96), .C(n95), .D(n94), .Z(N511) );
  HS65_GSS_XNOR2X3 U326 ( .A(neighborCount[14]), .B(N147), .Z(n104) );
  HS65_GSS_XNOR2X3 U327 ( .A(neighborCount[13]), .B(N146), .Z(n103) );
  HS65_GSS_XOR2X3 U328 ( .A(neighborCount[11]), .B(N144), .Z(n102) );
  HS65_GSS_XOR2X3 U329 ( .A(neighborCount[12]), .B(N145), .Z(n100) );
  HS65_GS_NOR4ABX2 U330 ( .A(n104), .B(n103), .C(n102), .D(n100), .Z(n123) );
  HS65_GSS_XNOR2X3 U331 ( .A(neighborCount[10]), .B(N143), .Z(n108) );
  HS65_GSS_XNOR2X3 U332 ( .A(neighborCount[9]), .B(N142), .Z(n107) );
  HS65_GSS_XOR2X3 U333 ( .A(neighborCount[7]), .B(N140), .Z(n106) );
  HS65_GSS_XOR2X3 U334 ( .A(neighborCount[8]), .B(N141), .Z(n105) );
  HS65_GS_NOR4ABX2 U335 ( .A(n108), .B(n107), .C(n106), .D(n105), .Z(n122) );
  HS65_GSS_XOR2X3 U336 ( .A(neighborCount[15]), .B(N148), .Z(n115) );
  HS65_GSS_XOR2X3 U337 ( .A(neighborCount[2]), .B(N135), .Z(n114) );
  HS65_GS_NOR2AX3 U338 ( .A(N150), .B(neighborCount[0]), .Z(n109) );
  HS65_GS_OAI22X1 U339 ( .A(N151), .B(n109), .C(n109), .D(n124), .Z(n113) );
  HS65_GS_NOR2AX3 U340 ( .A(neighborCount[0]), .B(N150), .Z(n110) );
  HS65_GS_OAI22X1 U341 ( .A(n110), .B(n125), .C(neighborCount[1]), .D(n110), 
        .Z(n112) );
  HS65_GS_NAND4ABX3 U342 ( .A(n115), .B(n114), .C(n113), .D(n112), .Z(n121) );
  HS65_GSS_XOR2X3 U343 ( .A(neighborCount[3]), .B(N136), .Z(n119) );
  HS65_GSS_XOR2X3 U344 ( .A(neighborCount[4]), .B(N137), .Z(n118) );
  HS65_GSS_XNOR2X3 U345 ( .A(neighborCount[6]), .B(N139), .Z(n117) );
  HS65_GSS_XNOR2X3 U346 ( .A(neighborCount[5]), .B(N138), .Z(n116) );
  HS65_GS_NAND4ABX3 U347 ( .A(n119), .B(n118), .C(n117), .D(n116), .Z(n120) );
  HS65_GS_NOR4ABX2 U348 ( .A(n123), .B(n122), .C(n121), .D(n120), .Z(N160) );
  HS65_GS_NOR3X1 U349 ( .A(k[15]), .B(k[5]), .C(k[4]), .Z(n130) );
  HS65_GS_NOR4X4 U350 ( .A(k[9]), .B(k[8]), .C(k[7]), .D(k[6]), .Z(n129) );
  HS65_GS_CBI4I1X3 U351 ( .A(k[1]), .B(k[0]), .C(k[2]), .D(k[3]), .Z(n127) );
  HS65_GS_NOR3X1 U352 ( .A(k[12]), .B(k[14]), .C(k[13]), .Z(n126) );
  HS65_GS_NOR4ABX2 U353 ( .A(n127), .B(n126), .C(k[11]), .D(k[10]), .Z(n128)
         );
  HS65_GS_NOR2AX3 U354 ( .A(bestvalue[0]), .B(N441), .Z(n133) );
  HS65_GS_NOR2AX3 U355 ( .A(n133), .B(N442), .Z(n132) );
  HS65_GS_OA222X4 U356 ( .A(n133), .B(n151), .C(bestvalue[1]), .D(n132), .E(
        bestvalue[2]), .F(n152), .Z(n134) );
  HS65_GS_AO212X4 U357 ( .A(n152), .B(bestvalue[2]), .C(n153), .D(bestvalue[3]), .E(n134), .Z(n135) );
  HS65_GS_OA212X4 U358 ( .A(bestvalue[3]), .B(n153), .C(bestvalue[4]), .D(n154), .E(n135), .Z(n136) );
  HS65_GS_AO212X4 U359 ( .A(n154), .B(bestvalue[4]), .C(n155), .D(bestvalue[5]), .E(n136), .Z(n137) );
  HS65_GS_OA212X4 U360 ( .A(bestvalue[5]), .B(n155), .C(bestvalue[6]), .D(n156), .E(n137), .Z(n138) );
  HS65_GS_AO212X4 U361 ( .A(n156), .B(bestvalue[6]), .C(n157), .D(bestvalue[7]), .E(n138), .Z(n139) );
  HS65_GS_OA212X4 U362 ( .A(bestvalue[7]), .B(n157), .C(bestvalue[8]), .D(n158), .E(n139), .Z(n140) );
  HS65_GS_AO212X4 U363 ( .A(n158), .B(bestvalue[8]), .C(n159), .D(bestvalue[9]), .E(n140), .Z(n141) );
  HS65_GS_OA212X4 U364 ( .A(bestvalue[10]), .B(n160), .C(bestvalue[9]), .D(
        n159), .E(n141), .Z(n142) );
  HS65_GS_AO212X4 U365 ( .A(n160), .B(bestvalue[10]), .C(n161), .D(
        bestvalue[11]), .E(n142), .Z(n143) );
  HS65_GS_OA212X4 U366 ( .A(bestvalue[11]), .B(n161), .C(bestvalue[12]), .D(
        n162), .E(n143), .Z(n144) );
  HS65_GS_AO212X4 U367 ( .A(n162), .B(bestvalue[12]), .C(n163), .D(
        bestvalue[13]), .E(n144), .Z(n145) );
  HS65_GS_OAI212X3 U368 ( .A(bestvalue[13]), .B(n163), .C(bestvalue[14]), .D(
        n166), .E(n145), .Z(n146) );
  HS65_GS_OAI12X2 U369 ( .A(N455), .B(n149), .C(n146), .Z(n147) );
  HS65_GS_OAI12X2 U370 ( .A(bestvalue[15]), .B(n167), .C(n147), .Z(n148) );
  HS65_GS_OAI12X2 U371 ( .A(N456), .B(n150), .C(n148), .Z(N459) );
  HS65_GSS_XNOR2X3 U372 ( .A(data_in[14]), .B(neighborID[14]), .Z(n171) );
  HS65_GSS_XNOR2X3 U373 ( .A(data_in[13]), .B(neighborID[13]), .Z(n170) );
  HS65_GSS_XOR2X3 U374 ( .A(data_in[11]), .B(neighborID[11]), .Z(n169) );
  HS65_GSS_XOR2X3 U375 ( .A(data_in[12]), .B(neighborID[12]), .Z(n168) );
  HS65_GS_NOR4ABX2 U376 ( .A(n171), .B(n170), .C(n169), .D(n168), .Z(n189) );
  HS65_GSS_XNOR2X3 U377 ( .A(data_in[10]), .B(neighborID[10]), .Z(n175) );
  HS65_GSS_XNOR2X3 U378 ( .A(data_in[9]), .B(neighborID[9]), .Z(n174) );
  HS65_GSS_XOR2X3 U379 ( .A(data_in[7]), .B(neighborID[7]), .Z(n173) );
  HS65_GSS_XOR2X3 U380 ( .A(data_in[8]), .B(neighborID[8]), .Z(n172) );
  HS65_GS_NOR4ABX2 U381 ( .A(n175), .B(n174), .C(n173), .D(n172), .Z(n188) );
  HS65_GSS_XOR2X3 U382 ( .A(data_in[15]), .B(neighborID[15]), .Z(n181) );
  HS65_GSS_XOR2X3 U383 ( .A(data_in[2]), .B(neighborID[2]), .Z(n180) );
  HS65_GS_NOR2AX3 U384 ( .A(neighborID[0]), .B(data_in[0]), .Z(n176) );
  HS65_GS_OAI22X1 U385 ( .A(neighborID[1]), .B(n176), .C(n176), .D(n20), .Z(
        n179) );
  HS65_GS_NOR2AX3 U386 ( .A(data_in[0]), .B(neighborID[0]), .Z(n177) );
  HS65_GS_OAI22X1 U387 ( .A(n177), .B(n190), .C(data_in[1]), .D(n177), .Z(n178) );
  HS65_GS_NAND4ABX3 U388 ( .A(n181), .B(n180), .C(n179), .D(n178), .Z(n187) );
  HS65_GSS_XOR2X3 U389 ( .A(data_in[3]), .B(neighborID[3]), .Z(n185) );
  HS65_GSS_XOR2X3 U390 ( .A(data_in[4]), .B(neighborID[4]), .Z(n184) );
  HS65_GSS_XNOR2X3 U391 ( .A(data_in[6]), .B(neighborID[6]), .Z(n183) );
  HS65_GSS_XNOR2X3 U392 ( .A(data_in[5]), .B(neighborID[5]), .Z(n182) );
  HS65_GS_NAND4ABX3 U393 ( .A(n185), .B(n184), .C(n183), .D(n182), .Z(n186) );
  HS65_GS_NOR4ABX2 U394 ( .A(n189), .B(n188), .C(n187), .D(n186), .Z(N483) );
  HS65_GS_NAND4ABX3 U395 ( .A(n191), .B(n192), .C(n37), .D(n193), .Z(n671) );
  HS65_GS_NOR4ABX2 U396 ( .A(n194), .B(n195), .C(n196), .D(n197), .Z(n193) );
  HS65_GS_AOI12X2 U397 ( .A(n198), .B(n199), .C(n200), .Z(n197) );
  HS65_GS_NAND4ABX3 U398 ( .A(n201), .B(n202), .C(n203), .D(n204), .Z(n84) );
  HS65_GS_AOI222X2 U399 ( .A(N328), .B(n205), .C(N159), .D(n206), .E(N273), 
        .F(n207), .Z(n204) );
  HS65_GS_AOI212X2 U400 ( .A(N427), .B(n208), .C(N481), .D(n209), .E(n210), 
        .Z(n203) );
  HS65_GS_AO222X4 U401 ( .A(N540), .B(n211), .C(N237), .D(n212), .E(N339), .F(
        n191), .Z(n202) );
  HS65_GS_AO222X4 U402 ( .A(N172), .B(n213), .C(N194), .D(n214), .E(N510), .F(
        n215), .Z(n201) );
  HS65_GS_AO22X4 U403 ( .A(neighborCount[0]), .B(n216), .C(n217), .D(
        data_in[0]), .Z(n506) );
  HS65_GS_NAND4ABX3 U404 ( .A(n208), .B(n207), .C(n194), .D(n218), .Z(n505) );
  HS65_GS_OA112X4 U405 ( .A(n219), .B(N160), .C(n220), .D(n221), .Z(n218) );
  HS65_GS_NAND3X2 U406 ( .A(n220), .B(n222), .C(n223), .Z(n504) );
  HS65_GS_NOR3X1 U407 ( .A(n224), .B(n212), .C(n226), .Z(n223) );
  HS65_GS_NOR4ABX2 U408 ( .A(n227), .B(n228), .C(n229), .D(n230), .Z(n220) );
  HS65_GS_AOI112X1 U409 ( .A(n231), .B(n200), .C(n35), .D(n192), .Z(n228) );
  HS65_GS_AOI12X2 U410 ( .A(n232), .B(n233), .C(n229), .Z(n503) );
  HS65_GS_NOR4ABX2 U411 ( .A(n234), .B(n235), .C(n207), .D(n226), .Z(n233) );
  HS65_GS_AOI112X1 U412 ( .A(N160), .B(n236), .C(n237), .D(n192), .Z(n232) );
  HS65_GS_OAI12X2 U413 ( .A(en), .B(n238), .C(n239), .Z(n192) );
  HS65_GS_IVX2 U414 ( .A(n240), .Z(n237) );
  HS65_GS_AO22X4 U415 ( .A(batteryStat[0]), .B(n507), .C(n508), .D(data_in[0]), 
        .Z(n502) );
  HS65_GS_AO22X4 U416 ( .A(batteryStat[1]), .B(n507), .C(n508), .D(data_in[1]), 
        .Z(n501) );
  HS65_GS_AO22X4 U417 ( .A(batteryStat[2]), .B(n507), .C(n508), .D(data_in[2]), 
        .Z(n500) );
  HS65_GS_AO22X4 U418 ( .A(batteryStat[3]), .B(n507), .C(n508), .D(data_in[3]), 
        .Z(n499) );
  HS65_GS_AO22X4 U419 ( .A(batteryStat[4]), .B(n507), .C(n508), .D(data_in[4]), 
        .Z(n498) );
  HS65_GS_AO22X4 U420 ( .A(batteryStat[5]), .B(n507), .C(n508), .D(data_in[5]), 
        .Z(n497) );
  HS65_GS_AO22X4 U421 ( .A(batteryStat[6]), .B(n507), .C(n508), .D(data_in[6]), 
        .Z(n496) );
  HS65_GS_AO22X4 U422 ( .A(batteryStat[7]), .B(n507), .C(n508), .D(data_in[7]), 
        .Z(n495) );
  HS65_GS_AO22X4 U423 ( .A(batteryStat[8]), .B(n507), .C(n508), .D(data_in[8]), 
        .Z(n494) );
  HS65_GS_AO22X4 U424 ( .A(batteryStat[9]), .B(n507), .C(n508), .D(data_in[9]), 
        .Z(n493) );
  HS65_GS_AO22X4 U425 ( .A(batteryStat[10]), .B(n507), .C(n508), .D(
        data_in[10]), .Z(n492) );
  HS65_GS_AO22X4 U426 ( .A(batteryStat[11]), .B(n507), .C(n508), .D(
        data_in[11]), .Z(n491) );
  HS65_GS_AO22X4 U427 ( .A(batteryStat[12]), .B(n507), .C(n508), .D(
        data_in[12]), .Z(n490) );
  HS65_GS_AO22X4 U428 ( .A(batteryStat[13]), .B(n507), .C(n508), .D(
        data_in[13]), .Z(n489) );
  HS65_GS_AO22X4 U429 ( .A(batteryStat[14]), .B(n507), .C(n508), .D(
        data_in[14]), .Z(n488) );
  HS65_GS_AO22X4 U430 ( .A(batteryStat[15]), .B(n507), .C(n508), .D(
        data_in[15]), .Z(n487) );
  HS65_GS_AO22X4 U431 ( .A(neighborID[0]), .B(n511), .C(n512), .D(data_in[0]), 
        .Z(n486) );
  HS65_GS_AO22X4 U432 ( .A(neighborID[1]), .B(n511), .C(n512), .D(data_in[1]), 
        .Z(n485) );
  HS65_GS_AO22X4 U433 ( .A(neighborID[2]), .B(n511), .C(n512), .D(data_in[2]), 
        .Z(n484) );
  HS65_GS_AO22X4 U434 ( .A(neighborID[3]), .B(n511), .C(n512), .D(data_in[3]), 
        .Z(n483) );
  HS65_GS_AO22X4 U435 ( .A(neighborID[4]), .B(n511), .C(n512), .D(data_in[4]), 
        .Z(n482) );
  HS65_GS_AO22X4 U436 ( .A(neighborID[5]), .B(n511), .C(n512), .D(data_in[5]), 
        .Z(n481) );
  HS65_GS_AO22X4 U437 ( .A(neighborID[6]), .B(n511), .C(n512), .D(data_in[6]), 
        .Z(n480) );
  HS65_GS_AO22X4 U438 ( .A(neighborID[7]), .B(n511), .C(n512), .D(data_in[7]), 
        .Z(n479) );
  HS65_GS_AO22X4 U439 ( .A(neighborID[8]), .B(n511), .C(n512), .D(data_in[8]), 
        .Z(n478) );
  HS65_GS_AO22X4 U440 ( .A(neighborID[9]), .B(n511), .C(n512), .D(data_in[9]), 
        .Z(n477) );
  HS65_GS_AO22X4 U441 ( .A(neighborID[10]), .B(n511), .C(n512), .D(data_in[10]), .Z(n476) );
  HS65_GS_AO22X4 U442 ( .A(neighborID[11]), .B(n511), .C(n512), .D(data_in[11]), .Z(n475) );
  HS65_GS_AO22X4 U443 ( .A(neighborID[12]), .B(n511), .C(n512), .D(data_in[12]), .Z(n474) );
  HS65_GS_AO22X4 U444 ( .A(neighborID[13]), .B(n511), .C(n512), .D(data_in[13]), .Z(n473) );
  HS65_GS_AO22X4 U445 ( .A(neighborID[14]), .B(n511), .C(n512), .D(data_in[14]), .Z(n472) );
  HS65_GS_AO22X4 U446 ( .A(neighborID[15]), .B(n511), .C(n512), .D(data_in[15]), .Z(n471) );
  HS65_GS_AO22X4 U447 ( .A(neighborCount[1]), .B(n216), .C(n217), .D(
        data_in[1]), .Z(n470) );
  HS65_GS_AO22X4 U448 ( .A(neighborCount[2]), .B(n216), .C(n217), .D(
        data_in[2]), .Z(n469) );
  HS65_GS_AO22X4 U449 ( .A(neighborCount[3]), .B(n216), .C(n217), .D(
        data_in[3]), .Z(n468) );
  HS65_GS_AO22X4 U450 ( .A(neighborCount[4]), .B(n216), .C(n217), .D(
        data_in[4]), .Z(n467) );
  HS65_GS_AO22X4 U451 ( .A(neighborCount[5]), .B(n216), .C(n217), .D(
        data_in[5]), .Z(n466) );
  HS65_GS_AO22X4 U452 ( .A(neighborCount[6]), .B(n216), .C(n217), .D(
        data_in[6]), .Z(n465) );
  HS65_GS_AO22X4 U453 ( .A(neighborCount[7]), .B(n216), .C(n217), .D(
        data_in[7]), .Z(n464) );
  HS65_GS_AO22X4 U454 ( .A(neighborCount[8]), .B(n216), .C(n217), .D(
        data_in[8]), .Z(n463) );
  HS65_GS_AO22X4 U455 ( .A(neighborCount[9]), .B(n216), .C(n217), .D(
        data_in[9]), .Z(n462) );
  HS65_GS_AO22X4 U456 ( .A(neighborCount[10]), .B(n216), .C(n217), .D(
        data_in[10]), .Z(n461) );
  HS65_GS_AO22X4 U457 ( .A(neighborCount[11]), .B(n216), .C(n217), .D(
        data_in[11]), .Z(n460) );
  HS65_GS_AO22X4 U458 ( .A(neighborCount[12]), .B(n216), .C(n217), .D(
        data_in[12]), .Z(n459) );
  HS65_GS_AO22X4 U459 ( .A(neighborCount[13]), .B(n216), .C(n217), .D(
        data_in[13]), .Z(n458) );
  HS65_GS_AO22X4 U460 ( .A(neighborCount[14]), .B(n216), .C(n217), .D(
        data_in[14]), .Z(n457) );
  HS65_GS_AO22X4 U461 ( .A(neighborCount[15]), .B(n216), .C(n217), .D(
        data_in[15]), .Z(n456) );
  HS65_GS_AO22X4 U462 ( .A(knownSinkCount[0]), .B(n515), .C(n516), .D(
        data_in[0]), .Z(n455) );
  HS65_GS_AO22X4 U463 ( .A(knownSinkCount[1]), .B(n515), .C(n516), .D(
        data_in[1]), .Z(n454) );
  HS65_GS_AO22X4 U464 ( .A(knownSinkCount[2]), .B(n515), .C(n516), .D(
        data_in[2]), .Z(n453) );
  HS65_GS_AO22X4 U465 ( .A(knownSinkCount[3]), .B(n515), .C(n516), .D(
        data_in[3]), .Z(n452) );
  HS65_GS_AO22X4 U466 ( .A(knownSinkCount[4]), .B(n515), .C(n516), .D(
        data_in[4]), .Z(n451) );
  HS65_GS_AO22X4 U467 ( .A(knownSinkCount[5]), .B(n515), .C(n516), .D(
        data_in[5]), .Z(n450) );
  HS65_GS_AO22X4 U468 ( .A(knownSinkCount[6]), .B(n515), .C(n516), .D(
        data_in[6]), .Z(n449) );
  HS65_GS_AO22X4 U469 ( .A(knownSinkCount[7]), .B(n515), .C(n516), .D(
        data_in[7]), .Z(n448) );
  HS65_GS_AO22X4 U470 ( .A(knownSinkCount[8]), .B(n515), .C(n516), .D(
        data_in[8]), .Z(n447) );
  HS65_GS_AO22X4 U471 ( .A(knownSinkCount[9]), .B(n515), .C(n516), .D(
        data_in[9]), .Z(n446) );
  HS65_GS_AO22X4 U472 ( .A(knownSinkCount[10]), .B(n515), .C(n516), .D(
        data_in[10]), .Z(n445) );
  HS65_GS_AO22X4 U473 ( .A(knownSinkCount[11]), .B(n515), .C(n516), .D(
        data_in[11]), .Z(n444) );
  HS65_GS_AO22X4 U474 ( .A(knownSinkCount[12]), .B(n515), .C(n516), .D(
        data_in[12]), .Z(n443) );
  HS65_GS_AO22X4 U475 ( .A(knownSinkCount[13]), .B(n515), .C(n516), .D(
        data_in[13]), .Z(n442) );
  HS65_GS_AO22X4 U476 ( .A(knownSinkCount[14]), .B(n515), .C(n516), .D(
        data_in[14]), .Z(n441) );
  HS65_GS_AO22X4 U477 ( .A(knownSinkCount[15]), .B(n515), .C(n516), .D(
        data_in[15]), .Z(n440) );
  HS65_GS_AO22X4 U478 ( .A(N472), .B(n518), .C(N501), .D(n519), .Z(n439) );
  HS65_GS_AO22X4 U479 ( .A(N473), .B(n518), .C(N502), .D(n519), .Z(n438) );
  HS65_GS_AO22X4 U480 ( .A(j[2]), .B(n518), .C(N486), .D(n519), .Z(n437) );
  HS65_GS_AO22X4 U481 ( .A(j[3]), .B(n518), .C(N487), .D(n519), .Z(n436) );
  HS65_GS_AO22X4 U482 ( .A(j[4]), .B(n518), .C(N488), .D(n519), .Z(n435) );
  HS65_GS_AO22X4 U483 ( .A(j[5]), .B(n518), .C(N489), .D(n519), .Z(n434) );
  HS65_GS_AO22X4 U484 ( .A(j[6]), .B(n518), .C(N490), .D(n519), .Z(n433) );
  HS65_GS_AO22X4 U485 ( .A(j[7]), .B(n518), .C(N491), .D(n519), .Z(n432) );
  HS65_GS_AO22X4 U486 ( .A(j[8]), .B(n518), .C(N492), .D(n519), .Z(n431) );
  HS65_GS_AO22X4 U487 ( .A(j[9]), .B(n518), .C(N493), .D(n519), .Z(n430) );
  HS65_GS_AO22X4 U488 ( .A(j[10]), .B(n518), .C(N494), .D(n519), .Z(n429) );
  HS65_GS_AO22X4 U489 ( .A(j[11]), .B(n518), .C(N495), .D(n519), .Z(n428) );
  HS65_GS_AO22X4 U490 ( .A(j[12]), .B(n518), .C(N496), .D(n519), .Z(n427) );
  HS65_GS_AO22X4 U491 ( .A(j[13]), .B(n518), .C(N497), .D(n519), .Z(n426) );
  HS65_GS_AO22X4 U492 ( .A(j[14]), .B(n518), .C(N498), .D(n519), .Z(n425) );
  HS65_GS_AO22X4 U493 ( .A(j[15]), .B(n518), .C(N499), .D(n519), .Z(n424) );
  HS65_GS_AO22X4 U494 ( .A(i[15]), .B(n520), .C(N148), .D(n521), .Z(n423) );
  HS65_GS_AO22X4 U495 ( .A(N330), .B(n520), .C(N150), .D(n521), .Z(n422) );
  HS65_GS_AO22X4 U496 ( .A(N331), .B(n520), .C(N151), .D(n521), .Z(n421) );
  HS65_GS_AO22X4 U497 ( .A(i[2]), .B(n520), .C(N135), .D(n521), .Z(n420) );
  HS65_GS_AO22X4 U498 ( .A(i[3]), .B(n520), .C(N136), .D(n521), .Z(n419) );
  HS65_GS_AO22X4 U499 ( .A(i[4]), .B(n520), .C(N137), .D(n521), .Z(n418) );
  HS65_GS_AO22X4 U500 ( .A(i[5]), .B(n520), .C(N138), .D(n521), .Z(n417) );
  HS65_GS_AO22X4 U501 ( .A(i[6]), .B(n520), .C(N139), .D(n521), .Z(n416) );
  HS65_GS_AO22X4 U502 ( .A(i[7]), .B(n520), .C(N140), .D(n521), .Z(n415) );
  HS65_GS_AO22X4 U503 ( .A(i[8]), .B(n520), .C(N141), .D(n521), .Z(n414) );
  HS65_GS_AO22X4 U504 ( .A(i[9]), .B(n520), .C(N142), .D(n521), .Z(n413) );
  HS65_GS_AO22X4 U505 ( .A(i[10]), .B(n520), .C(N143), .D(n521), .Z(n412) );
  HS65_GS_AO22X4 U506 ( .A(i[11]), .B(n520), .C(N144), .D(n521), .Z(n411) );
  HS65_GS_AO22X4 U507 ( .A(i[12]), .B(n520), .C(N145), .D(n521), .Z(n410) );
  HS65_GS_AO22X4 U508 ( .A(i[13]), .B(n520), .C(N146), .D(n521), .Z(n409) );
  HS65_GS_AO22X4 U509 ( .A(i[14]), .B(n520), .C(N147), .D(n521), .Z(n408) );
  HS65_GS_OAI12X2 U510 ( .A(n525), .B(n526), .C(n527), .Z(n407) );
  HS65_GS_MUXI21X2 U511 ( .D0(n528), .D1(nextsinks[0]), .S0(n529), .Z(n527) );
  HS65_GS_IVX2 U512 ( .A(N330), .Z(n525) );
  HS65_GS_AO22X4 U513 ( .A(nextsinks[1]), .B(n529), .C(n530), .D(N331), .Z(
        n406) );
  HS65_GS_AO22X4 U514 ( .A(nextsinks[2]), .B(n529), .C(n530), .D(i[2]), .Z(
        n405) );
  HS65_GS_AO22X4 U515 ( .A(nextsinks[3]), .B(n529), .C(n530), .D(i[3]), .Z(
        n404) );
  HS65_GS_AO22X4 U516 ( .A(nextsinks[4]), .B(n529), .C(n530), .D(i[4]), .Z(
        n403) );
  HS65_GS_AO22X4 U517 ( .A(nextsinks[5]), .B(n529), .C(n530), .D(i[5]), .Z(
        n402) );
  HS65_GS_OAI12X2 U518 ( .A(n531), .B(n526), .C(n532), .Z(n401) );
  HS65_GS_MUXI21X2 U519 ( .D0(n528), .D1(nextsinks[6]), .S0(n529), .Z(n532) );
  HS65_GS_IVX2 U520 ( .A(i[6]), .Z(n531) );
  HS65_GS_AO22X4 U521 ( .A(nextsinks[7]), .B(n529), .C(n530), .D(i[7]), .Z(
        n400) );
  HS65_GS_AO22X4 U522 ( .A(nextsinks[8]), .B(n529), .C(n530), .D(i[8]), .Z(
        n399) );
  HS65_GS_AO22X4 U523 ( .A(nextsinks[9]), .B(n529), .C(n530), .D(i[9]), .Z(
        n398) );
  HS65_GS_AO22X4 U524 ( .A(nextsinks[10]), .B(n529), .C(n530), .D(i[10]), .Z(
        n397) );
  HS65_GS_AO22X4 U525 ( .A(nextsinks[11]), .B(n529), .C(n530), .D(i[11]), .Z(
        n396) );
  HS65_GS_AO22X4 U526 ( .A(nextsinks[12]), .B(n529), .C(n530), .D(i[12]), .Z(
        n395) );
  HS65_GS_AO22X4 U527 ( .A(nextsinks[13]), .B(n529), .C(n530), .D(i[13]), .Z(
        n394) );
  HS65_GS_AO22X4 U528 ( .A(nextsinks[14]), .B(n529), .C(n530), .D(i[14]), .Z(
        n393) );
  HS65_GS_AO22X4 U529 ( .A(nextsinks[15]), .B(n529), .C(n530), .D(i[15]), .Z(
        n392) );
  HS65_GS_NAND2AX4 U530 ( .A(n529), .B(n231), .Z(n526) );
  HS65_GS_IVX2 U531 ( .A(n518), .Z(n533) );
  HS65_GS_AO22X4 U532 ( .A(N458), .B(n4), .C(fpTemp[30]), .D(n14), .Z(n391) );
  HS65_GS_AO22X4 U533 ( .A(N457), .B(n4), .C(fpTemp[29]), .D(n15), .Z(n390) );
  HS65_GS_AO22X4 U534 ( .A(n8), .B(N456), .C(n14), .D(fpTemp[28]), .Z(n389) );
  HS65_GS_AO22X4 U535 ( .A(n8), .B(N455), .C(n14), .D(fpTemp[27]), .Z(n388) );
  HS65_GS_AO22X4 U536 ( .A(n8), .B(N454), .C(n14), .D(fpTemp[26]), .Z(n387) );
  HS65_GS_AO22X4 U537 ( .A(n8), .B(N453), .C(n14), .D(fpTemp[25]), .Z(n386) );
  HS65_GS_AO22X4 U538 ( .A(n8), .B(N452), .C(n14), .D(fpTemp[24]), .Z(n385) );
  HS65_GS_AO22X4 U539 ( .A(n8), .B(N451), .C(n14), .D(fpTemp[23]), .Z(n384) );
  HS65_GS_AO22X4 U540 ( .A(n7), .B(N450), .C(n14), .D(fpTemp[22]), .Z(n383) );
  HS65_GS_AO22X4 U541 ( .A(n8), .B(N449), .C(n14), .D(fpTemp[21]), .Z(n382) );
  HS65_GS_AO22X4 U542 ( .A(n7), .B(N448), .C(n14), .D(fpTemp[20]), .Z(n381) );
  HS65_GS_AO222X4 U543 ( .A(fpTemp[19]), .B(n12), .C(N371), .D(n535), .E(N447), 
        .F(n5), .Z(n380) );
  HS65_GS_AO222X4 U544 ( .A(fpTemp[18]), .B(n12), .C(N370), .D(n535), .E(N446), 
        .F(n6), .Z(n379) );
  HS65_GS_AO222X4 U545 ( .A(fpTemp[17]), .B(n12), .C(N369), .D(n535), .E(N445), 
        .F(n6), .Z(n378) );
  HS65_GS_AO222X4 U546 ( .A(fpTemp[16]), .B(n12), .C(N368), .D(n535), .E(N444), 
        .F(n6), .Z(n377) );
  HS65_GS_AO222X4 U547 ( .A(fpTemp[15]), .B(n12), .C(N367), .D(n535), .E(N443), 
        .F(n6), .Z(n376) );
  HS65_GS_AO222X4 U548 ( .A(fpTemp[14]), .B(n12), .C(N366), .D(n535), .E(N442), 
        .F(n6), .Z(n375) );
  HS65_GS_AO222X4 U549 ( .A(fpTemp[13]), .B(n12), .C(N365), .D(n535), .E(N441), 
        .F(n6), .Z(n374) );
  HS65_GS_AO222X4 U550 ( .A(fpTemp[12]), .B(n12), .C(N364), .D(n535), .E(N440), 
        .F(n6), .Z(n373) );
  HS65_GS_AO222X4 U551 ( .A(fpTemp[11]), .B(n12), .C(N363), .D(n535), .E(N439), 
        .F(n6), .Z(n372) );
  HS65_GS_AO222X4 U552 ( .A(fpTemp[10]), .B(n13), .C(N362), .D(n535), .E(N438), 
        .F(n6), .Z(n371) );
  HS65_GS_AO222X4 U553 ( .A(fpTemp[9]), .B(n13), .C(N361), .D(n535), .E(N437), 
        .F(n6), .Z(n370) );
  HS65_GS_AO222X4 U554 ( .A(fpTemp[8]), .B(n13), .C(N360), .D(n535), .E(N436), 
        .F(n7), .Z(n369) );
  HS65_GS_AO222X4 U555 ( .A(fpTemp[7]), .B(n13), .C(N359), .D(n535), .E(N435), 
        .F(n7), .Z(n368) );
  HS65_GS_AO222X4 U556 ( .A(fpTemp[6]), .B(n13), .C(N358), .D(n535), .E(N434), 
        .F(n7), .Z(n367) );
  HS65_GS_AO222X4 U557 ( .A(fpTemp[5]), .B(n13), .C(N357), .D(n535), .E(N433), 
        .F(n7), .Z(n366) );
  HS65_GS_AO222X4 U558 ( .A(fpTemp[4]), .B(n13), .C(N356), .D(n535), .E(N432), 
        .F(n7), .Z(n365) );
  HS65_GS_AO222X4 U559 ( .A(fpTemp[3]), .B(n13), .C(N355), .D(n535), .E(N431), 
        .F(n7), .Z(n364) );
  HS65_GS_AO222X4 U560 ( .A(fpTemp[2]), .B(n13), .C(N354), .D(n535), .E(N430), 
        .F(n7), .Z(n363) );
  HS65_GS_AO222X4 U561 ( .A(fpTemp[1]), .B(n14), .C(N353), .D(n535), .E(N429), 
        .F(n7), .Z(n362) );
  HS65_GS_AO22X4 U562 ( .A(N428), .B(n4), .C(fpTemp[0]), .D(n15), .Z(n361) );
  HS65_GS_AO222X4 U563 ( .A(n537), .B(fpTemp[30]), .C(k[15]), .D(n538), .E(
        N389), .F(n539), .Z(n360) );
  HS65_GS_AO222X4 U564 ( .A(n537), .B(fpTemp[15]), .C(k[0]), .D(n538), .E(N374), .F(n539), .Z(n359) );
  HS65_GS_OAI112X1 U565 ( .A(n540), .B(n541), .C(n542), .D(n543), .Z(n358) );
  HS65_GS_AOI22X1 U566 ( .A(n537), .B(fpTemp[16]), .C(N375), .D(n539), .Z(n543) );
  HS65_GS_AO222X4 U567 ( .A(n537), .B(fpTemp[17]), .C(k[2]), .D(n538), .E(N376), .F(n539), .Z(n357) );
  HS65_GS_OAI112X1 U568 ( .A(n540), .B(n544), .C(n542), .D(n545), .Z(n356) );
  HS65_GS_AOI22X1 U569 ( .A(n537), .B(fpTemp[18]), .C(N377), .D(n539), .Z(n545) );
  HS65_GS_NAND3X2 U570 ( .A(n37), .B(n540), .C(n208), .Z(n542) );
  HS65_GS_AO222X4 U571 ( .A(n537), .B(fpTemp[19]), .C(k[4]), .D(n538), .E(N378), .F(n539), .Z(n355) );
  HS65_GS_AO222X4 U572 ( .A(n537), .B(fpTemp[20]), .C(k[5]), .D(n538), .E(N379), .F(n539), .Z(n354) );
  HS65_GS_AO222X4 U573 ( .A(n537), .B(fpTemp[21]), .C(k[6]), .D(n538), .E(N380), .F(n539), .Z(n353) );
  HS65_GS_AO222X4 U574 ( .A(n537), .B(fpTemp[22]), .C(k[7]), .D(n538), .E(N381), .F(n539), .Z(n352) );
  HS65_GS_AO222X4 U575 ( .A(n537), .B(fpTemp[23]), .C(k[8]), .D(n538), .E(N382), .F(n539), .Z(n351) );
  HS65_GS_AO222X4 U576 ( .A(n537), .B(fpTemp[24]), .C(k[9]), .D(n538), .E(N383), .F(n539), .Z(n350) );
  HS65_GS_AO222X4 U577 ( .A(n537), .B(fpTemp[25]), .C(k[10]), .D(n538), .E(
        N384), .F(n539), .Z(n349) );
  HS65_GS_AO222X4 U578 ( .A(n537), .B(fpTemp[26]), .C(k[11]), .D(n538), .E(
        N385), .F(n539), .Z(n348) );
  HS65_GS_AO222X4 U579 ( .A(n537), .B(fpTemp[27]), .C(k[12]), .D(n538), .E(
        N386), .F(n539), .Z(n347) );
  HS65_GS_AO222X4 U580 ( .A(n537), .B(fpTemp[28]), .C(k[13]), .D(n538), .E(
        N387), .F(n539), .Z(n346) );
  HS65_GS_AO222X4 U581 ( .A(n537), .B(fpTemp[29]), .C(k[14]), .D(n538), .E(
        N388), .F(n539), .Z(n345) );
  HS65_GS_OAI112X1 U582 ( .A(n548), .B(n549), .C(n547), .D(n524), .Z(n540) );
  HS65_GS_NAND4ABX3 U583 ( .A(n550), .B(n551), .C(n552), .D(n553), .Z(n546) );
  HS65_GS_NOR4X4 U584 ( .A(fpTemp[12]), .B(fpTemp[13]), .C(fpTemp[1]), .D(
        fpTemp[14]), .Z(n553) );
  HS65_GS_NOR3X1 U585 ( .A(fpTemp[0]), .B(fpTemp[11]), .C(fpTemp[10]), .Z(n552) );
  HS65_GS_OR4X4 U586 ( .A(fpTemp[5]), .B(fpTemp[4]), .C(fpTemp[2]), .D(
        fpTemp[3]), .Z(n551) );
  HS65_GS_OR4X4 U587 ( .A(fpTemp[9]), .B(fpTemp[8]), .C(fpTemp[6]), .D(
        fpTemp[7]), .Z(n550) );
  HS65_GS_AO22X4 U588 ( .A(n3), .B(data_in[15]), .C(bestneighborID[15]), .D(
        n555), .Z(n344) );
  HS65_GS_AO22X4 U589 ( .A(n3), .B(data_in[14]), .C(bestneighborID[14]), .D(
        n555), .Z(n343) );
  HS65_GS_AO22X4 U590 ( .A(n3), .B(data_in[13]), .C(bestneighborID[13]), .D(
        n555), .Z(n342) );
  HS65_GS_AO22X4 U591 ( .A(n554), .B(data_in[12]), .C(bestneighborID[12]), .D(
        n555), .Z(n341) );
  HS65_GS_AO212X4 U592 ( .A(bestneighborID[11]), .B(n555), .C(n556), .D(
        data_in[11]), .E(n557), .Z(n340) );
  HS65_GS_AO212X4 U593 ( .A(bestneighborID[10]), .B(n555), .C(n556), .D(
        data_in[10]), .E(n557), .Z(n339) );
  HS65_GS_AO212X4 U594 ( .A(bestneighborID[9]), .B(n555), .C(n556), .D(
        data_in[9]), .E(n557), .Z(n338) );
  HS65_GS_AO212X4 U595 ( .A(bestneighborID[8]), .B(n555), .C(n556), .D(
        data_in[8]), .E(n557), .Z(n337) );
  HS65_GS_AO212X4 U596 ( .A(bestneighborID[7]), .B(n555), .C(n556), .D(
        data_in[7]), .E(n557), .Z(n336) );
  HS65_GS_AO212X4 U597 ( .A(bestneighborID[6]), .B(n555), .C(n556), .D(
        data_in[6]), .E(n557), .Z(n335) );
  HS65_GS_AO212X4 U598 ( .A(bestneighborID[5]), .B(n555), .C(n556), .D(
        data_in[5]), .E(n557), .Z(n334) );
  HS65_GS_AO212X4 U599 ( .A(bestneighborID[4]), .B(n555), .C(n556), .D(
        data_in[4]), .E(n557), .Z(n333) );
  HS65_GS_AO212X4 U600 ( .A(bestneighborID[3]), .B(n555), .C(n556), .D(
        data_in[3]), .E(n557), .Z(n332) );
  HS65_GS_AO212X4 U601 ( .A(bestneighborID[2]), .B(n555), .C(n556), .D(
        data_in[2]), .E(n557), .Z(n331) );
  HS65_GS_AO212X4 U602 ( .A(bestneighborID[1]), .B(n555), .C(n556), .D(
        data_in[1]), .E(n557), .Z(n330) );
  HS65_GS_AO22X4 U603 ( .A(n554), .B(data_in[0]), .C(bestneighborID[0]), .D(
        n555), .Z(n329) );
  HS65_GS_AO222X4 U604 ( .A(N456), .B(n5), .C(qValue[15]), .D(n558), .E(n559), 
        .F(data_in[15]), .Z(n328) );
  HS65_GS_AO222X4 U605 ( .A(N455), .B(n5), .C(qValue[14]), .D(n558), .E(n559), 
        .F(data_in[14]), .Z(n327) );
  HS65_GS_AO222X4 U606 ( .A(N454), .B(n5), .C(qValue[13]), .D(n558), .E(n559), 
        .F(data_in[13]), .Z(n326) );
  HS65_GS_AO222X4 U607 ( .A(N453), .B(n5), .C(qValue[12]), .D(n558), .E(n559), 
        .F(data_in[12]), .Z(n325) );
  HS65_GS_AO222X4 U608 ( .A(N452), .B(n5), .C(qValue[11]), .D(n558), .E(n559), 
        .F(data_in[11]), .Z(n324) );
  HS65_GS_AO222X4 U609 ( .A(N451), .B(n5), .C(qValue[10]), .D(n558), .E(n559), 
        .F(data_in[10]), .Z(n323) );
  HS65_GS_AO222X4 U610 ( .A(N450), .B(n5), .C(qValue[9]), .D(n558), .E(n559), 
        .F(data_in[9]), .Z(n322) );
  HS65_GS_AO222X4 U611 ( .A(N449), .B(n5), .C(qValue[8]), .D(n558), .E(n559), 
        .F(data_in[8]), .Z(n321) );
  HS65_GS_AO222X4 U612 ( .A(N448), .B(n5), .C(qValue[7]), .D(n558), .E(n559), 
        .F(data_in[7]), .Z(n320) );
  HS65_GS_AO222X4 U613 ( .A(N447), .B(n4), .C(qValue[6]), .D(n558), .E(n559), 
        .F(data_in[6]), .Z(n319) );
  HS65_GS_AO222X4 U614 ( .A(N446), .B(n4), .C(qValue[5]), .D(n558), .E(n559), 
        .F(data_in[5]), .Z(n318) );
  HS65_GS_AO222X4 U615 ( .A(N445), .B(n4), .C(qValue[4]), .D(n558), .E(n559), 
        .F(data_in[4]), .Z(n317) );
  HS65_GS_AO222X4 U616 ( .A(N444), .B(n4), .C(qValue[3]), .D(n558), .E(n559), 
        .F(data_in[3]), .Z(n316) );
  HS65_GS_AO222X4 U617 ( .A(N443), .B(n4), .C(qValue[2]), .D(n558), .E(n559), 
        .F(data_in[2]), .Z(n315) );
  HS65_GS_AO222X4 U618 ( .A(N442), .B(n4), .C(qValue[1]), .D(n558), .E(n559), 
        .F(data_in[1]), .Z(n314) );
  HS65_GS_AO222X4 U619 ( .A(N441), .B(n4), .C(qValue[0]), .D(n558), .E(n559), 
        .F(data_in[0]), .Z(n313) );
  HS65_GS_OAI22X1 U620 ( .A(n560), .B(n509), .C(n239), .D(n36), .Z(n312) );
  HS65_GS_IVX2 U621 ( .A(done), .Z(n560) );
  HS65_GS_AO22X4 U622 ( .A(betterneighborCount[0]), .B(n561), .C(N292), .D(
        n562), .Z(n311) );
  HS65_GS_AO22X4 U623 ( .A(betterneighborCount[1]), .B(n561), .C(N293), .D(
        n562), .Z(n310) );
  HS65_GS_AO22X4 U624 ( .A(betterneighborCount[2]), .B(n561), .C(N294), .D(
        n562), .Z(n309) );
  HS65_GS_AO22X4 U625 ( .A(betterneighborCount[3]), .B(n561), .C(N295), .D(
        n562), .Z(n308) );
  HS65_GS_AO22X4 U626 ( .A(betterneighborCount[4]), .B(n561), .C(N296), .D(
        n562), .Z(n307) );
  HS65_GS_AO22X4 U627 ( .A(betterneighborCount[5]), .B(n561), .C(N297), .D(
        n562), .Z(n306) );
  HS65_GS_AO22X4 U628 ( .A(betterneighborCount[6]), .B(n561), .C(N298), .D(
        n562), .Z(n305) );
  HS65_GS_AO22X4 U629 ( .A(betterneighborCount[7]), .B(n561), .C(N299), .D(
        n562), .Z(n304) );
  HS65_GS_AO22X4 U630 ( .A(betterneighborCount[8]), .B(n561), .C(N300), .D(
        n562), .Z(n303) );
  HS65_GS_AO22X4 U631 ( .A(betterneighborCount[9]), .B(n561), .C(N301), .D(
        n562), .Z(n302) );
  HS65_GS_AO22X4 U632 ( .A(betterneighborCount[10]), .B(n561), .C(N302), .D(
        n562), .Z(n301) );
  HS65_GS_AO22X4 U633 ( .A(betterneighborCount[11]), .B(n561), .C(N303), .D(
        n562), .Z(n300) );
  HS65_GS_AO22X4 U634 ( .A(betterneighborCount[12]), .B(n561), .C(N304), .D(
        n562), .Z(n299) );
  HS65_GS_AO22X4 U635 ( .A(betterneighborCount[13]), .B(n561), .C(N305), .D(
        n562), .Z(n298) );
  HS65_GS_AO22X4 U636 ( .A(betterneighborCount[14]), .B(n561), .C(N306), .D(
        n562), .Z(n297) );
  HS65_GS_AO22X4 U637 ( .A(betterneighborCount[15]), .B(n561), .C(N307), .D(
        n562), .Z(n296) );
  HS65_GS_AO222X4 U638 ( .A(data_out[0]), .B(n240), .C(n564), .D(N330), .E(
        betterneighborCount[0]), .F(n554), .Z(n295) );
  HS65_GS_AO222X4 U639 ( .A(data_out[1]), .B(n240), .C(n564), .D(N331), .E(
        betterneighborCount[1]), .F(n554), .Z(n294) );
  HS65_GS_AO222X4 U640 ( .A(data_out[2]), .B(n240), .C(n564), .D(i[2]), .E(
        betterneighborCount[2]), .F(n554), .Z(n293) );
  HS65_GS_AO222X4 U641 ( .A(data_out[3]), .B(n240), .C(n564), .D(i[3]), .E(
        betterneighborCount[3]), .F(n554), .Z(n292) );
  HS65_GS_AO222X4 U642 ( .A(data_out[4]), .B(n240), .C(n564), .D(i[4]), .E(
        betterneighborCount[4]), .F(n554), .Z(n291) );
  HS65_GS_AO222X4 U643 ( .A(data_out[5]), .B(n240), .C(n564), .D(i[5]), .E(
        betterneighborCount[5]), .F(n554), .Z(n290) );
  HS65_GS_AO222X4 U644 ( .A(data_out[6]), .B(n240), .C(n564), .D(i[6]), .E(
        betterneighborCount[6]), .F(n554), .Z(n289) );
  HS65_GS_AO222X4 U645 ( .A(data_out[7]), .B(n240), .C(n564), .D(i[7]), .E(
        betterneighborCount[7]), .F(n554), .Z(n288) );
  HS65_GS_AO222X4 U646 ( .A(data_out[8]), .B(n240), .C(n564), .D(i[8]), .E(
        betterneighborCount[8]), .F(n554), .Z(n287) );
  HS65_GS_AO222X4 U647 ( .A(data_out[9]), .B(n240), .C(n564), .D(i[9]), .E(
        betterneighborCount[9]), .F(n554), .Z(n286) );
  HS65_GS_AO222X4 U648 ( .A(data_out[10]), .B(n240), .C(n564), .D(i[10]), .E(
        betterneighborCount[10]), .F(n554), .Z(n285) );
  HS65_GS_AO222X4 U649 ( .A(data_out[11]), .B(n240), .C(n564), .D(i[11]), .E(
        betterneighborCount[11]), .F(n554), .Z(n284) );
  HS65_GS_AO222X4 U650 ( .A(data_out[12]), .B(n240), .C(n564), .D(i[12]), .E(
        betterneighborCount[12]), .F(n554), .Z(n283) );
  HS65_GS_AO222X4 U651 ( .A(data_out[13]), .B(n240), .C(n564), .D(i[13]), .E(
        betterneighborCount[13]), .F(n554), .Z(n282) );
  HS65_GS_AO222X4 U652 ( .A(data_out[14]), .B(n240), .C(n564), .D(i[14]), .E(
        betterneighborCount[14]), .F(n554), .Z(n281) );
  HS65_GS_AO222X4 U653 ( .A(data_out[15]), .B(n240), .C(n564), .D(i[15]), .E(
        betterneighborCount[15]), .F(n554), .Z(n280) );
  HS65_GS_IVX2 U654 ( .A(n559), .Z(n563) );
  HS65_GS_AO22X4 U655 ( .A(bestvalue[0]), .B(n17), .C(n565), .D(N441), .Z(n279) );
  HS65_GS_NAND2X2 U656 ( .A(n566), .B(n567), .Z(n278) );
  HS65_GS_MUXI21X2 U657 ( .D0(N330), .D1(N163), .S0(n16), .Z(n566) );
  HS65_GS_AO22X4 U658 ( .A(N164), .B(n17), .C(n565), .D(N331), .Z(n277) );
  HS65_GS_AO22X4 U659 ( .A(besthop[2]), .B(n17), .C(n565), .D(i[2]), .Z(n276)
         );
  HS65_GS_AO22X4 U660 ( .A(besthop[3]), .B(n17), .C(n565), .D(i[3]), .Z(n275)
         );
  HS65_GS_AO22X4 U661 ( .A(besthop[4]), .B(n17), .C(n565), .D(i[4]), .Z(n274)
         );
  HS65_GS_AO22X4 U662 ( .A(besthop[5]), .B(n17), .C(n565), .D(i[5]), .Z(n273)
         );
  HS65_GS_NAND2X2 U663 ( .A(n568), .B(n567), .Z(n272) );
  HS65_GS_MUXI21X2 U664 ( .D0(i[6]), .D1(besthop[6]), .S0(n16), .Z(n568) );
  HS65_GS_AO22X4 U665 ( .A(besthop[7]), .B(n17), .C(n565), .D(i[7]), .Z(n271)
         );
  HS65_GS_AO22X4 U666 ( .A(besthop[8]), .B(n16), .C(n565), .D(i[8]), .Z(n270)
         );
  HS65_GS_AO22X4 U667 ( .A(besthop[9]), .B(n16), .C(n565), .D(i[9]), .Z(n269)
         );
  HS65_GS_NOR2AX3 U668 ( .A(address[0]), .B(n672), .Z(n268) );
  HS65_GS_AO22X4 U669 ( .A(address[1]), .B(n569), .C(n37), .D(n570), .Z(n267)
         );
  HS65_GS_NAND4ABX3 U670 ( .A(n571), .B(n572), .C(n573), .D(n574), .Z(n570) );
  HS65_GS_AOI222X2 U671 ( .A(N330), .B(n207), .C(N330), .D(n191), .E(N150), 
        .F(n206), .Z(n574) );
  HS65_GS_AOI222X2 U672 ( .A(N472), .B(n209), .C(N319), .D(n205), .E(N418), 
        .F(n208), .Z(n573) );
  HS65_GS_AO222X4 U673 ( .A(N150), .B(n212), .C(N501), .D(n215), .E(N150), .F(
        n211), .Z(n572) );
  HS65_GS_AO212X4 U674 ( .A(N330), .B(n214), .C(N163), .D(n213), .E(n224), .Z(
        n571) );
  HS65_GS_IVX2 U675 ( .A(n517), .Z(n224) );
  HS65_GS_AO22X4 U676 ( .A(address[2]), .B(n569), .C(n37), .D(n575), .Z(n266)
         );
  HS65_GS_NAND4ABX3 U677 ( .A(n576), .B(n577), .C(n578), .D(n579), .Z(n575) );
  HS65_GS_AOI222X2 U678 ( .A(N331), .B(n207), .C(N331), .D(n191), .E(N151), 
        .F(n206), .Z(n579) );
  HS65_GS_AOI222X2 U679 ( .A(N473), .B(n209), .C(N320), .D(n205), .E(N419), 
        .F(n208), .Z(n578) );
  HS65_GS_AO222X4 U680 ( .A(N151), .B(n212), .C(N502), .D(n215), .E(N151), .F(
        n211), .Z(n577) );
  HS65_GS_AO212X4 U681 ( .A(N331), .B(n214), .C(N164), .D(n213), .E(n556), .Z(
        n576) );
  HS65_GS_AO22X4 U682 ( .A(address[4]), .B(n569), .C(n37), .D(n580), .Z(n265)
         );
  HS65_GS_NAND3X2 U683 ( .A(n581), .B(n582), .C(n583), .Z(n580) );
  HS65_GS_AOI212X2 U684 ( .A(N421), .B(n208), .C(N475), .D(n209), .E(n584), 
        .Z(n583) );
  HS65_GS_AO222X4 U685 ( .A(N267), .B(n207), .C(N153), .D(n206), .E(N322), .F(
        n205), .Z(n584) );
  HS65_GS_AOI222X2 U686 ( .A(N504), .B(n215), .C(N188), .D(n214), .E(N166), 
        .F(n213), .Z(n582) );
  HS65_GS_AOI222X2 U687 ( .A(N333), .B(n191), .C(N231), .D(n212), .E(N534), 
        .F(n211), .Z(n581) );
  HS65_GS_AO22X4 U688 ( .A(address[5]), .B(n569), .C(n37), .D(n585), .Z(n264)
         );
  HS65_GS_NAND3X2 U689 ( .A(n586), .B(n587), .C(n588), .Z(n585) );
  HS65_GS_AOI212X2 U690 ( .A(N422), .B(n208), .C(N476), .D(n209), .E(n589), 
        .Z(n588) );
  HS65_GS_AO222X4 U691 ( .A(N268), .B(n207), .C(N154), .D(n206), .E(N323), .F(
        n205), .Z(n589) );
  HS65_GS_AOI222X2 U692 ( .A(N505), .B(n215), .C(N189), .D(n214), .E(N167), 
        .F(n213), .Z(n587) );
  HS65_GS_AOI222X2 U693 ( .A(N334), .B(n191), .C(N232), .D(n212), .E(N535), 
        .F(n211), .Z(n586) );
  HS65_GS_AO22X4 U694 ( .A(address[6]), .B(n569), .C(n37), .D(n590), .Z(n263)
         );
  HS65_GS_NAND4ABX3 U695 ( .A(n591), .B(n592), .C(n593), .D(n594), .Z(n590) );
  HS65_GS_AOI222X2 U696 ( .A(N269), .B(n207), .C(N335), .D(n191), .E(N155), 
        .F(n206), .Z(n594) );
  HS65_GS_AOI222X2 U697 ( .A(N477), .B(n209), .C(N324), .D(n205), .E(N423), 
        .F(n208), .Z(n593) );
  HS65_GS_AO222X4 U698 ( .A(N233), .B(n212), .C(N506), .D(n215), .E(N536), .F(
        n211), .Z(n592) );
  HS65_GS_AO212X4 U699 ( .A(N190), .B(n214), .C(N168), .D(n213), .E(n514), .Z(
        n591) );
  HS65_GS_AO22X4 U700 ( .A(address[8]), .B(n569), .C(n37), .D(n595), .Z(n262)
         );
  HS65_GS_NAND3X2 U701 ( .A(n596), .B(n597), .C(n598), .Z(n595) );
  HS65_GS_AOI212X2 U702 ( .A(N425), .B(n208), .C(N479), .D(n209), .E(n599), 
        .Z(n598) );
  HS65_GS_AO222X4 U703 ( .A(N271), .B(n207), .C(N157), .D(n206), .E(N326), .F(
        n205), .Z(n599) );
  HS65_GS_AOI222X2 U704 ( .A(N508), .B(n215), .C(N192), .D(n214), .E(N170), 
        .F(n213), .Z(n597) );
  HS65_GS_AOI222X2 U705 ( .A(N337), .B(n191), .C(N235), .D(n212), .E(N538), 
        .F(n211), .Z(n596) );
  HS65_GS_IVX2 U706 ( .A(n672), .Z(n569) );
  HS65_GS_NAND4ABX3 U707 ( .A(n522), .B(n600), .C(n558), .D(n601), .Z(n672) );
  HS65_GS_NOR4ABX2 U708 ( .A(n517), .B(n194), .C(n208), .D(n209), .Z(n601) );
  HS65_GS_NAND2X2 U709 ( .A(n221), .B(n227), .Z(n600) );
  HS65_GS_NAND2X2 U710 ( .A(start), .B(n603), .Z(n221) );
  HS65_GS_NAND2AX4 U711 ( .A(n236), .B(n235), .Z(n522) );
  HS65_GS_NAND2X2 U712 ( .A(n219), .B(n198), .Z(n236) );
  HS65_GS_AO22X4 U713 ( .A(besthop[10]), .B(n16), .C(n565), .D(i[10]), .Z(n261) );
  HS65_GS_AO22X4 U714 ( .A(besthop[11]), .B(n17), .C(n565), .D(i[11]), .Z(n260) );
  HS65_GS_AO22X4 U715 ( .A(besthop[12]), .B(n17), .C(n565), .D(i[12]), .Z(n259) );
  HS65_GS_AO22X4 U716 ( .A(besthop[13]), .B(n17), .C(n565), .D(i[13]), .Z(n258) );
  HS65_GS_AO22X4 U717 ( .A(besthop[14]), .B(n17), .C(n565), .D(i[14]), .Z(n257) );
  HS65_GS_AO22X4 U718 ( .A(besthop[15]), .B(n17), .C(n565), .D(i[15]), .Z(n256) );
  HS65_GS_NOR2X2 U719 ( .A(n604), .B(n35), .Z(n534) );
  HS65_GS_NAND2X2 U720 ( .A(n605), .B(n567), .Z(n255) );
  HS65_GS_MUXI21X2 U721 ( .D0(N442), .D1(bestvalue[1]), .S0(n16), .Z(n605) );
  HS65_GS_NAND2X2 U722 ( .A(n606), .B(n567), .Z(n254) );
  HS65_GS_MUXI21X2 U723 ( .D0(N443), .D1(bestvalue[2]), .S0(n16), .Z(n606) );
  HS65_GS_NAND2X2 U724 ( .A(n607), .B(n567), .Z(n253) );
  HS65_GS_MUXI21X2 U725 ( .D0(N444), .D1(bestvalue[3]), .S0(n16), .Z(n607) );
  HS65_GS_NAND2X2 U726 ( .A(n608), .B(n567), .Z(n252) );
  HS65_GS_MUXI21X2 U727 ( .D0(N445), .D1(bestvalue[4]), .S0(n16), .Z(n608) );
  HS65_GS_NAND2X2 U728 ( .A(n609), .B(n567), .Z(n251) );
  HS65_GS_MUXI21X2 U729 ( .D0(N446), .D1(bestvalue[5]), .S0(n16), .Z(n609) );
  HS65_GS_NAND2X2 U730 ( .A(n610), .B(n567), .Z(n250) );
  HS65_GS_MUXI21X2 U731 ( .D0(N447), .D1(bestvalue[6]), .S0(n16), .Z(n610) );
  HS65_GS_NAND2X2 U732 ( .A(n611), .B(n567), .Z(n249) );
  HS65_GS_MUXI21X2 U733 ( .D0(N448), .D1(bestvalue[7]), .S0(n16), .Z(n611) );
  HS65_GS_NAND2X2 U734 ( .A(n612), .B(n567), .Z(n248) );
  HS65_GS_MUXI21X2 U735 ( .D0(N449), .D1(bestvalue[8]), .S0(n16), .Z(n612) );
  HS65_GS_NAND2X2 U736 ( .A(n613), .B(n567), .Z(n247) );
  HS65_GS_MUXI21X2 U737 ( .D0(N450), .D1(bestvalue[9]), .S0(n16), .Z(n613) );
  HS65_GS_NAND2X2 U738 ( .A(n614), .B(n567), .Z(n246) );
  HS65_GS_MUXI21X2 U739 ( .D0(N451), .D1(bestvalue[10]), .S0(n16), .Z(n614) );
  HS65_GS_NAND2X2 U740 ( .A(n615), .B(n567), .Z(n245) );
  HS65_GS_MUXI21X2 U741 ( .D0(N452), .D1(bestvalue[11]), .S0(n16), .Z(n615) );
  HS65_GS_NAND2X2 U742 ( .A(n616), .B(n567), .Z(n244) );
  HS65_GS_MUXI21X2 U743 ( .D0(N453), .D1(bestvalue[12]), .S0(n16), .Z(n616) );
  HS65_GS_NAND2X2 U744 ( .A(n617), .B(n567), .Z(n243) );
  HS65_GS_MUXI21X2 U745 ( .D0(N454), .D1(bestvalue[13]), .S0(n16), .Z(n617) );
  HS65_GS_NAND2X2 U746 ( .A(n618), .B(n567), .Z(n242) );
  HS65_GS_MUXI21X2 U747 ( .D0(N455), .D1(bestvalue[14]), .S0(n16), .Z(n618) );
  HS65_GS_NAND2X2 U748 ( .A(n619), .B(n567), .Z(n241) );
  HS65_GS_MUXI21X2 U749 ( .D0(N456), .D1(bestvalue[15]), .S0(n16), .Z(n619) );
  HS65_GS_IVX2 U750 ( .A(n604), .Z(n536) );
  HS65_GS_IVX2 U751 ( .A(n229), .Z(n225) );
  HS65_GS_NOR4ABX2 U752 ( .A(n222), .B(n620), .C(n621), .D(n622), .Z(n229) );
  HS65_GS_OAI12X2 U753 ( .A(n235), .B(n200), .C(n195), .Z(n622) );
  HS65_GS_NOR3AX2 U754 ( .A(n547), .B(n226), .C(n208), .Z(n195) );
  HS65_GS_NAND2X2 U755 ( .A(n623), .B(n624), .Z(n547) );
  HS65_GS_NOR3X1 U756 ( .A(n625), .B(n626), .C(n230), .Z(n620) );
  HS65_GS_NAND3AX3 U757 ( .A(n214), .B(n239), .C(n219), .Z(n625) );
  HS65_GS_NAND2X2 U758 ( .A(n627), .B(n628), .Z(n239) );
  HS65_GS_IVX2 U759 ( .A(n602), .Z(n222) );
  HS65_GS_NAND2X2 U760 ( .A(n629), .B(n604), .Z(n602) );
  HS65_GS_NAND4ABX3 U761 ( .A(n230), .B(n226), .C(n194), .D(n561), .Z(n165) );
  HS65_GS_AOI12X2 U762 ( .A(n630), .B(en), .C(n35), .Z(n524) );
  HS65_GS_IVX2 U763 ( .A(n238), .Z(n630) );
  HS65_GS_AND2X4 U764 ( .A(n631), .B(n624), .Z(n226) );
  HS65_GS_IVX2 U765 ( .A(n234), .Z(n230) );
  HS65_GS_NAND2X2 U766 ( .A(n623), .B(n627), .Z(n234) );
  HS65_GS_OR2X4 U767 ( .A(n554), .B(n559), .Z(n164) );
  HS65_GS_NAND4ABX3 U768 ( .A(n632), .B(n633), .C(n634), .D(n635), .Z(n131) );
  HS65_GS_AOI222X2 U769 ( .A(N321), .B(n205), .C(N230), .D(n206), .E(N266), 
        .F(n207), .Z(n635) );
  HS65_GS_AOI212X2 U770 ( .A(N420), .B(n208), .C(N474), .D(n209), .E(n621), 
        .Z(n634) );
  HS65_GS_AO222X4 U771 ( .A(N230), .B(n211), .C(N230), .D(n212), .E(N266), .F(
        n191), .Z(n633) );
  HS65_GS_AO222X4 U772 ( .A(N165), .B(n213), .C(N266), .D(n214), .E(N503), .F(
        n215), .Z(n632) );
  HS65_GS_NAND4ABX3 U773 ( .A(n636), .B(n637), .C(n638), .D(n639), .Z(n111) );
  HS65_GS_AOI222X2 U774 ( .A(N325), .B(n205), .C(N156), .D(n206), .E(N270), 
        .F(n207), .Z(n639) );
  HS65_GS_AOI212X2 U775 ( .A(N424), .B(n208), .C(N478), .D(n209), .E(n621), 
        .Z(n638) );
  HS65_GS_OR2X4 U776 ( .A(n210), .B(n514), .Z(n621) );
  HS65_GS_IVX2 U777 ( .A(n227), .Z(n514) );
  HS65_GS_NAND3X2 U778 ( .A(n640), .B(n641), .C(n623), .Z(n227) );
  HS65_GS_AO222X4 U779 ( .A(N537), .B(n211), .C(N234), .D(n212), .E(N336), .F(
        n191), .Z(n637) );
  HS65_GS_AO222X4 U780 ( .A(N169), .B(n213), .C(N191), .D(n214), .E(N507), .F(
        n215), .Z(n636) );
  HS65_GS_NAND4ABX3 U781 ( .A(n642), .B(n643), .C(n644), .D(n645), .Z(n101) );
  HS65_GS_AOI222X2 U782 ( .A(N327), .B(n205), .C(N158), .D(n206), .E(N272), 
        .F(n207), .Z(n645) );
  HS65_GS_AOI212X2 U783 ( .A(N426), .B(n208), .C(N480), .D(n209), .E(n210), 
        .Z(n644) );
  HS65_GS_NAND4ABX3 U784 ( .A(n528), .B(n603), .C(n194), .D(n517), .Z(n210) );
  HS65_GS_NAND2X2 U785 ( .A(n648), .B(n649), .Z(n517) );
  HS65_GS_NAND2X2 U786 ( .A(n631), .B(n627), .Z(n194) );
  HS65_GS_NOR3AX2 U787 ( .A(n649), .B(state[0]), .C(state[2]), .Z(n603) );
  HS65_GS_NAND2X2 U788 ( .A(n37), .B(n238), .Z(n528) );
  HS65_GS_NAND2X2 U789 ( .A(n624), .B(n628), .Z(n238) );
  HS65_GS_NAND3X2 U790 ( .A(n640), .B(n641), .C(n628), .Z(n513) );
  HS65_GS_NAND3X2 U791 ( .A(n640), .B(n641), .C(n631), .Z(n548) );
  HS65_GS_AO222X4 U792 ( .A(N539), .B(n211), .C(N236), .D(n212), .E(N338), .F(
        n191), .Z(n643) );
  HS65_GS_NAND2X2 U793 ( .A(n648), .B(n631), .Z(n604) );
  HS65_GS_NOR2X2 U794 ( .A(n650), .B(state[1]), .Z(n631) );
  HS65_GS_OAI12X2 U795 ( .A(data_in[15]), .B(n18), .C(n651), .Z(n647) );
  HS65_GS_OAI12X2 U796 ( .A(mybest[15]), .B(n34), .C(n652), .Z(n651) );
  HS65_GS_OAI12X2 U797 ( .A(data_in[14]), .B(n653), .C(n654), .Z(n652) );
  HS65_GS_OAI212X3 U798 ( .A(mybest[13]), .B(n32), .C(mybest[14]), .D(n33), 
        .E(n655), .Z(n654) );
  HS65_GS_AO212X4 U799 ( .A(n32), .B(mybest[13]), .C(n31), .D(mybest[12]), .E(
        n656), .Z(n655) );
  HS65_GS_OA212X4 U800 ( .A(mybest[11]), .B(n30), .C(mybest[12]), .D(n31), .E(
        n657), .Z(n656) );
  HS65_GS_AO212X4 U801 ( .A(n30), .B(mybest[11]), .C(n29), .D(mybest[10]), .E(
        n658), .Z(n657) );
  HS65_GS_OA212X4 U802 ( .A(mybest[10]), .B(n29), .C(mybest[9]), .D(n28), .E(
        n659), .Z(n658) );
  HS65_GS_AO212X4 U803 ( .A(n28), .B(mybest[9]), .C(n27), .D(mybest[8]), .E(
        n660), .Z(n659) );
  HS65_GS_OA212X4 U804 ( .A(mybest[7]), .B(n26), .C(mybest[8]), .D(n27), .E(
        n661), .Z(n660) );
  HS65_GS_AO212X4 U805 ( .A(n26), .B(mybest[7]), .C(n25), .D(mybest[6]), .E(
        n662), .Z(n661) );
  HS65_GS_OA212X4 U806 ( .A(mybest[5]), .B(n24), .C(mybest[6]), .D(n25), .E(
        n663), .Z(n662) );
  HS65_GS_AO212X4 U807 ( .A(n24), .B(mybest[5]), .C(n23), .D(mybest[4]), .E(
        n664), .Z(n663) );
  HS65_GS_OA212X4 U808 ( .A(mybest[3]), .B(n22), .C(mybest[4]), .D(n23), .E(
        n665), .Z(n664) );
  HS65_GS_AO212X4 U809 ( .A(n22), .B(mybest[3]), .C(n21), .D(mybest[2]), .E(
        n666), .Z(n665) );
  HS65_GS_OA212X4 U810 ( .A(mybest[1]), .B(n20), .C(mybest[2]), .D(n21), .E(
        n667), .Z(n666) );
  HS65_GS_AO112X4 U811 ( .A(mybest[1]), .B(n20), .C(mybest[0]), .D(n19), .Z(
        n667) );
  HS65_GS_IVX2 U812 ( .A(mybest[14]), .Z(n653) );
  HS65_GS_NAND2X2 U813 ( .A(n649), .B(n624), .Z(n629) );
  HS65_GS_NOR2X2 U814 ( .A(n640), .B(n641), .Z(n624) );
  HS65_GS_AO222X4 U815 ( .A(N171), .B(n213), .C(N193), .D(n214), .E(N509), .F(
        n215), .Z(n642) );
  HS65_GS_NOR3AX2 U816 ( .A(n199), .B(n196), .C(n626), .Z(n523) );
  HS65_GS_AND2X4 U817 ( .A(N511), .B(n231), .Z(n626) );
  HS65_GS_IVX2 U818 ( .A(n198), .Z(n231) );
  HS65_GS_NAND2X2 U819 ( .A(n648), .B(n628), .Z(n198) );
  HS65_GS_NOR2AX3 U820 ( .A(state[1]), .B(n650), .Z(n628) );
  HS65_GS_IVX2 U821 ( .A(state[3]), .Z(n650) );
  HS65_GS_NOR2AX3 U822 ( .A(N130), .B(n235), .Z(n196) );
  HS65_GS_NAND2X2 U823 ( .A(n623), .B(n648), .Z(n235) );
  HS65_GS_NOR2X2 U824 ( .A(n640), .B(state[2]), .Z(n648) );
  HS65_GS_IVX2 U825 ( .A(state[0]), .Z(n640) );
  HS65_GS_NOR2AX3 U826 ( .A(state[1]), .B(state[3]), .Z(n623) );
  HS65_GS_NAND2X2 U827 ( .A(n646), .B(n510), .Z(n199) );
  HS65_GS_IVX2 U828 ( .A(n219), .Z(n510) );
  HS65_GS_NAND2X2 U829 ( .A(n649), .B(n627), .Z(n219) );
  HS65_GS_NOR2X2 U830 ( .A(n641), .B(state[0]), .Z(n627) );
  HS65_GS_IVX2 U831 ( .A(state[2]), .Z(n641) );
  HS65_GS_NOR2X2 U832 ( .A(state[3]), .B(state[1]), .Z(n649) );
  HS65_GS_NOR4ABX2 U833 ( .A(n30), .B(n31), .C(n668), .D(n669), .Z(n646) );
  HS65_GS_NAND4ABX3 U834 ( .A(data_in[9]), .B(data_in[15]), .C(n32), .D(n33), 
        .Z(n669) );
  HS65_GS_CBI4I1X3 U835 ( .A(n670), .B(n26), .C(n27), .D(n29), .Z(n668) );
  HS65_GS_OAI13X1 U836 ( .A(data_in[3]), .B(data_in[5]), .C(data_in[4]), .D(
        data_in[6]), .Z(n670) );
  HS65_GS_IVX2 U837 ( .A(N160), .Z(n200) );
  HS65_GS_NAND2X2 U838 ( .A(n541), .B(n549), .Z(N419) );
  HS65_GS_IVX2 U839 ( .A(k[1]), .Z(n541) );
  HS65_GS_NAND2X2 U840 ( .A(n544), .B(n549), .Z(N413) );
  HS65_GS_IVX2 U841 ( .A(N406), .Z(n549) );
  HS65_GS_IVX2 U842 ( .A(k[3]), .Z(n544) );
  HS65_GS_NOR2AX3 U843 ( .A(k[0]), .B(N406), .Z(N418) );
  HS65_GS_NOR2AX3 U844 ( .A(k[2]), .B(N406), .Z(N1276) );
  HS65_GS_NOR2AX3 U845 ( .A(k[4]), .B(N406), .Z(N1272) );
  HS65_GS_NOR2AX3 U846 ( .A(k[5]), .B(N406), .Z(N1270) );
  HS65_GS_NOR2AX3 U847 ( .A(k[6]), .B(N406), .Z(N1268) );
  HS65_GS_NOR2AX3 U848 ( .A(k[7]), .B(N406), .Z(N1266) );
  HS65_GS_NOR2AX3 U849 ( .A(k[8]), .B(N406), .Z(N1264) );
  HS65_GS_NOR2AX3 U850 ( .A(k[9]), .B(N406), .Z(N1262) );
endmodule


module randomGenerator ( clock, nrst, rng_out, rng_out_4bit, en_rng, done );
  output [15:0] rng_out;
  output [15:0] rng_out_4bit;
  input clock, nrst, en_rng;
  output done;
  wire   N41, N42, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n33,
         n34, n35, n36, n37, n38, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n14, n15, n16, n17,
         n18, \rng_out[0] , n20, \rng_out[2] , \rng_out[3] , n31, n59;
  wire   [2:0] state;
  assign rng_out_4bit[4] = 1'b0;
  assign rng_out_4bit[5] = 1'b0;
  assign rng_out_4bit[6] = 1'b0;
  assign rng_out_4bit[7] = 1'b0;
  assign rng_out_4bit[8] = 1'b0;
  assign rng_out_4bit[9] = 1'b0;
  assign rng_out_4bit[10] = 1'b0;
  assign rng_out_4bit[11] = 1'b0;
  assign rng_out_4bit[12] = 1'b0;
  assign rng_out_4bit[13] = 1'b0;
  assign rng_out_4bit[14] = 1'b0;
  assign rng_out_4bit[15] = 1'b0;
  assign rng_out_4bit[1] = rng_out[1];
  assign rng_out_4bit[0] = \rng_out[0] ;
  assign rng_out[0] = \rng_out[0] ;
  assign rng_out_4bit[2] = \rng_out[2] ;
  assign rng_out[2] = \rng_out[2] ;
  assign rng_out_4bit[3] = \rng_out[3] ;
  assign rng_out[3] = \rng_out[3] ;

  HS65_GS_DFPQX9 \state_reg[0]  ( .D(N41), .CP(clock), .Q(state[0]) );
  HS65_GS_DFPQX9 \state_reg[1]  ( .D(N42), .CP(clock), .Q(state[1]) );
  HS65_GS_DFPQX9 done_buf_reg ( .D(n58), .CP(clock), .Q(done) );
  HS65_GS_DFPQX9 \rng_out_buf_reg[1]  ( .D(n56), .CP(clock), .Q(rng_out[1]) );
  HS65_GS_DFPQX9 \rng_out_buf_reg[12]  ( .D(n45), .CP(clock), .Q(rng_out[12])
         );
  HS65_GS_DFPQX9 \rng_out_buf_reg[15]  ( .D(n42), .CP(clock), .Q(rng_out[15])
         );
  HS65_GS_DFPQNX9 \rng_out_buf_reg[4]  ( .D(n53), .CP(clock), .QN(n10) );
  HS65_GS_DFPQNX9 \rng_out_buf_reg[5]  ( .D(n52), .CP(clock), .QN(n9) );
  HS65_GS_DFPQNX9 \rng_out_buf_reg[6]  ( .D(n51), .CP(clock), .QN(n8) );
  HS65_GS_DFPQNX9 \rng_out_buf_reg[7]  ( .D(n50), .CP(clock), .QN(n7) );
  HS65_GS_DFPQNX9 \rng_out_buf_reg[8]  ( .D(n49), .CP(clock), .QN(n6) );
  HS65_GS_DFPQNX9 \rng_out_buf_reg[9]  ( .D(n48), .CP(clock), .QN(n5) );
  HS65_GS_DFPQNX9 \rng_out_buf_reg[10]  ( .D(n47), .CP(clock), .QN(n4) );
  HS65_GS_DFPQNX9 \rng_out_buf_reg[11]  ( .D(n46), .CP(clock), .QN(n3) );
  HS65_GS_DFPQNX9 \rng_out_buf_reg[13]  ( .D(n44), .CP(clock), .QN(n2) );
  HS65_GS_DFPQNX9 \rng_out_buf_reg[0]  ( .D(n57), .CP(clock), .QN(n13) );
  HS65_GS_DFPQNX9 \rng_out_buf_reg[2]  ( .D(n55), .CP(clock), .QN(n12) );
  HS65_GS_DFPQNX9 \rng_out_buf_reg[14]  ( .D(n43), .CP(clock), .QN(n1) );
  HS65_GS_DFPQNX9 \rng_out_buf_reg[3]  ( .D(n54), .CP(clock), .QN(n11) );
  HS65_GS_IVX9 U3 ( .A(n1), .Z(rng_out[14]) );
  HS65_GS_IVX9 U4 ( .A(n10), .Z(rng_out[4]) );
  HS65_GS_IVX9 U5 ( .A(n9), .Z(rng_out[5]) );
  HS65_GS_IVX9 U6 ( .A(n8), .Z(rng_out[6]) );
  HS65_GS_IVX9 U7 ( .A(n7), .Z(rng_out[7]) );
  HS65_GS_IVX9 U8 ( .A(n6), .Z(rng_out[8]) );
  HS65_GS_IVX9 U9 ( .A(n5), .Z(rng_out[9]) );
  HS65_GS_IVX9 U10 ( .A(n4), .Z(rng_out[10]) );
  HS65_GS_IVX9 U11 ( .A(n3), .Z(rng_out[11]) );
  HS65_GS_IVX9 U12 ( .A(n2), .Z(rng_out[13]) );
  HS65_GS_IVX9 U13 ( .A(n15), .Z(n16) );
  HS65_GS_BFX9 U14 ( .A(nrst), .Z(n15) );
  HS65_GS_BFX9 U15 ( .A(n34), .Z(n14) );
  HS65_GS_NAND2X7 U16 ( .A(n15), .B(n33), .Z(n34) );
  HS65_GS_OAI21X6 U17 ( .A(state[1]), .B(n18), .C(n15), .Z(n33) );
  HS65_GS_OAI22X6 U18 ( .A(n1), .B(n33), .C(n14), .D(n2), .Z(n43) );
  HS65_GS_OAI22X6 U19 ( .A(n33), .B(n2), .C(n14), .D(n31), .Z(n44) );
  HS65_GS_OAI22X6 U20 ( .A(n33), .B(n3), .C(n14), .D(n4), .Z(n46) );
  HS65_GS_OAI22X6 U21 ( .A(n33), .B(n4), .C(n14), .D(n5), .Z(n47) );
  HS65_GS_OAI22X6 U22 ( .A(n33), .B(n5), .C(n14), .D(n6), .Z(n48) );
  HS65_GS_OAI22X6 U23 ( .A(n33), .B(n6), .C(n14), .D(n7), .Z(n49) );
  HS65_GS_OAI22X6 U24 ( .A(n33), .B(n7), .C(n14), .D(n8), .Z(n50) );
  HS65_GS_OAI22X6 U25 ( .A(n33), .B(n8), .C(n14), .D(n9), .Z(n51) );
  HS65_GS_OAI22X6 U26 ( .A(n33), .B(n9), .C(n14), .D(n10), .Z(n52) );
  HS65_GS_OAI22X6 U27 ( .A(n33), .B(n10), .C(n14), .D(n11), .Z(n53) );
  HS65_GS_OAI22X6 U28 ( .A(n33), .B(n11), .C(n14), .D(n12), .Z(n54) );
  HS65_GS_OAI22X6 U29 ( .A(n33), .B(n59), .C(n14), .D(n1), .Z(n42) );
  HS65_GS_IVX9 U30 ( .A(rng_out[15]), .Z(n59) );
  HS65_GS_OAI22X6 U31 ( .A(n33), .B(n31), .C(n14), .D(n3), .Z(n45) );
  HS65_GS_OAI22X6 U32 ( .A(n33), .B(n20), .C(n14), .D(n13), .Z(n56) );
  HS65_GS_IVX9 U33 ( .A(rng_out[1]), .Z(n20) );
  HS65_GS_NOR3X4 U34 ( .A(n16), .B(state[1]), .C(n18), .Z(N42) );
  HS65_GS_NOR4ABX2 U35 ( .A(en_rng), .B(n18), .C(n16), .D(state[1]), .Z(N41)
         );
  HS65_GS_OAI21X3 U36 ( .A(n33), .B(n12), .C(n35), .Z(n55) );
  HS65_GS_OAI21X3 U37 ( .A(rng_out[1]), .B(n16), .C(n33), .Z(n35) );
  HS65_GS_OAI21X3 U38 ( .A(n33), .B(n13), .C(n36), .Z(n57) );
  HS65_GS_OAI21X3 U39 ( .A(n37), .B(n16), .C(n33), .Z(n36) );
  HS65_GSS_XOR3X2 U40 ( .A(n38), .B(n1), .C(rng_out[12]), .Z(n37) );
  HS65_GSS_XNOR2X6 U41 ( .A(n11), .B(rng_out[15]), .Z(n38) );
  HS65_GS_AO32X4 U42 ( .A(n15), .B(n40), .C(state[1]), .D(done), .E(n17), .Z(
        n58) );
  HS65_GS_IVX9 U43 ( .A(n40), .Z(n17) );
  HS65_GS_OAI21X3 U44 ( .A(n41), .B(state[0]), .C(n15), .Z(n40) );
  HS65_GS_NOR2X6 U45 ( .A(en_rng), .B(state[1]), .Z(n41) );
  HS65_GS_IVX9 U46 ( .A(state[0]), .Z(n18) );
  HS65_GS_IVX9 U47 ( .A(rng_out[12]), .Z(n31) );
  HS65_GS_IVX9 U48 ( .A(n11), .Z(\rng_out[3] ) );
  HS65_GS_IVX9 U49 ( .A(n13), .Z(\rng_out[0] ) );
  HS65_GS_IVX9 U50 ( .A(n12), .Z(\rng_out[2] ) );
endmodule


module rngAddress_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17;
  wire   [16:0] carry;

  HS65_GS_FA1X4 U2_1 ( .A0(A[1]), .B0(n16), .CI(n1), .CO(carry[2]), .S0(
        DIFF[1]) );
  HS65_GS_FA1X4 U2_14 ( .A0(A[14]), .B0(n3), .CI(carry[14]), .CO(carry[15]), 
        .S0(DIFF[14]) );
  HS65_GS_FA1X4 U2_13 ( .A0(A[13]), .B0(n4), .CI(carry[13]), .CO(carry[14]), 
        .S0(DIFF[13]) );
  HS65_GS_FA1X4 U2_12 ( .A0(A[12]), .B0(n5), .CI(carry[12]), .CO(carry[13]), 
        .S0(DIFF[12]) );
  HS65_GS_FA1X4 U2_11 ( .A0(A[11]), .B0(n6), .CI(carry[11]), .CO(carry[12]), 
        .S0(DIFF[11]) );
  HS65_GS_FA1X4 U2_10 ( .A0(A[10]), .B0(n7), .CI(carry[10]), .CO(carry[11]), 
        .S0(DIFF[10]) );
  HS65_GS_FA1X4 U2_9 ( .A0(A[9]), .B0(n8), .CI(carry[9]), .CO(carry[10]), .S0(
        DIFF[9]) );
  HS65_GS_FA1X4 U2_7 ( .A0(A[7]), .B0(n10), .CI(carry[7]), .CO(carry[8]), .S0(
        DIFF[7]) );
  HS65_GS_FA1X4 U2_6 ( .A0(A[6]), .B0(n11), .CI(carry[6]), .CO(carry[7]), .S0(
        DIFF[6]) );
  HS65_GS_FA1X4 U2_3 ( .A0(A[3]), .B0(n14), .CI(carry[3]), .CO(carry[4]), .S0(
        DIFF[3]) );
  HS65_GS_FA1X4 U2_8 ( .A0(A[8]), .B0(n9), .CI(carry[8]), .CO(carry[9]), .S0(
        DIFF[8]) );
  HS65_GS_FA1X4 U2_5 ( .A0(A[5]), .B0(n12), .CI(carry[5]), .CO(carry[6]), .S0(
        DIFF[5]) );
  HS65_GS_FA1X4 U2_4 ( .A0(A[4]), .B0(n13), .CI(carry[4]), .CO(carry[5]), .S0(
        DIFF[4]) );
  HS65_GS_FA1X4 U2_2 ( .A0(A[2]), .B0(n15), .CI(carry[2]), .CO(carry[3]), .S0(
        DIFF[2]) );
  HS65_GSS_XOR3X2 U2_15 ( .A(A[15]), .B(n2), .C(carry[15]), .Z(DIFF[15]) );
  HS65_GS_OR2X9 U1 ( .A(n17), .B(A[0]), .Z(n1) );
  HS65_GSS_XNOR2X6 U2 ( .A(A[0]), .B(n17), .Z(DIFF[0]) );
  HS65_GS_IVX9 U3 ( .A(B[15]), .Z(n2) );
  HS65_GS_IVX9 U4 ( .A(B[0]), .Z(n17) );
  HS65_GS_IVX9 U5 ( .A(B[2]), .Z(n15) );
  HS65_GS_IVX9 U6 ( .A(B[4]), .Z(n13) );
  HS65_GS_IVX9 U7 ( .A(B[5]), .Z(n12) );
  HS65_GS_IVX9 U8 ( .A(B[8]), .Z(n9) );
  HS65_GS_IVX9 U9 ( .A(B[3]), .Z(n14) );
  HS65_GS_IVX9 U10 ( .A(B[6]), .Z(n11) );
  HS65_GS_IVX9 U11 ( .A(B[7]), .Z(n10) );
  HS65_GS_IVX9 U12 ( .A(B[9]), .Z(n8) );
  HS65_GS_IVX9 U13 ( .A(B[10]), .Z(n7) );
  HS65_GS_IVX9 U14 ( .A(B[11]), .Z(n6) );
  HS65_GS_IVX9 U15 ( .A(B[12]), .Z(n5) );
  HS65_GS_IVX9 U16 ( .A(B[13]), .Z(n4) );
  HS65_GS_IVX9 U17 ( .A(B[14]), .Z(n3) );
  HS65_GS_IVX9 U18 ( .A(B[1]), .Z(n16) );
endmodule


module rngAddress ( clock, nrst, start_rng_address, betterNeighborCount, which, 
        rng_address, done_rng_address );
  input [15:0] betterNeighborCount;
  input [15:0] which;
  output [15:0] rng_address;
  input clock, nrst, start_rng_address;
  output done_rng_address;
  wire   N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34,
         N35, N36, N37, n12, n13, n16, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n14, n15, n17, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65;
  wire   [2:0] state;

  HS65_GS_DFPQX9 \rng_address_buf_reg[0]  ( .D(n38), .CP(clock), .Q(
        rng_address[0]) );
  HS65_GS_DFPQX9 \rng_address_buf_reg[15]  ( .D(n37), .CP(clock), .Q(
        rng_address[15]) );
  HS65_GS_DFPQX9 \state_reg[0]  ( .D(n35), .CP(clock), .Q(state[0]) );
  HS65_GS_DFPQX9 \state_reg[1]  ( .D(n36), .CP(clock), .Q(state[1]) );
  HS65_GS_DFPQX9 \rng_address_buf_reg[14]  ( .D(n21), .CP(clock), .Q(
        rng_address[14]) );
  HS65_GS_DFPQX9 \rng_address_buf_reg[13]  ( .D(n22), .CP(clock), .Q(
        rng_address[13]) );
  HS65_GS_DFPQX9 \rng_address_buf_reg[12]  ( .D(n23), .CP(clock), .Q(
        rng_address[12]) );
  HS65_GS_DFPQX9 \rng_address_buf_reg[11]  ( .D(n24), .CP(clock), .Q(
        rng_address[11]) );
  HS65_GS_DFPQX9 \rng_address_buf_reg[10]  ( .D(n25), .CP(clock), .Q(
        rng_address[10]) );
  HS65_GS_DFPQX9 \rng_address_buf_reg[9]  ( .D(n26), .CP(clock), .Q(
        rng_address[9]) );
  HS65_GS_DFPQX9 \rng_address_buf_reg[8]  ( .D(n27), .CP(clock), .Q(
        rng_address[8]) );
  HS65_GS_DFPQX9 \rng_address_buf_reg[7]  ( .D(n28), .CP(clock), .Q(
        rng_address[7]) );
  HS65_GS_DFPQX9 \rng_address_buf_reg[6]  ( .D(n29), .CP(clock), .Q(
        rng_address[6]) );
  HS65_GS_DFPQX9 \rng_address_buf_reg[5]  ( .D(n30), .CP(clock), .Q(
        rng_address[5]) );
  HS65_GS_DFPQX9 \rng_address_buf_reg[4]  ( .D(n31), .CP(clock), .Q(
        rng_address[4]) );
  HS65_GS_DFPQX9 \rng_address_buf_reg[3]  ( .D(n32), .CP(clock), .Q(
        rng_address[3]) );
  HS65_GS_DFPQX9 \rng_address_buf_reg[2]  ( .D(n33), .CP(clock), .Q(
        rng_address[2]) );
  HS65_GS_DFPQX9 \rng_address_buf_reg[1]  ( .D(n34), .CP(clock), .Q(
        rng_address[1]) );
  rngAddress_DW01_sub_0 sub_29 ( .A(rng_address), .B(betterNeighborCount), 
        .CI(1'b0), .DIFF({N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, 
        N27, N26, N25, N24, N23, N22}) );
  HS65_GS_DFPHQX4 done_rng_address_buf_reg ( .D(nrst), .E(n3), .CP(clock), .Q(
        done_rng_address) );
  HS65_GS_IVX9 U3 ( .A(n4), .Z(n5) );
  HS65_GS_NOR2AX3 U4 ( .A(n18), .B(n63), .Z(n12) );
  HS65_GS_NOR2X6 U5 ( .A(n5), .B(n2), .Z(n18) );
  HS65_GS_BFX9 U6 ( .A(nrst), .Z(n4) );
  HS65_GS_AND2X4 U8 ( .A(n18), .B(n19), .Z(n13) );
  HS65_GS_AND2X4 U9 ( .A(n16), .B(n4), .Z(n2) );
  HS65_GS_NOR2X6 U10 ( .A(n5), .B(n16), .Z(n35) );
  HS65_GS_IVX9 U11 ( .A(n20), .Z(n63) );
  HS65_GS_CBI4I6X5 U12 ( .A(N21), .B(n63), .C(n65), .D(n5), .Z(n36) );
  HS65_GS_IVX9 U13 ( .A(state[1]), .Z(n65) );
  HS65_GS_OA22X9 U14 ( .A(state[1]), .B(n5), .C(n64), .D(n5), .Z(n3) );
  HS65_GS_AO222X4 U15 ( .A(N24), .B(n12), .C(which[2]), .D(n13), .E(
        rng_address[2]), .F(n2), .Z(n33) );
  HS65_GS_AO222X4 U16 ( .A(N22), .B(n12), .C(which[0]), .D(n13), .E(
        rng_address[0]), .F(n2), .Z(n38) );
  HS65_GS_AO222X4 U17 ( .A(N26), .B(n12), .C(which[4]), .D(n13), .E(
        rng_address[4]), .F(n2), .Z(n31) );
  HS65_GS_AO222X4 U18 ( .A(N27), .B(n12), .C(which[5]), .D(n13), .E(
        rng_address[5]), .F(n2), .Z(n30) );
  HS65_GS_AO222X4 U19 ( .A(N30), .B(n12), .C(which[8]), .D(n13), .E(
        rng_address[8]), .F(n2), .Z(n27) );
  HS65_GS_AO222X4 U20 ( .A(N25), .B(n12), .C(which[3]), .D(n13), .E(
        rng_address[3]), .F(n2), .Z(n32) );
  HS65_GS_AO222X4 U21 ( .A(N28), .B(n12), .C(which[6]), .D(n13), .E(
        rng_address[6]), .F(n2), .Z(n29) );
  HS65_GS_AO222X4 U22 ( .A(N29), .B(n12), .C(which[7]), .D(n13), .E(
        rng_address[7]), .F(n2), .Z(n28) );
  HS65_GS_AO222X4 U23 ( .A(N23), .B(n12), .C(which[1]), .D(n13), .E(
        rng_address[1]), .F(n2), .Z(n34) );
  HS65_GS_AO222X4 U24 ( .A(N31), .B(n12), .C(which[9]), .D(n13), .E(
        rng_address[9]), .F(n2), .Z(n26) );
  HS65_GS_AO222X4 U25 ( .A(N37), .B(n12), .C(which[15]), .D(n13), .E(
        rng_address[15]), .F(n2), .Z(n37) );
  HS65_GS_AO222X4 U26 ( .A(N32), .B(n12), .C(which[10]), .D(n13), .E(
        rng_address[10]), .F(n2), .Z(n25) );
  HS65_GS_AO222X4 U27 ( .A(N33), .B(n12), .C(which[11]), .D(n13), .E(
        rng_address[11]), .F(n2), .Z(n24) );
  HS65_GS_AO222X4 U28 ( .A(N34), .B(n12), .C(which[12]), .D(n13), .E(
        rng_address[12]), .F(n2), .Z(n23) );
  HS65_GS_AO222X4 U29 ( .A(N35), .B(n12), .C(which[13]), .D(n13), .E(
        rng_address[13]), .F(n2), .Z(n22) );
  HS65_GS_AO222X4 U30 ( .A(N36), .B(n12), .C(which[14]), .D(n13), .E(
        rng_address[14]), .F(n2), .Z(n21) );
  HS65_GS_IVX9 U31 ( .A(rng_address[15]), .Z(n60) );
  HS65_GS_IVX9 U32 ( .A(betterNeighborCount[15]), .Z(n62) );
  HS65_GS_AOI22X6 U33 ( .A(N21), .B(n20), .C(start_rng_address), .D(n19), .Z(
        n16) );
  HS65_GS_IVX9 U34 ( .A(betterNeighborCount[1]), .Z(n61) );
  HS65_GS_IVX9 U35 ( .A(rng_address[8]), .Z(n53) );
  HS65_GS_IVX9 U36 ( .A(rng_address[2]), .Z(n47) );
  HS65_GS_IVX9 U37 ( .A(rng_address[1]), .Z(n46) );
  HS65_GS_IVX9 U38 ( .A(rng_address[14]), .Z(n59) );
  HS65_GS_IVX9 U39 ( .A(rng_address[5]), .Z(n50) );
  HS65_GS_IVX9 U40 ( .A(rng_address[11]), .Z(n56) );
  HS65_GS_IVX9 U41 ( .A(rng_address[4]), .Z(n49) );
  HS65_GS_IVX9 U42 ( .A(rng_address[6]), .Z(n51) );
  HS65_GS_IVX9 U43 ( .A(rng_address[3]), .Z(n48) );
  HS65_GS_IVX9 U44 ( .A(rng_address[7]), .Z(n52) );
  HS65_GS_NOR2X6 U45 ( .A(n64), .B(state[1]), .Z(n20) );
  HS65_GS_NOR2X6 U46 ( .A(state[0]), .B(state[1]), .Z(n19) );
  HS65_GS_IVX9 U47 ( .A(state[0]), .Z(n64) );
  HS65_GS_IVX9 U48 ( .A(rng_address[9]), .Z(n54) );
  HS65_GS_IVX9 U49 ( .A(rng_address[10]), .Z(n55) );
  HS65_GS_IVX9 U50 ( .A(rng_address[12]), .Z(n57) );
  HS65_GS_IVX9 U51 ( .A(rng_address[13]), .Z(n58) );
  HS65_GS_AOI12X2 U52 ( .A(rng_address[1]), .B(n61), .C(rng_address[0]), .Z(n6) );
  HS65_GS_AO222X4 U53 ( .A(betterNeighborCount[1]), .B(n46), .C(n6), .D(
        betterNeighborCount[0]), .E(betterNeighborCount[2]), .F(n47), .Z(n7)
         );
  HS65_GS_OA212X4 U54 ( .A(betterNeighborCount[2]), .B(n47), .C(
        betterNeighborCount[3]), .D(n48), .E(n7), .Z(n8) );
  HS65_GS_AO212X4 U55 ( .A(n48), .B(betterNeighborCount[3]), .C(n49), .D(
        betterNeighborCount[4]), .E(n8), .Z(n9) );
  HS65_GS_OA212X4 U56 ( .A(betterNeighborCount[4]), .B(n49), .C(
        betterNeighborCount[5]), .D(n50), .E(n9), .Z(n10) );
  HS65_GS_AO212X4 U57 ( .A(n50), .B(betterNeighborCount[5]), .C(n51), .D(
        betterNeighborCount[6]), .E(n10), .Z(n11) );
  HS65_GS_OA212X4 U58 ( .A(betterNeighborCount[6]), .B(n51), .C(
        betterNeighborCount[7]), .D(n52), .E(n11), .Z(n14) );
  HS65_GS_AO212X4 U59 ( .A(n52), .B(betterNeighborCount[7]), .C(n53), .D(
        betterNeighborCount[8]), .E(n14), .Z(n15) );
  HS65_GS_OA212X4 U60 ( .A(betterNeighborCount[8]), .B(n53), .C(
        betterNeighborCount[9]), .D(n54), .E(n15), .Z(n17) );
  HS65_GS_AO212X4 U61 ( .A(n55), .B(betterNeighborCount[10]), .C(n54), .D(
        betterNeighborCount[9]), .E(n17), .Z(n39) );
  HS65_GS_OA212X4 U62 ( .A(betterNeighborCount[10]), .B(n55), .C(
        betterNeighborCount[11]), .D(n56), .E(n39), .Z(n40) );
  HS65_GS_AO212X4 U63 ( .A(n56), .B(betterNeighborCount[11]), .C(n57), .D(
        betterNeighborCount[12]), .E(n40), .Z(n41) );
  HS65_GS_OA212X4 U64 ( .A(betterNeighborCount[12]), .B(n57), .C(
        betterNeighborCount[13]), .D(n58), .E(n41), .Z(n42) );
  HS65_GS_AO212X4 U65 ( .A(n58), .B(betterNeighborCount[13]), .C(n59), .D(
        betterNeighborCount[14]), .E(n42), .Z(n43) );
  HS65_GS_OAI12X2 U66 ( .A(betterNeighborCount[14]), .B(n59), .C(n43), .Z(n44)
         );
  HS65_GS_OAI12X2 U67 ( .A(rng_address[15]), .B(n62), .C(n44), .Z(n45) );
  HS65_GS_OAI12X2 U68 ( .A(betterNeighborCount[15]), .B(n60), .C(n45), .Z(N21)
         );
endmodule


module winnerPolicy_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17;
  wire   [16:0] carry;

  HS65_GS_FA1X4 U2_1 ( .A0(A[1]), .B0(n16), .CI(n1), .CO(carry[2]), .S0(
        DIFF[1]) );
  HS65_GS_FA1X4 U2_13 ( .A0(A[13]), .B0(n4), .CI(carry[13]), .CO(carry[14]), 
        .S0(DIFF[13]) );
  HS65_GS_FA1X4 U2_12 ( .A0(A[12]), .B0(n5), .CI(carry[12]), .CO(carry[13]), 
        .S0(DIFF[12]) );
  HS65_GS_FA1X4 U2_10 ( .A0(A[10]), .B0(n7), .CI(carry[10]), .CO(carry[11]), 
        .S0(DIFF[10]) );
  HS65_GS_FA1X4 U2_8 ( .A0(A[8]), .B0(n9), .CI(carry[8]), .CO(carry[9]), .S0(
        DIFF[8]) );
  HS65_GS_FA1X4 U2_6 ( .A0(A[6]), .B0(n11), .CI(carry[6]), .CO(carry[7]), .S0(
        DIFF[6]) );
  HS65_GS_FA1X4 U2_4 ( .A0(A[4]), .B0(n13), .CI(carry[4]), .CO(carry[5]), .S0(
        DIFF[4]) );
  HS65_GS_FA1X4 U2_11 ( .A0(A[11]), .B0(n6), .CI(carry[11]), .CO(carry[12]), 
        .S0(DIFF[11]) );
  HS65_GS_FA1X4 U2_9 ( .A0(A[9]), .B0(n8), .CI(carry[9]), .CO(carry[10]), .S0(
        DIFF[9]) );
  HS65_GS_FA1X4 U2_7 ( .A0(A[7]), .B0(n10), .CI(carry[7]), .CO(carry[8]), .S0(
        DIFF[7]) );
  HS65_GS_FA1X4 U2_5 ( .A0(A[5]), .B0(n12), .CI(carry[5]), .CO(carry[6]), .S0(
        DIFF[5]) );
  HS65_GS_FA1X4 U2_2 ( .A0(A[2]), .B0(n15), .CI(carry[2]), .CO(carry[3]), .S0(
        DIFF[2]) );
  HS65_GS_FA1X4 U2_14 ( .A0(A[14]), .B0(n3), .CI(carry[14]), .CO(carry[15]), 
        .S0(DIFF[14]) );
  HS65_GS_FA1X4 U2_3 ( .A0(A[3]), .B0(n14), .CI(carry[3]), .CO(carry[4]), .S0(
        DIFF[3]) );
  HS65_GSS_XOR3X2 U2_15 ( .A(A[15]), .B(n2), .C(carry[15]), .Z(DIFF[15]) );
  HS65_GS_OR2X9 U1 ( .A(n17), .B(A[0]), .Z(n1) );
  HS65_GS_IVX9 U2 ( .A(B[15]), .Z(n2) );
  HS65_GSS_XNOR2X6 U3 ( .A(A[0]), .B(n17), .Z(DIFF[0]) );
  HS65_GS_IVX9 U4 ( .A(B[3]), .Z(n14) );
  HS65_GS_IVX9 U5 ( .A(B[14]), .Z(n3) );
  HS65_GS_IVX9 U6 ( .A(B[2]), .Z(n15) );
  HS65_GS_IVX9 U7 ( .A(B[5]), .Z(n12) );
  HS65_GS_IVX9 U8 ( .A(B[7]), .Z(n10) );
  HS65_GS_IVX9 U9 ( .A(B[9]), .Z(n8) );
  HS65_GS_IVX9 U10 ( .A(B[11]), .Z(n6) );
  HS65_GS_IVX9 U11 ( .A(B[4]), .Z(n13) );
  HS65_GS_IVX9 U12 ( .A(B[6]), .Z(n11) );
  HS65_GS_IVX9 U13 ( .A(B[8]), .Z(n9) );
  HS65_GS_IVX9 U14 ( .A(B[10]), .Z(n7) );
  HS65_GS_IVX9 U15 ( .A(B[12]), .Z(n5) );
  HS65_GS_IVX9 U16 ( .A(B[13]), .Z(n4) );
  HS65_GS_IVX9 U17 ( .A(B[1]), .Z(n16) );
  HS65_GS_IVX9 U18 ( .A(B[0]), .Z(n17) );
endmodule


module winnerPolicy_DW02_mult_1 ( A, B, TC, PRODUCT );
  input [15:0] A;
  input [15:0] B;
  output [31:0] PRODUCT;
  input TC;
  wire   \ab[15][5] , \ab[14][5] , \ab[13][5] , \ab[12][5] , \ab[11][5] ,
         \ab[10][5] , \CARRYB[15][5] , \CARRYB[14][5] , \CARRYB[13][5] ,
         \CARRYB[12][5] , \CARRYB[11][5] , n2, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18;
  assign \ab[15][5]  = A[15];
  assign \ab[14][5]  = A[14];
  assign \ab[13][5]  = A[13];
  assign \ab[12][5]  = A[12];
  assign \ab[11][5]  = A[11];
  assign \ab[10][5]  = A[10];

  HS65_GS_FA1X4 S2_11_5 ( .A0(\ab[11][5] ), .B0(n2), .CI(A[1]), .CO(
        \CARRYB[11][5] ), .S0(PRODUCT[16]) );
  HS65_GS_FA1X4 S2_14_5 ( .A0(\ab[14][5] ), .B0(\CARRYB[13][5] ), .CI(A[4]), 
        .CO(\CARRYB[14][5] ), .S0(PRODUCT[19]) );
  HS65_GS_FA1X4 S2_13_5 ( .A0(\ab[13][5] ), .B0(\CARRYB[12][5] ), .CI(A[3]), 
        .CO(\CARRYB[13][5] ), .S0(PRODUCT[18]) );
  HS65_GS_FA1X4 S2_12_5 ( .A0(\ab[12][5] ), .B0(\CARRYB[11][5] ), .CI(A[2]), 
        .CO(\CARRYB[12][5] ), .S0(PRODUCT[17]) );
  HS65_GS_FA1X4 S4_5 ( .A0(\ab[15][5] ), .B0(\CARRYB[14][5] ), .CI(A[5]), .CO(
        \CARRYB[15][5] ), .S0(PRODUCT[20]) );
  HS65_GS_AND2X4 U2 ( .A(\ab[10][5] ), .B(A[0]), .Z(n2) );
  HS65_GS_AND2X4 U3 ( .A(n13), .B(\ab[15][5] ), .Z(PRODUCT[31]) );
  HS65_GS_NAND2X7 U4 ( .A(\ab[13][5] ), .B(n11), .Z(n12) );
  HS65_GS_NAND2X7 U5 ( .A(\ab[11][5] ), .B(n9), .Z(n10) );
  HS65_GS_NAND2X7 U6 ( .A(A[9]), .B(n7), .Z(n8) );
  HS65_GS_IVX9 U7 ( .A(n6), .Z(n18) );
  HS65_GS_NOR2X6 U8 ( .A(n17), .B(n12), .Z(n13) );
  HS65_GS_NOR2X6 U9 ( .A(n15), .B(n8), .Z(n9) );
  HS65_GS_NOR2X6 U10 ( .A(n16), .B(n10), .Z(n11) );
  HS65_GS_NOR2X6 U11 ( .A(n14), .B(n18), .Z(n7) );
  HS65_GSS_XOR2X6 U12 ( .A(\ab[15][5] ), .B(n13), .Z(PRODUCT[30]) );
  HS65_GSS_XOR2X3 U13 ( .A(A[0]), .B(\ab[10][5] ), .Z(PRODUCT[15]) );
  HS65_GSS_XOR2X6 U14 ( .A(A[6]), .B(\CARRYB[15][5] ), .Z(PRODUCT[21]) );
  HS65_GS_AND2X4 U15 ( .A(\CARRYB[15][5] ), .B(A[6]), .Z(n4) );
  HS65_GS_IVX9 U16 ( .A(\ab[10][5] ), .Z(n15) );
  HS65_GS_IVX9 U17 ( .A(\ab[14][5] ), .Z(n17) );
  HS65_GS_IVX9 U18 ( .A(\ab[12][5] ), .Z(n16) );
  HS65_GS_IVX9 U19 ( .A(A[8]), .Z(n14) );
  HS65_GS_AND2X4 U20 ( .A(n4), .B(A[7]), .Z(n6) );
  HS65_GS_NOR2X2 U21 ( .A(n4), .B(A[7]), .Z(n5) );
  HS65_GS_NOR2X2 U22 ( .A(n6), .B(n5), .Z(PRODUCT[22]) );
  HS65_GSS_XOR2X3 U23 ( .A(n14), .B(n18), .Z(PRODUCT[23]) );
  HS65_GSS_XOR2X3 U24 ( .A(n7), .B(A[9]), .Z(PRODUCT[24]) );
  HS65_GSS_XOR2X3 U25 ( .A(n15), .B(n8), .Z(PRODUCT[25]) );
  HS65_GSS_XOR2X3 U26 ( .A(n9), .B(\ab[11][5] ), .Z(PRODUCT[26]) );
  HS65_GSS_XOR2X3 U27 ( .A(n16), .B(n10), .Z(PRODUCT[27]) );
  HS65_GSS_XOR2X3 U28 ( .A(n11), .B(\ab[13][5] ), .Z(PRODUCT[28]) );
  HS65_GSS_XOR2X3 U29 ( .A(n17), .B(n12), .Z(PRODUCT[29]) );
endmodule


module winnerPolicy_DW01_add_2 ( A, B, CI, SUM, CO );
  input [29:0] A;
  input [29:0] B;
  output [29:0] SUM;
  input CI;
  output CO;
  wire   \A[14] , \A[13] , \A[12] , \A[11] , \A[10] , \A[9] , \A[8] , \A[7] ,
         \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52;
  assign SUM[15] = A[15];
  assign SUM[14] = \A[14] ;
  assign \A[14]  = A[14];
  assign SUM[13] = \A[13] ;
  assign \A[13]  = A[13];
  assign SUM[12] = \A[12] ;
  assign \A[12]  = A[12];
  assign SUM[11] = \A[11] ;
  assign \A[11]  = A[11];
  assign SUM[10] = \A[10] ;
  assign \A[10]  = A[10];
  assign SUM[9] = \A[9] ;
  assign \A[9]  = A[9];
  assign SUM[8] = \A[8] ;
  assign \A[8]  = A[8];
  assign SUM[7] = \A[7] ;
  assign \A[7]  = A[7];
  assign SUM[6] = \A[6] ;
  assign \A[6]  = A[6];
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  HS65_GS_IVX9 U2 ( .A(n17), .Z(n2) );
  HS65_GS_IVX9 U3 ( .A(n25), .Z(n3) );
  HS65_GS_IVX9 U4 ( .A(n46), .Z(n7) );
  HS65_GS_IVX9 U5 ( .A(n33), .Z(n4) );
  HS65_GS_IVX9 U6 ( .A(n51), .Z(n8) );
  HS65_GS_IVX9 U7 ( .A(n38), .Z(n6) );
  HS65_GS_NOR2X6 U8 ( .A(n5), .B(n35), .Z(n31) );
  HS65_GS_IVX9 U9 ( .A(A[21]), .Z(n5) );
  HS65_GSS_XNOR2X6 U10 ( .A(B[29]), .B(n1), .Z(SUM[29]) );
  HS65_GS_AOI12X2 U11 ( .A(n9), .B(A[28]), .C(n10), .Z(n1) );
  HS65_GS_OA12X4 U12 ( .A(A[28]), .B(n9), .C(B[28]), .Z(n10) );
  HS65_GSS_XOR3X2 U13 ( .A(B[28]), .B(A[28]), .C(n9), .Z(SUM[28]) );
  HS65_GS_OAI12X2 U14 ( .A(n11), .B(n12), .C(n13), .Z(n9) );
  HS65_GSS_XOR2X3 U15 ( .A(n14), .B(n12), .Z(SUM[27]) );
  HS65_GS_AOI12X2 U16 ( .A(n2), .B(n15), .C(n16), .Z(n12) );
  HS65_GS_NAND2AX4 U17 ( .A(n11), .B(n13), .Z(n14) );
  HS65_GS_NAND2X2 U18 ( .A(B[27]), .B(A[27]), .Z(n13) );
  HS65_GS_NOR2X2 U19 ( .A(B[27]), .B(A[27]), .Z(n11) );
  HS65_GSS_XOR2X3 U20 ( .A(n15), .B(n18), .Z(SUM[26]) );
  HS65_GS_NOR2X2 U21 ( .A(n16), .B(n17), .Z(n18) );
  HS65_GS_NOR2X2 U22 ( .A(B[26]), .B(A[26]), .Z(n17) );
  HS65_GS_AND2X4 U23 ( .A(B[26]), .B(A[26]), .Z(n16) );
  HS65_GS_OAI12X2 U24 ( .A(n19), .B(n20), .C(n21), .Z(n15) );
  HS65_GSS_XOR2X3 U25 ( .A(n22), .B(n20), .Z(SUM[25]) );
  HS65_GS_AOI12X2 U26 ( .A(n3), .B(n23), .C(n24), .Z(n20) );
  HS65_GS_NAND2AX4 U27 ( .A(n19), .B(n21), .Z(n22) );
  HS65_GS_NAND2X2 U28 ( .A(B[25]), .B(A[25]), .Z(n21) );
  HS65_GS_NOR2X2 U29 ( .A(B[25]), .B(A[25]), .Z(n19) );
  HS65_GSS_XOR2X3 U30 ( .A(n23), .B(n26), .Z(SUM[24]) );
  HS65_GS_NOR2X2 U31 ( .A(n24), .B(n25), .Z(n26) );
  HS65_GS_NOR2X2 U32 ( .A(B[24]), .B(A[24]), .Z(n25) );
  HS65_GS_AND2X4 U33 ( .A(B[24]), .B(A[24]), .Z(n24) );
  HS65_GS_OAI12X2 U34 ( .A(n27), .B(n28), .C(n29), .Z(n23) );
  HS65_GSS_XOR2X3 U35 ( .A(n30), .B(n28), .Z(SUM[23]) );
  HS65_GS_AOI12X2 U36 ( .A(n4), .B(n31), .C(n32), .Z(n28) );
  HS65_GS_NAND2AX4 U37 ( .A(n27), .B(n29), .Z(n30) );
  HS65_GS_NAND2X2 U38 ( .A(B[23]), .B(A[23]), .Z(n29) );
  HS65_GS_NOR2X2 U39 ( .A(B[23]), .B(A[23]), .Z(n27) );
  HS65_GSS_XOR2X3 U40 ( .A(n31), .B(n34), .Z(SUM[22]) );
  HS65_GS_NOR2X2 U41 ( .A(n32), .B(n33), .Z(n34) );
  HS65_GS_NOR2X2 U42 ( .A(B[22]), .B(A[22]), .Z(n33) );
  HS65_GS_AND2X4 U43 ( .A(B[22]), .B(A[22]), .Z(n32) );
  HS65_GSS_XOR2X3 U44 ( .A(n5), .B(n35), .Z(SUM[21]) );
  HS65_GS_AOI12X2 U45 ( .A(n6), .B(n36), .C(n37), .Z(n35) );
  HS65_GSS_XOR2X3 U46 ( .A(n36), .B(n39), .Z(SUM[20]) );
  HS65_GS_NOR2X2 U47 ( .A(n37), .B(n38), .Z(n39) );
  HS65_GS_NOR2X2 U48 ( .A(B[20]), .B(A[20]), .Z(n38) );
  HS65_GS_AND2X4 U49 ( .A(B[20]), .B(A[20]), .Z(n37) );
  HS65_GS_OAI12X2 U50 ( .A(n40), .B(n41), .C(n42), .Z(n36) );
  HS65_GSS_XOR2X3 U51 ( .A(n43), .B(n41), .Z(SUM[19]) );
  HS65_GS_AOI12X2 U52 ( .A(n7), .B(n44), .C(n45), .Z(n41) );
  HS65_GS_NAND2AX4 U53 ( .A(n40), .B(n42), .Z(n43) );
  HS65_GS_NAND2X2 U54 ( .A(B[19]), .B(A[19]), .Z(n42) );
  HS65_GS_NOR2X2 U55 ( .A(B[19]), .B(A[19]), .Z(n40) );
  HS65_GSS_XOR2X3 U56 ( .A(n44), .B(n47), .Z(SUM[18]) );
  HS65_GS_NOR2X2 U57 ( .A(n45), .B(n46), .Z(n47) );
  HS65_GS_NOR2X2 U58 ( .A(B[18]), .B(A[18]), .Z(n46) );
  HS65_GS_AND2X4 U59 ( .A(B[18]), .B(A[18]), .Z(n45) );
  HS65_GS_OAI12X2 U60 ( .A(n48), .B(n8), .C(n49), .Z(n44) );
  HS65_GSS_XOR2X3 U61 ( .A(n50), .B(n8), .Z(SUM[17]) );
  HS65_GS_NAND2AX4 U62 ( .A(n48), .B(n49), .Z(n50) );
  HS65_GS_NAND2X2 U63 ( .A(B[17]), .B(A[17]), .Z(n49) );
  HS65_GS_NOR2X2 U64 ( .A(B[17]), .B(A[17]), .Z(n48) );
  HS65_GS_NOR2X2 U65 ( .A(n51), .B(n52), .Z(SUM[16]) );
  HS65_GS_NOR2X2 U66 ( .A(B[16]), .B(A[16]), .Z(n52) );
  HS65_GS_AND2X4 U67 ( .A(B[16]), .B(A[16]), .Z(n51) );
endmodule


module winnerPolicy_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [15:0] A;
  input [15:0] B;
  output [31:0] PRODUCT;
  input TC;
  wire   \ab[15][9] , \ab[14][9] , \ab[13][9] , \ab[12][9] , \ab[11][9] ,
         \ab[10][9] , \ab[9][9] , \ab[8][9] , \ab[7][9] , \ab[6][9] ,
         \ab[5][9] , \ab[4][9] , \ab[3][9] , \ab[2][9] , \ab[1][9] ,
         \ab[0][9] , \CARRYB[15][14] , \CARRYB[15][13] , \CARRYB[15][12] ,
         \CARRYB[15][11] , \CARRYB[15][10] , \CARRYB[15][9] , \CARRYB[15][8] ,
         \CARRYB[15][7] , \CARRYB[15][5] , \CARRYB[15][4] , \CARRYB[15][3] ,
         \CARRYB[15][2] , \CARRYB[15][1] , \CARRYB[14][14] , \CARRYB[14][13] ,
         \CARRYB[14][12] , \CARRYB[14][11] , \CARRYB[14][10] , \CARRYB[14][9] ,
         \CARRYB[14][8] , \CARRYB[14][7] , \CARRYB[14][5] , \CARRYB[14][4] ,
         \CARRYB[14][3] , \CARRYB[14][2] , \CARRYB[14][1] , \CARRYB[13][14] ,
         \CARRYB[13][13] , \CARRYB[13][12] , \CARRYB[13][11] ,
         \CARRYB[13][10] , \CARRYB[13][9] , \CARRYB[13][8] , \CARRYB[13][7] ,
         \CARRYB[13][5] , \CARRYB[13][4] , \CARRYB[13][3] , \CARRYB[13][2] ,
         \CARRYB[13][1] , \CARRYB[12][14] , \CARRYB[12][13] , \CARRYB[12][12] ,
         \CARRYB[12][11] , \CARRYB[12][10] , \CARRYB[12][9] , \CARRYB[12][8] ,
         \CARRYB[12][7] , \CARRYB[12][5] , \CARRYB[12][4] , \CARRYB[12][3] ,
         \CARRYB[12][2] , \CARRYB[12][1] , \CARRYB[11][14] , \CARRYB[11][13] ,
         \CARRYB[11][12] , \CARRYB[11][11] , \CARRYB[11][10] , \CARRYB[11][9] ,
         \CARRYB[11][8] , \CARRYB[11][7] , \CARRYB[11][5] , \CARRYB[11][4] ,
         \CARRYB[11][3] , \CARRYB[11][2] , \CARRYB[11][1] , \CARRYB[10][14] ,
         \CARRYB[10][13] , \CARRYB[10][12] , \CARRYB[10][11] ,
         \CARRYB[10][10] , \CARRYB[10][9] , \CARRYB[10][8] , \CARRYB[10][7] ,
         \CARRYB[10][5] , \CARRYB[10][4] , \CARRYB[10][3] , \CARRYB[10][2] ,
         \CARRYB[10][1] , \CARRYB[9][14] , \CARRYB[9][13] , \CARRYB[9][12] ,
         \CARRYB[9][11] , \CARRYB[9][10] , \CARRYB[9][9] , \CARRYB[9][8] ,
         \CARRYB[9][7] , \CARRYB[9][5] , \CARRYB[9][4] , \CARRYB[9][3] ,
         \CARRYB[9][2] , \CARRYB[9][1] , \CARRYB[8][14] , \CARRYB[8][13] ,
         \CARRYB[8][12] , \CARRYB[8][11] , \CARRYB[8][10] , \CARRYB[8][9] ,
         \CARRYB[8][8] , \CARRYB[8][7] , \CARRYB[8][5] , \CARRYB[8][4] ,
         \CARRYB[8][3] , \CARRYB[8][2] , \CARRYB[8][1] , \CARRYB[7][14] ,
         \CARRYB[7][13] , \CARRYB[7][12] , \CARRYB[7][11] , \CARRYB[7][10] ,
         \CARRYB[7][9] , \CARRYB[7][8] , \CARRYB[7][7] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[6][14] , \CARRYB[6][13] , \CARRYB[6][12] , \CARRYB[6][11] ,
         \CARRYB[6][10] , \CARRYB[6][9] , \CARRYB[6][8] , \CARRYB[6][7] ,
         \CARRYB[6][5] , \CARRYB[6][4] , \CARRYB[6][3] , \CARRYB[6][2] ,
         \CARRYB[6][1] , \CARRYB[5][14] , \CARRYB[5][13] , \CARRYB[5][12] ,
         \CARRYB[5][11] , \CARRYB[5][10] , \CARRYB[5][9] , \CARRYB[5][8] ,
         \CARRYB[5][7] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[4][14] , \CARRYB[4][13] ,
         \CARRYB[4][12] , \CARRYB[4][11] , \CARRYB[4][10] , \CARRYB[4][9] ,
         \CARRYB[4][8] , \CARRYB[4][7] , \CARRYB[4][5] , \CARRYB[4][4] ,
         \CARRYB[4][3] , \CARRYB[4][2] , \CARRYB[4][1] , \CARRYB[3][14] ,
         \CARRYB[3][13] , \CARRYB[3][12] , \CARRYB[3][11] , \CARRYB[3][10] ,
         \CARRYB[3][9] , \CARRYB[3][8] , \CARRYB[3][7] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[2][14] , \CARRYB[2][13] , \CARRYB[2][12] , \CARRYB[2][11] ,
         \CARRYB[2][10] , \CARRYB[2][9] , \CARRYB[2][8] , \CARRYB[2][7] ,
         \CARRYB[2][4] , \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] ,
         \CARRYB[1][14] , \CARRYB[1][13] , \CARRYB[1][12] , \CARRYB[1][11] ,
         \CARRYB[1][10] , \CARRYB[1][9] , \CARRYB[1][8] , \CARRYB[1][7] ,
         \CARRYB[1][4] , \CARRYB[1][3] , \CARRYB[1][2] , \CARRYB[1][1] ,
         \SUMB[15][14] , \SUMB[15][13] , \SUMB[15][12] , \SUMB[15][11] ,
         \SUMB[15][10] , \SUMB[15][9] , \SUMB[15][8] , \SUMB[15][7] ,
         \SUMB[15][5] , \SUMB[15][4] , \SUMB[15][3] , \SUMB[15][2] ,
         \SUMB[15][1] , \SUMB[14][14] , \SUMB[14][13] , \SUMB[14][12] ,
         \SUMB[14][11] , \SUMB[14][10] , \SUMB[14][9] , \SUMB[14][8] ,
         \SUMB[14][7] , \SUMB[14][5] , \SUMB[14][4] , \SUMB[14][3] ,
         \SUMB[14][2] , \SUMB[14][1] , \SUMB[13][14] , \SUMB[13][13] ,
         \SUMB[13][12] , \SUMB[13][11] , \SUMB[13][10] , \SUMB[13][9] ,
         \SUMB[13][8] , \SUMB[13][7] , \SUMB[13][5] , \SUMB[13][4] ,
         \SUMB[13][3] , \SUMB[13][2] , \SUMB[13][1] , \SUMB[12][14] ,
         \SUMB[12][13] , \SUMB[12][12] , \SUMB[12][11] , \SUMB[12][10] ,
         \SUMB[12][9] , \SUMB[12][8] , \SUMB[12][7] , \SUMB[12][5] ,
         \SUMB[12][4] , \SUMB[12][3] , \SUMB[12][2] , \SUMB[12][1] ,
         \SUMB[11][14] , \SUMB[11][13] , \SUMB[11][12] , \SUMB[11][11] ,
         \SUMB[11][10] , \SUMB[11][9] , \SUMB[11][8] , \SUMB[11][7] ,
         \SUMB[11][5] , \SUMB[11][4] , \SUMB[11][3] , \SUMB[11][2] ,
         \SUMB[11][1] , \SUMB[10][14] , \SUMB[10][13] , \SUMB[10][12] ,
         \SUMB[10][11] , \SUMB[10][10] , \SUMB[10][9] , \SUMB[10][8] ,
         \SUMB[10][7] , \SUMB[10][5] , \SUMB[10][4] , \SUMB[10][3] ,
         \SUMB[10][2] , \SUMB[10][1] , \SUMB[9][14] , \SUMB[9][13] ,
         \SUMB[9][12] , \SUMB[9][11] , \SUMB[9][10] , \SUMB[9][9] ,
         \SUMB[9][8] , \SUMB[9][7] , \SUMB[9][5] , \SUMB[9][4] , \SUMB[9][3] ,
         \SUMB[9][2] , \SUMB[9][1] , \SUMB[8][14] , \SUMB[8][13] ,
         \SUMB[8][12] , \SUMB[8][11] , \SUMB[8][10] , \SUMB[8][9] ,
         \SUMB[8][8] , \SUMB[8][7] , \SUMB[8][5] , \SUMB[8][4] , \SUMB[8][3] ,
         \SUMB[8][2] , \SUMB[8][1] , \SUMB[7][14] , \SUMB[7][13] ,
         \SUMB[7][12] , \SUMB[7][11] , \SUMB[7][10] , \SUMB[7][9] ,
         \SUMB[7][8] , \SUMB[7][7] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] ,
         \SUMB[7][2] , \SUMB[7][1] , \SUMB[6][14] , \SUMB[6][13] ,
         \SUMB[6][12] , \SUMB[6][11] , \SUMB[6][10] , \SUMB[6][9] ,
         \SUMB[6][8] , \SUMB[6][7] , \SUMB[6][5] , \SUMB[6][4] , \SUMB[6][3] ,
         \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][14] , \SUMB[5][13] ,
         \SUMB[5][12] , \SUMB[5][11] , \SUMB[5][10] , \SUMB[5][9] ,
         \SUMB[5][8] , \SUMB[5][7] , \SUMB[5][5] , \SUMB[5][4] , \SUMB[5][3] ,
         \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][14] , \SUMB[4][13] ,
         \SUMB[4][12] , \SUMB[4][11] , \SUMB[4][10] , \SUMB[4][9] ,
         \SUMB[4][8] , \SUMB[4][7] , \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] ,
         \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][14] , \SUMB[3][13] ,
         \SUMB[3][12] , \SUMB[3][11] , \SUMB[3][10] , \SUMB[3][9] ,
         \SUMB[3][8] , \SUMB[3][7] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] ,
         \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][14] , \SUMB[2][13] ,
         \SUMB[2][12] , \SUMB[2][11] , \SUMB[2][10] , \SUMB[2][9] ,
         \SUMB[2][8] , \SUMB[2][7] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][14] , \SUMB[1][13] ,
         \SUMB[1][12] , \SUMB[1][11] , \SUMB[1][10] , \SUMB[1][9] ,
         \SUMB[1][8] , \SUMB[1][7] , \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] ,
         \SUMB[1][1] , \A1[28] , \A1[27] , \A1[26] , \A1[25] , \A1[24] ,
         \A1[23] , \A1[22] , \A1[21] , \A1[19] , \A1[18] , \A1[17] , \A1[16] ,
         \A1[15] , n2, n3, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35;
  assign \ab[15][9]  = A[15];
  assign \ab[14][9]  = A[14];
  assign \ab[13][9]  = A[13];
  assign \ab[12][9]  = A[12];
  assign \ab[11][9]  = A[11];
  assign \ab[10][9]  = A[10];
  assign \ab[9][9]  = A[9];
  assign \ab[8][9]  = A[8];
  assign \ab[7][9]  = A[7];
  assign \ab[6][9]  = A[6];
  assign \ab[5][9]  = A[5];
  assign \ab[4][9]  = A[4];
  assign \ab[3][9]  = A[3];
  assign \ab[2][9]  = A[2];
  assign \ab[1][9]  = A[1];
  assign \ab[0][9]  = A[0];

  winnerPolicy_DW01_add_2 FS_1 ( .A({1'b0, \A1[28] , \A1[27] , \A1[26] , 
        \A1[25] , \A1[24] , \A1[23] , \A1[22] , \A1[21] , \SUMB[15][7] , 
        \A1[19] , \A1[18] , \A1[17] , \A1[16] , \A1[15] , \SUMB[15][1] , 
        \SUMB[14][1] , \SUMB[13][1] , \SUMB[12][1] , \SUMB[11][1] , 
        \SUMB[10][1] , \SUMB[9][1] , \SUMB[8][1] , \SUMB[7][1] , \SUMB[6][1] , 
        \SUMB[5][1] , \SUMB[4][1] , \SUMB[3][1] , \SUMB[2][1] , \SUMB[1][1] }), 
        .B({n3, n17, n14, n15, n13, n12, n8, n11, 1'b0, n16, n7, n10, n6, n9, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[31:2]) );
  HS65_GS_FA1X4 S3_12_14 ( .A0(\ab[12][9] ), .B0(\CARRYB[11][14] ), .CI(n33), 
        .CO(\CARRYB[12][14] ), .S0(\SUMB[12][14] ) );
  HS65_GS_FA1X4 S3_14_14 ( .A0(\ab[14][9] ), .B0(\CARRYB[13][14] ), .CI(n34), 
        .CO(\CARRYB[14][14] ), .S0(\SUMB[14][14] ) );
  HS65_GS_FA1X4 S2_14_13 ( .A0(\ab[14][9] ), .B0(\CARRYB[13][13] ), .CI(
        \SUMB[13][14] ), .CO(\CARRYB[14][13] ), .S0(\SUMB[14][13] ) );
  HS65_GS_FA1X4 S3_13_14 ( .A0(n34), .B0(\CARRYB[12][14] ), .CI(\ab[12][9] ), 
        .CO(\CARRYB[13][14] ), .S0(\SUMB[13][14] ) );
  HS65_GS_FA1X4 S3_11_14 ( .A0(n33), .B0(\CARRYB[10][14] ), .CI(\ab[10][9] ), 
        .CO(\CARRYB[11][14] ), .S0(\SUMB[11][14] ) );
  HS65_GS_FA1X4 S5_14 ( .A0(n35), .B0(\CARRYB[14][14] ), .CI(\ab[14][9] ), 
        .CO(\CARRYB[15][14] ), .S0(\SUMB[15][14] ) );
  HS65_GS_FA1X4 S3_8_14 ( .A0(\ab[8][9] ), .B0(\CARRYB[7][14] ), .CI(n31), 
        .CO(\CARRYB[8][14] ), .S0(\SUMB[8][14] ) );
  HS65_GS_FA1X4 S3_10_14 ( .A0(\ab[10][9] ), .B0(\CARRYB[9][14] ), .CI(n32), 
        .CO(\CARRYB[10][14] ), .S0(\SUMB[10][14] ) );
  HS65_GS_FA1X4 S2_2_4 ( .A0(\ab[2][9] ), .B0(\CARRYB[1][4] ), .CI(n5), .CO(
        \CARRYB[2][4] ), .S0(\SUMB[2][4] ) );
  HS65_GS_FA1X4 S2_10_12 ( .A0(\ab[10][9] ), .B0(\CARRYB[9][12] ), .CI(
        \SUMB[9][13] ), .CO(\CARRYB[10][12] ), .S0(\SUMB[10][12] ) );
  HS65_GS_FA1X4 S2_14_12 ( .A0(\ab[14][9] ), .B0(\CARRYB[13][12] ), .CI(
        \SUMB[13][13] ), .CO(\CARRYB[14][12] ), .S0(\SUMB[14][12] ) );
  HS65_GS_FA1X4 S2_12_12 ( .A0(\ab[12][9] ), .B0(\CARRYB[11][12] ), .CI(
        \SUMB[11][13] ), .CO(\CARRYB[12][12] ), .S0(\SUMB[12][12] ) );
  HS65_GS_FA1X4 S2_3_13 ( .A0(\ab[3][9] ), .B0(\CARRYB[2][13] ), .CI(
        \SUMB[2][14] ), .CO(\CARRYB[3][13] ), .S0(\SUMB[3][13] ) );
  HS65_GS_FA1X4 S2_4_12 ( .A0(\ab[4][9] ), .B0(\CARRYB[3][12] ), .CI(
        \SUMB[3][13] ), .CO(\CARRYB[4][12] ), .S0(\SUMB[4][12] ) );
  HS65_GS_FA1X4 S2_14_10 ( .A0(\ab[14][9] ), .B0(\CARRYB[13][10] ), .CI(
        \SUMB[13][11] ), .CO(\CARRYB[14][10] ), .S0(\SUMB[14][10] ) );
  HS65_GS_FA1X4 S2_14_8 ( .A0(\ab[14][9] ), .B0(\CARRYB[13][8] ), .CI(
        \SUMB[13][9] ), .CO(\CARRYB[14][8] ), .S0(\SUMB[14][8] ) );
  HS65_GS_FA1X4 S2_12_10 ( .A0(\ab[12][9] ), .B0(\CARRYB[11][10] ), .CI(
        \SUMB[11][11] ), .CO(\CARRYB[12][10] ), .S0(\SUMB[12][10] ) );
  HS65_GS_FA1X4 S2_12_8 ( .A0(\ab[12][9] ), .B0(\CARRYB[11][8] ), .CI(
        \SUMB[11][9] ), .CO(\CARRYB[12][8] ), .S0(\SUMB[12][8] ) );
  HS65_GS_FA1X4 S2_14_5 ( .A0(\ab[14][9] ), .B0(\CARRYB[13][5] ), .CI(
        \SUMB[12][7] ), .CO(\CARRYB[14][5] ), .S0(\SUMB[14][5] ) );
  HS65_GS_FA1X4 S2_12_7 ( .A0(\ab[12][9] ), .B0(\CARRYB[11][7] ), .CI(
        \SUMB[11][8] ), .CO(\CARRYB[12][7] ), .S0(\SUMB[12][7] ) );
  HS65_GS_FA1X4 S2_10_8 ( .A0(\ab[10][9] ), .B0(\CARRYB[9][8] ), .CI(
        \SUMB[9][9] ), .CO(\CARRYB[10][8] ), .S0(\SUMB[10][8] ) );
  HS65_GS_FA1X4 S2_10_7 ( .A0(\ab[10][9] ), .B0(\CARRYB[9][7] ), .CI(
        \SUMB[9][8] ), .CO(\CARRYB[10][7] ), .S0(\SUMB[10][7] ) );
  HS65_GS_FA1X4 S2_8_8 ( .A0(\ab[8][9] ), .B0(\CARRYB[7][8] ), .CI(
        \SUMB[7][9] ), .CO(\CARRYB[8][8] ), .S0(\SUMB[8][8] ) );
  HS65_GS_FA1X4 S2_6_10 ( .A0(\ab[6][9] ), .B0(\CARRYB[5][10] ), .CI(
        \SUMB[5][11] ), .CO(\CARRYB[6][10] ), .S0(\SUMB[6][10] ) );
  HS65_GS_FA1X4 S2_5_11 ( .A0(\ab[5][9] ), .B0(\CARRYB[4][11] ), .CI(
        \SUMB[4][12] ), .CO(\CARRYB[5][11] ), .S0(\SUMB[5][11] ) );
  HS65_GS_FA1X4 S2_12_9 ( .A0(\ab[12][9] ), .B0(\CARRYB[11][9] ), .CI(
        \SUMB[11][10] ), .CO(\CARRYB[12][9] ), .S0(\SUMB[12][9] ) );
  HS65_GS_FA1X4 S2_10_9 ( .A0(\ab[10][9] ), .B0(\CARRYB[9][9] ), .CI(
        \SUMB[9][10] ), .CO(\CARRYB[10][9] ), .S0(\SUMB[10][9] ) );
  HS65_GS_FA1X4 S2_8_9 ( .A0(\ab[8][9] ), .B0(\CARRYB[7][9] ), .CI(
        \SUMB[7][10] ), .CO(\CARRYB[8][9] ), .S0(\SUMB[8][9] ) );
  HS65_GS_FA1X4 S2_6_9 ( .A0(\ab[6][9] ), .B0(\CARRYB[5][9] ), .CI(
        \SUMB[5][10] ), .CO(\CARRYB[6][9] ), .S0(\SUMB[6][9] ) );
  HS65_GS_FA1X4 S2_10_10 ( .A0(\ab[10][9] ), .B0(\CARRYB[9][10] ), .CI(
        \SUMB[9][11] ), .CO(\CARRYB[10][10] ), .S0(\SUMB[10][10] ) );
  HS65_GS_FA1X4 S2_8_10 ( .A0(\ab[8][9] ), .B0(\CARRYB[7][10] ), .CI(
        \SUMB[7][11] ), .CO(\CARRYB[8][10] ), .S0(\SUMB[8][10] ) );
  HS65_GS_FA1X4 S2_5_10 ( .A0(\ab[5][9] ), .B0(\CARRYB[4][10] ), .CI(
        \SUMB[4][11] ), .CO(\CARRYB[5][10] ), .S0(\SUMB[5][10] ) );
  HS65_GS_FA1X4 S2_12_11 ( .A0(\ab[12][9] ), .B0(\CARRYB[11][11] ), .CI(
        \SUMB[11][12] ), .CO(\CARRYB[12][11] ), .S0(\SUMB[12][11] ) );
  HS65_GS_FA1X4 S2_8_11 ( .A0(\ab[8][9] ), .B0(\CARRYB[7][11] ), .CI(
        \SUMB[7][12] ), .CO(\CARRYB[8][11] ), .S0(\SUMB[8][11] ) );
  HS65_GS_FA1X4 S2_10_11 ( .A0(\ab[10][9] ), .B0(\CARRYB[9][11] ), .CI(
        \SUMB[9][12] ), .CO(\CARRYB[10][11] ), .S0(\SUMB[10][11] ) );
  HS65_GS_FA1X4 S2_6_11 ( .A0(\ab[6][9] ), .B0(\CARRYB[5][11] ), .CI(
        \SUMB[5][12] ), .CO(\CARRYB[6][11] ), .S0(\SUMB[6][11] ) );
  HS65_GS_FA1X4 S2_14_11 ( .A0(\ab[14][9] ), .B0(\CARRYB[13][11] ), .CI(
        \SUMB[13][12] ), .CO(\CARRYB[14][11] ), .S0(\SUMB[14][11] ) );
  HS65_GS_FA1X4 S2_4_11 ( .A0(\ab[4][9] ), .B0(\CARRYB[3][11] ), .CI(
        \SUMB[3][12] ), .CO(\CARRYB[4][11] ), .S0(\SUMB[4][11] ) );
  HS65_GS_FA1X4 S2_4_10 ( .A0(\ab[4][9] ), .B0(\CARRYB[3][10] ), .CI(
        \SUMB[3][11] ), .CO(\CARRYB[4][10] ), .S0(\SUMB[4][10] ) );
  HS65_GS_FA1X4 S2_8_12 ( .A0(\ab[8][9] ), .B0(\CARRYB[7][12] ), .CI(
        \SUMB[7][13] ), .CO(\CARRYB[8][12] ), .S0(\SUMB[8][12] ) );
  HS65_GS_FA1X4 S2_6_12 ( .A0(\ab[6][9] ), .B0(\CARRYB[5][12] ), .CI(
        \SUMB[5][13] ), .CO(\CARRYB[6][12] ), .S0(\SUMB[6][12] ) );
  HS65_GS_FA1X4 S2_5_12 ( .A0(\ab[5][9] ), .B0(\CARRYB[4][12] ), .CI(
        \SUMB[4][13] ), .CO(\CARRYB[5][12] ), .S0(\SUMB[5][12] ) );
  HS65_GS_FA1X4 S2_3_12 ( .A0(\ab[3][9] ), .B0(\CARRYB[2][12] ), .CI(
        \SUMB[2][13] ), .CO(\CARRYB[3][12] ), .S0(\SUMB[3][12] ) );
  HS65_GS_FA1X4 S2_3_11 ( .A0(\ab[3][9] ), .B0(\CARRYB[2][11] ), .CI(
        \SUMB[2][12] ), .CO(\CARRYB[3][11] ), .S0(\SUMB[3][11] ) );
  HS65_GS_FA1X4 S2_8_1 ( .A0(\ab[8][9] ), .B0(\CARRYB[7][1] ), .CI(
        \SUMB[7][2] ), .CO(\CARRYB[8][1] ), .S0(\SUMB[8][1] ) );
  HS65_GS_FA1X4 S2_8_7 ( .A0(\ab[8][9] ), .B0(\CARRYB[7][7] ), .CI(
        \SUMB[7][8] ), .CO(\CARRYB[8][7] ), .S0(\SUMB[8][7] ) );
  HS65_GS_FA1X4 S2_8_5 ( .A0(\ab[8][9] ), .B0(\CARRYB[7][5] ), .CI(
        \SUMB[6][7] ), .CO(\CARRYB[8][5] ), .S0(\SUMB[8][5] ) );
  HS65_GS_FA1X4 S2_8_4 ( .A0(\ab[8][9] ), .B0(\CARRYB[7][4] ), .CI(
        \SUMB[7][5] ), .CO(\CARRYB[8][4] ), .S0(\SUMB[8][4] ) );
  HS65_GS_FA1X4 S2_8_3 ( .A0(\ab[8][9] ), .B0(\CARRYB[7][3] ), .CI(
        \SUMB[7][4] ), .CO(\CARRYB[8][3] ), .S0(\SUMB[8][3] ) );
  HS65_GS_FA1X4 S2_8_2 ( .A0(\ab[8][9] ), .B0(\CARRYB[7][2] ), .CI(
        \SUMB[7][3] ), .CO(\CARRYB[8][2] ), .S0(\SUMB[8][2] ) );
  HS65_GS_FA1X4 S2_4_1 ( .A0(\ab[4][9] ), .B0(\CARRYB[3][1] ), .CI(
        \SUMB[3][2] ), .CO(\CARRYB[4][1] ), .S0(\SUMB[4][1] ) );
  HS65_GS_FA1X4 S2_4_9 ( .A0(\ab[4][9] ), .B0(\CARRYB[3][9] ), .CI(
        \SUMB[3][10] ), .CO(\CARRYB[4][9] ), .S0(\SUMB[4][9] ) );
  HS65_GS_FA1X4 S2_4_8 ( .A0(\ab[4][9] ), .B0(\CARRYB[3][8] ), .CI(
        \SUMB[3][9] ), .CO(\CARRYB[4][8] ), .S0(\SUMB[4][8] ) );
  HS65_GS_FA1X4 S2_4_7 ( .A0(\ab[4][9] ), .B0(\CARRYB[3][7] ), .CI(
        \SUMB[3][8] ), .CO(\CARRYB[4][7] ), .S0(\SUMB[4][7] ) );
  HS65_GS_FA1X4 S2_4_5 ( .A0(\ab[4][9] ), .B0(\CARRYB[3][5] ), .CI(
        \SUMB[2][7] ), .CO(\CARRYB[4][5] ), .S0(\SUMB[4][5] ) );
  HS65_GS_FA1X4 S2_4_4 ( .A0(\ab[4][9] ), .B0(\CARRYB[3][4] ), .CI(
        \SUMB[3][5] ), .CO(\CARRYB[4][4] ), .S0(\SUMB[4][4] ) );
  HS65_GS_FA1X4 S2_4_3 ( .A0(\ab[4][9] ), .B0(\CARRYB[3][3] ), .CI(
        \SUMB[3][4] ), .CO(\CARRYB[4][3] ), .S0(\SUMB[4][3] ) );
  HS65_GS_FA1X4 S2_4_2 ( .A0(\ab[4][9] ), .B0(\CARRYB[3][2] ), .CI(
        \SUMB[3][3] ), .CO(\CARRYB[4][2] ), .S0(\SUMB[4][2] ) );
  HS65_GS_FA1X4 S2_5_1 ( .A0(\ab[5][9] ), .B0(\CARRYB[4][1] ), .CI(
        \SUMB[4][2] ), .CO(\CARRYB[5][1] ), .S0(\SUMB[5][1] ) );
  HS65_GS_FA1X4 S2_3_1 ( .A0(\ab[3][9] ), .B0(\CARRYB[2][1] ), .CI(
        \SUMB[2][2] ), .CO(\CARRYB[3][1] ), .S0(\SUMB[3][1] ) );
  HS65_GS_FA1X4 S2_5_9 ( .A0(\ab[5][9] ), .B0(\CARRYB[4][9] ), .CI(
        \SUMB[4][10] ), .CO(\CARRYB[5][9] ), .S0(\SUMB[5][9] ) );
  HS65_GS_FA1X4 S2_5_8 ( .A0(\ab[5][9] ), .B0(\CARRYB[4][8] ), .CI(
        \SUMB[4][9] ), .CO(\CARRYB[5][8] ), .S0(\SUMB[5][8] ) );
  HS65_GS_FA1X4 S2_5_7 ( .A0(\ab[5][9] ), .B0(\CARRYB[4][7] ), .CI(
        \SUMB[4][8] ), .CO(\CARRYB[5][7] ), .S0(\SUMB[5][7] ) );
  HS65_GS_FA1X4 S2_5_5 ( .A0(\ab[5][9] ), .B0(\CARRYB[4][5] ), .CI(
        \SUMB[3][7] ), .CO(\CARRYB[5][5] ), .S0(\SUMB[5][5] ) );
  HS65_GS_FA1X4 S2_5_4 ( .A0(\ab[5][9] ), .B0(\CARRYB[4][4] ), .CI(
        \SUMB[4][5] ), .CO(\CARRYB[5][4] ), .S0(\SUMB[5][4] ) );
  HS65_GS_FA1X4 S2_5_3 ( .A0(\ab[5][9] ), .B0(\CARRYB[4][3] ), .CI(
        \SUMB[4][4] ), .CO(\CARRYB[5][3] ), .S0(\SUMB[5][3] ) );
  HS65_GS_FA1X4 S2_5_2 ( .A0(\ab[5][9] ), .B0(\CARRYB[4][2] ), .CI(
        \SUMB[4][3] ), .CO(\CARRYB[5][2] ), .S0(\SUMB[5][2] ) );
  HS65_GS_FA1X4 S2_3_10 ( .A0(\ab[3][9] ), .B0(\CARRYB[2][10] ), .CI(
        \SUMB[2][11] ), .CO(\CARRYB[3][10] ), .S0(\SUMB[3][10] ) );
  HS65_GS_FA1X4 S2_3_9 ( .A0(\ab[3][9] ), .B0(\CARRYB[2][9] ), .CI(
        \SUMB[2][10] ), .CO(\CARRYB[3][9] ), .S0(\SUMB[3][9] ) );
  HS65_GS_FA1X4 S2_3_8 ( .A0(\ab[3][9] ), .B0(\CARRYB[2][8] ), .CI(
        \SUMB[2][9] ), .CO(\CARRYB[3][8] ), .S0(\SUMB[3][8] ) );
  HS65_GS_FA1X4 S2_3_7 ( .A0(\ab[3][9] ), .B0(\CARRYB[2][7] ), .CI(
        \SUMB[2][8] ), .CO(\CARRYB[3][7] ), .S0(\SUMB[3][7] ) );
  HS65_GS_FA1X4 S2_3_5 ( .A0(\ab[3][9] ), .B0(n2), .CI(\SUMB[1][7] ), .CO(
        \CARRYB[3][5] ), .S0(\SUMB[3][5] ) );
  HS65_GS_FA1X4 S2_3_4 ( .A0(\ab[3][9] ), .B0(\CARRYB[2][4] ), .CI(
        \SUMB[2][5] ), .CO(\CARRYB[3][4] ), .S0(\SUMB[3][4] ) );
  HS65_GS_FA1X4 S2_3_3 ( .A0(\ab[3][9] ), .B0(\CARRYB[2][3] ), .CI(
        \SUMB[2][4] ), .CO(\CARRYB[3][3] ), .S0(\SUMB[3][3] ) );
  HS65_GS_FA1X4 S2_3_2 ( .A0(\ab[3][9] ), .B0(\CARRYB[2][2] ), .CI(
        \SUMB[2][3] ), .CO(\CARRYB[3][2] ), .S0(\SUMB[3][2] ) );
  HS65_GS_FA1X4 S2_12_1 ( .A0(\ab[12][9] ), .B0(\CARRYB[11][1] ), .CI(
        \SUMB[11][2] ), .CO(\CARRYB[12][1] ), .S0(\SUMB[12][1] ) );
  HS65_GS_FA1X4 S2_12_4 ( .A0(\ab[12][9] ), .B0(\CARRYB[11][4] ), .CI(
        \SUMB[11][5] ), .CO(\CARRYB[12][4] ), .S0(\SUMB[12][4] ) );
  HS65_GS_FA1X4 S2_12_3 ( .A0(\ab[12][9] ), .B0(\CARRYB[11][3] ), .CI(
        \SUMB[11][4] ), .CO(\CARRYB[12][3] ), .S0(\SUMB[12][3] ) );
  HS65_GS_FA1X4 S2_12_2 ( .A0(\ab[12][9] ), .B0(\CARRYB[11][2] ), .CI(
        \SUMB[11][3] ), .CO(\CARRYB[12][2] ), .S0(\SUMB[12][2] ) );
  HS65_GS_FA1X4 S2_12_5 ( .A0(\ab[12][9] ), .B0(\CARRYB[11][5] ), .CI(
        \SUMB[10][7] ), .CO(\CARRYB[12][5] ), .S0(\SUMB[12][5] ) );
  HS65_GS_FA1X4 S2_14_1 ( .A0(\ab[14][9] ), .B0(\CARRYB[13][1] ), .CI(
        \SUMB[13][2] ), .CO(\CARRYB[14][1] ), .S0(\SUMB[14][1] ) );
  HS65_GS_FA1X4 S2_14_9 ( .A0(\ab[14][9] ), .B0(\CARRYB[13][9] ), .CI(
        \SUMB[13][10] ), .CO(\CARRYB[14][9] ), .S0(\SUMB[14][9] ) );
  HS65_GS_FA1X4 S2_14_4 ( .A0(\ab[14][9] ), .B0(\CARRYB[13][4] ), .CI(
        \SUMB[13][5] ), .CO(\CARRYB[14][4] ), .S0(\SUMB[14][4] ) );
  HS65_GS_FA1X4 S2_14_2 ( .A0(\ab[14][9] ), .B0(\CARRYB[13][2] ), .CI(
        \SUMB[13][3] ), .CO(\CARRYB[14][2] ), .S0(\SUMB[14][2] ) );
  HS65_GS_FA1X4 S2_14_3 ( .A0(\ab[14][9] ), .B0(\CARRYB[13][3] ), .CI(
        \SUMB[13][4] ), .CO(\CARRYB[14][3] ), .S0(\SUMB[14][3] ) );
  HS65_GS_FA1X4 S2_6_1 ( .A0(\ab[6][9] ), .B0(\CARRYB[5][1] ), .CI(
        \SUMB[5][2] ), .CO(\CARRYB[6][1] ), .S0(\SUMB[6][1] ) );
  HS65_GS_FA1X4 S2_6_8 ( .A0(\ab[6][9] ), .B0(\CARRYB[5][8] ), .CI(
        \SUMB[5][9] ), .CO(\CARRYB[6][8] ), .S0(\SUMB[6][8] ) );
  HS65_GS_FA1X4 S2_6_7 ( .A0(\ab[6][9] ), .B0(\CARRYB[5][7] ), .CI(
        \SUMB[5][8] ), .CO(\CARRYB[6][7] ), .S0(\SUMB[6][7] ) );
  HS65_GS_FA1X4 S2_6_5 ( .A0(\ab[6][9] ), .B0(\CARRYB[5][5] ), .CI(
        \SUMB[4][7] ), .CO(\CARRYB[6][5] ), .S0(\SUMB[6][5] ) );
  HS65_GS_FA1X4 S2_6_4 ( .A0(\ab[6][9] ), .B0(\CARRYB[5][4] ), .CI(
        \SUMB[5][5] ), .CO(\CARRYB[6][4] ), .S0(\SUMB[6][4] ) );
  HS65_GS_FA1X4 S2_6_3 ( .A0(\ab[6][9] ), .B0(\CARRYB[5][3] ), .CI(
        \SUMB[5][4] ), .CO(\CARRYB[6][3] ), .S0(\SUMB[6][3] ) );
  HS65_GS_FA1X4 S2_6_2 ( .A0(\ab[6][9] ), .B0(\CARRYB[5][2] ), .CI(
        \SUMB[5][3] ), .CO(\CARRYB[6][2] ), .S0(\SUMB[6][2] ) );
  HS65_GS_FA1X4 S2_2_1 ( .A0(\ab[2][9] ), .B0(\CARRYB[1][1] ), .CI(
        \SUMB[1][2] ), .CO(\CARRYB[2][1] ), .S0(\SUMB[2][1] ) );
  HS65_GS_FA1X4 S3_2_14 ( .A0(\ab[2][9] ), .B0(\CARRYB[1][14] ), .CI(n30), 
        .CO(\CARRYB[2][14] ), .S0(\SUMB[2][14] ) );
  HS65_GS_FA1X4 S2_2_10 ( .A0(\ab[2][9] ), .B0(\CARRYB[1][10] ), .CI(
        \SUMB[1][11] ), .CO(\CARRYB[2][10] ), .S0(\SUMB[2][10] ) );
  HS65_GS_FA1X4 S2_2_9 ( .A0(\ab[2][9] ), .B0(\CARRYB[1][9] ), .CI(
        \SUMB[1][10] ), .CO(\CARRYB[2][9] ), .S0(\SUMB[2][9] ) );
  HS65_GS_FA1X4 S2_2_8 ( .A0(\ab[2][9] ), .B0(\CARRYB[1][8] ), .CI(
        \SUMB[1][9] ), .CO(\CARRYB[2][8] ), .S0(\SUMB[2][8] ) );
  HS65_GS_FA1X4 S2_2_7 ( .A0(\ab[2][9] ), .B0(\CARRYB[1][7] ), .CI(
        \SUMB[1][8] ), .CO(\CARRYB[2][7] ), .S0(\SUMB[2][7] ) );
  HS65_GS_FA1X4 S2_2_3 ( .A0(\ab[2][9] ), .B0(\CARRYB[1][3] ), .CI(
        \SUMB[1][4] ), .CO(\CARRYB[2][3] ), .S0(\SUMB[2][3] ) );
  HS65_GS_FA1X4 S2_2_2 ( .A0(\ab[2][9] ), .B0(\CARRYB[1][2] ), .CI(
        \SUMB[1][3] ), .CO(\CARRYB[2][2] ), .S0(\SUMB[2][2] ) );
  HS65_GS_FA1X4 S2_10_1 ( .A0(\ab[10][9] ), .B0(\CARRYB[9][1] ), .CI(
        \SUMB[9][2] ), .CO(\CARRYB[10][1] ), .S0(\SUMB[10][1] ) );
  HS65_GS_FA1X4 S2_10_5 ( .A0(\ab[10][9] ), .B0(\CARRYB[9][5] ), .CI(
        \SUMB[8][7] ), .CO(\CARRYB[10][5] ), .S0(\SUMB[10][5] ) );
  HS65_GS_FA1X4 S2_10_4 ( .A0(\ab[10][9] ), .B0(\CARRYB[9][4] ), .CI(
        \SUMB[9][5] ), .CO(\CARRYB[10][4] ), .S0(\SUMB[10][4] ) );
  HS65_GS_FA1X4 S2_10_3 ( .A0(\ab[10][9] ), .B0(\CARRYB[9][3] ), .CI(
        \SUMB[9][4] ), .CO(\CARRYB[10][3] ), .S0(\SUMB[10][3] ) );
  HS65_GS_FA1X4 S2_10_2 ( .A0(\ab[10][9] ), .B0(\CARRYB[9][2] ), .CI(
        \SUMB[9][3] ), .CO(\CARRYB[10][2] ), .S0(\SUMB[10][2] ) );
  HS65_GS_FA1X4 S2_10_13 ( .A0(\ab[10][9] ), .B0(\CARRYB[9][13] ), .CI(
        \SUMB[9][14] ), .CO(\CARRYB[10][13] ), .S0(\SUMB[10][13] ) );
  HS65_GS_FA1X4 S2_6_13 ( .A0(\ab[6][9] ), .B0(\CARRYB[5][13] ), .CI(
        \SUMB[5][14] ), .CO(\CARRYB[6][13] ), .S0(\SUMB[6][13] ) );
  HS65_GS_FA1X4 S2_5_13 ( .A0(\ab[5][9] ), .B0(\CARRYB[4][13] ), .CI(
        \SUMB[4][14] ), .CO(\CARRYB[5][13] ), .S0(\SUMB[5][13] ) );
  HS65_GS_FA1X4 S2_8_13 ( .A0(\ab[8][9] ), .B0(\CARRYB[7][13] ), .CI(
        \SUMB[7][14] ), .CO(\CARRYB[8][13] ), .S0(\SUMB[8][13] ) );
  HS65_GS_FA1X4 S2_4_13 ( .A0(\ab[4][9] ), .B0(\CARRYB[3][13] ), .CI(
        \SUMB[3][14] ), .CO(\CARRYB[4][13] ), .S0(\SUMB[4][13] ) );
  HS65_GS_FA1X4 S2_12_13 ( .A0(\ab[12][9] ), .B0(\CARRYB[11][13] ), .CI(
        \SUMB[11][14] ), .CO(\CARRYB[12][13] ), .S0(\SUMB[12][13] ) );
  HS65_GS_FA1X4 S2_2_13 ( .A0(\ab[2][9] ), .B0(\CARRYB[1][13] ), .CI(
        \SUMB[1][14] ), .CO(\CARRYB[2][13] ), .S0(\SUMB[2][13] ) );
  HS65_GS_FA1X4 S2_2_12 ( .A0(\ab[2][9] ), .B0(\CARRYB[1][12] ), .CI(
        \SUMB[1][13] ), .CO(\CARRYB[2][12] ), .S0(\SUMB[2][12] ) );
  HS65_GS_FA1X4 S2_2_11 ( .A0(\ab[2][9] ), .B0(\CARRYB[1][11] ), .CI(
        \SUMB[1][12] ), .CO(\CARRYB[2][11] ), .S0(\SUMB[2][11] ) );
  HS65_GS_FA1X4 S2_14_7 ( .A0(\ab[14][9] ), .B0(\CARRYB[13][7] ), .CI(
        \SUMB[13][8] ), .CO(\CARRYB[14][7] ), .S0(\SUMB[14][7] ) );
  HS65_GS_FA1X4 S3_9_14 ( .A0(n32), .B0(\CARRYB[8][14] ), .CI(\ab[8][9] ), 
        .CO(\CARRYB[9][14] ), .S0(\SUMB[9][14] ) );
  HS65_GS_FA1X4 S3_5_14 ( .A0(\ab[5][9] ), .B0(\CARRYB[4][14] ), .CI(
        \ab[4][9] ), .CO(\CARRYB[5][14] ), .S0(\SUMB[5][14] ) );
  HS65_GS_FA1X4 S3_6_14 ( .A0(\ab[6][9] ), .B0(\CARRYB[5][14] ), .CI(
        \ab[5][9] ), .CO(\CARRYB[6][14] ), .S0(\SUMB[6][14] ) );
  HS65_GS_FA1X4 S3_4_14 ( .A0(\ab[4][9] ), .B0(\CARRYB[3][14] ), .CI(
        \ab[3][9] ), .CO(\CARRYB[4][14] ), .S0(\SUMB[4][14] ) );
  HS65_GS_FA1X4 S3_7_14 ( .A0(n31), .B0(\CARRYB[6][14] ), .CI(\ab[6][9] ), 
        .CO(\CARRYB[7][14] ), .S0(\SUMB[7][14] ) );
  HS65_GS_FA1X4 S3_3_14 ( .A0(\ab[3][9] ), .B0(\CARRYB[2][14] ), .CI(
        \ab[2][9] ), .CO(\CARRYB[3][14] ), .S0(\SUMB[3][14] ) );
  HS65_GS_FA1X4 S4_13 ( .A0(n35), .B0(\CARRYB[14][13] ), .CI(\SUMB[14][14] ), 
        .CO(\CARRYB[15][13] ), .S0(\SUMB[15][13] ) );
  HS65_GS_FA1X4 S4_7 ( .A0(n35), .B0(\CARRYB[14][7] ), .CI(\SUMB[14][8] ), 
        .CO(\CARRYB[15][7] ), .S0(\SUMB[15][7] ) );
  HS65_GS_FA1X4 S2_9_13 ( .A0(n32), .B0(\CARRYB[8][13] ), .CI(\SUMB[8][14] ), 
        .CO(\CARRYB[9][13] ), .S0(\SUMB[9][13] ) );
  HS65_GS_FA1X4 S2_13_13 ( .A0(n34), .B0(\CARRYB[12][13] ), .CI(\SUMB[12][14] ), .CO(\CARRYB[13][13] ), .S0(\SUMB[13][13] ) );
  HS65_GS_FA1X4 S2_11_13 ( .A0(n33), .B0(\CARRYB[10][13] ), .CI(\SUMB[10][14] ), .CO(\CARRYB[11][13] ), .S0(\SUMB[11][13] ) );
  HS65_GS_FA1X4 S2_11_11 ( .A0(n33), .B0(\CARRYB[10][11] ), .CI(\SUMB[10][12] ), .CO(\CARRYB[11][11] ), .S0(\SUMB[11][11] ) );
  HS65_GS_FA1X4 S2_13_11 ( .A0(n34), .B0(\CARRYB[12][11] ), .CI(\SUMB[12][12] ), .CO(\CARRYB[13][11] ), .S0(\SUMB[13][11] ) );
  HS65_GS_FA1X4 S2_13_9 ( .A0(n34), .B0(\CARRYB[12][9] ), .CI(\SUMB[12][10] ), 
        .CO(\CARRYB[13][9] ), .S0(\SUMB[13][9] ) );
  HS65_GS_FA1X4 S2_13_7 ( .A0(n34), .B0(\CARRYB[12][7] ), .CI(\SUMB[12][8] ), 
        .CO(\CARRYB[13][7] ), .S0(\SUMB[13][7] ) );
  HS65_GS_FA1X4 S2_13_8 ( .A0(n34), .B0(\CARRYB[12][8] ), .CI(\SUMB[12][9] ), 
        .CO(\CARRYB[13][8] ), .S0(\SUMB[13][8] ) );
  HS65_GS_FA1X4 S2_13_5 ( .A0(n34), .B0(\CARRYB[12][5] ), .CI(\SUMB[11][7] ), 
        .CO(\CARRYB[13][5] ), .S0(\SUMB[13][5] ) );
  HS65_GS_FA1X4 S2_11_8 ( .A0(n33), .B0(\CARRYB[10][8] ), .CI(\SUMB[10][9] ), 
        .CO(\CARRYB[11][8] ), .S0(\SUMB[11][8] ) );
  HS65_GS_FA1X4 S2_11_7 ( .A0(n33), .B0(\CARRYB[10][7] ), .CI(\SUMB[10][8] ), 
        .CO(\CARRYB[11][7] ), .S0(\SUMB[11][7] ) );
  HS65_GS_FA1X4 S2_9_8 ( .A0(n32), .B0(\CARRYB[8][8] ), .CI(\SUMB[8][9] ), 
        .CO(\CARRYB[9][8] ), .S0(\SUMB[9][8] ) );
  HS65_GS_FA1X4 S2_7_9 ( .A0(n31), .B0(\CARRYB[6][9] ), .CI(\SUMB[6][10] ), 
        .CO(\CARRYB[7][9] ), .S0(\SUMB[7][9] ) );
  HS65_GS_FA1X4 S2_11_9 ( .A0(n33), .B0(\CARRYB[10][9] ), .CI(\SUMB[10][10] ), 
        .CO(\CARRYB[11][9] ), .S0(\SUMB[11][9] ) );
  HS65_GS_FA1X4 S2_9_9 ( .A0(n32), .B0(\CARRYB[8][9] ), .CI(\SUMB[8][10] ), 
        .CO(\CARRYB[9][9] ), .S0(\SUMB[9][9] ) );
  HS65_GS_FA1X4 S2_13_10 ( .A0(n34), .B0(\CARRYB[12][10] ), .CI(\SUMB[12][11] ), .CO(\CARRYB[13][10] ), .S0(\SUMB[13][10] ) );
  HS65_GS_FA1X4 S2_9_10 ( .A0(n32), .B0(\CARRYB[8][10] ), .CI(\SUMB[8][11] ), 
        .CO(\CARRYB[9][10] ), .S0(\SUMB[9][10] ) );
  HS65_GS_FA1X4 S2_11_10 ( .A0(n33), .B0(\CARRYB[10][10] ), .CI(\SUMB[10][11] ), .CO(\CARRYB[11][10] ), .S0(\SUMB[11][10] ) );
  HS65_GS_FA1X4 S2_7_10 ( .A0(n31), .B0(\CARRYB[6][10] ), .CI(\SUMB[6][11] ), 
        .CO(\CARRYB[7][10] ), .S0(\SUMB[7][10] ) );
  HS65_GS_FA1X4 S2_9_11 ( .A0(n32), .B0(\CARRYB[8][11] ), .CI(\SUMB[8][12] ), 
        .CO(\CARRYB[9][11] ), .S0(\SUMB[9][11] ) );
  HS65_GS_FA1X4 S2_7_11 ( .A0(n31), .B0(\CARRYB[6][11] ), .CI(\SUMB[6][12] ), 
        .CO(\CARRYB[7][11] ), .S0(\SUMB[7][11] ) );
  HS65_GS_FA1X4 S2_13_1 ( .A0(n34), .B0(\CARRYB[12][1] ), .CI(\SUMB[12][2] ), 
        .CO(\CARRYB[13][1] ), .S0(\SUMB[13][1] ) );
  HS65_GS_FA1X4 S2_11_1 ( .A0(n33), .B0(\CARRYB[10][1] ), .CI(\SUMB[10][2] ), 
        .CO(\CARRYB[11][1] ), .S0(\SUMB[11][1] ) );
  HS65_GS_FA1X4 S2_9_1 ( .A0(n32), .B0(\CARRYB[8][1] ), .CI(\SUMB[8][2] ), 
        .CO(\CARRYB[9][1] ), .S0(\SUMB[9][1] ) );
  HS65_GS_FA1X4 S2_7_1 ( .A0(n31), .B0(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), 
        .CO(\CARRYB[7][1] ), .S0(\SUMB[7][1] ) );
  HS65_GS_FA1X4 S2_13_3 ( .A0(n34), .B0(\CARRYB[12][3] ), .CI(\SUMB[12][4] ), 
        .CO(\CARRYB[13][3] ), .S0(\SUMB[13][3] ) );
  HS65_GS_FA1X4 S2_13_2 ( .A0(n34), .B0(\CARRYB[12][2] ), .CI(\SUMB[12][3] ), 
        .CO(\CARRYB[13][2] ), .S0(\SUMB[13][2] ) );
  HS65_GS_FA1X4 S2_13_4 ( .A0(n34), .B0(\CARRYB[12][4] ), .CI(\SUMB[12][5] ), 
        .CO(\CARRYB[13][4] ), .S0(\SUMB[13][4] ) );
  HS65_GS_FA1X4 S2_11_5 ( .A0(n33), .B0(\CARRYB[10][5] ), .CI(\SUMB[9][7] ), 
        .CO(\CARRYB[11][5] ), .S0(\SUMB[11][5] ) );
  HS65_GS_FA1X4 S2_11_4 ( .A0(n33), .B0(\CARRYB[10][4] ), .CI(\SUMB[10][5] ), 
        .CO(\CARRYB[11][4] ), .S0(\SUMB[11][4] ) );
  HS65_GS_FA1X4 S2_11_3 ( .A0(n33), .B0(\CARRYB[10][3] ), .CI(\SUMB[10][4] ), 
        .CO(\CARRYB[11][3] ), .S0(\SUMB[11][3] ) );
  HS65_GS_FA1X4 S2_11_2 ( .A0(n33), .B0(\CARRYB[10][2] ), .CI(\SUMB[10][3] ), 
        .CO(\CARRYB[11][2] ), .S0(\SUMB[11][2] ) );
  HS65_GS_FA1X4 S2_9_7 ( .A0(n32), .B0(\CARRYB[8][7] ), .CI(\SUMB[8][8] ), 
        .CO(\CARRYB[9][7] ), .S0(\SUMB[9][7] ) );
  HS65_GS_FA1X4 S2_9_5 ( .A0(n32), .B0(\CARRYB[8][5] ), .CI(\SUMB[7][7] ), 
        .CO(\CARRYB[9][5] ), .S0(\SUMB[9][5] ) );
  HS65_GS_FA1X4 S2_9_4 ( .A0(n32), .B0(\CARRYB[8][4] ), .CI(\SUMB[8][5] ), 
        .CO(\CARRYB[9][4] ), .S0(\SUMB[9][4] ) );
  HS65_GS_FA1X4 S2_9_3 ( .A0(n32), .B0(\CARRYB[8][3] ), .CI(\SUMB[8][4] ), 
        .CO(\CARRYB[9][3] ), .S0(\SUMB[9][3] ) );
  HS65_GS_FA1X4 S2_9_2 ( .A0(n32), .B0(\CARRYB[8][2] ), .CI(\SUMB[8][3] ), 
        .CO(\CARRYB[9][2] ), .S0(\SUMB[9][2] ) );
  HS65_GS_FA1X4 S2_7_8 ( .A0(n31), .B0(\CARRYB[6][8] ), .CI(\SUMB[6][9] ), 
        .CO(\CARRYB[7][8] ), .S0(\SUMB[7][8] ) );
  HS65_GS_FA1X4 S2_7_7 ( .A0(n31), .B0(\CARRYB[6][7] ), .CI(\SUMB[6][8] ), 
        .CO(\CARRYB[7][7] ), .S0(\SUMB[7][7] ) );
  HS65_GS_FA1X4 S2_7_5 ( .A0(n31), .B0(\CARRYB[6][5] ), .CI(\SUMB[5][7] ), 
        .CO(\CARRYB[7][5] ), .S0(\SUMB[7][5] ) );
  HS65_GS_FA1X4 S2_7_4 ( .A0(n31), .B0(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), 
        .CO(\CARRYB[7][4] ), .S0(\SUMB[7][4] ) );
  HS65_GS_FA1X4 S2_7_3 ( .A0(n31), .B0(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), 
        .CO(\CARRYB[7][3] ), .S0(\SUMB[7][3] ) );
  HS65_GS_FA1X4 S2_7_2 ( .A0(n31), .B0(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), 
        .CO(\CARRYB[7][2] ), .S0(\SUMB[7][2] ) );
  HS65_GS_FA1X4 S2_11_12 ( .A0(n33), .B0(\CARRYB[10][12] ), .CI(\SUMB[10][13] ), .CO(\CARRYB[11][12] ), .S0(\SUMB[11][12] ) );
  HS65_GS_FA1X4 S2_7_12 ( .A0(n31), .B0(\CARRYB[6][12] ), .CI(\SUMB[6][13] ), 
        .CO(\CARRYB[7][12] ), .S0(\SUMB[7][12] ) );
  HS65_GS_FA1X4 S2_9_12 ( .A0(n32), .B0(\CARRYB[8][12] ), .CI(\SUMB[8][13] ), 
        .CO(\CARRYB[9][12] ), .S0(\SUMB[9][12] ) );
  HS65_GS_FA1X4 S2_13_12 ( .A0(n34), .B0(\CARRYB[12][12] ), .CI(\SUMB[12][13] ), .CO(\CARRYB[13][12] ), .S0(\SUMB[13][12] ) );
  HS65_GS_FA1X4 S2_7_13 ( .A0(n31), .B0(\CARRYB[6][13] ), .CI(\SUMB[6][14] ), 
        .CO(\CARRYB[7][13] ), .S0(\SUMB[7][13] ) );
  HS65_GS_FA1X4 S4_1 ( .A0(n35), .B0(\CARRYB[14][1] ), .CI(\SUMB[14][2] ), 
        .CO(\CARRYB[15][1] ), .S0(\SUMB[15][1] ) );
  HS65_GS_FA1X4 S4_8 ( .A0(n35), .B0(\CARRYB[14][8] ), .CI(\SUMB[14][9] ), 
        .CO(\CARRYB[15][8] ), .S0(\SUMB[15][8] ) );
  HS65_GS_FA1X4 S4_2 ( .A0(n35), .B0(\CARRYB[14][2] ), .CI(\SUMB[14][3] ), 
        .CO(\CARRYB[15][2] ), .S0(\SUMB[15][2] ) );
  HS65_GS_FA1X4 S4_11 ( .A0(n35), .B0(\CARRYB[14][11] ), .CI(\SUMB[14][12] ), 
        .CO(\CARRYB[15][11] ), .S0(\SUMB[15][11] ) );
  HS65_GS_FA1X4 S4_9 ( .A0(n35), .B0(\CARRYB[14][9] ), .CI(\SUMB[14][10] ), 
        .CO(\CARRYB[15][9] ), .S0(\SUMB[15][9] ) );
  HS65_GS_FA1X4 S4_5 ( .A0(n35), .B0(\CARRYB[14][5] ), .CI(\SUMB[13][7] ), 
        .CO(\CARRYB[15][5] ), .S0(\SUMB[15][5] ) );
  HS65_GS_FA1X4 S4_4 ( .A0(n35), .B0(\CARRYB[14][4] ), .CI(\SUMB[14][5] ), 
        .CO(\CARRYB[15][4] ), .S0(\SUMB[15][4] ) );
  HS65_GS_FA1X4 S4_3 ( .A0(n35), .B0(\CARRYB[14][3] ), .CI(\SUMB[14][4] ), 
        .CO(\CARRYB[15][3] ), .S0(\SUMB[15][3] ) );
  HS65_GS_FA1X4 S4_10 ( .A0(n35), .B0(\CARRYB[14][10] ), .CI(\SUMB[14][11] ), 
        .CO(\CARRYB[15][10] ), .S0(\SUMB[15][10] ) );
  HS65_GS_FA1X4 S4_12 ( .A0(n35), .B0(\CARRYB[14][12] ), .CI(\SUMB[14][13] ), 
        .CO(\CARRYB[15][12] ), .S0(\SUMB[15][12] ) );
  HS65_GS_AND2X4 U2 ( .A(\ab[2][9] ), .B(PRODUCT[1]), .Z(n2) );
  HS65_GS_AND2X4 U3 ( .A(n35), .B(\CARRYB[15][14] ), .Z(n3) );
  HS65_GS_BFX9 U4 ( .A(\ab[0][9] ), .Z(PRODUCT[1]) );
  HS65_GS_BFX9 U5 ( .A(n30), .Z(n5) );
  HS65_GS_BFX9 U6 ( .A(\ab[1][9] ), .Z(n30) );
  HS65_GS_BFX9 U7 ( .A(\ab[15][9] ), .Z(n35) );
  HS65_GSS_XOR2X6 U8 ( .A(\SUMB[15][12] ), .B(\CARRYB[15][11] ), .Z(\A1[25] )
         );
  HS65_GSS_XOR2X6 U9 ( .A(\SUMB[15][10] ), .B(\CARRYB[15][9] ), .Z(\A1[23] )
         );
  HS65_GSS_XOR2X6 U10 ( .A(\SUMB[15][4] ), .B(\CARRYB[15][3] ), .Z(\A1[17] )
         );
  HS65_GSS_XOR2X6 U11 ( .A(\SUMB[15][3] ), .B(\CARRYB[15][2] ), .Z(\A1[16] )
         );
  HS65_GSS_XOR2X6 U12 ( .A(\SUMB[15][5] ), .B(\CARRYB[15][4] ), .Z(\A1[18] )
         );
  HS65_GSS_XOR2X6 U13 ( .A(\SUMB[15][9] ), .B(\CARRYB[15][8] ), .Z(\A1[22] )
         );
  HS65_GSS_XOR2X6 U14 ( .A(\SUMB[15][11] ), .B(\CARRYB[15][10] ), .Z(\A1[24] )
         );
  HS65_GSS_XOR2X6 U15 ( .A(\SUMB[15][8] ), .B(\CARRYB[15][7] ), .Z(\A1[21] )
         );
  HS65_GS_AND2X4 U16 ( .A(\SUMB[15][3] ), .B(\CARRYB[15][2] ), .Z(n6) );
  HS65_GS_AND2X4 U17 ( .A(\SUMB[15][5] ), .B(\CARRYB[15][4] ), .Z(n7) );
  HS65_GS_AND2X4 U18 ( .A(\SUMB[15][9] ), .B(\CARRYB[15][8] ), .Z(n8) );
  HS65_GS_AND2X4 U19 ( .A(\SUMB[15][2] ), .B(\CARRYB[15][1] ), .Z(n9) );
  HS65_GS_AND2X4 U20 ( .A(\SUMB[15][4] ), .B(\CARRYB[15][3] ), .Z(n10) );
  HS65_GS_AND2X4 U21 ( .A(\SUMB[15][8] ), .B(\CARRYB[15][7] ), .Z(n11) );
  HS65_GS_AND2X4 U22 ( .A(\SUMB[15][10] ), .B(\CARRYB[15][9] ), .Z(n12) );
  HS65_GSS_XOR2X6 U23 ( .A(\SUMB[15][13] ), .B(\CARRYB[15][12] ), .Z(\A1[26] )
         );
  HS65_GS_BFX9 U24 ( .A(\ab[11][9] ), .Z(n33) );
  HS65_GS_BFX9 U25 ( .A(\ab[13][9] ), .Z(n34) );
  HS65_GS_BFX9 U26 ( .A(\ab[9][9] ), .Z(n32) );
  HS65_GS_BFX9 U27 ( .A(\ab[7][9] ), .Z(n31) );
  HS65_GS_AND2X4 U28 ( .A(\SUMB[15][11] ), .B(\CARRYB[15][10] ), .Z(n13) );
  HS65_GS_AND2X4 U29 ( .A(\SUMB[15][13] ), .B(\CARRYB[15][12] ), .Z(n14) );
  HS65_GS_AND2X4 U30 ( .A(\SUMB[15][12] ), .B(\CARRYB[15][11] ), .Z(n15) );
  HS65_GSS_XOR2X6 U31 ( .A(\SUMB[14][7] ), .B(\CARRYB[15][5] ), .Z(\A1[19] )
         );
  HS65_GS_AND2X4 U32 ( .A(\SUMB[14][7] ), .B(\CARRYB[15][5] ), .Z(n16) );
  HS65_GSS_XOR2X6 U33 ( .A(\SUMB[15][14] ), .B(\CARRYB[15][13] ), .Z(\A1[27] )
         );
  HS65_GSS_XOR2X6 U34 ( .A(n35), .B(\CARRYB[15][14] ), .Z(\A1[28] ) );
  HS65_GS_AND2X4 U35 ( .A(\SUMB[15][14] ), .B(\CARRYB[15][13] ), .Z(n17) );
  HS65_GSS_XOR2X6 U36 ( .A(PRODUCT[1]), .B(n5), .Z(\SUMB[1][1] ) );
  HS65_GSS_XOR2X6 U37 ( .A(\SUMB[15][2] ), .B(\CARRYB[15][1] ), .Z(\A1[15] )
         );
  HS65_GS_IVX9 U38 ( .A(n26), .Z(\CARRYB[1][11] ) );
  HS65_GSS_XOR2X6 U39 ( .A(\ab[0][9] ), .B(n30), .Z(\SUMB[1][12] ) );
  HS65_GS_NAND2X7 U40 ( .A(n30), .B(\ab[0][9] ), .Z(n26) );
  HS65_GS_IVX9 U41 ( .A(n27), .Z(\CARRYB[1][12] ) );
  HS65_GSS_XOR2X6 U42 ( .A(\ab[0][9] ), .B(n30), .Z(\SUMB[1][13] ) );
  HS65_GS_NAND2X7 U43 ( .A(n30), .B(\ab[0][9] ), .Z(n27) );
  HS65_GS_IVX9 U44 ( .A(n28), .Z(\CARRYB[1][13] ) );
  HS65_GSS_XOR2X6 U45 ( .A(\ab[0][9] ), .B(n30), .Z(\SUMB[1][14] ) );
  HS65_GS_NAND2X7 U46 ( .A(n30), .B(\ab[0][9] ), .Z(n28) );
  HS65_GS_IVX9 U47 ( .A(n19), .Z(\CARRYB[1][2] ) );
  HS65_GSS_XOR2X3 U48 ( .A(PRODUCT[1]), .B(n5), .Z(\SUMB[1][3] ) );
  HS65_GS_NAND2X2 U49 ( .A(n5), .B(PRODUCT[1]), .Z(n19) );
  HS65_GS_IVX9 U50 ( .A(n20), .Z(\CARRYB[1][3] ) );
  HS65_GSS_XOR2X3 U51 ( .A(PRODUCT[1]), .B(n30), .Z(\SUMB[1][4] ) );
  HS65_GS_NAND2X2 U52 ( .A(n30), .B(PRODUCT[1]), .Z(n20) );
  HS65_GS_IVX9 U53 ( .A(n22), .Z(\CARRYB[1][7] ) );
  HS65_GSS_XOR2X3 U54 ( .A(PRODUCT[1]), .B(n30), .Z(\SUMB[1][8] ) );
  HS65_GS_NAND2X2 U55 ( .A(n5), .B(PRODUCT[1]), .Z(n22) );
  HS65_GS_IVX9 U56 ( .A(n23), .Z(\CARRYB[1][8] ) );
  HS65_GSS_XOR2X3 U57 ( .A(\ab[0][9] ), .B(n30), .Z(\SUMB[1][9] ) );
  HS65_GS_NAND2X2 U58 ( .A(n30), .B(PRODUCT[1]), .Z(n23) );
  HS65_GS_IVX9 U59 ( .A(n24), .Z(\CARRYB[1][9] ) );
  HS65_GSS_XOR2X3 U60 ( .A(\ab[0][9] ), .B(n30), .Z(\SUMB[1][10] ) );
  HS65_GS_NAND2X2 U61 ( .A(n30), .B(\ab[0][9] ), .Z(n24) );
  HS65_GS_IVX9 U62 ( .A(n25), .Z(\CARRYB[1][10] ) );
  HS65_GSS_XOR2X3 U63 ( .A(\ab[0][9] ), .B(n30), .Z(\SUMB[1][11] ) );
  HS65_GS_NAND2X2 U64 ( .A(n30), .B(\ab[0][9] ), .Z(n25) );
  HS65_GS_IVX9 U65 ( .A(n29), .Z(\CARRYB[1][14] ) );
  HS65_GS_NAND2X2 U66 ( .A(n30), .B(\ab[0][9] ), .Z(n29) );
  HS65_GS_IVX9 U67 ( .A(n18), .Z(\CARRYB[1][1] ) );
  HS65_GSS_XOR2X3 U68 ( .A(PRODUCT[1]), .B(n5), .Z(\SUMB[1][2] ) );
  HS65_GS_NAND2X2 U69 ( .A(n5), .B(PRODUCT[1]), .Z(n18) );
  HS65_GSS_XOR2X3 U70 ( .A(PRODUCT[1]), .B(\ab[2][9] ), .Z(\SUMB[2][5] ) );
  HS65_GSS_XOR2X3 U71 ( .A(PRODUCT[1]), .B(n30), .Z(\SUMB[1][7] ) );
  HS65_GS_IVX9 U72 ( .A(n21), .Z(\CARRYB[1][4] ) );
  HS65_GS_NAND2X2 U73 ( .A(n30), .B(PRODUCT[1]), .Z(n21) );
endmodule


module winnerPolicy ( clock, nrst, en, start_winnerPolicy, mybest, besthop, 
        bestvalue, bestneighborID, MY_NODE_ID, address, data_in, wr_en, 
        data_out, epsilon_step, nexthop, done_winnerPolicy, en_rng, rng_out, 
        rng_out_4bit, rng_address, start_rngAddress, done_rng_address, 
        betterNeighborCount, which );
  input [15:0] mybest;
  input [15:0] besthop;
  input [15:0] bestvalue;
  input [15:0] bestneighborID;
  input [15:0] MY_NODE_ID;
  output [10:0] address;
  input [15:0] data_in;
  output [15:0] data_out;
  input [15:0] epsilon_step;
  output [15:0] nexthop;
  input [15:0] rng_out;
  input [15:0] rng_out_4bit;
  input [15:0] rng_address;
  output [15:0] betterNeighborCount;
  output [15:0] which;
  input clock, nrst, en, start_winnerPolicy, done_rng_address;
  output wr_en, done_winnerPolicy, en_rng, start_rngAddress;
  wire   two, N119, N120, N121, N122, N123, N124, N125, N126, N127, N128, N132,
         N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, N143,
         N144, N145, N146, N147, N165, N166, N167, N168, N169, N170, N171,
         N172, N173, N174, N175, N176, N177, N178, N179, N180, N181, N182,
         N183, N184, N185, N186, N187, N188, N189, N190, N191, N192, N193,
         N194, N195, N196, N235, N236, N237, N238, N239, N240, N241, N242,
         N243, N244, N245, N246, N247, N248, N249, N250, N251, N252, N253,
         N254, N255, N256, N257, N258, N259, N260, N261, N262, N263, N476,
         N477, N478, N479, n18, n36, n37, n44, n45, n49, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, N229, N228,
         N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217,
         N216, N215, N214, N213, \add_121/carry[10] , \add_121/carry[9] ,
         \add_121/carry[8] , \add_121/carry[7] , \add_121/carry[6] ,
         \add_121/carry[5] , \add_173/carry[31] , \add_173/carry[30] ,
         \add_173/carry[29] , \add_173/carry[28] , \add_173/carry[27] ,
         \add_173/carry[26] , \add_173/carry[25] , \add_173/carry[24] ,
         \add_173/carry[23] , \add_173/carry[22] , \add_173/carry[21] ,
         \add_173/carry[20] , \add_173/carry[19] , \add_173/carry[18] ,
         \add_173/carry[17] , \add_173/carry[16] , n1, n2, n3, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n38, n39,
         n40, n41, n42, n43, n46, n47, n48, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n162, n163, n164, n165, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509;
  wire   [3:0] state;
  wire   [15:0] epsilon_buf;
  wire   [31:0] _left;
  wire   [15:0] explore_constant;
  wire   [31:0] _right3;
  wire   [31:0] _right;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;
  assign N119 = rng_address[0];
  assign N120 = rng_address[1];
  assign N235 = mybest[0];
  assign N236 = mybest[1];
  assign N237 = mybest[2];
  assign N238 = mybest[3];
  assign N239 = mybest[4];
  assign N240 = mybest[5];
  assign N241 = mybest[6];
  assign N242 = mybest[7];
  assign N243 = mybest[8];
  assign N244 = mybest[9];

  HS65_GS_DFPQX9 \_right_reg[0]  ( .D(n297), .CP(clock), .Q(_right[0]) );
  HS65_GS_DFPQX9 \state_reg[0]  ( .D(N476), .CP(clock), .Q(state[0]) );
  HS65_GS_DFPQX9 \state_reg[1]  ( .D(N477), .CP(clock), .Q(state[1]) );
  HS65_GS_DFPQX9 \state_reg[3]  ( .D(N479), .CP(clock), .Q(state[3]) );
  HS65_GS_DFPQX9 \state_reg[2]  ( .D(N478), .CP(clock), .Q(state[2]) );
  HS65_GS_DFPQX9 \_right3_reg[31]  ( .D(n135), .CP(clock), .Q(_right3[31]) );
  HS65_GS_DFPQX9 \_right3_reg[30]  ( .D(n136), .CP(clock), .Q(_right3[30]) );
  HS65_GS_DFPQX9 \_right3_reg[29]  ( .D(n137), .CP(clock), .Q(_right3[29]) );
  HS65_GS_DFPQX9 \_right3_reg[28]  ( .D(n138), .CP(clock), .Q(_right3[28]) );
  HS65_GS_DFPQX9 \_right3_reg[27]  ( .D(n139), .CP(clock), .Q(_right3[27]) );
  HS65_GS_DFPQX9 \_right3_reg[26]  ( .D(n140), .CP(clock), .Q(_right3[26]) );
  HS65_GS_DFPQX9 \_right3_reg[25]  ( .D(n141), .CP(clock), .Q(_right3[25]) );
  HS65_GS_DFPQX9 \_right3_reg[24]  ( .D(n142), .CP(clock), .Q(_right3[24]) );
  HS65_GS_DFPQX9 \_right3_reg[23]  ( .D(n143), .CP(clock), .Q(_right3[23]) );
  HS65_GS_DFPQX9 \_right3_reg[22]  ( .D(n144), .CP(clock), .Q(_right3[22]) );
  HS65_GS_DFPQX9 \_right3_reg[21]  ( .D(n145), .CP(clock), .Q(_right3[21]) );
  HS65_GS_DFPQX9 \_right3_reg[20]  ( .D(n146), .CP(clock), .Q(_right3[20]) );
  HS65_GS_DFPQX9 \_right3_reg[19]  ( .D(n147), .CP(clock), .Q(_right3[19]) );
  HS65_GS_DFPQX9 \_right3_reg[18]  ( .D(n148), .CP(clock), .Q(_right3[18]) );
  HS65_GS_DFPQX9 \_right3_reg[17]  ( .D(n149), .CP(clock), .Q(_right3[17]) );
  HS65_GS_DFPQX9 \_right3_reg[16]  ( .D(n150), .CP(clock), .Q(_right3[16]) );
  HS65_GS_DFPQX9 \_right3_reg[15]  ( .D(n151), .CP(clock), .Q(_right3[15]) );
  HS65_GS_DFPQX9 \_right3_reg[14]  ( .D(n152), .CP(clock), .Q(_right3[14]) );
  HS65_GS_DFPQX9 \_right3_reg[13]  ( .D(n153), .CP(clock), .Q(_right3[13]) );
  HS65_GS_DFPQX9 \_right3_reg[12]  ( .D(n154), .CP(clock), .Q(_right3[12]) );
  HS65_GS_DFPQX9 \_right3_reg[11]  ( .D(n155), .CP(clock), .Q(_right3[11]) );
  HS65_GS_DFPQX9 \_right3_reg[10]  ( .D(n156), .CP(clock), .Q(_right3[10]) );
  HS65_GS_DFPQX9 \_right3_reg[9]  ( .D(n157), .CP(clock), .Q(_right3[9]) );
  HS65_GS_DFPQX9 \_right3_reg[8]  ( .D(n158), .CP(clock), .Q(_right3[8]) );
  HS65_GS_DFPQX9 \_right3_reg[7]  ( .D(n159), .CP(clock), .Q(_right3[7]) );
  HS65_GS_DFPQX9 \_right3_reg[6]  ( .D(n160), .CP(clock), .Q(_right3[6]) );
  HS65_GS_DFPQX9 \_right3_reg[5]  ( .D(n161), .CP(clock), .Q(_right3[5]) );
  HS65_GS_DFPQX9 \_right3_reg[4]  ( .D(n506), .CP(clock), .Q(_right3[4]) );
  HS65_GS_DFPQX9 \_right3_reg[3]  ( .D(n507), .CP(clock), .Q(_right3[3]) );
  HS65_GS_DFPQX9 \_right3_reg[2]  ( .D(n508), .CP(clock), .Q(_right3[2]) );
  HS65_GS_DFPQX9 \_right3_reg[1]  ( .D(n509), .CP(clock), .Q(_right3[1]) );
  HS65_GS_DFPQX9 \_right3_reg[0]  ( .D(n166), .CP(clock), .Q(_right3[0]) );
  HS65_GS_DFPQX9 wr_en_buf_reg ( .D(n215), .CP(clock), .Q(wr_en) );
  HS65_GS_DFPQX9 \epsilon_buf_reg[15]  ( .D(n265), .CP(clock), .Q(
        epsilon_buf[15]) );
  HS65_GS_DFPQX9 \epsilon_buf_reg[14]  ( .D(n266), .CP(clock), .Q(
        epsilon_buf[14]) );
  HS65_GS_DFPQX9 \epsilon_buf_reg[13]  ( .D(n267), .CP(clock), .Q(
        epsilon_buf[13]) );
  HS65_GS_DFPQX9 \epsilon_buf_reg[12]  ( .D(n268), .CP(clock), .Q(
        epsilon_buf[12]) );
  HS65_GS_DFPQX9 \epsilon_buf_reg[11]  ( .D(n269), .CP(clock), .Q(
        epsilon_buf[11]) );
  HS65_GS_DFPQX9 \epsilon_buf_reg[10]  ( .D(n270), .CP(clock), .Q(
        epsilon_buf[10]) );
  HS65_GS_DFPQX9 \epsilon_buf_reg[9]  ( .D(n271), .CP(clock), .Q(
        epsilon_buf[9]) );
  HS65_GS_DFPQX9 \epsilon_buf_reg[8]  ( .D(n272), .CP(clock), .Q(
        epsilon_buf[8]) );
  HS65_GS_DFPQX9 \epsilon_buf_reg[7]  ( .D(n273), .CP(clock), .Q(
        epsilon_buf[7]) );
  HS65_GS_DFPQX9 \epsilon_buf_reg[6]  ( .D(n274), .CP(clock), .Q(
        epsilon_buf[6]) );
  HS65_GS_DFPQX9 \epsilon_buf_reg[5]  ( .D(n275), .CP(clock), .Q(
        epsilon_buf[5]) );
  HS65_GS_DFPQX9 \epsilon_buf_reg[4]  ( .D(n276), .CP(clock), .Q(
        epsilon_buf[4]) );
  HS65_GS_DFPQX9 \epsilon_buf_reg[3]  ( .D(n277), .CP(clock), .Q(
        epsilon_buf[3]) );
  HS65_GS_DFPQX9 \epsilon_buf_reg[2]  ( .D(n278), .CP(clock), .Q(
        epsilon_buf[2]) );
  HS65_GS_DFPQX9 \epsilon_buf_reg[1]  ( .D(n279), .CP(clock), .Q(
        epsilon_buf[1]) );
  HS65_GS_DFPQX9 \epsilon_buf_reg[0]  ( .D(n280), .CP(clock), .Q(
        epsilon_buf[0]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[0]  ( .D(n231), .CP(clock), .Q(data_out[0])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[1]  ( .D(n230), .CP(clock), .Q(data_out[1])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[2]  ( .D(n229), .CP(clock), .Q(data_out[2])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[3]  ( .D(n228), .CP(clock), .Q(data_out[3])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[4]  ( .D(n227), .CP(clock), .Q(data_out[4])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[5]  ( .D(n226), .CP(clock), .Q(data_out[5])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[6]  ( .D(n225), .CP(clock), .Q(data_out[6])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[7]  ( .D(n224), .CP(clock), .Q(data_out[7])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[8]  ( .D(n223), .CP(clock), .Q(data_out[8])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[9]  ( .D(n222), .CP(clock), .Q(data_out[9])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[10]  ( .D(n221), .CP(clock), .Q(
        data_out[10]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[11]  ( .D(n220), .CP(clock), .Q(
        data_out[11]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[12]  ( .D(n219), .CP(clock), .Q(
        data_out[12]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[13]  ( .D(n218), .CP(clock), .Q(
        data_out[13]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[14]  ( .D(n217), .CP(clock), .Q(
        data_out[14]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[15]  ( .D(n216), .CP(clock), .Q(
        data_out[15]) );
  HS65_GS_DFPQX9 \explore_constant_reg[15]  ( .D(n281), .CP(clock), .Q(
        explore_constant[15]) );
  HS65_GS_DFPQX9 \explore_constant_reg[14]  ( .D(n282), .CP(clock), .Q(
        explore_constant[14]) );
  HS65_GS_DFPQX9 \explore_constant_reg[13]  ( .D(n283), .CP(clock), .Q(
        explore_constant[13]) );
  HS65_GS_DFPQX9 \explore_constant_reg[12]  ( .D(n284), .CP(clock), .Q(
        explore_constant[12]) );
  HS65_GS_DFPQX9 \explore_constant_reg[11]  ( .D(n285), .CP(clock), .Q(
        explore_constant[11]) );
  HS65_GS_DFPQX9 \explore_constant_reg[10]  ( .D(n286), .CP(clock), .Q(
        explore_constant[10]) );
  HS65_GS_DFPQX9 \explore_constant_reg[9]  ( .D(n287), .CP(clock), .Q(
        explore_constant[9]) );
  HS65_GS_DFPQX9 \explore_constant_reg[8]  ( .D(n288), .CP(clock), .Q(
        explore_constant[8]) );
  HS65_GS_DFPQX9 \explore_constant_reg[7]  ( .D(n289), .CP(clock), .Q(
        explore_constant[7]) );
  HS65_GS_DFPQX9 \explore_constant_reg[6]  ( .D(n290), .CP(clock), .Q(
        explore_constant[6]) );
  HS65_GS_DFPQX9 \explore_constant_reg[5]  ( .D(n291), .CP(clock), .Q(
        explore_constant[5]) );
  HS65_GS_DFPQX9 \explore_constant_reg[4]  ( .D(n292), .CP(clock), .Q(
        explore_constant[4]) );
  HS65_GS_DFPQX9 \explore_constant_reg[3]  ( .D(n293), .CP(clock), .Q(
        explore_constant[3]) );
  HS65_GS_DFPQX9 \explore_constant_reg[2]  ( .D(n294), .CP(clock), .Q(
        explore_constant[2]) );
  HS65_GS_DFPQX9 \explore_constant_reg[1]  ( .D(n295), .CP(clock), .Q(
        explore_constant[1]) );
  HS65_GS_DFPQX9 \explore_constant_reg[0]  ( .D(n296), .CP(clock), .Q(
        explore_constant[0]) );
  HS65_GS_DFPQX9 \address_count_reg[10]  ( .D(n121), .CP(clock), .Q(
        address[10]) );
  HS65_GS_DFPQX9 \address_count_reg[9]  ( .D(n122), .CP(clock), .Q(address[9])
         );
  HS65_GS_DFPQX9 \address_count_reg[8]  ( .D(n123), .CP(clock), .Q(address[8])
         );
  HS65_GS_DFPQX9 \address_count_reg[7]  ( .D(n124), .CP(clock), .Q(address[7])
         );
  HS65_GS_DFPQX9 \address_count_reg[6]  ( .D(n125), .CP(clock), .Q(address[6])
         );
  HS65_GS_DFPQX9 \address_count_reg[5]  ( .D(n126), .CP(clock), .Q(address[5])
         );
  HS65_GS_DFPQX9 \address_count_reg[4]  ( .D(n127), .CP(clock), .Q(address[4])
         );
  HS65_GS_DFPQX9 \address_count_reg[3]  ( .D(n128), .CP(clock), .Q(address[3])
         );
  HS65_GS_DFPQX9 \address_count_reg[2]  ( .D(n129), .CP(clock), .Q(address[2])
         );
  HS65_GS_DFPQX9 \address_count_reg[1]  ( .D(n130), .CP(clock), .Q(address[1])
         );
  HS65_GS_DFPQX9 \address_count_reg[0]  ( .D(n131), .CP(clock), .Q(address[0])
         );
  HS65_GS_DFPQX9 \_right_reg[31]  ( .D(n168), .CP(clock), .Q(_right[31]) );
  HS65_GS_DFPQX9 \_right_reg[30]  ( .D(n169), .CP(clock), .Q(_right[30]) );
  HS65_GS_DFPQX9 \_right_reg[29]  ( .D(n170), .CP(clock), .Q(_right[29]) );
  HS65_GS_DFPQX9 \_right_reg[28]  ( .D(n171), .CP(clock), .Q(_right[28]) );
  HS65_GS_DFPQX9 \_right_reg[27]  ( .D(n172), .CP(clock), .Q(_right[27]) );
  HS65_GS_DFPQX9 \_right_reg[26]  ( .D(n173), .CP(clock), .Q(_right[26]) );
  HS65_GS_DFPQX9 \_right_reg[25]  ( .D(n174), .CP(clock), .Q(_right[25]) );
  HS65_GS_DFPQX9 \_right_reg[24]  ( .D(n175), .CP(clock), .Q(_right[24]) );
  HS65_GS_DFPQX9 \_right_reg[23]  ( .D(n176), .CP(clock), .Q(_right[23]) );
  HS65_GS_DFPQX9 \_right_reg[22]  ( .D(n177), .CP(clock), .Q(_right[22]) );
  HS65_GS_DFPQX9 \_right_reg[21]  ( .D(n178), .CP(clock), .Q(_right[21]) );
  HS65_GS_DFPQX9 \_right_reg[20]  ( .D(n179), .CP(clock), .Q(_right[20]) );
  HS65_GS_DFPQX9 \_right_reg[19]  ( .D(n180), .CP(clock), .Q(_right[19]) );
  HS65_GS_DFPQX9 \_right_reg[18]  ( .D(n181), .CP(clock), .Q(_right[18]) );
  HS65_GS_DFPQX9 \_right_reg[17]  ( .D(n182), .CP(clock), .Q(_right[17]) );
  HS65_GS_DFPQX9 \_right_reg[16]  ( .D(n183), .CP(clock), .Q(_right[16]) );
  HS65_GS_DFPQX9 \_right_reg[15]  ( .D(n184), .CP(clock), .Q(_right[15]) );
  HS65_GS_DFPQX9 \_right_reg[14]  ( .D(n185), .CP(clock), .Q(_right[14]) );
  HS65_GS_DFPQX9 \_right_reg[13]  ( .D(n186), .CP(clock), .Q(_right[13]) );
  HS65_GS_DFPQX9 \_right_reg[12]  ( .D(n187), .CP(clock), .Q(_right[12]) );
  HS65_GS_DFPQX9 \_right_reg[11]  ( .D(n188), .CP(clock), .Q(_right[11]) );
  HS65_GS_DFPQX9 \_right_reg[10]  ( .D(n189), .CP(clock), .Q(_right[10]) );
  HS65_GS_DFPQX9 \_right_reg[9]  ( .D(n190), .CP(clock), .Q(_right[9]) );
  HS65_GS_DFPQX9 \_right_reg[8]  ( .D(n191), .CP(clock), .Q(_right[8]) );
  HS65_GS_DFPQX9 \_right_reg[7]  ( .D(n192), .CP(clock), .Q(_right[7]) );
  HS65_GS_DFPQX9 \_right_reg[6]  ( .D(n193), .CP(clock), .Q(_right[6]) );
  HS65_GS_DFPQX9 \_right_reg[5]  ( .D(n194), .CP(clock), .Q(_right[5]) );
  HS65_GS_DFPQX9 \_right_reg[4]  ( .D(n195), .CP(clock), .Q(_right[4]) );
  HS65_GS_DFPQX9 \_right_reg[3]  ( .D(n196), .CP(clock), .Q(_right[3]) );
  HS65_GS_DFPQX9 \_right_reg[2]  ( .D(n197), .CP(clock), .Q(_right[2]) );
  HS65_GS_DFPQX9 \_right_reg[1]  ( .D(n198), .CP(clock), .Q(_right[1]) );
  HS65_GS_DFPQX9 \_left_reg[31]  ( .D(n199), .CP(clock), .Q(_left[31]) );
  HS65_GS_DFPQX9 \_left_reg[30]  ( .D(n200), .CP(clock), .Q(_left[30]) );
  HS65_GS_DFPQX9 \_left_reg[29]  ( .D(n201), .CP(clock), .Q(_left[29]) );
  HS65_GS_DFPQX9 \_left_reg[28]  ( .D(n202), .CP(clock), .Q(_left[28]) );
  HS65_GS_DFPQX9 \_left_reg[27]  ( .D(n203), .CP(clock), .Q(_left[27]) );
  HS65_GS_DFPQX9 \_left_reg[26]  ( .D(n204), .CP(clock), .Q(_left[26]) );
  HS65_GS_DFPQX9 \_left_reg[25]  ( .D(n205), .CP(clock), .Q(_left[25]) );
  HS65_GS_DFPQX9 \_left_reg[24]  ( .D(n206), .CP(clock), .Q(_left[24]) );
  HS65_GS_DFPQX9 \_left_reg[23]  ( .D(n207), .CP(clock), .Q(_left[23]) );
  HS65_GS_DFPQX9 \_left_reg[22]  ( .D(n208), .CP(clock), .Q(_left[22]) );
  HS65_GS_DFPQX9 \_left_reg[21]  ( .D(n209), .CP(clock), .Q(_left[21]) );
  HS65_GS_DFPQX9 \_left_reg[20]  ( .D(n210), .CP(clock), .Q(_left[20]) );
  HS65_GS_DFPQX9 \_left_reg[19]  ( .D(n211), .CP(clock), .Q(_left[19]) );
  HS65_GS_DFPQX9 \_left_reg[18]  ( .D(n212), .CP(clock), .Q(_left[18]) );
  HS65_GS_DFPQX9 \_left_reg[17]  ( .D(n213), .CP(clock), .Q(_left[17]) );
  HS65_GS_DFPQX9 \_left_reg[16]  ( .D(n214), .CP(clock), .Q(_left[16]) );
  HS65_GS_DFPQX9 two_reg ( .D(n134), .CP(clock), .Q(two) );
  HS65_GS_DFPQX9 \nexthop_buf_reg[15]  ( .D(n106), .CP(clock), .Q(nexthop[15])
         );
  HS65_GS_DFPQX9 \nexthop_buf_reg[14]  ( .D(n107), .CP(clock), .Q(nexthop[14])
         );
  HS65_GS_DFPQX9 \nexthop_buf_reg[13]  ( .D(n108), .CP(clock), .Q(nexthop[13])
         );
  HS65_GS_DFPQX9 \nexthop_buf_reg[12]  ( .D(n109), .CP(clock), .Q(nexthop[12])
         );
  HS65_GS_DFPQX9 \nexthop_buf_reg[11]  ( .D(n110), .CP(clock), .Q(nexthop[11])
         );
  HS65_GS_DFPQX9 \nexthop_buf_reg[10]  ( .D(n111), .CP(clock), .Q(nexthop[10])
         );
  HS65_GS_DFPQX9 \nexthop_buf_reg[9]  ( .D(n112), .CP(clock), .Q(nexthop[9])
         );
  HS65_GS_DFPQX9 \nexthop_buf_reg[8]  ( .D(n113), .CP(clock), .Q(nexthop[8])
         );
  HS65_GS_DFPQX9 \nexthop_buf_reg[7]  ( .D(n114), .CP(clock), .Q(nexthop[7])
         );
  HS65_GS_DFPQX9 \nexthop_buf_reg[5]  ( .D(n115), .CP(clock), .Q(nexthop[5])
         );
  HS65_GS_DFPQX9 \nexthop_buf_reg[4]  ( .D(n116), .CP(clock), .Q(nexthop[4])
         );
  HS65_GS_DFPQX9 \nexthop_buf_reg[3]  ( .D(n117), .CP(clock), .Q(nexthop[3])
         );
  HS65_GS_DFPQX9 \nexthop_buf_reg[2]  ( .D(n118), .CP(clock), .Q(nexthop[2])
         );
  HS65_GS_DFPQX9 \nexthop_buf_reg[1]  ( .D(n119), .CP(clock), .Q(nexthop[1])
         );
  HS65_GS_DFPQX9 en_rng_buf_reg ( .D(n120), .CP(clock), .Q(en_rng) );
  HS65_GS_DFPQX9 start_rngAddress_buf_reg ( .D(n232), .CP(clock), .Q(
        start_rngAddress) );
  HS65_GS_DFPQX9 \which_buf_reg[15]  ( .D(n233), .CP(clock), .Q(which[15]) );
  HS65_GS_DFPQX9 \which_buf_reg[14]  ( .D(n234), .CP(clock), .Q(which[14]) );
  HS65_GS_DFPQX9 \which_buf_reg[13]  ( .D(n235), .CP(clock), .Q(which[13]) );
  HS65_GS_DFPQX9 \which_buf_reg[12]  ( .D(n236), .CP(clock), .Q(which[12]) );
  HS65_GS_DFPQX9 \which_buf_reg[11]  ( .D(n237), .CP(clock), .Q(which[11]) );
  HS65_GS_DFPQX9 \which_buf_reg[10]  ( .D(n238), .CP(clock), .Q(which[10]) );
  HS65_GS_DFPQX9 \which_buf_reg[9]  ( .D(n239), .CP(clock), .Q(which[9]) );
  HS65_GS_DFPQX9 \which_buf_reg[8]  ( .D(n240), .CP(clock), .Q(which[8]) );
  HS65_GS_DFPQX9 \which_buf_reg[7]  ( .D(n241), .CP(clock), .Q(which[7]) );
  HS65_GS_DFPQX9 \which_buf_reg[6]  ( .D(n242), .CP(clock), .Q(which[6]) );
  HS65_GS_DFPQX9 \which_buf_reg[5]  ( .D(n243), .CP(clock), .Q(which[5]) );
  HS65_GS_DFPQX9 \which_buf_reg[4]  ( .D(n244), .CP(clock), .Q(which[4]) );
  HS65_GS_DFPQX9 \which_buf_reg[3]  ( .D(n245), .CP(clock), .Q(which[3]) );
  HS65_GS_DFPQX9 \which_buf_reg[2]  ( .D(n246), .CP(clock), .Q(which[2]) );
  HS65_GS_DFPQX9 \which_buf_reg[1]  ( .D(n247), .CP(clock), .Q(which[1]) );
  HS65_GS_DFPQX9 \betterNeighborCount_buf_reg[15]  ( .D(n248), .CP(clock), .Q(
        betterNeighborCount[15]) );
  HS65_GS_DFPQX9 \betterNeighborCount_buf_reg[14]  ( .D(n249), .CP(clock), .Q(
        betterNeighborCount[14]) );
  HS65_GS_DFPQX9 \betterNeighborCount_buf_reg[13]  ( .D(n250), .CP(clock), .Q(
        betterNeighborCount[13]) );
  HS65_GS_DFPQX9 \betterNeighborCount_buf_reg[12]  ( .D(n251), .CP(clock), .Q(
        betterNeighborCount[12]) );
  HS65_GS_DFPQX9 \betterNeighborCount_buf_reg[11]  ( .D(n252), .CP(clock), .Q(
        betterNeighborCount[11]) );
  HS65_GS_DFPQX9 \betterNeighborCount_buf_reg[10]  ( .D(n253), .CP(clock), .Q(
        betterNeighborCount[10]) );
  HS65_GS_DFPQX9 \betterNeighborCount_buf_reg[9]  ( .D(n254), .CP(clock), .Q(
        betterNeighborCount[9]) );
  HS65_GS_DFPQX9 \betterNeighborCount_buf_reg[8]  ( .D(n255), .CP(clock), .Q(
        betterNeighborCount[8]) );
  HS65_GS_DFPQX9 \betterNeighborCount_buf_reg[7]  ( .D(n256), .CP(clock), .Q(
        betterNeighborCount[7]) );
  HS65_GS_DFPQX9 \betterNeighborCount_buf_reg[6]  ( .D(n257), .CP(clock), .Q(
        betterNeighborCount[6]) );
  HS65_GS_DFPQX9 \betterNeighborCount_buf_reg[5]  ( .D(n258), .CP(clock), .Q(
        betterNeighborCount[5]) );
  HS65_GS_DFPQX9 \betterNeighborCount_buf_reg[4]  ( .D(n259), .CP(clock), .Q(
        betterNeighborCount[4]) );
  HS65_GS_DFPQX9 \betterNeighborCount_buf_reg[3]  ( .D(n260), .CP(clock), .Q(
        betterNeighborCount[3]) );
  HS65_GS_DFPQX9 \betterNeighborCount_buf_reg[2]  ( .D(n261), .CP(clock), .Q(
        betterNeighborCount[2]) );
  HS65_GS_DFPQX9 \betterNeighborCount_buf_reg[1]  ( .D(n262), .CP(clock), .Q(
        betterNeighborCount[1]) );
  HS65_GS_DFPQX9 \betterNeighborCount_buf_reg[0]  ( .D(n263), .CP(clock), .Q(
        betterNeighborCount[0]) );
  HS65_GS_DFPQX9 \which_buf_reg[0]  ( .D(n264), .CP(clock), .Q(which[0]) );
  winnerPolicy_DW01_sub_0 sub_131 ( .A(epsilon_buf), .B(epsilon_step), .CI(
        1'b0), .DIFF({N147, N146, N145, N144, N143, N142, N141, N140, N139, 
        N138, N137, N136, N135, N134, N133, N132}) );
  winnerPolicy_DW02_mult_1 mult_171 ( .A({n41, mybest[14:10], N244, N243, N242, 
        N241, N240, N239, N238, N237, N236, N235}), .B({1'b1, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TC(1'b0), .PRODUCT({N229, N228, N227, N226, N225, N224, N223, N222, N221, 
        N220, N219, N218, N217, N216, N215, N214, N213, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14}) );
  winnerPolicy_DW02_mult_0 mult_147 ( .A({n41, mybest[14:10], N244, N243, N242, 
        N241, N240, N239, N238, N237, N236, N235}), .B({1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0}), .TC(1'b0), .PRODUCT({N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, 
        N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, 
        SYNOPSYS_UNCONNECTED__15}) );
  HS65_GS_DFPQNX9 three_reg ( .D(n133), .CP(clock), .QN(n36) );
  HS65_GS_DFPQNX9 one_reg ( .D(n167), .CP(clock), .QN(n37) );
  HS65_GS_DFPQNX9 done_winnerPolicy_buf_reg ( .D(n132), .CP(clock), .QN(n18)
         );
  HS65_GS_DFPHQX4 \nexthop_buf_reg[6]  ( .D(n44), .E(n45), .CP(clock), .Q(
        nexthop[6]) );
  HS65_GS_DFPHQX4 \nexthop_buf_reg[0]  ( .D(n49), .E(n45), .CP(clock), .Q(
        nexthop[0]) );
  HS65_GS_NOR2X6 U3 ( .A(n435), .B(n63), .Z(n1) );
  HS65_GS_NOR2X6 U4 ( .A(n402), .B(n63), .Z(n2) );
  HS65_GS_AOI112X4 U5 ( .A(n397), .B(epsilon_step[15]), .C(n405), .D(n406), 
        .Z(n404) );
  HS65_GS_BFX9 U6 ( .A(nrst), .Z(n64) );
  HS65_GS_BFX9 U7 ( .A(n400), .Z(n21) );
  HS65_GS_BFX9 U8 ( .A(n14), .Z(n12) );
  HS65_GS_BFX9 U9 ( .A(n14), .Z(n11) );
  HS65_GS_BFX9 U10 ( .A(n15), .Z(n10) );
  HS65_GS_BFX9 U11 ( .A(n15), .Z(n9) );
  HS65_GS_BFX9 U12 ( .A(n15), .Z(n8) );
  HS65_GS_BFX9 U13 ( .A(n400), .Z(n17) );
  HS65_GS_BFX9 U14 ( .A(n400), .Z(n19) );
  HS65_GS_BFX9 U15 ( .A(n17), .Z(n20) );
  HS65_GS_BFX9 U16 ( .A(n337), .Z(n6) );
  HS65_GS_BFX9 U17 ( .A(n337), .Z(n5) );
  HS65_GS_BFX9 U18 ( .A(n337), .Z(n3) );
  HS65_GS_BFX9 U20 ( .A(n33), .Z(n26) );
  HS65_GS_BFX9 U21 ( .A(n2), .Z(n22) );
  HS65_GS_BFX9 U22 ( .A(n32), .Z(n30) );
  HS65_GS_BFX9 U23 ( .A(n32), .Z(n29) );
  HS65_GS_BFX9 U24 ( .A(n33), .Z(n28) );
  HS65_GS_BFX9 U25 ( .A(n33), .Z(n27) );
  HS65_GS_BFX9 U26 ( .A(n2), .Z(n24) );
  HS65_GS_BFX9 U27 ( .A(n2), .Z(n23) );
  HS65_GS_BFX9 U28 ( .A(n1), .Z(n39) );
  HS65_GS_BFX9 U29 ( .A(n1), .Z(n38) );
  HS65_GS_BFX9 U30 ( .A(n1), .Z(n35) );
  HS65_GS_BFX9 U31 ( .A(n2), .Z(n25) );
  HS65_GS_BFX9 U32 ( .A(n337), .Z(n7) );
  HS65_GS_BFX9 U33 ( .A(n14), .Z(n13) );
  HS65_GS_BFX9 U34 ( .A(n32), .Z(n31) );
  HS65_GS_BFX9 U35 ( .A(n1), .Z(n40) );
  HS65_GS_IVX9 U36 ( .A(n64), .Z(n63) );
  HS65_GS_NAND2X7 U37 ( .A(n459), .B(n64), .Z(n346) );
  HS65_GS_NAND2X7 U38 ( .A(n398), .B(n64), .Z(n382) );
  HS65_GS_BFX9 U39 ( .A(n16), .Z(n15) );
  HS65_GS_BFX9 U40 ( .A(n16), .Z(n14) );
  HS65_GS_BFX9 U41 ( .A(n34), .Z(n32) );
  HS65_GS_BFX9 U42 ( .A(n34), .Z(n33) );
  HS65_GS_BFX9 U43 ( .A(mybest[15]), .Z(n41) );
  HS65_GS_NOR2AX6 U44 ( .A(n338), .B(n429), .Z(n403) );
  HS65_GS_NOR3X4 U45 ( .A(n63), .B(n445), .C(n452), .Z(n446) );
  HS65_GS_NOR3AX4 U46 ( .A(n341), .B(n462), .C(n63), .Z(n461) );
  HS65_GS_BFX9 U47 ( .A(n343), .Z(n16) );
  HS65_GS_BFX9 U48 ( .A(n428), .Z(n34) );
  HS65_GS_NOR2X6 U49 ( .A(n338), .B(n63), .Z(n427) );
  HS65_GS_AND3X9 U50 ( .A(n403), .B(n401), .C(n453), .Z(n445) );
  HS65_GS_NAND2X7 U51 ( .A(n378), .B(n379), .Z(n344) );
  HS65_GS_NAND2X7 U52 ( .A(n378), .B(n399), .Z(n380) );
  HS65_GS_IVX9 U53 ( .A(n42), .Z(n43) );
  HS65_GS_IVX9 U54 ( .A(n52), .Z(n53) );
  HS65_GS_FA1X4 U55 ( .A0(N220), .B0(N242), .CI(\add_173/carry[22] ), .CO(
        \add_173/carry[23] ), .S0(N252) );
  HS65_GS_FA1X4 U56 ( .A0(N224), .B0(mybest[11]), .CI(\add_173/carry[26] ), 
        .CO(\add_173/carry[27] ), .S0(N256) );
  HS65_GS_FA1X4 U57 ( .A0(N222), .B0(N244), .CI(\add_173/carry[24] ), .CO(
        \add_173/carry[25] ), .S0(N254) );
  HS65_GS_FA1X4 U58 ( .A0(N226), .B0(mybest[13]), .CI(\add_173/carry[28] ), 
        .CO(\add_173/carry[29] ), .S0(N258) );
  HS65_GS_FA1X4 U59 ( .A0(N228), .B0(n41), .CI(\add_173/carry[30] ), .CO(
        \add_173/carry[31] ), .S0(N260) );
  HS65_GS_IVX9 U60 ( .A(rng_address[2]), .Z(N121) );
  HS65_GS_IVX9 U61 ( .A(data_in[1]), .Z(n46) );
  HS65_GS_IVX9 U62 ( .A(data_in[2]), .Z(n47) );
  HS65_GS_IVX9 U63 ( .A(data_in[3]), .Z(n48) );
  HS65_GS_IVX9 U64 ( .A(data_in[4]), .Z(n50) );
  HS65_GS_IVX9 U65 ( .A(data_in[5]), .Z(n51) );
  HS65_GS_IVX9 U66 ( .A(data_in[7]), .Z(n54) );
  HS65_GS_IVX9 U67 ( .A(data_in[8]), .Z(n55) );
  HS65_GS_IVX9 U68 ( .A(data_in[9]), .Z(n56) );
  HS65_GS_IVX9 U69 ( .A(data_in[10]), .Z(n57) );
  HS65_GS_IVX9 U70 ( .A(data_in[11]), .Z(n58) );
  HS65_GS_IVX9 U71 ( .A(data_in[12]), .Z(n59) );
  HS65_GS_IVX9 U72 ( .A(data_in[13]), .Z(n60) );
  HS65_GS_IVX9 U73 ( .A(data_in[14]), .Z(n61) );
  HS65_GS_IVX9 U74 ( .A(data_in[15]), .Z(n62) );
  HS65_GS_BFX9 U75 ( .A(data_in[0]), .Z(n42) );
  HS65_GS_BFX9 U76 ( .A(data_in[6]), .Z(n52) );
  HS65_GS_IVX9 U77 ( .A(_left[30]), .Z(n311) );
  HS65_GS_IVX9 U78 ( .A(_right[31]), .Z(n95) );
  HS65_GS_IVX9 U79 ( .A(_left[31]), .Z(n94) );
  HS65_GS_FA1X4 U80 ( .A0(N223), .B0(mybest[10]), .CI(\add_173/carry[25] ), 
        .CO(\add_173/carry[26] ), .S0(N255) );
  HS65_GS_FA1X4 U81 ( .A0(N215), .B0(N237), .CI(\add_173/carry[17] ), .CO(
        \add_173/carry[18] ), .S0(N247) );
  HS65_GS_FA1X4 U82 ( .A0(N219), .B0(N241), .CI(\add_173/carry[21] ), .CO(
        \add_173/carry[22] ), .S0(N251) );
  HS65_GS_FA1X4 U83 ( .A0(N227), .B0(mybest[14]), .CI(\add_173/carry[29] ), 
        .CO(\add_173/carry[30] ), .S0(N259) );
  HS65_GS_FA1X4 U84 ( .A0(N225), .B0(mybest[12]), .CI(\add_173/carry[27] ), 
        .CO(\add_173/carry[28] ), .S0(N257) );
  HS65_GS_FA1X4 U85 ( .A0(N216), .B0(N238), .CI(\add_173/carry[18] ), .CO(
        \add_173/carry[19] ), .S0(N248) );
  HS65_GS_FA1X4 U86 ( .A0(N218), .B0(N240), .CI(\add_173/carry[20] ), .CO(
        \add_173/carry[21] ), .S0(N250) );
  HS65_GS_FA1X4 U87 ( .A0(N217), .B0(N239), .CI(\add_173/carry[19] ), .CO(
        \add_173/carry[20] ), .S0(N249) );
  HS65_GS_FA1X4 U88 ( .A0(N221), .B0(N243), .CI(\add_173/carry[23] ), .CO(
        \add_173/carry[24] ), .S0(N253) );
  HS65_GS_FA1X4 U89 ( .A0(N214), .B0(N236), .CI(\add_173/carry[16] ), .CO(
        \add_173/carry[17] ), .S0(N246) );
  HS65_GS_IVX9 U90 ( .A(_left[29]), .Z(n93) );
  HS65_GS_IVX9 U91 ( .A(_left[22]), .Z(n307) );
  HS65_GS_IVX9 U92 ( .A(_left[23]), .Z(n90) );
  HS65_GS_IVX9 U93 ( .A(_left[28]), .Z(n310) );
  HS65_GS_IVX9 U94 ( .A(_left[17]), .Z(n87) );
  HS65_GS_IVX9 U95 ( .A(_left[19]), .Z(n88) );
  HS65_GS_IVX9 U96 ( .A(_left[21]), .Z(n89) );
  HS65_GS_IVX9 U97 ( .A(_left[16]), .Z(n86) );
  HS65_GS_IVX9 U98 ( .A(bestneighborID[1]), .Z(n336) );
  HS65_GS_IVX9 U99 ( .A(_left[18]), .Z(n305) );
  HS65_GS_IVX9 U100 ( .A(_left[20]), .Z(n306) );
  HS65_GS_IVX9 U101 ( .A(_left[24]), .Z(n308) );
  HS65_GS_IVX9 U102 ( .A(_left[26]), .Z(n309) );
  HS65_GS_IVX9 U103 ( .A(_left[25]), .Z(n91) );
  HS65_GS_IVX9 U104 ( .A(_left[27]), .Z(n92) );
  HS65_GS_IVX9 U105 ( .A(_right3[31]), .Z(n312) );
  HS65_GS_IVX9 U106 ( .A(MY_NODE_ID[1]), .Z(n335) );
  HS65_GS_IVX9 U107 ( .A(n45), .Z(n462) );
  HS65_GSS_XNOR2X3 U108 ( .A(rng_address[9]), .B(\add_121/carry[10] ), .Z(N128) );
  HS65_GS_OR2X4 U109 ( .A(\add_121/carry[9] ), .B(rng_address[8]), .Z(
        \add_121/carry[10] ) );
  HS65_GSS_XNOR2X3 U110 ( .A(rng_address[8]), .B(\add_121/carry[9] ), .Z(N127)
         );
  HS65_GS_AND2X4 U111 ( .A(rng_address[7]), .B(\add_121/carry[8] ), .Z(
        \add_121/carry[9] ) );
  HS65_GSS_XOR2X3 U112 ( .A(\add_121/carry[8] ), .B(rng_address[7]), .Z(N126)
         );
  HS65_GS_AND2X4 U113 ( .A(rng_address[6]), .B(\add_121/carry[7] ), .Z(
        \add_121/carry[8] ) );
  HS65_GSS_XOR2X3 U114 ( .A(\add_121/carry[7] ), .B(rng_address[6]), .Z(N125)
         );
  HS65_GS_OR2X4 U115 ( .A(\add_121/carry[6] ), .B(rng_address[5]), .Z(
        \add_121/carry[7] ) );
  HS65_GSS_XNOR2X3 U116 ( .A(rng_address[5]), .B(\add_121/carry[6] ), .Z(N124)
         );
  HS65_GS_OR2X4 U117 ( .A(\add_121/carry[5] ), .B(rng_address[4]), .Z(
        \add_121/carry[6] ) );
  HS65_GSS_XNOR2X3 U118 ( .A(rng_address[4]), .B(\add_121/carry[5] ), .Z(N123)
         );
  HS65_GS_AND2X4 U119 ( .A(rng_address[3]), .B(rng_address[2]), .Z(
        \add_121/carry[5] ) );
  HS65_GSS_XOR2X3 U120 ( .A(rng_address[2]), .B(rng_address[3]), .Z(N122) );
  HS65_GSS_XOR2X3 U121 ( .A(N229), .B(\add_173/carry[31] ), .Z(N261) );
  HS65_GS_AND2X4 U122 ( .A(N235), .B(N213), .Z(\add_173/carry[16] ) );
  HS65_GSS_XOR2X3 U123 ( .A(N213), .B(N235), .Z(N245) );
  HS65_GS_NOR3X1 U124 ( .A(_right[7]), .B(_right[9]), .C(_right[8]), .Z(n66)
         );
  HS65_GS_NOR4X4 U125 ( .A(_right[4]), .B(_right[3]), .C(_right[2]), .D(
        _right[1]), .Z(n65) );
  HS65_GS_NAND4ABX3 U126 ( .A(_right[6]), .B(_right[5]), .C(n66), .D(n65), .Z(
        n70) );
  HS65_GS_AOI12X2 U127 ( .A(_right[16]), .B(n86), .C(_right[0]), .Z(n68) );
  HS65_GS_NOR4X4 U128 ( .A(_right[15]), .B(_right[14]), .C(_right[13]), .D(
        _right[12]), .Z(n67) );
  HS65_GS_NAND4ABX3 U129 ( .A(_right[11]), .B(_right[10]), .C(n68), .D(n67), 
        .Z(n69) );
  HS65_GS_OA222X4 U130 ( .A(_right[16]), .B(n86), .C(n70), .D(n69), .E(
        _right[17]), .F(n87), .Z(n71) );
  HS65_GS_AO212X4 U131 ( .A(n87), .B(_right[17]), .C(n305), .D(_right[18]), 
        .E(n71), .Z(n72) );
  HS65_GS_OA212X4 U132 ( .A(_right[18]), .B(n305), .C(_right[19]), .D(n88), 
        .E(n72), .Z(n73) );
  HS65_GS_AO212X4 U133 ( .A(n88), .B(_right[19]), .C(n306), .D(_right[20]), 
        .E(n73), .Z(n74) );
  HS65_GS_OA212X4 U134 ( .A(_right[20]), .B(n306), .C(_right[21]), .D(n89), 
        .E(n74), .Z(n75) );
  HS65_GS_AO212X4 U135 ( .A(n89), .B(_right[21]), .C(n307), .D(_right[22]), 
        .E(n75), .Z(n76) );
  HS65_GS_OA212X4 U136 ( .A(_right[22]), .B(n307), .C(_right[23]), .D(n90), 
        .E(n76), .Z(n77) );
  HS65_GS_AO212X4 U137 ( .A(n90), .B(_right[23]), .C(n308), .D(_right[24]), 
        .E(n77), .Z(n78) );
  HS65_GS_OA212X4 U138 ( .A(_right[24]), .B(n308), .C(_right[25]), .D(n91), 
        .E(n78), .Z(n79) );
  HS65_GS_AO212X4 U139 ( .A(n91), .B(_right[25]), .C(n309), .D(_right[26]), 
        .E(n79), .Z(n80) );
  HS65_GS_OA212X4 U140 ( .A(_right[26]), .B(n309), .C(_right[27]), .D(n92), 
        .E(n80), .Z(n81) );
  HS65_GS_AO212X4 U141 ( .A(n92), .B(_right[27]), .C(n310), .D(_right[28]), 
        .E(n81), .Z(n82) );
  HS65_GS_OA212X4 U142 ( .A(_right[28]), .B(n310), .C(_right[29]), .D(n93), 
        .E(n82), .Z(n83) );
  HS65_GS_AO212X4 U143 ( .A(n93), .B(_right[29]), .C(n311), .D(_right[30]), 
        .E(n83), .Z(n84) );
  HS65_GS_OAI212X3 U144 ( .A(_right[30]), .B(n311), .C(_right[31]), .D(n94), 
        .E(n84), .Z(n85) );
  HS65_GS_OAI12X2 U145 ( .A(_left[31]), .B(n95), .C(n85), .Z(N196) );
  HS65_GS_NOR3X1 U146 ( .A(_right3[7]), .B(_right3[9]), .C(_right3[8]), .Z(n97) );
  HS65_GS_NOR4X4 U147 ( .A(_right3[4]), .B(_right3[3]), .C(_right3[2]), .D(
        _right3[1]), .Z(n96) );
  HS65_GS_NAND4ABX3 U148 ( .A(_right3[6]), .B(_right3[5]), .C(n97), .D(n96), 
        .Z(n101) );
  HS65_GS_AOI12X2 U149 ( .A(_right3[16]), .B(n86), .C(_right3[0]), .Z(n99) );
  HS65_GS_NOR4X4 U150 ( .A(_right3[15]), .B(_right3[14]), .C(_right3[13]), .D(
        _right3[12]), .Z(n98) );
  HS65_GS_NAND4ABX3 U151 ( .A(_right3[11]), .B(_right3[10]), .C(n99), .D(n98), 
        .Z(n100) );
  HS65_GS_OA222X4 U152 ( .A(_right3[16]), .B(n86), .C(n101), .D(n100), .E(
        _right3[17]), .F(n87), .Z(n102) );
  HS65_GS_AO212X4 U153 ( .A(n87), .B(_right3[17]), .C(n305), .D(_right3[18]), 
        .E(n102), .Z(n103) );
  HS65_GS_OA212X4 U154 ( .A(_right3[18]), .B(n305), .C(_right3[19]), .D(n88), 
        .E(n103), .Z(n104) );
  HS65_GS_AO212X4 U155 ( .A(n88), .B(_right3[19]), .C(n306), .D(_right3[20]), 
        .E(n104), .Z(n105) );
  HS65_GS_OA212X4 U156 ( .A(_right3[20]), .B(n306), .C(_right3[21]), .D(n89), 
        .E(n105), .Z(n162) );
  HS65_GS_AO212X4 U157 ( .A(n89), .B(_right3[21]), .C(n307), .D(_right3[22]), 
        .E(n162), .Z(n163) );
  HS65_GS_OA212X4 U158 ( .A(_right3[22]), .B(n307), .C(_right3[23]), .D(n90), 
        .E(n163), .Z(n164) );
  HS65_GS_AO212X4 U159 ( .A(n90), .B(_right3[23]), .C(n308), .D(_right3[24]), 
        .E(n164), .Z(n165) );
  HS65_GS_OA212X4 U160 ( .A(_right3[24]), .B(n308), .C(_right3[25]), .D(n91), 
        .E(n165), .Z(n298) );
  HS65_GS_AO212X4 U161 ( .A(n91), .B(_right3[25]), .C(n309), .D(_right3[26]), 
        .E(n298), .Z(n299) );
  HS65_GS_OA212X4 U162 ( .A(_right3[26]), .B(n309), .C(_right3[27]), .D(n92), 
        .E(n299), .Z(n300) );
  HS65_GS_AO212X4 U163 ( .A(n92), .B(_right3[27]), .C(n310), .D(_right3[28]), 
        .E(n300), .Z(n301) );
  HS65_GS_OA212X4 U164 ( .A(_right3[28]), .B(n310), .C(_right3[29]), .D(n93), 
        .E(n301), .Z(n302) );
  HS65_GS_AO212X4 U165 ( .A(n93), .B(_right3[29]), .C(n311), .D(_right3[30]), 
        .E(n302), .Z(n303) );
  HS65_GS_OAI212X3 U166 ( .A(_right3[30]), .B(n311), .C(_right3[31]), .D(n94), 
        .E(n303), .Z(n304) );
  HS65_GS_OAI12X2 U167 ( .A(_left[31]), .B(n312), .C(n304), .Z(N262) );
  HS65_GSS_XNOR2X3 U168 ( .A(MY_NODE_ID[14]), .B(bestneighborID[14]), .Z(n316)
         );
  HS65_GSS_XNOR2X3 U169 ( .A(MY_NODE_ID[13]), .B(bestneighborID[13]), .Z(n315)
         );
  HS65_GSS_XOR2X3 U170 ( .A(MY_NODE_ID[11]), .B(bestneighborID[11]), .Z(n314)
         );
  HS65_GSS_XOR2X3 U171 ( .A(MY_NODE_ID[12]), .B(bestneighborID[12]), .Z(n313)
         );
  HS65_GS_NOR4ABX2 U172 ( .A(n316), .B(n315), .C(n314), .D(n313), .Z(n334) );
  HS65_GSS_XNOR2X3 U173 ( .A(MY_NODE_ID[10]), .B(bestneighborID[10]), .Z(n320)
         );
  HS65_GSS_XNOR2X3 U174 ( .A(MY_NODE_ID[9]), .B(bestneighborID[9]), .Z(n319)
         );
  HS65_GSS_XOR2X3 U175 ( .A(MY_NODE_ID[7]), .B(bestneighborID[7]), .Z(n318) );
  HS65_GSS_XOR2X3 U176 ( .A(MY_NODE_ID[8]), .B(bestneighborID[8]), .Z(n317) );
  HS65_GS_NOR4ABX2 U177 ( .A(n320), .B(n319), .C(n318), .D(n317), .Z(n333) );
  HS65_GSS_XOR2X3 U178 ( .A(MY_NODE_ID[15]), .B(bestneighborID[15]), .Z(n326)
         );
  HS65_GSS_XOR2X3 U179 ( .A(MY_NODE_ID[2]), .B(bestneighborID[2]), .Z(n325) );
  HS65_GS_NOR2AX3 U180 ( .A(bestneighborID[0]), .B(MY_NODE_ID[0]), .Z(n321) );
  HS65_GS_OAI22X1 U181 ( .A(bestneighborID[1]), .B(n321), .C(n321), .D(n335), 
        .Z(n324) );
  HS65_GS_NOR2AX3 U182 ( .A(MY_NODE_ID[0]), .B(bestneighborID[0]), .Z(n322) );
  HS65_GS_OAI22X1 U183 ( .A(n322), .B(n336), .C(MY_NODE_ID[1]), .D(n322), .Z(
        n323) );
  HS65_GS_NAND4ABX3 U184 ( .A(n326), .B(n325), .C(n324), .D(n323), .Z(n332) );
  HS65_GSS_XOR2X3 U185 ( .A(MY_NODE_ID[3]), .B(bestneighborID[3]), .Z(n330) );
  HS65_GSS_XOR2X3 U186 ( .A(MY_NODE_ID[4]), .B(bestneighborID[4]), .Z(n329) );
  HS65_GSS_XNOR2X3 U187 ( .A(MY_NODE_ID[6]), .B(bestneighborID[6]), .Z(n328)
         );
  HS65_GSS_XNOR2X3 U188 ( .A(MY_NODE_ID[5]), .B(bestneighborID[5]), .Z(n327)
         );
  HS65_GS_NAND4ABX3 U189 ( .A(n330), .B(n329), .C(n328), .D(n327), .Z(n331) );
  HS65_GS_NOR4ABX2 U190 ( .A(n334), .B(n333), .C(n332), .D(n331), .Z(N263) );
  HS65_GS_AND2X4 U191 ( .A(_right3[4]), .B(n7), .Z(n506) );
  HS65_GS_AND2X4 U192 ( .A(_right3[3]), .B(n7), .Z(n507) );
  HS65_GS_AND2X4 U193 ( .A(_right3[2]), .B(n7), .Z(n508) );
  HS65_GS_AND2X4 U194 ( .A(_right3[1]), .B(n7), .Z(n509) );
  HS65_GS_IVX2 U195 ( .A(n18), .Z(done_winnerPolicy) );
  HS65_GS_OAI112X1 U196 ( .A(n338), .B(n43), .C(n339), .D(n340), .Z(n49) );
  HS65_GS_AOI12X2 U197 ( .A(besthop[0]), .B(n341), .C(n63), .Z(n340) );
  HS65_GS_OAI112X1 U198 ( .A(n338), .B(n53), .C(n339), .D(n342), .Z(n44) );
  HS65_GS_AOI12X2 U199 ( .A(besthop[6]), .B(n341), .C(n63), .Z(n342) );
  HS65_GS_AND2X4 U200 ( .A(_right[0]), .B(n13), .Z(n297) );
  HS65_GS_OAI22X1 U201 ( .A(n344), .B(n345), .C(n346), .D(n347), .Z(n296) );
  HS65_GS_IVX2 U202 ( .A(rng_out_4bit[0]), .Z(n347) );
  HS65_GS_IVX2 U203 ( .A(explore_constant[0]), .Z(n345) );
  HS65_GS_OAI22X1 U204 ( .A(n344), .B(n348), .C(n346), .D(n349), .Z(n295) );
  HS65_GS_IVX2 U205 ( .A(rng_out_4bit[1]), .Z(n349) );
  HS65_GS_OAI22X1 U206 ( .A(n344), .B(n350), .C(n346), .D(n351), .Z(n294) );
  HS65_GS_IVX2 U207 ( .A(rng_out_4bit[2]), .Z(n351) );
  HS65_GS_OAI22X1 U208 ( .A(n344), .B(n352), .C(n346), .D(n353), .Z(n293) );
  HS65_GS_IVX2 U209 ( .A(rng_out_4bit[3]), .Z(n353) );
  HS65_GS_OAI22X1 U210 ( .A(n344), .B(n354), .C(n346), .D(n355), .Z(n292) );
  HS65_GS_IVX2 U211 ( .A(rng_out_4bit[4]), .Z(n355) );
  HS65_GS_OAI22X1 U212 ( .A(n344), .B(n356), .C(n346), .D(n357), .Z(n291) );
  HS65_GS_IVX2 U213 ( .A(rng_out_4bit[5]), .Z(n357) );
  HS65_GS_OAI22X1 U214 ( .A(n344), .B(n358), .C(n346), .D(n359), .Z(n290) );
  HS65_GS_IVX2 U215 ( .A(rng_out_4bit[6]), .Z(n359) );
  HS65_GS_OAI22X1 U216 ( .A(n344), .B(n360), .C(n346), .D(n361), .Z(n289) );
  HS65_GS_IVX2 U217 ( .A(rng_out_4bit[7]), .Z(n361) );
  HS65_GS_OAI22X1 U218 ( .A(n344), .B(n362), .C(n346), .D(n363), .Z(n288) );
  HS65_GS_IVX2 U219 ( .A(rng_out_4bit[8]), .Z(n363) );
  HS65_GS_OAI22X1 U220 ( .A(n344), .B(n364), .C(n346), .D(n365), .Z(n287) );
  HS65_GS_IVX2 U221 ( .A(rng_out_4bit[9]), .Z(n365) );
  HS65_GS_OAI22X1 U222 ( .A(n344), .B(n366), .C(n346), .D(n367), .Z(n286) );
  HS65_GS_IVX2 U223 ( .A(rng_out_4bit[10]), .Z(n367) );
  HS65_GS_OAI22X1 U224 ( .A(n344), .B(n368), .C(n346), .D(n369), .Z(n285) );
  HS65_GS_IVX2 U225 ( .A(rng_out_4bit[11]), .Z(n369) );
  HS65_GS_OAI22X1 U226 ( .A(n344), .B(n370), .C(n346), .D(n371), .Z(n284) );
  HS65_GS_IVX2 U227 ( .A(rng_out_4bit[12]), .Z(n371) );
  HS65_GS_OAI22X1 U228 ( .A(n344), .B(n372), .C(n346), .D(n373), .Z(n283) );
  HS65_GS_IVX2 U229 ( .A(rng_out_4bit[13]), .Z(n373) );
  HS65_GS_OAI22X1 U230 ( .A(n344), .B(n374), .C(n346), .D(n375), .Z(n282) );
  HS65_GS_IVX2 U231 ( .A(rng_out_4bit[14]), .Z(n375) );
  HS65_GS_OAI22X1 U232 ( .A(n344), .B(n376), .C(n346), .D(n377), .Z(n281) );
  HS65_GS_IVX2 U233 ( .A(rng_out_4bit[15]), .Z(n377) );
  HS65_GS_OAI22X1 U234 ( .A(n380), .B(n381), .C(n43), .D(n382), .Z(n280) );
  HS65_GS_OAI22X1 U235 ( .A(n380), .B(n383), .C(n382), .D(n46), .Z(n279) );
  HS65_GS_OAI22X1 U236 ( .A(n380), .B(n384), .C(n382), .D(n47), .Z(n278) );
  HS65_GS_OAI22X1 U237 ( .A(n380), .B(n385), .C(n382), .D(n48), .Z(n277) );
  HS65_GS_OAI22X1 U238 ( .A(n380), .B(n386), .C(n382), .D(n50), .Z(n276) );
  HS65_GS_OAI22X1 U239 ( .A(n380), .B(n387), .C(n382), .D(n51), .Z(n275) );
  HS65_GS_OAI22X1 U240 ( .A(n380), .B(n388), .C(n53), .D(n382), .Z(n274) );
  HS65_GS_OAI22X1 U241 ( .A(n380), .B(n389), .C(n382), .D(n54), .Z(n273) );
  HS65_GS_OAI22X1 U242 ( .A(n380), .B(n390), .C(n382), .D(n55), .Z(n272) );
  HS65_GS_OAI22X1 U243 ( .A(n380), .B(n391), .C(n382), .D(n56), .Z(n271) );
  HS65_GS_OAI22X1 U244 ( .A(n380), .B(n392), .C(n382), .D(n57), .Z(n270) );
  HS65_GS_OAI22X1 U245 ( .A(n380), .B(n393), .C(n382), .D(n58), .Z(n269) );
  HS65_GS_OAI22X1 U246 ( .A(n380), .B(n394), .C(n382), .D(n59), .Z(n268) );
  HS65_GS_OAI22X1 U247 ( .A(n380), .B(n395), .C(n382), .D(n60), .Z(n267) );
  HS65_GS_OAI22X1 U248 ( .A(n380), .B(n396), .C(n382), .D(n61), .Z(n266) );
  HS65_GS_OAI22X1 U249 ( .A(n380), .B(n397), .C(n382), .D(n62), .Z(n265) );
  HS65_GS_AO22X4 U250 ( .A(which[0]), .B(n17), .C(n25), .D(rng_out_4bit[0]), 
        .Z(n264) );
  HS65_GS_AO22X4 U251 ( .A(betterNeighborCount[0]), .B(n17), .C(n25), .D(n42), 
        .Z(n263) );
  HS65_GS_AO22X4 U252 ( .A(betterNeighborCount[1]), .B(n17), .C(n25), .D(
        data_in[1]), .Z(n262) );
  HS65_GS_AO22X4 U253 ( .A(betterNeighborCount[2]), .B(n17), .C(n25), .D(
        data_in[2]), .Z(n261) );
  HS65_GS_AO22X4 U254 ( .A(betterNeighborCount[3]), .B(n17), .C(n25), .D(
        data_in[3]), .Z(n260) );
  HS65_GS_AO22X4 U255 ( .A(betterNeighborCount[4]), .B(n17), .C(n25), .D(
        data_in[4]), .Z(n259) );
  HS65_GS_AO22X4 U256 ( .A(betterNeighborCount[5]), .B(n17), .C(n24), .D(
        data_in[5]), .Z(n258) );
  HS65_GS_AO22X4 U257 ( .A(betterNeighborCount[6]), .B(n17), .C(n24), .D(n52), 
        .Z(n257) );
  HS65_GS_AO22X4 U258 ( .A(betterNeighborCount[7]), .B(n17), .C(n24), .D(
        data_in[7]), .Z(n256) );
  HS65_GS_AO22X4 U259 ( .A(betterNeighborCount[8]), .B(n19), .C(n24), .D(
        data_in[8]), .Z(n255) );
  HS65_GS_AO22X4 U260 ( .A(betterNeighborCount[9]), .B(n19), .C(n24), .D(
        data_in[9]), .Z(n254) );
  HS65_GS_AO22X4 U261 ( .A(betterNeighborCount[10]), .B(n19), .C(n24), .D(
        data_in[10]), .Z(n253) );
  HS65_GS_AO22X4 U262 ( .A(betterNeighborCount[11]), .B(n19), .C(n24), .D(
        data_in[11]), .Z(n252) );
  HS65_GS_AO22X4 U263 ( .A(betterNeighborCount[12]), .B(n19), .C(n24), .D(
        data_in[12]), .Z(n251) );
  HS65_GS_AO22X4 U264 ( .A(betterNeighborCount[13]), .B(n19), .C(n24), .D(
        data_in[13]), .Z(n250) );
  HS65_GS_AO22X4 U265 ( .A(betterNeighborCount[14]), .B(n19), .C(n23), .D(
        data_in[14]), .Z(n249) );
  HS65_GS_AO22X4 U266 ( .A(betterNeighborCount[15]), .B(n19), .C(n23), .D(
        data_in[15]), .Z(n248) );
  HS65_GS_AO22X4 U267 ( .A(which[1]), .B(n19), .C(n23), .D(rng_out_4bit[1]), 
        .Z(n247) );
  HS65_GS_AO22X4 U268 ( .A(which[2]), .B(n20), .C(n23), .D(rng_out_4bit[2]), 
        .Z(n246) );
  HS65_GS_AO22X4 U269 ( .A(which[3]), .B(n20), .C(n23), .D(rng_out_4bit[3]), 
        .Z(n245) );
  HS65_GS_AO22X4 U270 ( .A(which[4]), .B(n20), .C(n23), .D(rng_out_4bit[4]), 
        .Z(n244) );
  HS65_GS_AO22X4 U271 ( .A(which[5]), .B(n20), .C(n23), .D(rng_out_4bit[5]), 
        .Z(n243) );
  HS65_GS_AO22X4 U272 ( .A(which[6]), .B(n20), .C(n23), .D(rng_out_4bit[6]), 
        .Z(n242) );
  HS65_GS_AO22X4 U273 ( .A(which[7]), .B(n20), .C(n23), .D(rng_out_4bit[7]), 
        .Z(n241) );
  HS65_GS_AO22X4 U274 ( .A(which[8]), .B(n20), .C(n22), .D(rng_out_4bit[8]), 
        .Z(n240) );
  HS65_GS_AO22X4 U275 ( .A(which[9]), .B(n20), .C(n22), .D(rng_out_4bit[9]), 
        .Z(n239) );
  HS65_GS_AO22X4 U276 ( .A(which[10]), .B(n20), .C(n22), .D(rng_out_4bit[10]), 
        .Z(n238) );
  HS65_GS_AO22X4 U277 ( .A(which[11]), .B(n21), .C(n22), .D(rng_out_4bit[11]), 
        .Z(n237) );
  HS65_GS_AO22X4 U278 ( .A(which[12]), .B(n21), .C(n22), .D(rng_out_4bit[12]), 
        .Z(n236) );
  HS65_GS_AO22X4 U279 ( .A(which[13]), .B(n21), .C(n22), .D(rng_out_4bit[13]), 
        .Z(n235) );
  HS65_GS_AO22X4 U280 ( .A(which[14]), .B(n21), .C(n22), .D(rng_out_4bit[14]), 
        .Z(n234) );
  HS65_GS_AO22X4 U281 ( .A(which[15]), .B(n21), .C(n22), .D(rng_out_4bit[15]), 
        .Z(n233) );
  HS65_GS_AO31X4 U282 ( .A(n21), .B(n401), .C(start_rngAddress), .D(n22), .Z(
        n232) );
  HS65_GS_AO22X4 U283 ( .A(data_out[0]), .B(n403), .C(N132), .D(n404), .Z(n231) );
  HS65_GS_AO22X4 U284 ( .A(data_out[1]), .B(n403), .C(N133), .D(n404), .Z(n230) );
  HS65_GS_AO22X4 U285 ( .A(data_out[2]), .B(n403), .C(N134), .D(n404), .Z(n229) );
  HS65_GS_AO22X4 U286 ( .A(data_out[3]), .B(n403), .C(N135), .D(n404), .Z(n228) );
  HS65_GS_AO22X4 U287 ( .A(data_out[4]), .B(n403), .C(N136), .D(n404), .Z(n227) );
  HS65_GS_AO22X4 U288 ( .A(data_out[5]), .B(n403), .C(N137), .D(n404), .Z(n226) );
  HS65_GS_AO22X4 U289 ( .A(data_out[6]), .B(n403), .C(N138), .D(n404), .Z(n225) );
  HS65_GS_AO22X4 U290 ( .A(data_out[7]), .B(n403), .C(N139), .D(n404), .Z(n224) );
  HS65_GS_AO22X4 U291 ( .A(data_out[8]), .B(n403), .C(N140), .D(n404), .Z(n223) );
  HS65_GS_AO22X4 U292 ( .A(data_out[9]), .B(n403), .C(N141), .D(n404), .Z(n222) );
  HS65_GS_AO22X4 U293 ( .A(data_out[10]), .B(n403), .C(N142), .D(n404), .Z(
        n221) );
  HS65_GS_AO22X4 U294 ( .A(data_out[11]), .B(n403), .C(N143), .D(n404), .Z(
        n220) );
  HS65_GS_AO22X4 U295 ( .A(data_out[12]), .B(n403), .C(N144), .D(n404), .Z(
        n219) );
  HS65_GS_AO22X4 U296 ( .A(data_out[13]), .B(n403), .C(N145), .D(n404), .Z(
        n218) );
  HS65_GS_AO22X4 U297 ( .A(data_out[14]), .B(n403), .C(N146), .D(n404), .Z(
        n217) );
  HS65_GS_AO22X4 U298 ( .A(data_out[15]), .B(n403), .C(N147), .D(n404), .Z(
        n216) );
  HS65_GS_OA12X4 U299 ( .A(epsilon_step[15]), .B(n397), .C(n407), .Z(n405) );
  HS65_GS_OAI12X2 U300 ( .A(epsilon_buf[14]), .B(n408), .C(n409), .Z(n407) );
  HS65_GS_OAI212X3 U301 ( .A(epsilon_step[13]), .B(n395), .C(epsilon_step[14]), 
        .D(n396), .E(n410), .Z(n409) );
  HS65_GS_AO212X4 U302 ( .A(n394), .B(epsilon_step[12]), .C(n395), .D(
        epsilon_step[13]), .E(n411), .Z(n410) );
  HS65_GS_OA212X4 U303 ( .A(epsilon_step[12]), .B(n394), .C(epsilon_step[11]), 
        .D(n393), .E(n412), .Z(n411) );
  HS65_GS_AO212X4 U304 ( .A(n392), .B(epsilon_step[10]), .C(n393), .D(
        epsilon_step[11]), .E(n413), .Z(n412) );
  HS65_GS_OA212X4 U305 ( .A(epsilon_step[10]), .B(n392), .C(epsilon_step[9]), 
        .D(n391), .E(n414), .Z(n413) );
  HS65_GS_AO212X4 U306 ( .A(n390), .B(epsilon_step[8]), .C(n391), .D(
        epsilon_step[9]), .E(n415), .Z(n414) );
  HS65_GS_OA212X4 U307 ( .A(epsilon_step[8]), .B(n390), .C(epsilon_step[7]), 
        .D(n389), .E(n416), .Z(n415) );
  HS65_GS_AO212X4 U308 ( .A(n388), .B(epsilon_step[6]), .C(n389), .D(
        epsilon_step[7]), .E(n417), .Z(n416) );
  HS65_GS_OA212X4 U309 ( .A(epsilon_step[6]), .B(n388), .C(epsilon_step[5]), 
        .D(n387), .E(n418), .Z(n417) );
  HS65_GS_AO212X4 U310 ( .A(n386), .B(epsilon_step[4]), .C(n387), .D(
        epsilon_step[5]), .E(n419), .Z(n418) );
  HS65_GS_OA212X4 U311 ( .A(epsilon_step[4]), .B(n386), .C(epsilon_step[3]), 
        .D(n385), .E(n420), .Z(n419) );
  HS65_GS_OAI212X3 U312 ( .A(epsilon_buf[2]), .B(n421), .C(epsilon_buf[3]), 
        .D(n422), .E(n423), .Z(n420) );
  HS65_GS_OAI12X2 U313 ( .A(n384), .B(n424), .C(epsilon_step[2]), .Z(n423) );
  HS65_GS_IVX2 U314 ( .A(n421), .Z(n424) );
  HS65_GS_IVX2 U315 ( .A(epsilon_step[3]), .Z(n422) );
  HS65_GS_AOI12X2 U316 ( .A(n383), .B(epsilon_step[1]), .C(n425), .Z(n421) );
  HS65_GS_OA112X4 U317 ( .A(epsilon_step[1]), .B(n383), .C(n381), .D(
        epsilon_step[0]), .Z(n425) );
  HS65_GS_IVX2 U318 ( .A(epsilon_step[14]), .Z(n408) );
  HS65_GS_AO31X4 U319 ( .A(n403), .B(n426), .C(wr_en), .D(n427), .Z(n215) );
  HS65_GS_AO22X4 U320 ( .A(_left[16]), .B(n13), .C(bestvalue[0]), .D(n31), .Z(
        n214) );
  HS65_GS_AO22X4 U321 ( .A(_left[17]), .B(n13), .C(bestvalue[1]), .D(n31), .Z(
        n213) );
  HS65_GS_AO22X4 U322 ( .A(_left[18]), .B(n12), .C(bestvalue[2]), .D(n31), .Z(
        n212) );
  HS65_GS_AO22X4 U323 ( .A(_left[19]), .B(n12), .C(bestvalue[3]), .D(n30), .Z(
        n211) );
  HS65_GS_AO22X4 U324 ( .A(_left[20]), .B(n12), .C(bestvalue[4]), .D(n30), .Z(
        n210) );
  HS65_GS_AO22X4 U325 ( .A(_left[21]), .B(n12), .C(bestvalue[5]), .D(n30), .Z(
        n209) );
  HS65_GS_AO22X4 U326 ( .A(_left[22]), .B(n12), .C(bestvalue[6]), .D(n30), .Z(
        n208) );
  HS65_GS_AO22X4 U327 ( .A(_left[23]), .B(n12), .C(bestvalue[7]), .D(n30), .Z(
        n207) );
  HS65_GS_AO22X4 U328 ( .A(_left[24]), .B(n12), .C(bestvalue[8]), .D(n30), .Z(
        n206) );
  HS65_GS_AO22X4 U329 ( .A(_left[25]), .B(n12), .C(bestvalue[9]), .D(n30), .Z(
        n205) );
  HS65_GS_AO22X4 U330 ( .A(_left[26]), .B(n12), .C(bestvalue[10]), .D(n30), 
        .Z(n204) );
  HS65_GS_AO22X4 U331 ( .A(_left[27]), .B(n11), .C(bestvalue[11]), .D(n30), 
        .Z(n203) );
  HS65_GS_AO22X4 U332 ( .A(_left[28]), .B(n11), .C(bestvalue[12]), .D(n29), 
        .Z(n202) );
  HS65_GS_AO22X4 U333 ( .A(_left[29]), .B(n11), .C(bestvalue[13]), .D(n29), 
        .Z(n201) );
  HS65_GS_AO22X4 U334 ( .A(_left[30]), .B(n11), .C(bestvalue[14]), .D(n29), 
        .Z(n200) );
  HS65_GS_AO22X4 U335 ( .A(_left[31]), .B(n11), .C(bestvalue[15]), .D(n29), 
        .Z(n199) );
  HS65_GS_AO22X4 U336 ( .A(_right[1]), .B(n11), .C(N165), .D(n29), .Z(n198) );
  HS65_GS_AO22X4 U337 ( .A(_right[2]), .B(n11), .C(N166), .D(n29), .Z(n197) );
  HS65_GS_AO22X4 U338 ( .A(_right[3]), .B(n11), .C(N167), .D(n29), .Z(n196) );
  HS65_GS_AO22X4 U339 ( .A(_right[4]), .B(n11), .C(N168), .D(n29), .Z(n195) );
  HS65_GS_AO22X4 U340 ( .A(_right[5]), .B(n10), .C(N169), .D(n29), .Z(n194) );
  HS65_GS_AO22X4 U341 ( .A(_right[6]), .B(n10), .C(N170), .D(n28), .Z(n193) );
  HS65_GS_AO22X4 U342 ( .A(_right[7]), .B(n10), .C(N171), .D(n28), .Z(n192) );
  HS65_GS_AO22X4 U343 ( .A(_right[8]), .B(n10), .C(N172), .D(n28), .Z(n191) );
  HS65_GS_AO22X4 U344 ( .A(_right[9]), .B(n10), .C(N173), .D(n28), .Z(n190) );
  HS65_GS_AO22X4 U345 ( .A(_right[10]), .B(n10), .C(N174), .D(n28), .Z(n189)
         );
  HS65_GS_AO22X4 U346 ( .A(_right[11]), .B(n10), .C(N175), .D(n28), .Z(n188)
         );
  HS65_GS_AO22X4 U347 ( .A(_right[12]), .B(n10), .C(N176), .D(n28), .Z(n187)
         );
  HS65_GS_AO22X4 U348 ( .A(_right[13]), .B(n10), .C(N177), .D(n28), .Z(n186)
         );
  HS65_GS_AO22X4 U349 ( .A(_right[14]), .B(n9), .C(N178), .D(n28), .Z(n185) );
  HS65_GS_AO22X4 U350 ( .A(_right[15]), .B(n9), .C(N179), .D(n27), .Z(n184) );
  HS65_GS_AO22X4 U351 ( .A(_right[16]), .B(n9), .C(N180), .D(n27), .Z(n183) );
  HS65_GS_AO22X4 U352 ( .A(_right[17]), .B(n9), .C(N181), .D(n27), .Z(n182) );
  HS65_GS_AO22X4 U353 ( .A(_right[18]), .B(n9), .C(N182), .D(n27), .Z(n181) );
  HS65_GS_AO22X4 U354 ( .A(_right[19]), .B(n9), .C(N183), .D(n27), .Z(n180) );
  HS65_GS_AO22X4 U355 ( .A(_right[20]), .B(n9), .C(N184), .D(n27), .Z(n179) );
  HS65_GS_AO22X4 U356 ( .A(_right[21]), .B(n9), .C(N185), .D(n27), .Z(n178) );
  HS65_GS_AO22X4 U357 ( .A(_right[22]), .B(n9), .C(N186), .D(n27), .Z(n177) );
  HS65_GS_AO22X4 U358 ( .A(_right[23]), .B(n8), .C(N187), .D(n27), .Z(n176) );
  HS65_GS_AO22X4 U359 ( .A(_right[24]), .B(n8), .C(N188), .D(n26), .Z(n175) );
  HS65_GS_AO22X4 U360 ( .A(_right[25]), .B(n8), .C(N189), .D(n26), .Z(n174) );
  HS65_GS_AO22X4 U361 ( .A(_right[26]), .B(n8), .C(N190), .D(n26), .Z(n173) );
  HS65_GS_AO22X4 U362 ( .A(_right[27]), .B(n8), .C(N191), .D(n26), .Z(n172) );
  HS65_GS_AO22X4 U363 ( .A(_right[28]), .B(n8), .C(N192), .D(n26), .Z(n171) );
  HS65_GS_AO22X4 U364 ( .A(_right[29]), .B(n8), .C(N193), .D(n26), .Z(n170) );
  HS65_GS_AO22X4 U365 ( .A(_right[30]), .B(n8), .C(N194), .D(n26), .Z(n169) );
  HS65_GS_AO22X4 U366 ( .A(_right[31]), .B(n8), .C(N195), .D(n26), .Z(n168) );
  HS65_GS_NOR2X2 U367 ( .A(n429), .B(n430), .Z(n343) );
  HS65_GS_MUXI21X2 U368 ( .D0(n431), .D1(n432), .S0(n433), .Z(n167) );
  HS65_GS_NAND2AX4 U369 ( .A(n37), .B(n378), .Z(n432) );
  HS65_GS_NAND2X2 U370 ( .A(n64), .B(n434), .Z(n431) );
  HS65_GS_AND2X4 U371 ( .A(_right3[0]), .B(n7), .Z(n166) );
  HS65_GS_AO22X4 U372 ( .A(_right3[5]), .B(n6), .C(N235), .D(n40), .Z(n161) );
  HS65_GS_AO22X4 U373 ( .A(_right3[6]), .B(n6), .C(N236), .D(n40), .Z(n160) );
  HS65_GS_AO22X4 U374 ( .A(_right3[7]), .B(n6), .C(N237), .D(n40), .Z(n159) );
  HS65_GS_AO22X4 U375 ( .A(_right3[8]), .B(n6), .C(N238), .D(n39), .Z(n158) );
  HS65_GS_AO22X4 U376 ( .A(_right3[9]), .B(n6), .C(N239), .D(n39), .Z(n157) );
  HS65_GS_AO22X4 U377 ( .A(_right3[10]), .B(n6), .C(N240), .D(n39), .Z(n156)
         );
  HS65_GS_AO22X4 U378 ( .A(_right3[11]), .B(n6), .C(N241), .D(n39), .Z(n155)
         );
  HS65_GS_AO22X4 U379 ( .A(_right3[12]), .B(n6), .C(N242), .D(n39), .Z(n154)
         );
  HS65_GS_AO22X4 U380 ( .A(_right3[13]), .B(n6), .C(N243), .D(n39), .Z(n153)
         );
  HS65_GS_AO22X4 U381 ( .A(_right3[14]), .B(n5), .C(N244), .D(n39), .Z(n152)
         );
  HS65_GS_AO22X4 U382 ( .A(_right3[15]), .B(n5), .C(N245), .D(n39), .Z(n151)
         );
  HS65_GS_AO22X4 U383 ( .A(_right3[16]), .B(n5), .C(N246), .D(n38), .Z(n150)
         );
  HS65_GS_AO22X4 U384 ( .A(_right3[17]), .B(n5), .C(N247), .D(n38), .Z(n149)
         );
  HS65_GS_AO22X4 U385 ( .A(_right3[18]), .B(n5), .C(N248), .D(n38), .Z(n148)
         );
  HS65_GS_AO22X4 U386 ( .A(_right3[19]), .B(n5), .C(N249), .D(n38), .Z(n147)
         );
  HS65_GS_AO22X4 U387 ( .A(_right3[20]), .B(n5), .C(N250), .D(n38), .Z(n146)
         );
  HS65_GS_AO22X4 U388 ( .A(_right3[21]), .B(n5), .C(N251), .D(n38), .Z(n145)
         );
  HS65_GS_AO22X4 U389 ( .A(_right3[22]), .B(n5), .C(N252), .D(n38), .Z(n144)
         );
  HS65_GS_AO22X4 U390 ( .A(_right3[23]), .B(n3), .C(N253), .D(n38), .Z(n143)
         );
  HS65_GS_AO22X4 U391 ( .A(_right3[24]), .B(n3), .C(N254), .D(n35), .Z(n142)
         );
  HS65_GS_AO22X4 U392 ( .A(_right3[25]), .B(n3), .C(N255), .D(n35), .Z(n141)
         );
  HS65_GS_AO22X4 U393 ( .A(_right3[26]), .B(n3), .C(N256), .D(n35), .Z(n140)
         );
  HS65_GS_AO22X4 U394 ( .A(_right3[27]), .B(n3), .C(N257), .D(n35), .Z(n139)
         );
  HS65_GS_AO22X4 U395 ( .A(_right3[28]), .B(n3), .C(N258), .D(n35), .Z(n138)
         );
  HS65_GS_AO22X4 U396 ( .A(_right3[29]), .B(n3), .C(N259), .D(n35), .Z(n137)
         );
  HS65_GS_AO22X4 U397 ( .A(_right3[30]), .B(n3), .C(N260), .D(n35), .Z(n136)
         );
  HS65_GS_AO22X4 U398 ( .A(_right3[31]), .B(n3), .C(N261), .D(n35), .Z(n135)
         );
  HS65_GS_NOR2AX3 U399 ( .A(n435), .B(n429), .Z(n337) );
  HS65_GS_MUXI21X2 U400 ( .D0(n436), .D1(n437), .S0(n438), .Z(n134) );
  HS65_GS_NAND2X2 U401 ( .A(N262), .B(n64), .Z(n437) );
  HS65_GS_NAND2X2 U402 ( .A(two), .B(n378), .Z(n436) );
  HS65_GS_MUX21I1X3 U403 ( .D0(n439), .D1(n440), .S0(n438), .Z(n133) );
  HS65_GS_NOR2X2 U404 ( .A(N263), .B(n63), .Z(n440) );
  HS65_GS_NAND2X2 U405 ( .A(n378), .B(n441), .Z(n439) );
  HS65_GS_OAI32X2 U406 ( .A(n442), .B(n63), .C(n443), .D(n18), .E(n429), .Z(
        n132) );
  HS65_GS_NAND2X2 U407 ( .A(state[3]), .B(n444), .Z(n442) );
  HS65_GS_AND2X4 U408 ( .A(address[0]), .B(n445), .Z(n131) );
  HS65_GS_AO22X4 U409 ( .A(address[1]), .B(n445), .C(N119), .D(n446), .Z(n130)
         );
  HS65_GS_NAND3AX3 U410 ( .A(n447), .B(n448), .C(n449), .Z(n129) );
  HS65_GS_AOI12X2 U411 ( .A(address[2]), .B(n445), .C(n450), .Z(n449) );
  HS65_GS_NAND2X2 U412 ( .A(N120), .B(n446), .Z(n448) );
  HS65_GS_AO212X4 U413 ( .A(N121), .B(n446), .C(address[3]), .D(n445), .E(n447), .Z(n128) );
  HS65_GS_AO22X4 U414 ( .A(address[4]), .B(n445), .C(N122), .D(n446), .Z(n127)
         );
  HS65_GS_AO22X4 U415 ( .A(address[5]), .B(n445), .C(N123), .D(n446), .Z(n126)
         );
  HS65_GS_AO22X4 U416 ( .A(address[6]), .B(n445), .C(N124), .D(n446), .Z(n125)
         );
  HS65_GS_AO212X4 U417 ( .A(N125), .B(n446), .C(address[7]), .D(n445), .E(n447), .Z(n124) );
  HS65_GS_AO22X4 U418 ( .A(address[8]), .B(n445), .C(N126), .D(n446), .Z(n123)
         );
  HS65_GS_AO212X4 U419 ( .A(N127), .B(n446), .C(address[9]), .D(n445), .E(n447), .Z(n122) );
  HS65_GS_AO212X4 U420 ( .A(N128), .B(n446), .C(address[10]), .D(n445), .E(
        n447), .Z(n121) );
  HS65_GS_NOR3X1 U421 ( .A(n63), .B(n445), .C(n451), .Z(n447) );
  HS65_GS_MUX21I1X3 U422 ( .D0(n454), .D1(en_rng), .S0(n455), .Z(n120) );
  HS65_GS_AND3X4 U423 ( .A(n453), .B(n456), .C(n21), .Z(n455) );
  HS65_GS_NOR2AX3 U424 ( .A(n402), .B(n429), .Z(n400) );
  HS65_GS_AOI12X2 U425 ( .A(n457), .B(n458), .C(n459), .Z(n453) );
  HS65_GS_OAI12X2 U426 ( .A(n460), .B(n458), .C(n64), .Z(n454) );
  HS65_GS_AO222X4 U427 ( .A(n427), .B(data_in[1]), .C(besthop[1]), .D(n461), 
        .E(nexthop[1]), .F(n462), .Z(n119) );
  HS65_GS_AO222X4 U428 ( .A(n427), .B(data_in[2]), .C(besthop[2]), .D(n461), 
        .E(nexthop[2]), .F(n462), .Z(n118) );
  HS65_GS_AO222X4 U429 ( .A(n427), .B(data_in[3]), .C(besthop[3]), .D(n461), 
        .E(nexthop[3]), .F(n462), .Z(n117) );
  HS65_GS_AO222X4 U430 ( .A(n427), .B(data_in[4]), .C(besthop[4]), .D(n461), 
        .E(nexthop[4]), .F(n462), .Z(n116) );
  HS65_GS_AO222X4 U431 ( .A(n427), .B(data_in[5]), .C(besthop[5]), .D(n461), 
        .E(nexthop[5]), .F(n462), .Z(n115) );
  HS65_GS_AO222X4 U432 ( .A(n427), .B(data_in[7]), .C(besthop[7]), .D(n461), 
        .E(nexthop[7]), .F(n462), .Z(n114) );
  HS65_GS_AO222X4 U433 ( .A(n427), .B(data_in[8]), .C(besthop[8]), .D(n461), 
        .E(nexthop[8]), .F(n462), .Z(n113) );
  HS65_GS_AO222X4 U434 ( .A(n427), .B(data_in[9]), .C(besthop[9]), .D(n461), 
        .E(nexthop[9]), .F(n462), .Z(n112) );
  HS65_GS_AO222X4 U435 ( .A(n427), .B(data_in[10]), .C(besthop[10]), .D(n461), 
        .E(nexthop[10]), .F(n462), .Z(n111) );
  HS65_GS_AO222X4 U436 ( .A(n427), .B(data_in[11]), .C(besthop[11]), .D(n461), 
        .E(nexthop[11]), .F(n462), .Z(n110) );
  HS65_GS_AO222X4 U437 ( .A(n427), .B(data_in[12]), .C(besthop[12]), .D(n461), 
        .E(nexthop[12]), .F(n462), .Z(n109) );
  HS65_GS_AO222X4 U438 ( .A(n427), .B(data_in[13]), .C(besthop[13]), .D(n461), 
        .E(nexthop[13]), .F(n462), .Z(n108) );
  HS65_GS_AO222X4 U439 ( .A(n427), .B(data_in[14]), .C(besthop[14]), .D(n461), 
        .E(nexthop[14]), .F(n462), .Z(n107) );
  HS65_GS_AO222X4 U440 ( .A(n427), .B(data_in[15]), .C(besthop[15]), .D(n461), 
        .E(nexthop[15]), .F(n462), .Z(n106) );
  HS65_GS_OAI112X1 U441 ( .A(n433), .B(n434), .C(n463), .D(n403), .Z(n45) );
  HS65_GS_IVX2 U442 ( .A(n378), .Z(n429) );
  HS65_GS_AOI12X2 U443 ( .A(n464), .B(en), .C(n63), .Z(n378) );
  HS65_GS_NAND4ABX3 U444 ( .A(n465), .B(n37), .C(two), .D(n441), .Z(n463) );
  HS65_GS_IVX2 U445 ( .A(n36), .Z(n441) );
  HS65_GS_NAND4ABX3 U446 ( .A(n438), .B(n466), .C(n467), .D(n468), .Z(N479) );
  HS65_GS_NOR3AX2 U447 ( .A(n426), .B(n469), .C(n459), .Z(n468) );
  HS65_GS_NAND3X2 U448 ( .A(n435), .B(n465), .C(n338), .Z(n469) );
  HS65_GS_NAND2X2 U449 ( .A(n470), .B(n471), .Z(n435) );
  HS65_GS_OA12X4 U450 ( .A(n434), .B(n433), .C(n472), .Z(n467) );
  HS65_GS_IVX2 U451 ( .A(N196), .Z(n434) );
  HS65_GS_AO112X4 U452 ( .A(n473), .B(n64), .C(n26), .D(n450), .Z(N478) );
  HS65_GS_NAND2X2 U453 ( .A(n346), .B(n406), .Z(n450) );
  HS65_GS_IVX2 U454 ( .A(n427), .Z(n406) );
  HS65_GS_NAND2X2 U455 ( .A(n460), .B(n470), .Z(n338) );
  HS65_GS_NOR2X2 U456 ( .A(n474), .B(n63), .Z(n428) );
  HS65_GS_NAND3AX3 U457 ( .A(n475), .B(n401), .C(n456), .Z(n473) );
  HS65_GS_NAND2AX4 U458 ( .A(n452), .B(done_rng_address), .Z(n401) );
  HS65_GS_NAND4ABX3 U459 ( .A(n430), .B(n466), .C(n426), .D(n476), .Z(N477) );
  HS65_GS_AOI112X1 U460 ( .A(n458), .B(n457), .C(n341), .D(n477), .Z(n476) );
  HS65_GS_NAND2X2 U461 ( .A(n433), .B(n465), .Z(n341) );
  HS65_GS_NAND3X2 U462 ( .A(state[3]), .B(n444), .C(n478), .Z(n465) );
  HS65_GS_IVX2 U463 ( .A(n451), .Z(n458) );
  HS65_GS_NAND2X2 U464 ( .A(n479), .B(n460), .Z(n426) );
  HS65_GS_IVX2 U465 ( .A(n456), .Z(n466) );
  HS65_GS_NAND3X2 U466 ( .A(n480), .B(n460), .C(start_winnerPolicy), .Z(n456)
         );
  HS65_GS_IVX2 U467 ( .A(n474), .Z(n430) );
  HS65_GS_NAND2X2 U468 ( .A(n478), .B(n470), .Z(n474) );
  HS65_GS_IVX2 U469 ( .A(n481), .Z(N476) );
  HS65_GS_NOR3AX2 U470 ( .A(n482), .B(n477), .C(n475), .Z(n481) );
  HS65_GS_OAI22X1 U471 ( .A(N196), .B(n433), .C(n451), .D(n457), .Z(n475) );
  HS65_GS_OAI12X2 U472 ( .A(explore_constant[15]), .B(n397), .C(n483), .Z(n457) );
  HS65_GS_OAI12X2 U473 ( .A(epsilon_buf[15]), .B(n376), .C(n484), .Z(n483) );
  HS65_GS_OAI12X2 U474 ( .A(explore_constant[14]), .B(n396), .C(n485), .Z(n484) );
  HS65_GS_OAI212X3 U475 ( .A(epsilon_buf[13]), .B(n372), .C(epsilon_buf[14]), 
        .D(n374), .E(n486), .Z(n485) );
  HS65_GS_OAI212X3 U476 ( .A(explore_constant[12]), .B(n394), .C(
        explore_constant[13]), .D(n395), .E(n487), .Z(n486) );
  HS65_GS_OAI212X3 U477 ( .A(epsilon_buf[12]), .B(n370), .C(epsilon_buf[11]), 
        .D(n368), .E(n488), .Z(n487) );
  HS65_GS_OAI212X3 U478 ( .A(explore_constant[10]), .B(n392), .C(
        explore_constant[11]), .D(n393), .E(n489), .Z(n488) );
  HS65_GS_OAI212X3 U479 ( .A(epsilon_buf[10]), .B(n366), .C(epsilon_buf[9]), 
        .D(n364), .E(n490), .Z(n489) );
  HS65_GS_OAI212X3 U480 ( .A(explore_constant[8]), .B(n390), .C(
        explore_constant[9]), .D(n391), .E(n491), .Z(n490) );
  HS65_GS_OAI212X3 U481 ( .A(epsilon_buf[8]), .B(n362), .C(epsilon_buf[7]), 
        .D(n360), .E(n492), .Z(n491) );
  HS65_GS_OAI212X3 U482 ( .A(explore_constant[6]), .B(n388), .C(
        explore_constant[7]), .D(n389), .E(n493), .Z(n492) );
  HS65_GS_OAI212X3 U483 ( .A(epsilon_buf[6]), .B(n358), .C(epsilon_buf[5]), 
        .D(n356), .E(n494), .Z(n493) );
  HS65_GS_OAI212X3 U484 ( .A(explore_constant[4]), .B(n386), .C(
        explore_constant[5]), .D(n387), .E(n495), .Z(n494) );
  HS65_GS_OAI212X3 U485 ( .A(epsilon_buf[4]), .B(n354), .C(epsilon_buf[3]), 
        .D(n352), .E(n496), .Z(n495) );
  HS65_GS_OAI212X3 U486 ( .A(n497), .B(n384), .C(explore_constant[3]), .D(n385), .E(n498), .Z(n496) );
  HS65_GS_OAI12X2 U487 ( .A(epsilon_buf[2]), .B(n499), .C(n350), .Z(n498) );
  HS65_GS_IVX2 U488 ( .A(explore_constant[2]), .Z(n350) );
  HS65_GS_IVX2 U489 ( .A(epsilon_buf[3]), .Z(n385) );
  HS65_GS_IVX2 U490 ( .A(epsilon_buf[2]), .Z(n384) );
  HS65_GS_IVX2 U491 ( .A(n499), .Z(n497) );
  HS65_GS_OAI32X2 U492 ( .A(n381), .B(explore_constant[0]), .C(n500), .D(
        explore_constant[1]), .E(n383), .Z(n499) );
  HS65_GS_IVX2 U493 ( .A(epsilon_buf[1]), .Z(n383) );
  HS65_GS_NOR2X2 U494 ( .A(epsilon_buf[1]), .B(n348), .Z(n500) );
  HS65_GS_IVX2 U495 ( .A(explore_constant[1]), .Z(n348) );
  HS65_GS_IVX2 U496 ( .A(epsilon_buf[0]), .Z(n381) );
  HS65_GS_IVX2 U497 ( .A(explore_constant[3]), .Z(n352) );
  HS65_GS_IVX2 U498 ( .A(explore_constant[4]), .Z(n354) );
  HS65_GS_IVX2 U499 ( .A(epsilon_buf[5]), .Z(n387) );
  HS65_GS_IVX2 U500 ( .A(epsilon_buf[4]), .Z(n386) );
  HS65_GS_IVX2 U501 ( .A(explore_constant[5]), .Z(n356) );
  HS65_GS_IVX2 U502 ( .A(explore_constant[6]), .Z(n358) );
  HS65_GS_IVX2 U503 ( .A(epsilon_buf[7]), .Z(n389) );
  HS65_GS_IVX2 U504 ( .A(epsilon_buf[6]), .Z(n388) );
  HS65_GS_IVX2 U505 ( .A(explore_constant[7]), .Z(n360) );
  HS65_GS_IVX2 U506 ( .A(explore_constant[8]), .Z(n362) );
  HS65_GS_IVX2 U507 ( .A(epsilon_buf[9]), .Z(n391) );
  HS65_GS_IVX2 U508 ( .A(epsilon_buf[8]), .Z(n390) );
  HS65_GS_IVX2 U509 ( .A(explore_constant[9]), .Z(n364) );
  HS65_GS_IVX2 U510 ( .A(explore_constant[10]), .Z(n366) );
  HS65_GS_IVX2 U511 ( .A(epsilon_buf[11]), .Z(n393) );
  HS65_GS_IVX2 U512 ( .A(epsilon_buf[10]), .Z(n392) );
  HS65_GS_IVX2 U513 ( .A(explore_constant[11]), .Z(n368) );
  HS65_GS_IVX2 U514 ( .A(explore_constant[12]), .Z(n370) );
  HS65_GS_IVX2 U515 ( .A(epsilon_buf[13]), .Z(n395) );
  HS65_GS_IVX2 U516 ( .A(epsilon_buf[12]), .Z(n394) );
  HS65_GS_IVX2 U517 ( .A(explore_constant[14]), .Z(n374) );
  HS65_GS_IVX2 U518 ( .A(explore_constant[13]), .Z(n372) );
  HS65_GS_IVX2 U519 ( .A(epsilon_buf[14]), .Z(n396) );
  HS65_GS_IVX2 U520 ( .A(explore_constant[15]), .Z(n376) );
  HS65_GS_IVX2 U521 ( .A(epsilon_buf[15]), .Z(n397) );
  HS65_GS_NAND2X2 U522 ( .A(n480), .B(n478), .Z(n451) );
  HS65_GS_NAND2X2 U523 ( .A(n501), .B(n470), .Z(n433) );
  HS65_GS_NOR2X2 U524 ( .A(n444), .B(state[3]), .Z(n470) );
  HS65_GS_OAI112X1 U525 ( .A(done_rng_address), .B(n452), .C(n402), .D(n472), 
        .Z(n477) );
  HS65_GS_AOI312X2 U526 ( .A(state[3]), .B(state[1]), .C(n502), .D(n464), .E(
        n503), .F(n63), .Z(n472) );
  HS65_GS_IVX2 U527 ( .A(en), .Z(n503) );
  HS65_GS_IVX2 U528 ( .A(n339), .Z(n464) );
  HS65_GS_NAND3X2 U529 ( .A(n471), .B(n444), .C(state[3]), .Z(n339) );
  HS65_GSS_XNOR2X3 U530 ( .A(state[0]), .B(state[2]), .Z(n502) );
  HS65_GS_NAND2X2 U531 ( .A(n480), .B(n501), .Z(n402) );
  HS65_GS_NAND2X2 U532 ( .A(n480), .B(n471), .Z(n452) );
  HS65_GS_AND2X4 U533 ( .A(state[1]), .B(state[0]), .Z(n471) );
  HS65_GS_NOR2X2 U534 ( .A(state[3]), .B(state[2]), .Z(n480) );
  HS65_GS_NOR3X1 U535 ( .A(n438), .B(n459), .C(n398), .Z(n482) );
  HS65_GS_IVX2 U536 ( .A(n399), .Z(n398) );
  HS65_GS_NAND2X2 U537 ( .A(n479), .B(n478), .Z(n399) );
  HS65_GS_NOR2X2 U538 ( .A(n504), .B(state[1]), .Z(n478) );
  HS65_GS_IVX2 U539 ( .A(n379), .Z(n459) );
  HS65_GS_NAND2X2 U540 ( .A(n479), .B(n501), .Z(n379) );
  HS65_GS_IVX2 U541 ( .A(n443), .Z(n501) );
  HS65_GS_NAND2X2 U542 ( .A(state[1]), .B(n504), .Z(n443) );
  HS65_GS_IVX2 U543 ( .A(state[0]), .Z(n504) );
  HS65_GS_NOR2X2 U544 ( .A(n505), .B(n444), .Z(n479) );
  HS65_GS_IVX2 U545 ( .A(state[2]), .Z(n444) );
  HS65_GS_NOR3AX2 U546 ( .A(n460), .B(n505), .C(state[2]), .Z(n438) );
  HS65_GS_IVX2 U547 ( .A(state[3]), .Z(n505) );
  HS65_GS_NOR2X2 U548 ( .A(state[1]), .B(state[0]), .Z(n460) );
endmodule


module selectMyAction ( clock, nrst, en, start, address, wr_en, nexthop, 
        nextsinks, action, data_out, forAggregation, done );
  output [10:0] address;
  input [15:0] nexthop;
  input [15:0] nextsinks;
  output [15:0] action;
  output [15:0] data_out;
  input clock, nrst, en, start;
  output wr_en, forAggregation, done;
  wire   N98, n12, n13, n14, n15, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n16;
  wire   [2:0] state;
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
  assign data_out[15] = 1'b0;
  assign data_out[14] = 1'b0;
  assign data_out[13] = 1'b0;
  assign data_out[12] = 1'b0;
  assign data_out[11] = 1'b0;
  assign data_out[10] = 1'b0;
  assign data_out[9] = 1'b0;
  assign data_out[8] = 1'b0;
  assign data_out[7] = 1'b0;
  assign data_out[6] = 1'b0;
  assign data_out[5] = 1'b0;
  assign data_out[4] = 1'b0;
  assign data_out[3] = 1'b0;
  assign data_out[2] = 1'b0;
  assign data_out[1] = 1'b0;

  HS65_GS_DFPQX9 \state_reg[0]  ( .D(n58), .CP(clock), .Q(state[0]) );
  HS65_GS_DFPQX9 \state_reg[1]  ( .D(n56), .CP(clock), .Q(state[1]) );
  HS65_GS_DFPQX9 \state_reg[2]  ( .D(n57), .CP(clock), .Q(state[2]) );
  HS65_GS_DFPQX9 \action_buf_reg[15]  ( .D(n42), .CP(clock), .Q(action[15]) );
  HS65_GS_DFPQX9 \action_buf_reg[14]  ( .D(n43), .CP(clock), .Q(action[14]) );
  HS65_GS_DFPQX9 \action_buf_reg[13]  ( .D(n44), .CP(clock), .Q(action[13]) );
  HS65_GS_DFPQX9 \action_buf_reg[12]  ( .D(n45), .CP(clock), .Q(action[12]) );
  HS65_GS_DFPQX9 \action_buf_reg[11]  ( .D(n46), .CP(clock), .Q(action[11]) );
  HS65_GS_DFPQX9 \action_buf_reg[10]  ( .D(n47), .CP(clock), .Q(action[10]) );
  HS65_GS_DFPQX9 \action_buf_reg[9]  ( .D(n48), .CP(clock), .Q(action[9]) );
  HS65_GS_DFPQX9 \action_buf_reg[8]  ( .D(n49), .CP(clock), .Q(action[8]) );
  HS65_GS_DFPQX9 \action_buf_reg[7]  ( .D(n50), .CP(clock), .Q(action[7]) );
  HS65_GS_DFPQX9 \action_buf_reg[5]  ( .D(n51), .CP(clock), .Q(action[5]) );
  HS65_GS_DFPQX9 \action_buf_reg[4]  ( .D(n52), .CP(clock), .Q(action[4]) );
  HS65_GS_DFPQX9 \action_buf_reg[3]  ( .D(n53), .CP(clock), .Q(action[3]) );
  HS65_GS_DFPQX9 \action_buf_reg[2]  ( .D(n54), .CP(clock), .Q(action[2]) );
  HS65_GS_DFPQX9 \action_buf_reg[1]  ( .D(n55), .CP(clock), .Q(action[1]) );
  HS65_GS_DFPQX9 forAggregation_buf_reg ( .D(n41), .CP(clock), .Q(
        forAggregation) );
  HS65_GS_DFPQX9 done_buf_reg ( .D(n40), .CP(clock), .Q(done) );
  HS65_GS_DFPHQX4 \data_out_buf_reg[0]  ( .D(n14), .E(N98), .CP(clock), .Q(
        data_out[0]) );
  HS65_GS_DFPHQX4 \address_count_reg[1]  ( .D(n14), .E(N98), .CP(clock), .Q(
        address[1]) );
  HS65_GS_DFPHQX4 \action_buf_reg[6]  ( .D(n19), .E(n20), .CP(clock), .Q(
        action[6]) );
  HS65_GS_DFPHQX4 \action_buf_reg[0]  ( .D(n24), .E(n20), .CP(clock), .Q(
        action[0]) );
  HS65_GS_DFPHQX4 wr_en_buf_reg ( .D(n14), .E(n1), .CP(clock), .Q(wr_en) );
  HS65_GS_IVX9 U28 ( .A(n2), .Z(n3) );
  HS65_GS_NOR2X6 U29 ( .A(n7), .B(n3), .Z(n14) );
  HS65_GS_IVX9 U30 ( .A(n20), .Z(n4) );
  HS65_GS_NOR2X6 U31 ( .A(n5), .B(n3), .Z(n18) );
  HS65_GS_BFX9 U32 ( .A(nrst), .Z(n2) );
  HS65_GS_OAI212X5 U33 ( .A(n15), .B(n7), .C(n25), .D(n5), .E(n12), .Z(n20) );
  HS65_GS_OAI21X3 U34 ( .A(n7), .B(n10), .C(n12), .Z(N98) );
  HS65_GS_IVX9 U35 ( .A(n15), .Z(n10) );
  HS65_GS_OAI211X5 U36 ( .A(n6), .B(n27), .C(n28), .D(n29), .Z(n58) );
  HS65_GS_AOI13X5 U37 ( .A(n6), .B(n8), .C(start), .D(n21), .Z(n29) );
  HS65_GS_OAI21X3 U38 ( .A(n26), .B(n3), .C(n27), .Z(n56) );
  HS65_GS_NAND3AX6 U39 ( .A(n17), .B(n27), .C(n28), .Z(n57) );
  HS65_GS_OR2X9 U40 ( .A(n30), .B(n3), .Z(n23) );
  HS65_GS_OR2X9 U41 ( .A(n17), .B(N98), .Z(n1) );
  HS65_GS_IVX9 U42 ( .A(n21), .Z(n7) );
  HS65_GS_NOR2X6 U43 ( .A(n22), .B(n21), .Z(n26) );
  HS65_GS_IVX9 U44 ( .A(n22), .Z(n5) );
  HS65_GS_AOI112X4 U45 ( .A(n16), .B(n30), .C(n13), .D(n3), .Z(n28) );
  HS65_GS_IVX9 U46 ( .A(en), .Z(n16) );
  HS65_GS_AOI12X2 U47 ( .A(n30), .B(en), .C(n3), .Z(n12) );
  HS65_GS_NAND4ABX3 U48 ( .A(n17), .B(n23), .C(state[1]), .D(n26), .Z(n27) );
  HS65_GS_AO222X4 U49 ( .A(nextsinks[2]), .B(n18), .C(nexthop[2]), .D(n14), 
        .E(action[2]), .F(n4), .Z(n54) );
  HS65_GS_AO222X4 U50 ( .A(nextsinks[10]), .B(n18), .C(nexthop[10]), .D(n14), 
        .E(action[10]), .F(n4), .Z(n47) );
  HS65_GS_AO222X4 U51 ( .A(nextsinks[4]), .B(n18), .C(nexthop[4]), .D(n14), 
        .E(action[4]), .F(n4), .Z(n52) );
  HS65_GS_AO222X4 U52 ( .A(nextsinks[5]), .B(n18), .C(nexthop[5]), .D(n14), 
        .E(action[5]), .F(n4), .Z(n51) );
  HS65_GS_AO222X4 U53 ( .A(nextsinks[8]), .B(n18), .C(nexthop[8]), .D(n14), 
        .E(action[8]), .F(n4), .Z(n49) );
  HS65_GS_AO222X4 U54 ( .A(nextsinks[7]), .B(n18), .C(nexthop[7]), .D(n14), 
        .E(action[7]), .F(n4), .Z(n50) );
  HS65_GS_AO222X4 U55 ( .A(nextsinks[9]), .B(n18), .C(nexthop[9]), .D(n14), 
        .E(action[9]), .F(n4), .Z(n48) );
  HS65_GS_AO222X4 U56 ( .A(nextsinks[1]), .B(n18), .C(nexthop[1]), .D(n14), 
        .E(action[1]), .F(n4), .Z(n55) );
  HS65_GS_AO222X4 U57 ( .A(nextsinks[3]), .B(n18), .C(nexthop[3]), .D(n14), 
        .E(action[3]), .F(n4), .Z(n53) );
  HS65_GS_AO222X4 U58 ( .A(nextsinks[11]), .B(n18), .C(nexthop[11]), .D(n14), 
        .E(action[11]), .F(n4), .Z(n46) );
  HS65_GS_AO222X4 U59 ( .A(nextsinks[12]), .B(n18), .C(nexthop[12]), .D(n14), 
        .E(action[12]), .F(n4), .Z(n45) );
  HS65_GS_AO222X4 U60 ( .A(nextsinks[14]), .B(n18), .C(nexthop[14]), .D(n14), 
        .E(action[14]), .F(n4), .Z(n43) );
  HS65_GS_AO222X4 U61 ( .A(nextsinks[15]), .B(n18), .C(nexthop[15]), .D(n14), 
        .E(action[15]), .F(n4), .Z(n42) );
  HS65_GS_AO222X4 U62 ( .A(nextsinks[13]), .B(n18), .C(nexthop[13]), .D(n14), 
        .E(action[13]), .F(n4), .Z(n44) );
  HS65_GS_AO212X4 U63 ( .A(nexthop[6]), .B(n21), .C(nextsinks[6]), .D(n22), 
        .E(n23), .Z(n19) );
  HS65_GS_AO212X4 U64 ( .A(nexthop[0]), .B(n21), .C(nextsinks[0]), .D(n22), 
        .E(n23), .Z(n24) );
  HS65_GS_AO32X4 U65 ( .A(n12), .B(n7), .C(forAggregation), .D(n14), .E(n15), 
        .Z(n41) );
  HS65_GS_AO22X9 U66 ( .A(done), .B(n12), .C(n2), .D(n13), .Z(n40) );
  HS65_GS_NOR3X4 U67 ( .A(state[0]), .B(state[2]), .C(n8), .Z(n21) );
  HS65_GS_NOR3X4 U68 ( .A(state[1]), .B(state[2]), .C(n6), .Z(n22) );
  HS65_GS_NOR3X4 U69 ( .A(n9), .B(state[1]), .C(n6), .Z(n30) );
  HS65_GS_NOR3X4 U70 ( .A(n6), .B(state[2]), .C(n8), .Z(n17) );
  HS65_GS_NOR3X4 U71 ( .A(state[0]), .B(state[1]), .C(n9), .Z(n13) );
  HS65_GS_IVX9 U72 ( .A(state[0]), .Z(n6) );
  HS65_GS_NOR4ABX2 U73 ( .A(n31), .B(n32), .C(n33), .D(n34), .Z(n15) );
  HS65_GS_OR4X4 U74 ( .A(nexthop[3]), .B(nexthop[2]), .C(nexthop[15]), .D(
        nexthop[1]), .Z(n34) );
  HS65_GS_OR4X4 U75 ( .A(nexthop[11]), .B(nexthop[12]), .C(nexthop[14]), .D(
        nexthop[13]), .Z(n33) );
  HS65_GS_NOR3AX2 U76 ( .A(n35), .B(nexthop[4]), .C(nexthop[5]), .Z(n32) );
  HS65_GS_IVX9 U77 ( .A(state[1]), .Z(n8) );
  HS65_GS_NOR4ABX2 U78 ( .A(n36), .B(n37), .C(n38), .D(n39), .Z(n25) );
  HS65_GS_OR4X4 U79 ( .A(nextsinks[4]), .B(nextsinks[3]), .C(nextsinks[1]), 
        .D(nextsinks[2]), .Z(n39) );
  HS65_GS_OR4X4 U80 ( .A(nextsinks[9]), .B(nextsinks[8]), .C(nextsinks[5]), 
        .D(nextsinks[7]), .Z(n38) );
  HS65_GS_NOR4ABX2 U81 ( .A(nextsinks[6]), .B(nextsinks[0]), .C(nextsinks[11]), 
        .D(nextsinks[10]), .Z(n36) );
  HS65_GS_NOR4ABX2 U82 ( .A(nexthop[6]), .B(n25), .C(n11), .D(nexthop[10]), 
        .Z(n31) );
  HS65_GS_IVX9 U83 ( .A(nexthop[0]), .Z(n11) );
  HS65_GS_IVX9 U84 ( .A(state[2]), .Z(n9) );
  HS65_GS_NOR3X4 U85 ( .A(nexthop[7]), .B(nexthop[9]), .C(nexthop[8]), .Z(n35)
         );
  HS65_GS_NOR4X4 U86 ( .A(nextsinks[12]), .B(nextsinks[13]), .C(nextsinks[15]), 
        .D(nextsinks[14]), .Z(n37) );
endmodule


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
  wire   N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N65, N66, N67, N68,
         N69, N70, N71, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N122,
         N123, N124, n17, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, \add_66/carry[10] , \add_66/carry[9] ,
         \add_66/carry[8] , \add_66/carry[7] , \add_66/carry[6] ,
         \add_66/carry[5] , \add_55/carry[10] , \add_55/carry[9] ,
         \add_55/carry[8] , \add_55/carry[7] , \add_55/carry[6] ,
         \add_55/carry[5] , \add_49/carry[10] , \add_49/carry[9] ,
         \add_49/carry[8] , \add_49/carry[7] , \add_49/carry[6] ,
         \add_49/carry[5] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [3:0] state;
  assign N51 = besthop[0];
  assign N52 = besthop[1];
  assign N73 = action[0];
  assign N74 = action[1];

  HS65_GS_DFPQX9 \state_reg[0]  ( .D(N122), .CP(clock), .Q(state[0]) );
  HS65_GS_DFPQX9 \state_reg[2]  ( .D(N124), .CP(clock), .Q(state[2]) );
  HS65_GS_DFPQX9 \state_reg[1]  ( .D(N123), .CP(clock), .Q(state[1]) );
  HS65_GS_DFPQX9 done_buf_reg ( .D(n75), .CP(clock), .Q(done) );
  HS65_GS_DFPQX9 \data_out_buf_reg[15]  ( .D(n74), .CP(clock), .Q(data_out[15]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[14]  ( .D(n73), .CP(clock), .Q(data_out[14]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[13]  ( .D(n72), .CP(clock), .Q(data_out[13]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[12]  ( .D(n71), .CP(clock), .Q(data_out[12]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[11]  ( .D(n70), .CP(clock), .Q(data_out[11]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[10]  ( .D(n69), .CP(clock), .Q(data_out[10]) );
  HS65_GS_DFPQX9 \data_out_buf_reg[9]  ( .D(n68), .CP(clock), .Q(data_out[9])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[8]  ( .D(n67), .CP(clock), .Q(data_out[8])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[7]  ( .D(n66), .CP(clock), .Q(data_out[7])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[6]  ( .D(n65), .CP(clock), .Q(data_out[6])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[5]  ( .D(n64), .CP(clock), .Q(data_out[5])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[4]  ( .D(n63), .CP(clock), .Q(data_out[4])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[3]  ( .D(n62), .CP(clock), .Q(data_out[3])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[2]  ( .D(n61), .CP(clock), .Q(data_out[2])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[1]  ( .D(n60), .CP(clock), .Q(data_out[1])
         );
  HS65_GS_DFPQX9 \data_out_buf_reg[0]  ( .D(n59), .CP(clock), .Q(data_out[0])
         );
  HS65_GS_DFPQX9 \address_count_reg[10]  ( .D(n58), .CP(clock), .Q(address[10]) );
  HS65_GS_DFPQX9 \address_count_reg[9]  ( .D(n57), .CP(clock), .Q(address[9])
         );
  HS65_GS_DFPQX9 \address_count_reg[8]  ( .D(n56), .CP(clock), .Q(address[8])
         );
  HS65_GS_DFPQX9 \address_count_reg[7]  ( .D(n55), .CP(clock), .Q(address[7])
         );
  HS65_GS_DFPQX9 \address_count_reg[6]  ( .D(n54), .CP(clock), .Q(address[6])
         );
  HS65_GS_DFPQX9 \address_count_reg[5]  ( .D(n53), .CP(clock), .Q(address[5])
         );
  HS65_GS_DFPQX9 \address_count_reg[4]  ( .D(n52), .CP(clock), .Q(address[4])
         );
  HS65_GS_DFPQX9 \address_count_reg[3]  ( .D(n51), .CP(clock), .Q(address[3])
         );
  HS65_GS_DFPQX9 \address_count_reg[2]  ( .D(n50), .CP(clock), .Q(address[2])
         );
  HS65_GS_DFPQX9 \address_count_reg[1]  ( .D(n49), .CP(clock), .Q(address[1])
         );
  HS65_GS_DFPQX9 \address_count_reg[0]  ( .D(n48), .CP(clock), .Q(address[0])
         );
  HS65_GS_AND2X4 U3 ( .A(n39), .B(n40), .Z(n1) );
  HS65_GS_NOR3X4 U4 ( .A(n7), .B(state[2]), .C(n10), .Z(n19) );
  HS65_GS_IVX9 U5 ( .A(n3), .Z(n4) );
  HS65_GS_NOR2AX3 U6 ( .A(n34), .B(n35), .Z(n33) );
  HS65_GS_NOR2X6 U7 ( .A(n4), .B(n1), .Z(n17) );
  HS65_GS_NOR2X6 U8 ( .A(n4), .B(n2), .Z(n34) );
  HS65_GS_BFX9 U9 ( .A(nrst), .Z(n3) );
  HS65_GS_NOR2AX3 U10 ( .A(n34), .B(n37), .Z(n31) );
  HS65_GS_NOR2AX6 U11 ( .A(n34), .B(n36), .Z(n32) );
  HS65_GS_AND2X4 U12 ( .A(n38), .B(n1), .Z(n2) );
  HS65_GS_NOR3X4 U13 ( .A(n6), .B(n19), .C(n8), .Z(n39) );
  HS65_GS_AOI12X2 U14 ( .A(n35), .B(n37), .C(n4), .Z(N124) );
  HS65_GS_NOR2AX3 U15 ( .A(n38), .B(n19), .Z(n35) );
  HS65_GS_IVX9 U16 ( .A(n37), .Z(n8) );
  HS65_GS_IVX9 U17 ( .A(n36), .Z(n6) );
  HS65_GS_AND2X4 U18 ( .A(n46), .B(n7), .Z(n43) );
  HS65_GS_OAI22X6 U19 ( .A(en), .B(n4), .C(n43), .D(n4), .Z(n40) );
  HS65_GS_AOI13X5 U20 ( .A(n38), .B(n36), .C(n47), .D(n4), .Z(N122) );
  HS65_GS_AOI32X5 U21 ( .A(n46), .B(n11), .C(state[0]), .D(en), .E(n43), .Z(
        n47) );
  HS65_GS_IVX9 U22 ( .A(start), .Z(n11) );
  HS65_GS_AO32X4 U23 ( .A(n3), .B(n41), .C(state[0]), .D(done), .E(n5), .Z(n75) );
  HS65_GS_IVX9 U24 ( .A(n41), .Z(n5) );
  HS65_GS_NAND2X7 U25 ( .A(n40), .B(n42), .Z(n41) );
  HS65_GS_NAND3X5 U26 ( .A(state[2]), .B(state[1]), .C(state[0]), .Z(n42) );
  HS65_GS_NOR2X6 U27 ( .A(n45), .B(n4), .Z(N123) );
  HS65_GS_AOI312X4 U28 ( .A(state[0]), .B(n46), .C(start), .D(state[1]), .E(n7), .F(n8), .Z(n45) );
  HS65_GS_MX41X7 U29 ( .D0(data_out[0]), .S0(n2), .D1(MY_CLUSTER_ID[0]), .S1(
        n31), .D2(MY_NODE_ID[0]), .S2(n32), .D3(data_in[0]), .S3(n33), .Z(n59)
         );
  HS65_GS_MX41X7 U30 ( .D0(data_out[1]), .S0(n2), .D1(MY_CLUSTER_ID[1]), .S1(
        n31), .D2(MY_NODE_ID[1]), .S2(n32), .D3(data_in[1]), .S3(n33), .Z(n60)
         );
  HS65_GS_MX41X7 U31 ( .D0(data_out[2]), .S0(n2), .D1(MY_CLUSTER_ID[2]), .S1(
        n31), .D2(MY_NODE_ID[2]), .S2(n32), .D3(data_in[2]), .S3(n33), .Z(n61)
         );
  HS65_GS_MX41X7 U32 ( .D0(data_out[3]), .S0(n2), .D1(MY_CLUSTER_ID[3]), .S1(
        n31), .D2(MY_NODE_ID[3]), .S2(n32), .D3(data_in[3]), .S3(n33), .Z(n62)
         );
  HS65_GS_MX41X7 U33 ( .D0(data_out[4]), .S0(n2), .D1(MY_CLUSTER_ID[4]), .S1(
        n31), .D2(MY_NODE_ID[4]), .S2(n32), .D3(data_in[4]), .S3(n33), .Z(n63)
         );
  HS65_GS_MX41X7 U34 ( .D0(data_out[5]), .S0(n2), .D1(MY_CLUSTER_ID[5]), .S1(
        n31), .D2(MY_NODE_ID[5]), .S2(n32), .D3(data_in[5]), .S3(n33), .Z(n64)
         );
  HS65_GS_MX41X7 U35 ( .D0(data_out[6]), .S0(n2), .D1(MY_CLUSTER_ID[6]), .S1(
        n31), .D2(MY_NODE_ID[6]), .S2(n32), .D3(data_in[6]), .S3(n33), .Z(n65)
         );
  HS65_GS_MX41X7 U36 ( .D0(data_out[7]), .S0(n2), .D1(MY_CLUSTER_ID[7]), .S1(
        n31), .D2(MY_NODE_ID[7]), .S2(n32), .D3(data_in[7]), .S3(n33), .Z(n66)
         );
  HS65_GS_MX41X7 U37 ( .D0(data_out[8]), .S0(n2), .D1(MY_CLUSTER_ID[8]), .S1(
        n31), .D2(MY_NODE_ID[8]), .S2(n32), .D3(data_in[8]), .S3(n33), .Z(n67)
         );
  HS65_GS_MX41X7 U38 ( .D0(data_out[9]), .S0(n2), .D1(MY_CLUSTER_ID[9]), .S1(
        n31), .D2(MY_NODE_ID[9]), .S2(n32), .D3(data_in[9]), .S3(n33), .Z(n68)
         );
  HS65_GS_MX41X7 U39 ( .D0(data_out[10]), .S0(n2), .D1(MY_CLUSTER_ID[10]), 
        .S1(n31), .D2(MY_NODE_ID[10]), .S2(n32), .D3(data_in[10]), .S3(n33), 
        .Z(n69) );
  HS65_GS_MX41X7 U40 ( .D0(data_out[11]), .S0(n2), .D1(MY_CLUSTER_ID[11]), 
        .S1(n31), .D2(MY_NODE_ID[11]), .S2(n32), .D3(data_in[11]), .S3(n33), 
        .Z(n70) );
  HS65_GS_MX41X7 U41 ( .D0(data_out[12]), .S0(n2), .D1(MY_CLUSTER_ID[12]), 
        .S1(n31), .D2(MY_NODE_ID[12]), .S2(n32), .D3(data_in[12]), .S3(n33), 
        .Z(n71) );
  HS65_GS_MX41X7 U42 ( .D0(data_out[13]), .S0(n2), .D1(MY_CLUSTER_ID[13]), 
        .S1(n31), .D2(MY_NODE_ID[13]), .S2(n32), .D3(data_in[13]), .S3(n33), 
        .Z(n72) );
  HS65_GS_MX41X7 U43 ( .D0(data_out[14]), .S0(n2), .D1(MY_CLUSTER_ID[14]), 
        .S1(n31), .D2(MY_NODE_ID[14]), .S2(n32), .D3(data_in[14]), .S3(n33), 
        .Z(n73) );
  HS65_GS_MX41X7 U44 ( .D0(data_out[15]), .S0(n2), .D1(MY_CLUSTER_ID[15]), 
        .S1(n31), .D2(MY_NODE_ID[15]), .S2(n32), .D3(data_in[15]), .S3(n33), 
        .Z(n74) );
  HS65_GS_AO22X9 U45 ( .A(address[2]), .B(n1), .C(n17), .D(n21), .Z(n50) );
  HS65_GS_AO222X4 U46 ( .A(N74), .B(n8), .C(N52), .D(n6), .E(N52), .F(n19), 
        .Z(n21) );
  HS65_GS_AO22X9 U47 ( .A(address[3]), .B(n1), .C(n17), .D(n22), .Z(n51) );
  HS65_GS_AO222X4 U48 ( .A(N75), .B(n8), .C(N53), .D(n6), .E(N53), .F(n19), 
        .Z(n22) );
  HS65_GS_IVX9 U49 ( .A(action[2]), .Z(N75) );
  HS65_GS_AO22X9 U50 ( .A(address[4]), .B(n1), .C(n17), .D(n23), .Z(n52) );
  HS65_GS_AO222X4 U51 ( .A(N76), .B(n8), .C(N54), .D(n6), .E(N65), .F(n19), 
        .Z(n23) );
  HS65_GS_AO22X9 U52 ( .A(address[5]), .B(n1), .C(n17), .D(n24), .Z(n53) );
  HS65_GS_AO222X4 U53 ( .A(N77), .B(n8), .C(N55), .D(n6), .E(N66), .F(n19), 
        .Z(n24) );
  HS65_GS_AO22X9 U54 ( .A(address[6]), .B(n1), .C(n17), .D(n25), .Z(n54) );
  HS65_GS_AO222X4 U55 ( .A(N78), .B(n8), .C(N56), .D(n6), .E(N67), .F(n19), 
        .Z(n25) );
  HS65_GS_AO22X9 U56 ( .A(address[7]), .B(n1), .C(n17), .D(n26), .Z(n55) );
  HS65_GS_AO222X4 U57 ( .A(N79), .B(n8), .C(N57), .D(n6), .E(N68), .F(n19), 
        .Z(n26) );
  HS65_GS_AO22X9 U58 ( .A(address[8]), .B(n1), .C(n17), .D(n27), .Z(n56) );
  HS65_GS_AO222X4 U59 ( .A(N80), .B(n8), .C(N58), .D(n6), .E(N69), .F(n19), 
        .Z(n27) );
  HS65_GS_AO22X9 U60 ( .A(address[10]), .B(n1), .C(n17), .D(n29), .Z(n58) );
  HS65_GS_AO222X4 U61 ( .A(N82), .B(n8), .C(N60), .D(n6), .E(N71), .F(n19), 
        .Z(n29) );
  HS65_GS_AO22X9 U62 ( .A(address[9]), .B(n1), .C(n17), .D(n28), .Z(n57) );
  HS65_GS_AO222X4 U63 ( .A(N81), .B(n8), .C(N59), .D(n6), .E(N70), .F(n19), 
        .Z(n28) );
  HS65_GS_AO22X9 U64 ( .A(address[1]), .B(n1), .C(n17), .D(n20), .Z(n49) );
  HS65_GS_AO222X4 U65 ( .A(N73), .B(n8), .C(N51), .D(n6), .E(N51), .F(n19), 
        .Z(n20) );
  HS65_GS_AND2X4 U66 ( .A(address[0]), .B(n1), .Z(n48) );
  HS65_GS_IVX9 U67 ( .A(state[0]), .Z(n7) );
  HS65_GS_NAND3X5 U68 ( .A(state[0]), .B(n10), .C(state[2]), .Z(n37) );
  HS65_GS_NAND3X5 U69 ( .A(n7), .B(n9), .C(state[1]), .Z(n36) );
  HS65_GS_IVX9 U70 ( .A(state[2]), .Z(n9) );
  HS65_GS_NOR2X6 U71 ( .A(state[1]), .B(state[2]), .Z(n46) );
  HS65_GS_IVX9 U72 ( .A(state[1]), .Z(n10) );
  HS65_GS_NAND2X7 U73 ( .A(state[2]), .B(n7), .Z(n38) );
  HS65_GS_IVX9 U74 ( .A(besthop[2]), .Z(N53) );
  HS65_GSS_XOR2X3 U75 ( .A(besthop[9]), .B(\add_55/carry[10] ), .Z(N71) );
  HS65_GS_AND2X4 U76 ( .A(besthop[8]), .B(\add_55/carry[9] ), .Z(
        \add_55/carry[10] ) );
  HS65_GSS_XOR2X3 U77 ( .A(\add_55/carry[9] ), .B(besthop[8]), .Z(N70) );
  HS65_GS_OR2X4 U78 ( .A(\add_55/carry[8] ), .B(besthop[7]), .Z(
        \add_55/carry[9] ) );
  HS65_GSS_XNOR2X3 U79 ( .A(besthop[7]), .B(\add_55/carry[8] ), .Z(N69) );
  HS65_GS_OR2X4 U80 ( .A(\add_55/carry[7] ), .B(besthop[6]), .Z(
        \add_55/carry[8] ) );
  HS65_GSS_XNOR2X3 U81 ( .A(besthop[6]), .B(\add_55/carry[7] ), .Z(N68) );
  HS65_GS_OR2X4 U82 ( .A(\add_55/carry[6] ), .B(besthop[5]), .Z(
        \add_55/carry[7] ) );
  HS65_GSS_XNOR2X3 U83 ( .A(besthop[5]), .B(\add_55/carry[6] ), .Z(N67) );
  HS65_GS_AND2X4 U84 ( .A(besthop[4]), .B(\add_55/carry[5] ), .Z(
        \add_55/carry[6] ) );
  HS65_GSS_XOR2X3 U85 ( .A(\add_55/carry[5] ), .B(besthop[4]), .Z(N66) );
  HS65_GS_AND2X4 U86 ( .A(besthop[3]), .B(besthop[2]), .Z(\add_55/carry[5] )
         );
  HS65_GSS_XOR2X3 U87 ( .A(besthop[2]), .B(besthop[3]), .Z(N65) );
  HS65_GSS_XOR2X3 U88 ( .A(besthop[9]), .B(\add_49/carry[10] ), .Z(N60) );
  HS65_GS_AND2X4 U89 ( .A(besthop[8]), .B(\add_49/carry[9] ), .Z(
        \add_49/carry[10] ) );
  HS65_GSS_XOR2X3 U90 ( .A(\add_49/carry[9] ), .B(besthop[8]), .Z(N59) );
  HS65_GS_OR2X4 U91 ( .A(\add_49/carry[8] ), .B(besthop[7]), .Z(
        \add_49/carry[9] ) );
  HS65_GSS_XNOR2X3 U92 ( .A(besthop[7]), .B(\add_49/carry[8] ), .Z(N58) );
  HS65_GS_AND2X4 U93 ( .A(besthop[6]), .B(\add_49/carry[7] ), .Z(
        \add_49/carry[8] ) );
  HS65_GSS_XOR2X3 U94 ( .A(\add_49/carry[7] ), .B(besthop[6]), .Z(N57) );
  HS65_GS_OR2X4 U95 ( .A(\add_49/carry[6] ), .B(besthop[5]), .Z(
        \add_49/carry[7] ) );
  HS65_GSS_XNOR2X3 U96 ( .A(besthop[5]), .B(\add_49/carry[6] ), .Z(N56) );
  HS65_GS_AND2X4 U97 ( .A(besthop[4]), .B(\add_49/carry[5] ), .Z(
        \add_49/carry[6] ) );
  HS65_GSS_XOR2X3 U98 ( .A(\add_49/carry[5] ), .B(besthop[4]), .Z(N55) );
  HS65_GS_AND2X4 U99 ( .A(besthop[3]), .B(besthop[2]), .Z(\add_49/carry[5] )
         );
  HS65_GSS_XOR2X3 U100 ( .A(besthop[2]), .B(besthop[3]), .Z(N54) );
  HS65_GSS_XOR2X3 U101 ( .A(action[9]), .B(\add_66/carry[10] ), .Z(N82) );
  HS65_GS_AND2X4 U102 ( .A(action[8]), .B(\add_66/carry[9] ), .Z(
        \add_66/carry[10] ) );
  HS65_GSS_XOR2X3 U103 ( .A(\add_66/carry[9] ), .B(action[8]), .Z(N81) );
  HS65_GS_AND2X4 U104 ( .A(action[7]), .B(\add_66/carry[8] ), .Z(
        \add_66/carry[9] ) );
  HS65_GSS_XOR2X3 U105 ( .A(\add_66/carry[8] ), .B(action[7]), .Z(N80) );
  HS65_GS_AND2X4 U106 ( .A(action[6]), .B(\add_66/carry[7] ), .Z(
        \add_66/carry[8] ) );
  HS65_GSS_XOR2X3 U107 ( .A(\add_66/carry[7] ), .B(action[6]), .Z(N79) );
  HS65_GS_OR2X4 U108 ( .A(\add_66/carry[6] ), .B(action[5]), .Z(
        \add_66/carry[7] ) );
  HS65_GSS_XNOR2X3 U109 ( .A(action[5]), .B(\add_66/carry[6] ), .Z(N78) );
  HS65_GS_AND2X4 U110 ( .A(action[4]), .B(\add_66/carry[5] ), .Z(
        \add_66/carry[6] ) );
  HS65_GSS_XOR2X3 U111 ( .A(\add_66/carry[5] ), .B(action[4]), .Z(N77) );
  HS65_GS_AND2X4 U112 ( .A(action[3]), .B(action[2]), .Z(\add_66/carry[5] ) );
  HS65_GSS_XOR2X3 U113 ( .A(action[2]), .B(action[3]), .Z(N76) );
endmodule


module top ( clock, nrst, en, address, wr_en, mem_data_in, mem_data_out, 
        fsourceID, fbatteryStat, fValue, fclusterID, fdestinationID, 
        reward_out, done_reward );
  output [10:0] address;
  output [15:0] mem_data_in;
  input [15:0] mem_data_out;
  input [15:0] fsourceID;
  input [15:0] fbatteryStat;
  input [15:0] fValue;
  input [15:0] fclusterID;
  input [15:0] fdestinationID;
  output [15:0] reward_out;
  input clock, nrst, en;
  output wr_en, done_reward;
  wire   wren_0, wren_1, wren_2, wren_3, wren_5, wren_6, wren_7,
         done_learnCosts, done_iamSink, done_iamDestination, done_fixSinkList,
         done_neighborSinkInOtherCluster, done_findMyBest,
         done_betterNeighborsInMyCluster, en_rng, start_rngAddress,
         done_rngAddress, done_winnerPolicy, done_selectMyAction,
         \addr_7_0[1] , \state[0] , N22, N32, N33, N34, N35, N36, N37, N38, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40;
  wire   [2:0] addr_select;
  wire   [10:0] addr_0;
  wire   [10:0] addr_1;
  wire   [10:0] addr_2;
  wire   [10:0] addr_3;
  wire   [10:0] addr_4;
  wire   [10:0] addr_5;
  wire   [10:0] addr_6;
  wire   [15:0] mdi_0;
  wire   [15:0] mdi_1;
  wire   [15:0] mdi_2;
  wire   [15:0] mdi_3;
  wire   [15:0] mdi_4;
  wire   [15:0] mdi_5;
  wire   [15:0] mdi_6;
  wire   [15:0] mdi_7;
  wire   [2:0] wr_select;
  wire   [15:0] initial_epsilon;
  wire   [15:0] MY_NODE_ID;
  wire   [15:0] MY_CLUSTER_ID;
  wire   [15:0] MY_BATTERY_STAT;
  wire   [15:0] mybest;
  wire   [15:0] besthop;
  wire   [15:0] bestvalue;
  wire   [15:0] bestneighborID;
  wire   [15:0] nextsinks;
  wire   [15:0] rng_out;
  wire   [15:0] rng_out_4bit;
  wire   [15:0] betterNeighborCount;
  wire   [15:0] which;
  wire   [15:0] rng_address;
  wire   [15:0] epsilon_step;
  wire   [15:0] nexthop;
  wire   [10:0] addr_7_buf;
  wire   [10:0] addr_7_1;
  wire   [15:0] action;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76;

  HS65_GS_DFPQX9 \state_reg[0]  ( .D(n21), .CP(clock), .Q(\state[0] ) );
  HS65_GS_DFPQX9 \MY_BATTERY_STAT_reg[15]  ( .D(n20), .CP(clock), .Q(
        MY_BATTERY_STAT[15]) );
  mux_11bit addr_mux ( .select(addr_select), .out(address), .in0(addr_0), 
        .in1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, addr_1[1], 
        1'b0}), .in2(addr_2), .in3(addr_3), .in4(addr_4), .in5(addr_5), .in6(
        addr_6), .in7({addr_7_buf[10], n22, addr_7_buf[8:0]}) );
  mux_16bit mdi_mux ( .select(addr_select), .out(mem_data_in), .in0(mdi_0), 
        .in1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, mdi_1[0]}), .in2(mdi_2), .in3({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, mdi_3[0]}), .in4({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .in5(mdi_5), .in6(
        mdi_6), .in7({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, mdi_7[0]}) );
  mux_1bit wren_mux ( .select(wr_select), .out(wr_en), .in0(wren_0), .in1(
        wren_1), .in2(wren_2), .in3(wren_3), .in4(1'b0), .in5(wren_5), .in6(
        wren_6), .in7(wren_7) );
  learnCosts lc1 ( .clock(clock), .nrst(n24), .en(en), .fsourceID(fsourceID), 
        .fbatteryStat(fbatteryStat), .fValue(fValue), .fclusterID(fclusterID), 
        .initial_epsilon({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1}), .address(addr_0), .wr_en(
        wren_0), .data_in(mem_data_out), .data_out(mdi_0), .done(
        done_learnCosts) );
  amISink ais1 ( .clock(clock), .nrst(nrst), .en(en), .start(done_learnCosts), 
        .address({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, addr_1[1], SYNOPSYS_UNCONNECTED__9}), .wr_en(
        wren_1), .data_in(mem_data_out), .data_out({SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, mdi_1[0]}), .done(
        done_iamSink) );
  amIDestination aif1 ( .clock(clock), .nrst(n24), .en(en), .start(
        done_iamSink), .MY_NODE_ID({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1}), 
        .destinationID(fdestinationID), .done(done_iamDestination) );
  fixSinkList fsl1 ( .clock(clock), .nrst(nrst), .en(en), .start(
        done_iamDestination), .address(addr_2), .wr_en(wren_2), .data_in(
        mem_data_out), .data_out(mdi_2), .done(done_fixSinkList) );
  neighborSinkInOtherCluster nsioc1 ( .clock(clock), .nrst(nrst), .en(en), 
        .start(done_fixSinkList), .address(addr_3), .wr_en(wren_3), .data_in(
        mem_data_out), .MY_CLUSTER_ID({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), 
        .data_out({SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, mdi_3[0]}), .done(
        done_neighborSinkInOtherCluster) );
  findMyBest fmb1 ( .clock(clock), .nrst(nrst), .en(en), .start(
        done_neighborSinkInOtherCluster), .address(addr_4), .data_in(
        mem_data_out), .MY_BATTERY_STAT({MY_BATTERY_STAT[15:14], 1'b0, 
        MY_BATTERY_STAT[12:11], 1'b0, 1'b0, MY_BATTERY_STAT[8:7], 1'b0, 1'b0, 
        MY_BATTERY_STAT[4:3], 1'b0, 1'b0, MY_BATTERY_STAT[0]}), .mybest(mybest), .done(done_findMyBest) );
  betterNeighborsInMyCluster bnimc1 ( .clock(clock), .nrst(n24), .en(en), 
        .start(done_findMyBest), .address(addr_5), .wr_en(wren_5), .data_in(
        mem_data_out), .MY_CLUSTER_ID({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .mybest(
        {n23, mybest[14:0]}), .besthop(besthop), .bestvalue(bestvalue), 
        .bestneighborID(bestneighborID), .nextsinks(nextsinks), .data_out(
        mdi_5), .done(done_betterNeighborsInMyCluster) );
  randomGenerator rng1 ( .clock(clock), .nrst(nrst), .rng_out(rng_out), 
        .rng_out_4bit({SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, rng_out_4bit[3:0]}), .en_rng(en_rng) );
  rngAddress rad1 ( .clock(clock), .nrst(n24), .start_rng_address(
        start_rngAddress), .betterNeighborCount(betterNeighborCount), .which(
        which), .rng_address(rng_address), .done_rng_address(done_rngAddress)
         );
  winnerPolicy wp1 ( .clock(clock), .nrst(n24), .en(en), .start_winnerPolicy(
        done_betterNeighborsInMyCluster), .mybest({n23, mybest[14:0]}), 
        .besthop(besthop), .bestvalue(bestvalue), .bestneighborID(
        bestneighborID), .MY_NODE_ID({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1}), .address(
        addr_6), .data_in(mem_data_out), .wr_en(wren_6), .data_out(mdi_6), 
        .epsilon_step({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .nexthop(nexthop), 
        .done_winnerPolicy(done_winnerPolicy), .en_rng(en_rng), .rng_out(
        rng_out), .rng_out_4bit({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, rng_out_4bit[3:0]}), .rng_address(
        rng_address), .start_rngAddress(start_rngAddress), .done_rng_address(
        done_rngAddress), .betterNeighborCount(betterNeighborCount), .which(
        which) );
  selectMyAction sma1 ( .clock(clock), .nrst(n24), .en(en), .start(
        done_winnerPolicy), .address({SYNOPSYS_UNCONNECTED__52, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, \addr_7_0[1] , 
        SYNOPSYS_UNCONNECTED__61}), .wr_en(wren_7), .nexthop(nexthop), 
        .nextsinks(nextsinks), .action(action), .data_out({
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, mdi_7[0]}), .done(done_selectMyAction) );
  reward r1 ( .clock(clock), .nrst(n24), .en(en), .start(done_selectMyAction), 
        .MY_NODE_ID({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1}), .MY_CLUSTER_ID({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1}), .action(action), .besthop(besthop), .address(addr_7_1), 
        .data_in(mem_data_out), .data_out(reward_out), .done(done_reward) );
  HS65_GS_LDHQX9 \wr_select_reg[2]  ( .G(N35), .D(N38), .Q(wr_select[2]) );
  HS65_GS_LDHQX9 \wr_select_reg[1]  ( .G(N35), .D(N37), .Q(wr_select[1]) );
  HS65_GS_LDHQX9 \wr_select_reg[0]  ( .G(N35), .D(N36), .Q(wr_select[0]) );
  HS65_GS_LDHQX9 \addr_select_reg[1]  ( .G(N32), .D(N33), .Q(addr_select[1])
         );
  HS65_GS_LDHQX9 \addr_select_reg[0]  ( .G(N32), .D(N36), .Q(addr_select[0])
         );
  HS65_GS_LDHQX9 \addr_select_reg[2]  ( .G(N32), .D(N34), .Q(addr_select[2])
         );
  HS65_GS_DFPHQX4 \MY_BATTERY_STAT_reg[14]  ( .D(nrst), .E(N22), .CP(clock), 
        .Q(MY_BATTERY_STAT[14]) );
  HS65_GS_DFPHQX4 \MY_BATTERY_STAT_reg[12]  ( .D(nrst), .E(N22), .CP(clock), 
        .Q(MY_BATTERY_STAT[12]) );
  HS65_GS_DFPHQX4 \MY_BATTERY_STAT_reg[11]  ( .D(nrst), .E(N22), .CP(clock), 
        .Q(MY_BATTERY_STAT[11]) );
  HS65_GS_DFPHQX4 \MY_BATTERY_STAT_reg[8]  ( .D(nrst), .E(N22), .CP(clock), 
        .Q(MY_BATTERY_STAT[8]) );
  HS65_GS_DFPHQX4 \MY_BATTERY_STAT_reg[7]  ( .D(nrst), .E(N22), .CP(clock), 
        .Q(MY_BATTERY_STAT[7]) );
  HS65_GS_DFPHQX4 \MY_BATTERY_STAT_reg[4]  ( .D(nrst), .E(N22), .CP(clock), 
        .Q(MY_BATTERY_STAT[4]) );
  HS65_GS_DFPHQX4 \MY_BATTERY_STAT_reg[3]  ( .D(nrst), .E(N22), .CP(clock), 
        .Q(MY_BATTERY_STAT[3]) );
  HS65_GS_DFPHQX4 \MY_BATTERY_STAT_reg[0]  ( .D(nrst), .E(N22), .CP(clock), 
        .Q(MY_BATTERY_STAT[0]) );
  HS65_GS_AND2X4 U133 ( .A(n18), .B(n24), .Z(n21) );
  HS65_GS_IVX9 U134 ( .A(n25), .Z(n24) );
  HS65_GS_IVX9 U135 ( .A(nrst), .Z(n25) );
  HS65_GS_BFX9 U136 ( .A(mybest[15]), .Z(n23) );
  HS65_GS_IVX9 U137 ( .A(N38), .Z(n36) );
  HS65_GS_NAND2X7 U138 ( .A(n11), .B(n35), .Z(N33) );
  HS65_GS_NAND2X7 U139 ( .A(n14), .B(n15), .Z(n11) );
  HS65_GS_IVX9 U140 ( .A(n16), .Z(n38) );
  HS65_GS_NAND2X7 U141 ( .A(n17), .B(n38), .Z(n9) );
  HS65_GS_NAND3X5 U142 ( .A(n12), .B(n35), .C(n38), .Z(N35) );
  HS65_GS_IVX9 U143 ( .A(N37), .Z(n35) );
  HS65_GS_NAND3X5 U144 ( .A(n8), .B(n36), .C(n9), .Z(N36) );
  HS65_GS_NAND2X7 U145 ( .A(n12), .B(n13), .Z(N38) );
  HS65_GS_IVX9 U146 ( .A(done_selectMyAction), .Z(n37) );
  HS65_GS_NOR2X6 U147 ( .A(n37), .B(n34), .Z(addr_7_buf[0]) );
  HS65_GS_IVX9 U148 ( .A(addr_7_1[0]), .Z(n34) );
  HS65_GS_NOR2X6 U149 ( .A(n37), .B(n33), .Z(addr_7_buf[2]) );
  HS65_GS_IVX9 U150 ( .A(addr_7_1[2]), .Z(n33) );
  HS65_GS_NOR2X6 U151 ( .A(n37), .B(n32), .Z(addr_7_buf[3]) );
  HS65_GS_IVX9 U152 ( .A(addr_7_1[3]), .Z(n32) );
  HS65_GS_NOR2X6 U153 ( .A(n37), .B(n31), .Z(addr_7_buf[4]) );
  HS65_GS_IVX9 U154 ( .A(addr_7_1[4]), .Z(n31) );
  HS65_GS_NOR2X6 U155 ( .A(n37), .B(n30), .Z(addr_7_buf[5]) );
  HS65_GS_IVX9 U156 ( .A(addr_7_1[5]), .Z(n30) );
  HS65_GS_NOR2X6 U157 ( .A(n37), .B(n29), .Z(addr_7_buf[6]) );
  HS65_GS_IVX9 U158 ( .A(addr_7_1[6]), .Z(n29) );
  HS65_GS_NOR2X6 U159 ( .A(n37), .B(n28), .Z(addr_7_buf[7]) );
  HS65_GS_IVX9 U160 ( .A(addr_7_1[7]), .Z(n28) );
  HS65_GS_NOR2X6 U161 ( .A(n37), .B(n27), .Z(addr_7_buf[8]) );
  HS65_GS_IVX9 U162 ( .A(addr_7_1[8]), .Z(n27) );
  HS65_GS_NOR2X6 U163 ( .A(n37), .B(n26), .Z(addr_7_buf[10]) );
  HS65_GS_IVX9 U164 ( .A(addr_7_1[10]), .Z(n26) );
  HS65_GS_NAND2X7 U165 ( .A(n24), .B(n19), .Z(N22) );
  HS65_GS_NAND2X7 U166 ( .A(en), .B(n40), .Z(n19) );
  HS65_GS_AO22X9 U167 ( .A(addr_7_1[1]), .B(done_selectMyAction), .C(
        \addr_7_0[1] ), .D(n37), .Z(addr_7_buf[1]) );
  HS65_GS_AND2X4 U168 ( .A(done_selectMyAction), .B(addr_7_1[9]), .Z(n22) );
  HS65_GS_AO12X9 U169 ( .A(MY_BATTERY_STAT[15]), .B(n39), .C(n25), .Z(n20) );
  HS65_GS_IVX9 U170 ( .A(N22), .Z(n39) );
  HS65_GS_AO22X9 U171 ( .A(n40), .B(en), .C(n37), .D(\state[0] ), .Z(n18) );
  HS65_GS_IVX9 U172 ( .A(\state[0] ), .Z(n40) );
  HS65_GS_NOR2AX3 U173 ( .A(done_findMyBest), .B(n10), .Z(n15) );
  HS65_GS_OAI211X5 U174 ( .A(done_fixSinkList), .B(n16), .C(n13), .D(n9), .Z(
        N37) );
  HS65_GS_NOR2AX3 U175 ( .A(done_betterNeighborsInMyCluster), .B(
        done_winnerPolicy), .Z(n14) );
  HS65_GS_NAND3AX6 U176 ( .A(n17), .B(done_fixSinkList), .C(n38), .Z(n10) );
  HS65_GS_NAND2X7 U177 ( .A(done_learnCosts), .B(n8), .Z(n16) );
  HS65_GS_NAND4ABX3 U178 ( .A(n14), .B(done_reward), .C(n15), .D(
        done_betterNeighborsInMyCluster), .Z(n13) );
  HS65_GS_OAI211X5 U179 ( .A(done_findMyBest), .B(n10), .C(n11), .D(n36), .Z(
        N34) );
  HS65_GS_NAND2AX7 U180 ( .A(done_iamDestination), .B(done_learnCosts), .Z(n8)
         );
  HS65_GS_NAND3AX6 U181 ( .A(N35), .B(n11), .C(done_findMyBest), .Z(N32) );
  HS65_GS_NOR2AX3 U182 ( .A(done_fixSinkList), .B(
        done_neighborSinkInOtherCluster), .Z(n17) );
  HS65_GS_NAND2AX7 U183 ( .A(done_betterNeighborsInMyCluster), .B(n15), .Z(n12) );
endmodule

