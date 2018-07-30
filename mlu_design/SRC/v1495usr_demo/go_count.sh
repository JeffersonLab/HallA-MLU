echo "Check 0"
ghdl -i tb_Count32.vhd count32.vhd 
echo "Check 1"
ghdl -m count32_tb
echo "Check 2"
./count32_tb --wave=out.ghw
echo "Check 3"
