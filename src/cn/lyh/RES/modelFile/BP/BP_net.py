import random
import sys
from BP_layer import BP_network
from BP_layer import load


def str2double(s):
    a = s.split(".")
    return int(a[0]+a[1])/(10**len(a[1]))

ts = sys.argv[1].split(" ")[:-1]
s = int(sys.argv[2])     #参与模型训练数据个数

data = [int(t) for t in ts]
std = max(data)          
data = [d/std for d in data]    #归一化

#参数配置
input_num = int(sys.argv[5])       #输入维数
hidden_cell_num = 5  #隐含层神经元数
hidden_layer_num = 2    #隐含层层数
output_num = int(sys.argv[3])      #输出维数

epoch_num = int(sys.argv[6])   #迭代次数
rate = str2double(sys.argv[4])         #学习率
precision = str2double(sys.argv[7])     #预设精度

train_num = s - input_num - output_num + 1    #样本数量

#数据集生成
train_data = []
train_label = []
for i in range(0, train_num):
    train_data = train_data + [data[i:i+input_num]]
    train_label = train_label + [data[i+input_num:i+input_num+output_num]]

#初始化
cell_ns = [hidden_cell_num for i in range(hidden_layer_num)]
cell_ns = [input_num]+ cell_ns +[output_num]
#print(cell_ns)
model = BP_network(hidden_layer_num+2, cell_ns, rate)
#model.display()

erArray = []
min_size = epoch_num / 100

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
    if epoch % min_size == 0:
        #print(e_sum/train_num, end=" ")
        erArray = erArray + [e_sum/train_num]

    #达到精度，结束学习
    if e_sum < precision:
        break

#print("error:", e_sum/train_num)
print(erArray)
pre_result = model.val(data[s-input_num+1:s+1])
print([t*std for t in pre_result])
