
module BCD_Adder(
      	   input [11:0] in_1,in_2,
      	   output [15:0] out_1
      	   );
      	   
 
 wire c1,c2,c3;
 

 
 BCD_Adder_4 bcd1(
                .i1(in_1 [3:0]),
                .i2(in_2 [3:0]),
                .o(out_1 [3:0]),
                .cin1(1'b0),
                .cout1(c1)
                );
                
 BCD_Adder_4 bcd2(
                .i1(in_1 [7:4]),
                .i2(in_2 [7:4]),
                .o(out_1 [7:4]),
                .cin1(c1),
                .cout1(c2)
                );
                       
 BCD_Adder_4 bcd3(
                .i1(in_1 [11:8]),
                .i2(in_2 [11:8]),
                .o(out_1 [11:8]),
                .cin1(c2),
                .cout1(c3)
                ); 
                
                
                             
 assign out_1[15:12] = c3;
         

endmodule