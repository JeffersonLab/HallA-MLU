
ssh -t -t intelha3 << EOF
echo "Got Here!"
cd /adaqfs/home/adaq/MLUright/driver
python /adaqfs/home/adaq/HallA-MLU/gui/server.py
exit
EOF
exit
