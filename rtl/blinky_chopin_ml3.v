// CHOPIN + SECHZIG ML1

module blinky
#(
)
(

	input CLK_48,

	output LED,

   output PMOD_A1, PMOD_A2, PMOD_A3, PMOD_A4,
   output PMOD_A7, PMOD_A8, PMOD_A9, PMOD_A10,

   output PMOD_B1, PMOD_B2, PMOD_B3, PMOD_B4,
   output PMOD_B7, PMOD_B8, PMOD_B9, PMOD_B10,

   output PMOD_C1, PMOD_C2, PMOD_C3, PMOD_C4,
   output PMOD_C7, PMOD_C8, PMOD_C9, PMOD_C10,

   output PMOD_D1, PMOD_D2, PMOD_D3, PMOD_D4,
   output PMOD_D7, PMOD_D8, PMOD_D9, PMOD_D10,

);

   assign PMOD_A1 = counter[28];
   assign PMOD_A2 = counter[27];
   assign PMOD_A3 = counter[26];
   assign PMOD_A4 = counter[25];
   assign PMOD_A7 = counter[24];
   assign PMOD_A8 = counter[23];
   assign PMOD_A9 = counter[22];
   assign PMOD_A10 = counter[21];

   assign PMOD_B1 = counter[28];
   assign PMOD_B2 = counter[27];
   assign PMOD_B3 = counter[26];
   assign PMOD_B4 = counter[25];
   assign PMOD_B7 = counter[24];
   assign PMOD_B8 = counter[23];
   assign PMOD_B9 = counter[22];
   assign PMOD_B10 = counter[21];

   assign PMOD_C1 = counter[28];
   assign PMOD_C2 = counter[27];
   assign PMOD_C3 = counter[26];
   assign PMOD_C4 = counter[25];
   assign PMOD_C7 = counter[24];
   assign PMOD_C8 = counter[23];
   assign PMOD_C9 = counter[22];
   assign PMOD_C10 = counter[21];

   assign PMOD_D1 = counter[28];
   assign PMOD_D2 = counter[27];
   assign PMOD_D3 = counter[26];
   assign PMOD_D4 = counter[25];
   assign PMOD_D7 = counter[24];
   assign PMOD_D8 = counter[23];
   assign PMOD_D9 = counter[22];
   assign PMOD_D10 = counter[21];

	reg [28:0] counter = 0;

   assign LED = ~counter[25];

   always @(posedge CLK_48) begin
      counter <= counter + 1;
   end

endmodule
