
module BCD_Adder_4(
            input [3:0] i1,
            input  [3:0] i2,
            output [3:0] o,
            input cin1,
            output cout1
           );
           
wire c1,cout2;
wire [3:0] out,in1;

Binary_Adder4 bcd1(
              .a(i1),
              .b(i2),
              .s(out),
              .c_in(cin1),
              .c_out(c1)
              );
              
wire w1,w2; 
                      
and(w1,out[3],out[2]);
and(w2,out[3],out[1]);
or(cout1,c1,w1,w2);



assign in1[0]=1'b0;
assign in1[1]=cout1;
assign in1[2]=cout1;
assign in1[3]=1'b0;

Binary_Adder4 BCD1(
              .a(in1),
              .b(out),
              .s(o),
              .c_in(1'b0),
              .c_out(cout2)
              );
              
endmodule            

