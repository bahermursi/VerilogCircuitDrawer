/* Generated by Yosys 0.2.0+ (git sha1 d18c10d) */

module add2(x, y, ci, s, co);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  input ci;
  output co;
  output [1:0] s;
  input [1:0] x;
  input [1:0] y;
  AND2X2 _13_ (
    .A(x[0]),
    .B(y[0]),
    .Y(_11_)
  );
  NOR2X1 _14_ (
    .A(x[0]),
    .B(y[0]),
    .Y(_12_)
  );
  NOR2X1 _15_ (
    .A(_12_),
    .B(_11_),
    .Y(_00_)
  );
  XOR2X1 _16_ (
    .A(_00_),
    .B(ci),
    .Y(_02_)
  );
  NAND2X1 _17_ (
    .A(x[1]),
    .B(y[1]),
    .Y(_01_)
  );
  OR2X2 _18_ (
    .A(x[1]),
    .B(y[1]),
    .Y(_03_)
  );
  NAND2X1 _19_ (
    .A(_01_),
    .B(_03_),
    .Y(_04_)
  );
  INVX1 _20_ (
    .A(_11_),
    .Y(_06_)
  );
  NAND2X1 _21_ (
    .A(ci),
    .B(_00_),
    .Y(_08_)
  );
  NAND2X1 _22_ (
    .A(_06_),
    .B(_08_),
    .Y(_09_)
  );
  XNOR2X1 _23_ (
    .A(_09_),
    .B(_04_),
    .Y(_05_)
  );
  NAND2X1 _24_ (
    .A(_03_),
    .B(_09_),
    .Y(_10_)
  );
  NAND2X1 _25_ (
    .A(_01_),
    .B(_10_),
    .Y(_07_)
  );
  BUFX2 _26_ (
    .A(_07_),
    .Y(co)
  );
  BUFX2 _27_ (
    .A(_02_),
    .Y(s[0])
  );
  BUFX2 _28_ (
    .A(_05_),
    .Y(s[1])
  );
endmodule
