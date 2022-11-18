
module BCD_Adder_tb();

  
  wire[11:0] in_1_tb, in_2_tb;
  reg[10:0] test_input_1, test_input_2, test_output_1;
  wire[15:0] out_1_tb_actual, out_1_tb_exp;


  reg[10:0] MAX_VAL_in1, MAX_VAL_in2;
 
  integer n_tests_failed, n_tests_total;

  Decimal_to_BCD convert_input_1(
		                              .dec(test_input_1), 
		                              .BCD(in_1_tb)
		);
  Decimal_to_BCD convert_input_2(
		          	                 	 .dec(test_input_2), 
		                    	         .BCD(in_2_tb)
		);
Decimal_to_BCD convert_output_1(
		          	 	 	     	         .dec(test_output_1), 
		                        	     .BCD(out_1_tb_exp)
		);
  

  BCD_Adder DUT(
		            .in_1(in_1_tb), 
		            .in_2(in_2_tb), 
		            .out_1(out_1_tb_actual)
		);
  
  initial begin
    
    
    MAX_VAL_in1 =999;
    MAX_VAL_in2 =999;
   
    n_tests_total = 0;
    n_tests_failed = 0;
    
    for(test_input_1 = 0; test_input_1 <= MAX_VAL_in1; test_input_1 = test_input_1 + 1) begin
      for(test_input_2 = 0; test_input_2 <= MAX_VAL_in2; test_input_2 = test_input_2 + 1) begin
        test_output_1 = test_input_1 + test_input_2;
        n_tests_total = n_tests_total + 1;
        #1;
        $display("Test nr: %d", test_input_1 * (MAX_VAL_in2 + 1) + test_input_2 + 1);
        
          $display("Pentru urmatoarele intrari:\nin_1(decimal) = %d, in_1(BCD) = %b \nin_2(decimal) = %d, in_2(BCD) = %b \n", test_input_1, in_1_tb, test_input_2, in_2_tb);
          $display("Rezultatul asteptat: out_1(decimal) = %d, out_1(BCD) = %b", test_output_1, out_1_tb_exp);
          $display("Rezultatul obtinut: out_1(BCD) = %b", out_1_tb_actual);
        
        if(out_1_tb_exp != out_1_tb_actual) begin
         
          n_tests_failed = n_tests_failed + 1;
        end
        
      $display("=============================================================================================================");
   
      end
    end
   
  end
endmodule
          