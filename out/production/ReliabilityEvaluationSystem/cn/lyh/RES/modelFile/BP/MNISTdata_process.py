f=open("Test-28x28_text.txt")
nf1=open("TestData.txt","w")
nf2=open("TestLabel.txt","w")

lines=f.readlines()
for line in lines:
    nf1.write(line[38:])
    nf2.write(line[8:28])
    nf2.write('\n')

nf1.close()
nf2.close()
