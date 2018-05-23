ghdl -i tb_LFSR.vhd LFSR.vhd 
ghdl -m lfsr_tb
./lfsr_tb --wave=out.ghw > $1
