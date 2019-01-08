from func import *
from JM import *
from GO import *
import numpy as np
import random

s = 100     #参与参数估计数据个数

#读取数据
filename = ".\SYS1(failue_count).txt"
data = np.loadtxt(filename)
data = data.T

#划分数据
data1 = [data[0][:s],data[1][:s]]
#print(data1[1])
data2=[data[0][s:],data[1][s:]]
#print(data2[1])
data2[1] = np.sort(data2[1])

#模型参数估计
print("参数估计")
JM_F, JM_f = J_M(data1[1], s)
GO_F, GO_f = G_O(data1[1], s)

print()

#J-M模型评估
print("J-M模型评估")
U_JM, D_JM = fun_U(data2, JM_F)
print(U_JM[0])  #输出U图横坐标
print("U图K-S距离 = ", abs(D_JM[1][1]-D_JM[1][0]))
Y_JM = fun_Y(U_JM)
print(Y_JM[0]) #输出Y图横坐标
datas = [U_JM, Y_JM, D_JM]
labels = ["U-JM", "Y-JM", "D-JM"]
draw(datas, labels)

print()

#G-O模型评估
print("G-O模型评估")
U_GO, D_GO = fun_U(data2, GO_F)
print(U_GO[0])  #输出U图横坐标
print("U图K-S距离 = ", abs(D_GO[1][1]-D_GO[1][0]))
#Y_GO = fun_Y(U_GO)
#print(Y_GO[0])  #输出Y图横坐标
datas = [U_GO, D_GO]
labels = ["U-GO", "D-GO"]
draw(datas, labels)

print()

#plr
print("PIR检验")
print("plr = ", plr(data2[1], JM_f, GO_f))

#显示图象
plt.legend(loc='upper left')
plt.show()
