ghdl -i tb_stoch.vhd LFSR_stochastic.vhd 
ghdl -m lfsr_tb
./lfsr_tb --wave=out.ghw > $1
