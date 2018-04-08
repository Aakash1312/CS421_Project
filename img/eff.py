import matplotlib.pyplot as plt
import sys
import matplotlib.patches as mpatches
# import csv
with open("file.txt") as f:
	x = f.readlines()
	s = [float(y) for y in x]
	i=0
	s1 = [s[1:21], s[22:42], s[43:63], s[64:84]]
	line_name = [int(s[0]), int(s[21]), int(s[42]), int(s[63])]
	print(line_name)
	print(s1)


np = range(1,21)
sp1 = []
spp1 = []
kf1 = []
for i in [1,2,3,4]:
	sp = []
	spp = []
	kf = []
	for j in range(len(s1[i-1])):
		psi = s1[i-1][0]/s1[i-1][j]
		eff = psi/(j+1) 
		sp.append(psi)
		spp.append(eff)
		if j!=0:
			kf.append((j+1-psi)/(psi*j))
		else:
			kf.append(1.0)
	sp1.append(sp)
	spp1.append(spp)
	kf1.append(kf)
plt.title("Efficiency vs number of processors")
plt.xlabel("Number of processors")
plt.ylabel("Efficiency")
i=0
# plt.ylim(ymin=0, ymax = 0.5)

color = ['red', 'blue', 'green', 'black']
for x in spp1:
	plt.plot(np, x, color = color[i], label = line_name[i])
	plt.savefig("eff"+str(line_name[i])+".png")
	plt.show()
	i+=1
# red = mpatches.Patch(color='red', label='512')
# blue = mpatches.Patch(color='blue', label='256')
# green = mpatches.Patch(color='green', label='1024')
# yellow = mpatches.Patch(color='black', label='128')
# plt.legend(bbox_to_anchor=(1.0, 0.25), loc=1, borderaxespad=0., handles=[red, blue, green, yellow])
# plt.savefig("effall.png")
