blinky_chopin_ml1_v1:
	mkdir -p output
	yosys -q -p "synth_ecp5 -top blinky -json output/blinky_chopin_ml1.json" rtl/blinky_chopin_ml1.v
	nextpnr-ecp5 --45k --package CABGA256 --lpf chopin_ml1_v1.lpf --json output/blinky_chopin_ml1.json --textcfg output/chopin_ml1_blinky_out.config
	ecppack -v --compress --freq 2.4 output/chopin_ml1_blinky_out.config --bit output/chopin_ml1.bit

prog:
	openFPGALoader -c dirtyJtag output/chopin_ml1.bit
