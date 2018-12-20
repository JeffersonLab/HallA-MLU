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
        self.master.title(aSide+"HRS MLU Random Pulser Control")
        self.recent_message = ''
        self.focal = 0

        self.uber_frame = tk.Frame(self.master)
        self.uber_frame.pack()
        self.sigLabel = tk.Label(self.uber_frame, text='Contact: Evan McClellan (randallm@jlab.org)')
        self.sigLabel.pack(side=tk.TOP)

        self.upper_frame = tk.Frame(self.master)
        self.upper_frame.pack()

        self.wLabel = []
        self.k1Label = []
        self.k2Label = []
        self.wInput = []
        self.wDisp  = []
        for i in range(4):
            self.wLabel.append(tk.Label(self.upper_frame, text='F('+str(i)+')'))
            self.wLabel[i].grid(row=i,column=0)
            self.wInput.append(tk.Entry(self.upper_frame, width=20, bg='white'))
            self.wInput[i].grid(row=i,column=1,padx=5,pady=5)
            self.k1Label.append(tk.Label(self.upper_frame, text='kHz'))
            self.k1Label[i].grid(row=i,column=2)
            self.wDisp.append(tk.Text(self.upper_frame, state='disabled', background='gray80', height=1, width=20))
            self.wDisp[i].grid(row=i,column=3,padx=5,pady=5)
            self.k2Label.append(tk.Label(self.upper_frame, text='kHz'))
            self.k2Label[i].grid(row=i,column=4)
        self.wInput[self.focal].focus_set()
        self.master.bind('<Tab>', self.tab)
        self.master.bind('<Control-w>', self.quit)

        self.button_frame = tk.Frame(self.master)
        self.button_frame.pack(side=tk.BOTTOM)

        self.kill_button = tk.Button(self.button_frame, text="Kill All", fg="red", command=self.killall)
        self.kill_button.pack(side=tk.LEFT,padx=15)
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
                if inbound == 'killall':
                    self.quit()
                else:
                    self.bQ.put(inbound)
        self.server.close()

    def tab(self, event):
        self.focal += 1
        if self.focal > 3:
            self.focal = 0
        self.wInput[self.focal].focus_set()
        return("break")	#dont do the tab default behavior!

    def killall(self):
        self.server.send('killall'.encode())
        self.quit()

    def zeroall(self):
        for i in range(4):
            self.wInput[i].delete(0,tk.END)
        data = '0 0 0 0'
        try:
            self.server.send(data.encode())
        except:
            print("Server lost, exiting...")
            self.quit()

    def quit(self, event=None):
        self.exit_request = True
        self.master.destroy()

    def send_text(self, event=None):
        newText = []
        for i in range(4):
            newText.append(self.wInput[i].get().strip(' '))
        data = newText[0]+" "+newText[1]+" "+newText[2]+" "+newText[3]
        try:
            self.server.send(data.encode())
        except:
            print("Server lost, exiting...")
            self.quit()

    def show_text(self):
        messages = self.recent_message.split(' ')
        for i in range(4):
            self.wDisp[i].configure(state='normal')
            self.wDisp[i].delete(1.0, tk.END)
            self.wDisp[i].insert(tk.END, messages[i])
            self.wDisp[i].see(tk.END)
            self.wDisp[i].configure(state='disabled')
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

if side == 'R':
    serverIP = 'intelha3'
if side == 'L':
    serverIP = 'halladaq8'

myPort = '1495'

#start up threading and socket connection
q = qu.Queue()
serverconnect = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serverconnect.connect((serverIP, int(myPort)))

#start up tkinter, open gui, pass control to tkinter main loop
root = tk.Tk()
my_gui = message1(root, q, serverconnect, side)
root.mainloop()
