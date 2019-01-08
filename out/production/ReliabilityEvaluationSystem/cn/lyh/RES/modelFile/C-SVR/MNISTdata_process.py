import numpy as np
l = np.loadtxt("MNISTLabel.txt")
f=open("MNISTeLabel.txt","w")

for line in l:
    f.write(str(np.where(line==1)[0]))
    f.write('\n')
    

f.close()
