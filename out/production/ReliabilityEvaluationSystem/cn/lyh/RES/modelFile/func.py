import matplotlib.pyplot as plt
import numpy as np
import math

def fun_U(data, modelF):
    n = data[0][-1] - data[0][0] + 1
    #print(n)
    Udata_0 = [(i-data[0][0])/n for i in data[0]]   #纵坐标
    Udata_1 = [modelF(i) for i in data[1]]          #横坐标
    tmp = [abs(Udata_0[i]-Udata_1[i]) for i in range(len(Udata_0))]
    D = max(tmp)    #KS距离
    D = tmp.index(D)    #对应下标
    return [Udata_1, Udata_0], [[Udata_1[D], Udata_1[D]], [Udata_1[D], Udata_0[D]]]

def fun_Y(Udata):
    x = [-math.log(1-a) for a in Udata[0]]
    #print(x)
    X = sum(x)
    #print(X)
    return [[sum(x[0:i+1])/X for i in range(len(x)-1)], Udata[1][:-1]] 

def plr(data, f1, f2):
    result = 1
    print("JM模型概率密度函数值\tGO模型2概率密度函数值\tPLR")
    for t in data:
        result = result * f1(t) / f2(t)
        print(f1(t),"\t", f2(t), "\t", result)
    return result

def draw(datas, labels):
    plt.plot([0, 1])    #绘制单位斜率线

    #绘制所有分布
    #print(data[1])
    #print(data[0])
    for i, data in enumerate(datas):
        plt.plot(data[0], data[1], label=labels[i], ls='-')

    return
