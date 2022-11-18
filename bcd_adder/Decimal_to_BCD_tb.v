
module Decimal_to_BCD_tb();
  
  reg[10:0] dec_tb;
  wire[15:0] BCD_tb;
  
  Decimal_to_BCD DUT(
              	.dec(dec_tb), 
              	.BCD(BCD_tb)
              	);
              	
  initial begin
    for(dec_tb = 0; dec_tb <= 999; dec_tb = dec_tb + 1) begin
      #1;
      $display("For value = %d, the output is = %b", dec_tb, BCD_tb);
    end
  end
endmodule