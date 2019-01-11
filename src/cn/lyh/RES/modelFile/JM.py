import math
import sys

def f(x, n, p):
    result = 0
    for i in range(1, n+1):
        result = result + 1/(x-i+1)
    result = result - n/(x - p)
    return result

def J_M(t, n, ex=1, ey=1):
    s = 0
    for i in range(1, n):
        s = s + i*(t[i]-t[i-1])
    P = s / t[-1]
    #print("P = ", P)

    if P > (n-1)/2:
        left = n-1
        right = n

        while True:
            tmp = f(right, n, P)
            if tmp <= ey:
                break
            left = right
            right = right + 1

        if tmp >= -ex:
            root = right
        else:
            while True:
                root = (right+left)/2
                if abs(right - left) > ex:
                    tmp = f(root, n, P)
                    if tmp > ey:
                        left = root
                    elif tmp < -ey:
                        right = root
                    else:
                        break
                else:
                    break

        N = root
        fi = n / (N * t[-1] - s)
        return N, fi
    else:
        print("计算终止")
        

ids = sys.argv[1].split(" ")[:-1]
ts = sys.argv[2].split(" ")[:-1]
s = int(sys.argv[3])     #参与参数估计数据个数

data = [[int(i) for i in ids], [int(t) for t in ts]]
#划分数据
data = [data[0][:s],data[1][:s]]
    
N, fi = J_M(data[1], s)
    
print(N)
print(fi)


    
