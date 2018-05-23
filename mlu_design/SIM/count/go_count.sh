ghdl -i tb_Count32.vhd count32.vhd 
ghdl -m count32_tb
./count32_tb --wave=out.ghw
