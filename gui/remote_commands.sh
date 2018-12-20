
#Randall Evan McClellan -- 2018-12-18
#script for launching the MLU Random Pulser control server
#to be executed in an xterm by the 'mlurand' script

ssh -t -t $1 << EOF
cd /adaqfs/home/adaq/HallA-MLU/driver
python /adaqfs/home/adaq/HallA-MLU/gui/server.py
echo "MLU Random Pulser Control Server Closed."
exit
EOF
