
module Decimal_to_BCD(
              input[10:0] dec,
              output reg[15:0] BCD
              );

  reg[10:0] aux; 
  reg[1:0] counter;
  
  always @ (dec) begin
    aux = dec;
    BCD = {16{1'b0}};
    counter = 2'b00;
      while(aux != 0) begin
        BCD[counter * 4 +: 4] = aux % 10;
        aux = aux / 10;
        counter = counter + 1;
       end
  end
endmodule