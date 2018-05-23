

import numpy as np

p1 = 0.10/100.
p2 = 0.15/100.

N = 10000000
#N = 1000

test1 = np.random.choice([1, 0], size=N, p=[p1,1-p1])
test2 = np.random.choice([1, 0], size=N, p=[p2,1-p2])

print "avg 1", np.average(test1)
print "avg 2", np.average(test2)

tup = zip(test1,test2)

with open("stoch_10.dat","w") as file1, open("stoch_15.dat","w") as file2, open("stoch_both.dat","w") as file3:
	for i, t in enumerate(tup):
		if t[0] == 1 or t[1] == 1:
			file3.write(str(i)+'\n')
		if t[1] == 1:
			file2.write(str(i)+'\n')
		if t[0] == 1:
			file1.write(str(i)+'\n')



