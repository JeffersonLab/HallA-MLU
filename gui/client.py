#!/usr/bin/python3

import tkinter as tk
import time
import socket
import _thread as th
import queue as qu
import sys

class message1:
    def __init__(self, master, bQ, aC, name):
        self.master = master
        self.exit_request = False
        self.bQ = bQ
        self.server = aC
        self.name = name
        self.master.title("?HRS MLU Random Pulser")
        self.recent_message = ''

        self.upper_frame = tk.Frame(self.master)
        self.upper_frame.pack()

        self.label0 = tk.Label(self.upper_frame, text="F0")
        self.label0.grid(row=0,column=0)
        self.disp0 = tk.Text(self.upper_frame, height=1, width=20)
        self.disp0.grid(row=0,column=2,padx=5,pady=5)
        self.input0 = tk.Entry(self.upper_frame, width=20)
        self.input0.grid(row=0,column=1,padx=5,pady=5)
        self.input0.focus()

        self.label1 = tk.Label(self.upper_frame, text="F1")
        self.label1.grid(row=1,column=0)
        self.disp1 = tk.Text(self.upper_frame, height=1, width=20)
        self.disp1.grid(row=1,column=2,padx=5,pady=5)
        self.input1 = tk.Entry(self.upper_frame, width=20)
        self.input1.grid(row=1,column=1,padx=5,pady=5)

        self.label2 = tk.Label(self.upper_frame, text="F2")
        self.label2.grid(row=2,column=0)
        self.disp2 = tk.Text(self.upper_frame, height=1, width=20)
        self.disp2.grid(row=2,column=2,padx=5,pady=5)
        self.input2 = tk.Entry(self.upper_frame, width=20)
        self.input2.grid(row=2,column=1,padx=5,pady=5)

        self.label3 = tk.Label(self.upper_frame, text="F3")
        self.label3.grid(row=3,column=0)
        self.disp3 = tk.Text(self.upper_frame, height=1, width=20)
        self.disp3.grid(row=3,column=2,padx=5,pady=5)
        self.input3 = tk.Entry(self.upper_frame, width=20)
        self.input3.grid(row=3,column=1,padx=5,pady=5)

        self.button_frame = tk.Frame(self.master)
        self.button_frame.pack(side=tk.BOTTOM)

        self.zero_button = tk.Button(self.button_frame, text="Zero All", fg="red", command=self.zeroall)
        self.zero_button.pack(side=tk.LEFT,padx=10)
        self.quit_button = tk.Button(self.button_frame, text="Quit", fg="red", command=self.quit)
        self.quit_button.pack(side=tk.LEFT)
        self.apply_button = tk.Button(self.button_frame, text="Apply", fg="black", command=self.send_text)
        self.apply_button.pack(side=tk.RIGHT)

        self.disp0.update()
        master.after(100,self.check_queue)

        self.serverThread = th.start_new_thread(self.serverListen,tuple())

    def serverListen(self):
        while not self.exit_request:
            inbound = self.server.recv(1024).decode()
            if len(inbound) > 0:
                self.bQ.put(inbound)
        self.server.close()

    def zeroall(self):
        self.input0.delete(0,tk.END)
        self.input1.delete(0,tk.END)
        self.input2.delete(0,tk.END)
        self.input3.delete(0,tk.END)
        data = '0 0 0 0'
        self.server.send(data.encode())

    def quit(self):
        self.exit_request = True
        data = self.name+" has left the chat."
        self.server.send(data.encode())
        self.master.destroy()

    #def send_text(self, event):
    def send_text(self):
        newText0 = self.input0.get().strip(' ')
        newText1 = self.input1.get().strip(' ')
        newText2 = self.input2.get().strip(' ')
        newText3 = self.input3.get().strip(' ')
        data = newText0+" "+newText1+" "+newText2+" "+newText3
        self.server.send(data.encode())

    def show_text(self):
        self.disp0.delete(1.0, tk.END)
        self.disp1.delete(1.0, tk.END)
        self.disp2.delete(1.0, tk.END)
        self.disp3.delete(1.0, tk.END)

        messages = self.recent_message.split(' ')
        self.disp0.insert(tk.END, messages[0])
        self.disp1.insert(tk.END, messages[1])
        self.disp2.insert(tk.END, messages[2])
        self.disp3.insert(tk.END, messages[3])
        self.disp0.see(tk.END)
        self.disp1.see(tk.END)
        self.disp2.see(tk.END)
        self.disp3.see(tk.END)
        self.disp0.update()
        self.disp1.update()
        self.disp2.update()
        self.disp3.update()

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

configDict = {}
try:
    with open('./mlu.config', 'rt') as configFile:
        for line in configFile:
            if line.lstrip()[0] != '#':
                configKey, configValue = line.split('=')
                configDict[configKey] = configValue.rstrip()
except IOError:
    print("There was an error opening the config file!")
    print("Creating a default config file...")
    with open('./mlu.config', 'wt') as newFile:
        newFile.write("name=anon\n")
        newFile.write("server=localhost\n")
        newFile.write("port=1495")
    print("...and exiting...")
    sys.exit()

try:
    myName = configDict['name']
except KeyError:
    myName = 'anon'
    print("Default: Setting name to \'"+myName+"\'")

try:
    serverIP = configDict['server']
except KeyError:
    print("Must specify server IP address in scopeChat.config!")
    sys.exit()

try:
    myPort = configDict['port']
except KeyError:
    myPort = '1495'
    print("Default: Setting port to \'"+myPort+"\'")

q = qu.Queue()
serverconnect = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serverconnect.connect((serverIP, int(myPort)))

root = tk.Tk()
my_gui = message1(root, q, serverconnect, myName)
root.mainloop()
