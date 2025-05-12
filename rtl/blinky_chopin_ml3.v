// CHOPIN BLINKY

module blinky
#(
)
(

	input CLK_48,

	output LED,
	output LEDA,

`ifdef PRELUDE
	input BTN,
`endif

   output PMOD_A1, PMOD_A2, PMOD_A3, PMOD_A4,
   output PMOD_A7, PMOD_A8, PMOD_A9, PMOD_A10,

   output PMOD_B1, PMOD_B2, PMOD_B3, PMOD_B4,
   output PMOD_B7, PMOD_B8, PMOD_B9, PMOD_B10,

   output PMOD_C1, PMOD_C2, PMOD_C3, PMOD_C4,
   output PMOD_C7, PMOD_C8, PMOD_C9, PMOD_C10,

   output PMOD_D1, PMOD_D2, PMOD_D3, PMOD_D4,
   output PMOD_D7, PMOD_D8, PMOD_D9, PMOD_D10,

`ifdef PRELUDE
   output PMOD_E1, PMOD_E2, PMOD_E3, PMOD_E4,
   output PMOD_E7, PMOD_E8, PMOD_E9, PMOD_E10,
`endif

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

`ifdef PRELUDE
   assign PMOD_E1 = counter[28];
   assign PMOD_E2 = counter[27];
   assign PMOD_E3 = counter[26];
   assign PMOD_E4 = counter[25];
   assign PMOD_E7 = counter[24];
   assign PMOD_E8 = counter[23];
   assign PMOD_E9 = counter[22];
   assign PMOD_E10 = counter[21];
`endif

	reg [28:0] counter = 0;

   assign LED = ~counter[25];

`ifdef PRELUDE
	assign LEDA = BTN;
`else
	assign LEDA = 1'b0;
`endif

   always @(posedge CLK_48) begin
      counter <= counter + 1;
   end

endmodule
