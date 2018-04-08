# import matplotlib.pyplot as plt
# import sys
# import csv
with open("file.txt") as f:
	x = f.readlines()
	s512 = [float(y) for y in x]

np = range(1,20)
sp512 = []
for i in range(len(s512)):
	sp512.append(s512[0]/s512[i])
# plt.plot([s512])
# plot.show()
# print(sp512)
c = 1
for i in sp512:
	print(c, end="")
	print(" ", end="")
	print(i)