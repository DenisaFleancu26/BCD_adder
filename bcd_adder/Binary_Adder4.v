
module Binary_Adder4(
            	 input [3:0] a,b,
            	 output [3:0] s,
            	 input c_in,
            	 output  c_out
            	 );
            	 
 wire c1,c2,c3;
 
  FAC f0(
        .a(a[0]),
        .b(b[0]),
        .s(s[0]),
        .c_in(c_in),
        .c_out(c1)
        );            	 
 FAC f1(
        .a(a[1]),
        .b(b[1]),
        .s(s[1]),
        .c_in(c1),
        .c_out(c2)
        );          
 FAC f2(
        .a(a[2]),
        .b(b[2]),
        .s(s[2]),
        .c_in(c2),
        .c_out(c3)
        );  
 FAC f3(
        .a(a[3]),
        .b(b[3]),
        .s(s[3]),
        .c_in(c3),
        .c_out(c_out)
        );                  
        
endmodule   