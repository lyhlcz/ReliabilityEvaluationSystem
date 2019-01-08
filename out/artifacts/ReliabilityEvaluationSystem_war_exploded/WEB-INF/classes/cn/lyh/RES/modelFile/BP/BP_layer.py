import random
import pickle
from BP_fun import *

class BP_layer:
    def __init__(self, input_n, cell_n):
        self.input_n = input_n
        self.cell_n = cell_n
        self.w = [[random.uniform(-1,1) for j in range(input_n)] for i in range(cell_n)]
        self.b = [random.uniform(-1,1) for i in range(cell_n)]
        self.wd = [[0 for j in range(input_n)] for i in range(cell_n)]
        self.bd = [0 for i in range(cell_n)]
        self.I = [0 for i in range(cell_n)]
        self.O = [0 for i in range(cell_n)]

    #计算当前层输出
    def layerOut(self, input_data):
        self.I = [sum([self.w[i][j]*input_data[j] for j in range(self.input_n)])-self.b[i] for i in range(self.cell_n)]
        #print(self.I)
        self.O = [f(ii) for ii in self.I]
        return self.O

    #更新当前层参数
    def update(self, rate):
        #print(self.w)
        #print(self.wd)
        self.w = [[wij-rate*self.wd[i][j] for j, wij in enumerate(wi)] for i, wi in enumerate(self.w)]
        self.b = [bi-rate*self.bd[i] for i, bi in enumerate(self.b)]

    #输出当前层参数
    def display(self):
        print("w:")
        for wi in self.w:
            print(wi)
        print("b:")
        print(self.b)


class BP_network:
    def __init__(self, layer_n, cell_ns, learn_rate):
        self.input = [0 for i in range(cell_ns[0])]
        self.output = [0 for i in range(cell_ns[-1])]
        self.layer_n = layer_n
        self.cell_ns = cell_ns
        self.learn_rate = learn_rate
        self.layers = [BP_layer(cell_ns[i], cell_ns[i+1]) for i in range(layer_n-1)]

    #验证
    def val(self, x):
        y = x
        for layer in self.layers:
            y = [f(sum([layer.w[i][j]*y[j] for j in range(layer.input_n)])-layer.b[i]) for i in range(layer.cell_n)]
        return y

    #获取误差
    def get_error(self, x, d):
        y = x
        for layer in self.layers:
            y = [f(sum([layer.w[i][j]*y[j] for j in range(layer.input_n)])-layer.b[i]) for i in range(layer.cell_n)]
        return e(y, d)

    #向前传播
    def forward(self, x, d):
        self.input = x
        self.d = d
        y = x
        for i in range(self.layer_n-1):
            y = self.layers[i].layerOut(y)
        return e(y,d)

    #反向计算偏导
    def backward(self):
        if self.layer_n == 2:
            delta = [(self.d[i]-self.layers[0].O[i])*fd(self.layers[0].I[i]) for i in range(self.cell_ns[0])]
            self.layers[0].wd = [[-s*x for x in self.input] for s in delta]
            self.layers[0].bd = delta
            return
        
        delta = [(self.d[i]-self.layers[-1].O[i])*fd(self.layers[-1].I[i]) for i in range(self.cell_ns[-1])]
        #print(self.layers[-2].O)
        self.layers[-1].wd = [[-s*o for o in self.layers[-2].O] for s in delta]
        self.layers[-1].bd = delta#[-s for s in delta]
        
        for i in range(self.layer_n-3, 0, -1):
            #print(i,self.layers[i].w)
            delta = [sum([-s*self.layers[i+1].w[k][j] for k, s in enumerate(delta)])*fd(self.layers[i].I[j]) for j in range(self.cell_ns[i+1])]
            self.layers[i].wd = [[-s*o for o in self.layers[i-1].O] for s in delta]
            self.layers[i].bd = delta#[s for s in delta]

        delta = [sum([-s*self.layers[1].w[k][j] for k, s in enumerate(delta)])*fd(self.layers[0].I[j]) for j in range(self.cell_ns[1])]
        self.layers[0].wd = [[-s*x for x in self.input] for s in delta]
        self.layers[0].bd = delta#[s for s in delta]

    #更新w和b值
    def update_network(self):
        for i in range(self.layer_n-1):
            self.layers[i].update(self.learn_rate)

    #输出网络所有参数
    def display(self):
        for i in range(self.layer_n-1):
            self.layers[i].display()

    #保存
    def save(self, filename):
        f = open(filename, 'wb')
        pickle.dump(self, f)
        f.close()

#加载
def load(filename):
    f = open(filename, 'rb')
    m = pickle.load(f)
    f.close()
    return m
