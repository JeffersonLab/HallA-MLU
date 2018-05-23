
from matplotlib import pyplot as plt
import numpy as np
from scipy.optimize import curve_fit



def geo(k, p):
	return 8192.0*(p*(1.0-p)**k)

def geoCDF(k, p):
	return 8192.0*(1.0-(1.0-p)**(k+1.0))

def invcdf(f, p):
#	print "f = ", f
	arg = 1.0-f/8192.
#	print "arg = ", arg
	return (np.log(arg))/(np.log(1.0-p)) - 1.0

def pade(x, a, b, d):
	return (a + b*x)/(1.0 + d*x)

def invpade(x, a, b, d):
	return (x - a)/(b - d*x)

def invpade2(x, z, a, b, d):
	return (z*x - a)/(b - d*x)

def pade2(x, a, b, c, d):
	return (a*x + b*x*x)/(c + d*x)

def final(x, a, b):
	return (a + b*x)/(8192. + 2.*x)

def invfinal(x, a, b):
	return (8192.*x - a)/(b - 2.*x)
	



uniform = np.random.choice(range(8191),100000)


p = 2./8192.

data1 = invcdf(uniform, p)
hist1,other = np.histogram(data1,[81.92*z for z in range(101)])

x = np.linspace(1., 8191., 100)

popt0, pcov0 = curve_fit(pade, x, geo(x,p), [8192.0*0.00020, -0.0002, 0.0])	#Fit Pade to geo PDF
print "geoPDF parameters: ", popt0
popt1, pcov1 = curve_fit(pade, x, geoCDF(x,p), [-5.038e-2,1.082e-3,7.542e-4])	#Fit Pade to geo CDF
print "geoCDF parameters: ", popt1
poptF, pcovF = curve_fit(final, x, geoCDF(x,p), [-1060000.,22780])		#fit constrained Pade to geo CDF
print "FINAL parameters: ", poptF

dataP = invpade(uniform, *popt1)   #inverse of pade approx of CDF
histP,otherP = np.histogram(dataP,[81.92*z for z in range(101)])
dataT = invpade2(uniform, *[8192.,1000000.,22780.,2.])   #inverse of pade approx of CDF
histT,otherT = np.histogram(dataT,[81.92*z for z in range(101)])
dataF = invfinal(uniform, *poptF)   #inverse of pade approx of CDF
histF,otherF = np.histogram(dataF,[81.92*z for z in range(101)])

#popt, pcov = curve_fit(pade, x, hist1, [200., -100./3000., 1., 0.])
#print "CDF parameters: ", popt
popt2, pcov2 = curve_fit(pade2, x, invcdf(x,p), [0., 1., 1., -.00005])
print "invCDF parameters: ", popt2

data2 = pade2(uniform, *popt2)   #pade approx of inverse CDF
hist2,other2 = np.histogram(data2,[81.92*z for z in range(101)])

plt.plot(x, geo(x,p), 'bo')
plt.plot(x, pade(x,*popt0), 'r-')
#plt.plot(x, pade(x,1.236e-4,-1.028e-8,4.997e-1,9.684e-5), 'g-')
plt.show()

plt.plot(x, geoCDF(x,p), 'bo')
plt.plot(x, pade(x,*popt1), 'r-')
#plt.plot(x, pade(x,-5.038e-2,1.082e-3,3.892,7.542e-4), 'g-')
plt.show()


plt.plot(x, invcdf(x,p), 'ko')
plt.plot(x,pade2(x,*popt2), 'c-')
plt.plot(x,invpade(x,*popt1), 'r-')
plt.plot(x,invfinal(x,*poptF), 'm-')
plt.title("Inverse Geometric CDF")
plt.xlabel("y")
plt.ylabel("x")
plt.text(1000, 7000, "Pade Fit", color="cyan")
plt.text(1000, 6500, "Inverse of Pade Fit to Geo CDF", color="red")
plt.text(1000, 6000, "Inverse of Lower-Order Pade Fit to Geo CDF", color="magenta")
plt.ylim(0,9000)
plt.xlim(0,9000)
plt.show()

plt.plot(x, 1100.0*geo(x,p), 'k-')
plt.errorbar(x,histP,yerr=[np.sqrt(p) for p in histP],fmt='ro')  #inverse of a fit of Pade to Geo CDF
plt.errorbar(x,hist2,yerr=[np.sqrt(p) for p in hist2],fmt='co')	#fit of Pade to Inverse Geo CDF
#plt.plot(x,histT,'y*')	#parameters entered by hand
plt.errorbar(x,histF,yerr=[np.sqrt(p) for p in histF],fmt='mo')	#inverse of a fit of constrained Pade to Geo CDF
plt.title("Geometric Distribution")
plt.xlabel("Interval")
plt.ylabel("count")
plt.text(2000, 2200, "Sampling Fit of Inverse CDF", color="cyan")
plt.text(2000, 2000, "Sampling Inverse of Fit to Geo CDF", color="red")
plt.text(2000, 1800, "Sampling Inverse of Lower-Order Pade Fit to Geo CDF", color="magenta")
plt.show()

#plt.plot(x, pade(x,-5.038e-2,1.082e-3,7.542e-4), 'ko')
#plt.plot(x, pade(x,-1.777e-03,3.816e-05,2.660e-05), 'r-')
#plt.show()

#plt.plot(x,invcdf(x,p),'bo')
#plt.plot(x,pade2(x,*popt2),'r-')
#plt.show()

#plt.plot(x,hist1, 'bo')
#plt.plot(x,hist2, 'ro')
##plt.plot(x,pade(x,200.,-100./3000.,1.,0.),'k-')
#plt.ylim(0.0, 1000.0)
#plt.show()

