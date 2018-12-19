
#Randall Evan McClellan -- 2018-12-18

import socket
import thread
import Queue as qu
import subprocess

def execFreq(aIndex, aFreq):
    val = 'Error'	#default return value
    p = subprocess.Popen(["fpga","freq",aIndex,aFreq], stdout=subprocess.PIPE, stderr=subprocess.PIPE)	#execute fpga command
    out, err = p.communicate()	#grab fpga stdout
    lines = out.split('\n')
    for line in lines:	#parse fpga stdout, saving the returned frequency (in Kilohertz) as a str(float)
        words = line.split(' ')
        for i, word in enumerate(words):
            if word=="Kilohertz":
                try:
                    val = float(words[i-1])
                except:
                    val = "NaN"
    return val

#handle incoming message from client, check for valid floats, call execFreq() on each
def handleMessage(message):
    print "New Message: ", message
    vals = message.split(' ')
    print "vals before: ", vals
    for i,v in enumerate(vals):
        try:
            vals[i] = float(v)
        except:
            vals[i] = 'NaN'
            continue
        vals[i] = execFreq(str(i),v)
    print "vals after: ", vals
    return ' '.join([str(v) for v in vals])

class serverClass:
    def __init__(self):
        self.serversocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.serversocket.bind(('', 1495))
        self.serversocket.listen(5) # become a server socket, maximum 5 connections

        self.clientDict = {}
        self.controlDict = {}	#control dictionary
        self.controlDict["killSwitch"] = False
        self.q = qu.Queue()

        self.broadcaster = thread.start_new_thread(self.clientsBroadcast,())
        print "Ready \n"
        self.mainLoop()

    def clientListen(self, aConnection):
        while self.controlDict["killSwitch"] is False:
            buf = aConnection.recv(64)
            if buf == '':	#kill clientListen thread if empty buffer is sent (usually due to broken connection)
                del self.clientDict[thread.get_ident()]		#remove client thread from client dictionary
                if len(self.clientDict) == 0:	#kill threads, socket, and server if this was the last client
                    print "All clients left, killing server."
                    self.controlDict["killSwitch"] = True
                    dummyconnect = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                    dummyconnect.connect(('localhost', 1495))
                    dummyconnect.send(''.encode())
                break
            abuf = handleMessage(buf)
            self.q.put(abuf)

    def clientsBroadcast(self):
        while self.controlDict["killSwitch"] is False:
            message = self.q.get()
            for aC in self.clientDict:
                self.clientDict[aC].send(message)

    def mainLoop(self):
        while self.controlDict["killSwitch"] is False:
            connection, address = self.serversocket.accept()
            newClient = thread.start_new_thread(self.clientListen,(connection,))
            print "Got new client! address = ", address
            self.clientDict[newClient] = connection
        self.serversocket.close()
        return None

serv = serverClass()
print "Server Exiting..."
