#!/usr/bin/python3
#Randall Evan McClellan -- 2018-12-18

import tkinter as tk
import time
import socket
import _thread as th
import queue as qu
import sys

#tkinter gui class for MLU Random Pulser control
class message1:
    def __init__(self, master, bQ, aC, aSide):
        self.master = master
        self.exit_request = False
        self.bQ = bQ
        self.server = aC
        self.master.title(aSide+"HRS MLU Random Pulser")
        self.recent_message = ''
        self.focal = 0

        self.upper_frame = tk.Frame(self.master)
        self.upper_frame.pack()

        self.wLabel = []
        self.wInput = []
        self.wDisp  = []
        for i in range(4):
            self.wLabel.append(tk.Label(self.upper_frame, text="F"+str(i)))
            self.wLabel[i].grid(row=i,column=0)
            self.wDisp.append(tk.Text(self.upper_frame, height=1, width=20))
            self.wDisp[i].grid(row=i,column=2,padx=5,pady=5)
            self.wInput.append(tk.Entry(self.upper_frame, width=20, bg='white'))
            self.wInput[i].grid(row=i,column=1,padx=5,pady=5)
        self.wInput[self.focal].focus_set()
        self.master.bind('<Tab>', self.tab)
        self.master.bind('<Control-w>', self.quit)

        self.button_frame = tk.Frame(self.master)
        self.button_frame.pack(side=tk.BOTTOM)

        self.zero_button = tk.Button(self.button_frame, text="Zero All", fg="red", command=self.zeroall)
        self.zero_button.pack(side=tk.LEFT,padx=10)
        self.quit_button = tk.Button(self.button_frame, text="Quit", fg="red", command=self.quit)
        self.quit_button.pack(side=tk.LEFT)
        self.apply_button = tk.Button(self.button_frame, text="Apply", fg="black", command=self.send_text)
        self.apply_button.pack(side=tk.RIGHT)

        self.master.after(100,self.check_queue)

        self.serverThread = th.start_new_thread(self.serverListen,tuple())

    def serverListen(self):
        while not self.exit_request:
            inbound = self.server.recv(1024).decode()
            if len(inbound) > 0:
                self.bQ.put(inbound)
        self.server.close()

    def tab(self, event):
        self.focal += 1
        if self.focal > 3:
            self.focal = 0
        self.wInput[self.focal].focus_set()
        return("break")	#dont do the tab default behavior!

    def zeroall(self):
        for i in range(4):
            self.wInput[i].delete(0,tk.END)
        data = '0 0 0 0'
        self.server.send(data.encode())

    def quit(self, event=None):
        self.exit_request = True
        self.master.destroy()

    def send_text(self, event=None):
        newText = []
        for i in range(4):
            newText.append(self.wInput[i].get().strip(' '))
        data = newText[0]+" "+newText[1]+" "+newText[2]+" "+newText[3]
        self.server.send(data.encode())

    def show_text(self):
        messages = self.recent_message.split(' ')
        for i in range(4):
            self.wDisp[i].delete(1.0, tk.END)
            self.wDisp[i].insert(tk.END, messages[i])
            self.wDisp[i].see(tk.END)
            self.wDisp[i].update()

    def check_queue(self):
        while not self.bQ.empty():
            try:
                mes = self.bQ.get(timeout=0.01)
                self.bQ.task_done()
            except:
                break
            self.recent_message = mes
            self.show_text()
        self.master.after(100, self.check_queue)

#handle command line argument
if len(sys.argv) == 2 and (sys.argv[1] == 'L' or sys.argv[1] == 'R'):
    side = sys.argv[1]
else:
    print("Please specify which HRS with L or R")

#initialize configuration dictionary
configDict = {}

#open config file
try:
    with open('./mlu'+side+'.config', 'rt') as configFile:
        for line in configFile:
            if line.lstrip()[0] != '#':
                configKey, configValue = line.split('=')
                configDict[configKey] = configValue.rstrip()
except IOError:
    print("There was an error opening the config file!")
    print("Creating a default config file...")
    with open('./mlu'+side+'.config', 'wt') as newFile:
        newFile.write("server=localhost\n")
        newFile.write("port=1495")
    print("...and exiting...")
    sys.exit()

#add server address to configuration dictionary
try:
    serverIP = configDict['server']
except KeyError:
    print("Must specify server IP address in mlu"+side+".config!")
    sys.exit()

#add server port to configuration dictionary
try:
    myPort = configDict['port']
except KeyError:
    myPort = '1495'
    print("Default: Setting port to \'"+myPort+"\'")

#start up threading and socket connection
q = qu.Queue()
serverconnect = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serverconnect.connect((serverIP, int(myPort)))

#start up tkinter, open gui, pass control to tkinter main loop
root = tk.Tk()
my_gui = message1(root, q, serverconnect, side)
root.mainloop()
