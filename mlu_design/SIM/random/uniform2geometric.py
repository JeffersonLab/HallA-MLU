

from matplotlib import pyplot as plt
import numpy as np




def pdf(x, a, b):
	#return a * np.exp(-b * x)
	return a * b * (1 - b)**(x)	#geometric distribution PDF 

def cdf(x, a, b):
#	return a*(1-(1-b)**(x+1))
	return 8192. - 8192.*((8192.-2.)/(8192.))**x

def cdf2(x):
#	return 2**13 - (2**13)*(2**13-2)**x/(2**13)**x
	return 2**13 - ((2**13)*(2**13) - x*2**14)/(2**13)
#	return 2.**13 - ((2.**13)*(2.**13) - x*2.**14)/(2.**13)

def invcdf(f, p):
	return (np.log(1.0-f/8192.))/(np.log(1.0-p)) - 1.0

def likeVHDL(n):		#assume p = 2/8192
	c = 8192-n
	b1 = c << 13
	k = ((8192 << 13) - b1) >> 14
	return k



p = 2./8192.

uniform = np.random.choice(range(8192),size=10000)
#uniform = 8192*np.random.uniform(size=10000)
bins = [32*b for b in range(2**8)]

data_cdf1 = cdf(uniform, 2**13, p)
data_cdf2 = cdf2(uniform)
print data_cdf2
cdfhist,cdfother = np.histogram(data_cdf1, bins=bins)
cdfhist2,cdfother2 = np.histogram(data_cdf2, bins=bins)

plt.plot(cdfhist, 'bo')
plt.plot(cdfhist2, 'ro')
plt.ylim(ymax = 100)
plt.show()


print "avg(uniform) = ", np.average(uniform)

geo = invcdf(uniform, p)
print "avg(geo)  = ", np.average(geo)
geo2 = likeVHDL(uniform)
print "avg(vhdl) = ", np.average(geo2)
#print uniform, '\n'
#print geo


hist,other = np.histogram(geo, bins=bins)
hist2,other2 = np.histogram(geo2, bins=bins)


plt.plot(hist, 'bo')
plt.plot(hist2, 'ro')
plt.show()


