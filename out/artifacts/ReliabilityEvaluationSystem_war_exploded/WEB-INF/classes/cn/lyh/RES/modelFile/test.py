import sys
import numpy as np

filename = "E:\\work\\软件可靠性\\ReliabilityEvaluationSystem\\src\\cn\\lyh\RES\\modelFile\\SYS1(failue_count).txt"
data = np.loadtxt(filename)

print(sys.argv[1]+' '+str(sys.argv[2]+sys.argv[3]))
