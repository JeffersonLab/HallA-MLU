import socket
import thread
import Queue as qu
import subprocess

def execFreq(aIndex, aFreq):
    val = 'Error'	#default return value
    p = subprocess.Popen(["fpga","freq",aIndex,aFreq], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out, err = p.communicate()
    #print "Caught stdout:", out
    #print "Caught stderr:", err
    lines = out.split('\n')
    for line in lines:
        words = line.split(' ')
        for i, word in enumerate(words):
            if word=="Kilohertz":
                try:
                    val = float(words[i-1])
                except:
                    val = "NaN"
    return val

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

def clientListen(aConnection, aQ):
    while True:
        buf = aConnection.recv(64)
        if buf == '':	#kill thread if empty buffer is sent (usually due to broken connection)
            print "Client left."
            break
        abuf = handleMessage(buf)
        aQ.put(abuf)

def clientsBroadcast(aDict, aQ, aControlDict):
    while True:
        message = aQ.get()
        aControlDict["pauseFlag"] += 1
        for aC in aDict:
            aDict[aC].send(message)
        aControlDict["pauseFlag"] -= 1
        #aQ.task_done()

class serverClass:
    def __init__():
        self.serversocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.serversocket.bind(('', 1495))
        self.serversocket.listen(5) # become a server socket, maximum 5 connections

        self.clientDict = {}
        self.controlDict = {}	#control dictionary
        self.controlDict["pauseFlag"] = 0
        self.q = qu.Queue()

        self.broadcaster = thread.start_new_thread(self.clientsBroadcast,())
        print "Ready \n"
        self.mainLoop()

    def clientListen(self, aConnection):
        while self.controlDict["killSwitch"] is False:
            buf = aConnection.recv(64)
            if buf == '':	#kill thread if empty buffer is sent (usually due to broken connection)
                print "Client left, killing server."
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
