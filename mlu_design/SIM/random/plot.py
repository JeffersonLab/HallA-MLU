

from matplotlib import pyplot as plt
import numpy as np






pList = []
with open('prime.dat', 'r') as primedata:
	for line in primedata:
		delay = int(line.rstrip())
		pList.append(delay)

dpList = []
#with open('dadjacent.dat', 'r') as dprimedata:
#with open('every2.dat', 'r') as dprimedata:
with open('indy.dat', 'r') as dprimedata:
#with open('dprime.dat', 'r') as dprimedata:
	for line in dprimedata:
		delay = int(line.rstrip())
		dpList.append(delay)

aList = []
with open('adjacent.dat', 'r') as adata:
	for line in adata:
		delay = int(line.rstrip())
		aList.append(delay)



pDiffs = []
for i,p in enumerate(pList[:-1]):
	pDiffs.append(p-pList[i+1])

pDiffs2 = []
for i,p in enumerate(pList[:-2]):
	pDiffs2.append(p-pList[i+2])

dpDiffs = []
for i,p in enumerate(dpList[:-1]):
	dpDiffs.append(p-dpList[i+1])

dpDiffs2 = []
for i,p in enumerate(dpList[:-2]):
	dpDiffs2.append(p-dpList[i+2])

aDiffs = []
for i,p in enumerate(aList[:-1]):
	aDiffs.append(p-aList[i+1])

aDiffs2 = []
for i,p in enumerate(aList[:-2]):
	aDiffs2.append(p-aList[i+2])



edges = [x-0.5 for x in range(32+1)]
diffEdges = [x-31-0.5 for x in range(2*32)]
print diffEdges

plt.hist(pList,edges,alpha=0.5)
plt.hist(aList,edges,alpha=0.5)
plt.hist(dpList,edges,alpha=0.5)
plt.show()

plt.hist(pDiffs, diffEdges,alpha=0.5)
plt.hist(aDiffs, diffEdges,alpha=0.5)
plt.hist(dpDiffs, diffEdges,alpha=0.5)
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
	plt.subplot(cols,3,2+row)
	plt.hist2d(pList[:-period],pList[period:],edges)
	plt.title("delay = bits(0,2,5,10,17)")
	plt.subplot(cols,3,3+row)
	plt.hist2d(dpList[:-period],dpList[period:],edges)
	plt.title("Other")
	row += cols

plt.show()


