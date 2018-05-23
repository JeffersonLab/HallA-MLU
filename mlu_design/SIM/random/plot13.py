

from matplotlib import pyplot as plt
import numpy as np






aList = []
with open('new.dat', 'r') as adata:
	for line in adata:
		delay = int(line.rstrip())
		aList.append(delay)



aDiffs = []
for i,p in enumerate(aList[:-1]):
	aDiffs.append(p-aList[i+1])

aDiffs2 = []
for i,p in enumerate(aList[:-2]):
	aDiffs2.append(p-aList[i+2])


binwidth = 200
edges = [binwidth*(x-0.5) for x in range(1+8192/binwidth)]
diffEdges = [binwidth*(x-(8192/binwidth)-0.5) for x in range(2*(1+8192/binwidth))]
print diffEdges

plt.hist(aList,edges,alpha=0.5)
plt.show()

plt.hist(aDiffs, diffEdges,alpha=0.5)
plt.show()

#plt.subplot(1,2,1)
#plt.scatter(pList[:-1],pList[1:])
#plt.title("Prime separated")
#plt.subplot(1,2,2)
#plt.scatter(aList[:-1],aList[1:])
#plt.title("Adjacent")
#plt.show()

row = 0
periods = [1,2,1023]
cols = len(periods)
for period in periods:
	plt.subplot(cols,3,1+row)
	plt.hist2d(aList[:-period],aList[period:],edges)
	plt.title("delay = bits(4,3,2,1,0)")
	row += cols

plt.show()


