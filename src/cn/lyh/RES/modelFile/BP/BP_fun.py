import math

#激活函数
def f(x):
    #print(x)
    return 1/(1+math.e**(-x))

#误差函数
def e(d, y):
    return sum([(di - y[i])**2 for i, di in enumerate(d)])/2

#激活函数导数
def fd(x):
    return f(x)*(1-f(x))
