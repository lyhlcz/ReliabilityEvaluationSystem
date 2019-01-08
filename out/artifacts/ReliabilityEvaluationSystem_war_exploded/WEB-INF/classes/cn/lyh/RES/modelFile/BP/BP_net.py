import numpy as np
import random
from BP_layer import BP_network
from BP_layer import load
import matplotlib.pyplot as plt

flag = 1
is_new = True

#参数配置
train_num = 1000    #样本数量
std = 1          #归一化参数

input_num = 5       #输入维数
hidden_cell_num = 5  #隐含层神经元数
hidden_layer_num = 2    #隐含层层数
output_num = 3      #输出维数

epoch_num = 1000   #迭代次数
rate = 0.1          #学习率
precision = 0.01     #预设精度


#加载数据
if flag == 0:
    train_data = np.loadtxt("MNISTData.txt")/std
    train_label = np.loadtxt("MNISTLabel.txt")
elif flag == 1:
    train_data = np.loadtxt("sinData.txt")/std
    train_label = np.loadtxt("sinLabel.txt")
elif flag == 2:
    train_data = np.loadtxt("orData.txt")/std
    train_label = np.loadtxt("orLabel.txt")
elif flag == 3:
    train_data = np.loadtxt("xorData.txt")/std
    train_label = np.loadtxt("xorLabel.txt")
else:
    print("flag error")
    exit(1)

#初始化
if is_new:
    cell_ns = [hidden_cell_num for i in range(hidden_layer_num)]
    cell_ns = [input_num]+ cell_ns +[output_num]
    #print(cell_ns)
    model = BP_network(hidden_layer_num+2, cell_ns, rate)
    #model.display()
else:
    if flag == 0:
        model = load("MNIST_model.dat")
    elif flag == 1:
        model = load("sin_model.dat")
    elif flag == 2:
        model = load("or_model.dat")
    elif flag == 3:
        model = load("xor_model.dat")

erArray = []

#训练
for epoch in range(epoch_num):
    #选取样本
    index = random.randint(0, train_num-1)

    #向前传播计算输出
    e_cur = model.forward(train_data[index],train_label[index])

    #反向计算偏导
    model.backward()
    #model.display()

    #修正参数
    model.update_network()

    #更新全局误差
    
    e_sum = 0
    for i in range(train_num):
        e_sum = e_sum + model.get_error(train_data[i],train_label[i])

    #e_sum = e_sum+model.get_error(train_data[index],train_label[index])-e_cur
    if epoch % 100 == 0:
        print("epoch:", epoch, "error:", e_sum/train_num)
    erArray = erArray + [e_sum/train_num]

    #达到精度，结束学习
    if e_sum < precision:
        break

print("---------------------------------")
print("error:", e_sum/train_num)
#model.display()

#保存模型
if flag == 0:
    model.save("MNIST_model.dat")
elif flag == 1:
    model.save("sin_model.dat")
elif flag == 2:
    model.save("or_model.dat")
elif flag == 3:
    model.save("xor_model.dat")
    #model.display()

#测试
print("---------------------------------")
if flag == 2 or flag == 3:
    for i in range(4):
        index = random.randint(0, train_num-1)
        print("model input:\t", train_data[index])
        tmp = model.val(train_data[index])
        print("model output:\t", tmp)
        if tmp[0]>tmp[1]:
            print("after softmax:\t",[1, 0])
        else:
            print("after softmax:\t",[0, 1])
        print("should be:\t", train_label[index])
        print()
else:
    index = random.randint(0, train_num-1)
    print("model input:\t", train_data[index])
    print("model output:\t", model.val(train_data[index]))
    print("should be:\t", train_label[index])

#绘制训练误差
plt.plot(erArray)
plt.show()
