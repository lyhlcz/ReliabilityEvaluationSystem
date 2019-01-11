import math
import sys

def G_O(t, n, v=1):
    D = 0
    for i in range(0, n):
        D = D + t[i]
    D /= n * t[-1]
    
    if D < 0.5:
        xl = (1 - 2 * D) / 2
        xr = 1 / D
        xm = (xl+xr)/2

        while abs(xl-xr) > v:
            f = (1-D*xm)*math.e**(xm)+(D-1)*xm - 1
            if f > v:
                xl = xm
            elif f < -v:
                xr = xm
            else:
                break
            xm = (xl+xr)/2
            
        b = xm / t[-1]
        a = n/(1-math.e**(-b*t[-1]))
        ts = sum(t)
        
        #return GO_F, GO_f
        return b, a
    else:
        print("参数估计无解")

ids = sys.argv[1].split(" ")[:-1]
ts = sys.argv[2].split(" ")[:-1]
s = int(sys.argv[3])     #参与参数估计数据个数

data = [[int(i) for i in ids], [int(t) for t in ts]]
#划分数据
data = [data[0][:s],data[1][:s]]

b, a = G_O(data[1], s)

print(b)
print(a)

'''
b = 0.00126225
a = 119.537

b = 0.00144291
a = 136.359
'''
