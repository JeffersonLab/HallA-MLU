
ssh -t -t intelha3 << EOF
cd /adaqfs/home/adaq/MLUright/driver
python /adaqfs/home/adaq/HallA-MLU/gui/server.py
echo "MLU Random Pulser Control Server Closed."
exit
EOF
exit
