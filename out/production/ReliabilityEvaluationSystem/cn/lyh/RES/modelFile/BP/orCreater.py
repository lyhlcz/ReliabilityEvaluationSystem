import math
import random


f1 = open("orData.txt",'w')
f2 = open("orLabel.txt",'w')


for i in range(1,1001):
    t = [random.uniform(0,1),random.uniform(0,1)]
    #t = [random.randint(0,1),random.randint(0,1)]
    f1.write(str(t))
    f1.write('\n')
    '''
    if t[0]<0.5 and t[1]<0.5:
        f2.write('1 0')
    elif t[0]>=0.5 and t[1]>=0.5:
        f2.write('1 0')
    else:      
        f2.write('0 1')
    '''
    if t[0]>=0.5 or t[1]>=0.5:
        f2.write('0 1')
    else:
        f2.write('1 0')
    f2.write('\n')

f1.close()
f2.close()
