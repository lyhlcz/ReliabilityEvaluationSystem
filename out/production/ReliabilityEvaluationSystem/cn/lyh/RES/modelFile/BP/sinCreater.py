import math

def s(x, y):
    return [math.sin(i) for i in range(x,x+y)]


f1 = open("sinData.txt",'w')
f2 = open("sinLabel.txt",'w')


for i in range(1,1001):
    f1.write(str(s(i,5)))
    f1.write('\n')
    f2.write(str(s(i+5,3)))
    f2.write('\n')

f1.close()
f2.close()
