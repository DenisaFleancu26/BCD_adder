
module FAC(
          input a,b,
          output s,
          input c_in,
          output c_out
          );
          
wire w1,w2,w3;

xor x1(w1,a,b);
xor x2(s,w1,c_in);
and x3(w2,a,b);
and x4(w3,w1,c_in);
or x5(c_out,w2,w3);
    
//assign s = (a ^ b ^ c_in);
//assign c_out = b & a | b & c_in | a & c_in;      

endmodule