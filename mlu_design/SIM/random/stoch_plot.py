
from matplotlib import pyplot as plt
import numpy as np
from scipy.optimize import curve_fit

def func(x, a, b):
		#return a * np.exp(-b * x)
	try:
		return a * b * (1.0 - b)**(x)	#geometric distribution PDF, CDF = 
	except:
		print "OH NO"
		return 1

sequence1 = []
sequence2 = []
sequence3 = []

with open("stoch_10.dat",'r') as inFile:
	for line in inFile:
		step = line.rstrip()
		sequence1.append(int(step))

with open("stoch_15.dat",'r') as inFile:
	for line in inFile:
		step = line.rstrip()
		sequence2.append(int(step))

with open("stoch_both.dat",'r') as inFile:
	for line in inFile:
		step = line.rstrip()
		sequence3.append(int(step))

intervals1 = []
intervals2 = []
intervals3 = []
for i in range(len(sequence1)-1):
	intervals1.append(sequence1[i+1]-sequence1[i])
for i in range(len(sequence2)-1):
	intervals2.append(sequence2[i+1]-sequence2[i])
for i in range(len(sequence3)-1):
	intervals3.append(sequence3[i+1]-sequence3[i])

print "avg1 ", np.average(intervals1)
print "avg2 ", np.average(intervals2)

xhalfstep = 20
nbins = 80
binning = [2*xhalfstep*a for a in range(nbins+1)]
print binning
hist1, other1 = np.histogram(intervals1,bins=binning)
hist2, other2 = np.histogram(intervals2,bins=binning)
hist3, other3 = np.histogram(intervals3,bins=binning)
print "hist1", len(hist1), hist1

#x = np.linspace(0,xmax,nbins-1)
x = [xhalfstep+(2*xhalfstep*a) for a in range(nbins)]
#print x, '\n'
#print hist
popt1, pcov1 = curve_fit(func, x, hist1, p0=[1.0e6,0.01])
popt2, pcov2 = curve_fit(func, x, hist2, p0=[1.0e6,0.01])
popt3, pcov3 = curve_fit(func, x, hist3, p0=[1.0e6,0.01])
print "Params1", popt1[1], '+/-', np.sqrt(pcov1[1][1])
print "Params2", popt2[1], '+/-', np.sqrt(pcov2[1][1])
print "Params3", popt3[1], '+/-', np.sqrt(pcov3[1][1])

#plt.hist(intervals,bins=nbins)
#plt.semilogy(x, hist, 'bo')
#plt.semilogy(x, func(x,*popt), 'r-')
plt.errorbar(x, hist1, yerr=[np.sqrt(g) for g in hist1], fmt='bo',)
plt.errorbar(x, hist2, yerr=[np.sqrt(g) for g in hist2], fmt='mo',)
plt.errorbar(x, hist3, yerr=[np.sqrt(g) for g in hist3], fmt='go', color='darkgreen')
ax = plt.gca()
ax.set_yscale("log")
plt.xlabel('Interval (units = discrete time steps)')
plt.title("Stochastic Interval Distribution (MC)")
plt.text(400, 10, 'g(x) = p(1-p)^k', color='black')
plt.text(1200, 800, 'p_1      = 0.00100', color='blue')
plt.text(1200, 600, 'p_2      = 0.00152', color='magenta')
plt.text(1200, 400, 'p_both = 0.00251', color='darkgreen')
plt.plot(x, func(x,*popt1), 'b-')
plt.plot(x, func(x,*popt2), 'm-')
plt.plot(x, func(x,*popt3), '-', color='darkgreen')
plt.ylim(1,1e4)
plt.show()

