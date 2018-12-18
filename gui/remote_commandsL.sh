
ssh -t -t halladaq8 << EOF
cd /adaqfs/home/adaq/MLU/driver
python /adaqfs/home/adaq/HallA-MLU/gui/server.py
echo "MLU Random Pulser Control Server Closed."
exit
EOF
exit
