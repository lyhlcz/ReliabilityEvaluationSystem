from sklearn import svm
import sys

def create_svm(dataMat, dataLabel, decision='ovr'):
    clf = svm.SVC(decision_function_shape=decision)
    clf.fit(dataMat, dataLabel)
    return clf

ts = sys.argv[1].split(" ")[:-1]
s = int(sys.argv[2])     #参与模型训练数据个数

data = [int(t) for t in ts]
#std = max(data)
#data = [d/std for d in data]    #归一化

output_num = int(sys.argv[3])      #输出维数
input_num = int(sys.argv[4])       #输入维数
train_num = s - input_num - output_num + 1    #样本数量

#数据集生成
train_data = []
train_label = []
for i in range(0, train_num):
    train_data = train_data + [data[i:i+input_num]]
    train_label = train_label + [data[i+input_num]]

clf = create_svm(train_data,train_label)

test_data = data[s-input_num+1:s+1]
for i in range(output_num):
    re = clf.predict([test_data])
    print(re[0])
    test_data = test_data[1:] + [re[0]]
