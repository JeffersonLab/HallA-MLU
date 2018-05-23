
from scipy.optimize import curve_fit
from matplotlib import pyplot as plt
import numpy as np


def fgeo(k, a, p):
	return a*(p*(1.0-p)**k)

aList = []
gList = []
with open('geo.dat', 'r') as adata:
	for line in adata:
		unif, geo = [int(x) for x in line.rstrip().split(" ")]
		aList.append(unif)
		gList.append(geo)


print "avg geometric delay: ", np.average(gList)

aDiffs = []
for i,p in enumerate(aList[:-1]):
	aDiffs.append(p-aList[i+1])

aDiffs2 = []
for i,p in enumerate(aList[:-2]):
	aDiffs2.append(p-aList[i+2])


binwidth = 200
edges = [binwidth*(x) for x in range(1+8192/binwidth)]
centers = [(a+b)/2.0 for a,b in zip(edges[:-1], edges[1:])]
diffEdges = [binwidth*(x-(8192/binwidth)-0.5) for x in range(2*(1+8192/binwidth))]
#print diffEdges

plt.plot(aList,gList, 'ro')
plt.show()

hist0, other0 = np.histogram(gList,edges)
print "hist0", len(hist0), hist0
print "centers",len(centers),  centers
popt0, pcov0 = curve_fit(fgeo, centers, hist0,[250.,2./8192.])
print "geoPDF parameters: ", popt0

plt.hist(aList,edges,alpha=0.5)
plt.hist(gList,edges,alpha=0.5)
plt.plot(centers,fgeo(centers, *popt0),'r-')
plt.show()

#plt.hist(aDiffs, diffEdges,alpha=0.5)
#plt.show()

#plt.subplot(1,2,1)
#plt.scatter(pList[:-1],pList[1:])
#plt.title("Prime separated")
#plt.subplot(1,2,2)
#plt.scatter(aList[:-1],aList[1:])
#plt.title("Adjacent")
#plt.show()

#row = 0
#periods = [1,2,1023]
#cols = len(periods)
#for period in periods:
#	plt.subplot(cols,3,1+row)
#	plt.hist2d(aList[:-period],aList[period:],edges)
#	plt.title("delay = bits(4,3,2,1,0)")
#	row += cols

plt.show()


