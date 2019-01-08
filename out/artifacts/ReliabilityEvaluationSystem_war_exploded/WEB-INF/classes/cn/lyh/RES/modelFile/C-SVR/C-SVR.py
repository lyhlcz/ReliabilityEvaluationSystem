from sklearn import svm
import numpy as np
import pickle as pk
import time

def loadData():
    train_data = np.loadtxt("TrainData.txt")/255
    train_label = np.loadtxt("TrainLabel.txt")
    return train_data, train_label

def create_svm(dataMat, dataLabel, decision='ovr'):
    clf = svm.SVC(decision_function_shape=decision)
    clf.fit(dataMat, dataLabel)
    return clf


def train():
    d, l=loadData()
    f=open("MNISTsvm.dat",'wb')
    clf = create_svm(d,l)
    pk.dump(clf, f)
    f.close()

def test():
    print("load SVM.....")
    
    f = open("MNISTsvm.dat", 'rb')
    clf = pk.load(f)
    f.close()
    
    print("OK")
    print("----------------------------------")
    
    print("start testing....")

    test_data = np.loadtxt("TestData.txt")/255
    test_label = np.loadtxt("TestLabel.txt")
    tst = time.clock()
    errCount = 0
    allErrorRate = 0.0
    allScore = 0.0

    preResult = clf.predict(test_data)

    for i in range(test_label.shape[0]):
        if preResult[i]!=test_label[i]:
            errCount = errCount + 1
            
    score = clf.score(test_data, test_label)

    print("OK")
    print("----------------------------------")

    tet = time.clock()
    print("Testing All class total spent {:.6f}s.".format(tet-tst))
    print("All error Count is: {}.".format(errCount))
    print("Error rate is: {:.6f}.".format(errCount/test_label.shape[0]))
    print("Average accuracy is: {:.6f}.".format(score))

if __name__=="__main__":
    train()
    test()
