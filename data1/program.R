library(RSiena)

setwd("D:/desk/newproject/R_RSiena/data2") 

list.files()

# ��ȡ�ĸ����������ļ�
net1 <- as.matrix(read.table("kapfts1.dat"))  
net2 <- as.matrix(read.table("kapfts2.dat"))
net3 <- as.matrix(read.table("kapfti1.dat"))
net4 <- as.matrix(read.table("kapfti2.dat"))

# �������ά��  
dim(net1) # 39 x 39
dim(net2) # 39 x 39 
dim(net3) # 39 x 39
dim(net4) # 39 x 39

# ���ĸ�����ϲ�Ϊһ����ά����
network <- array(c(net1, net2, net3, net4), dim = c(39, 39, 4))

# ��ȡ�ڵ������ļ�
attr1 <- as.matrix(read.table("kapfa_stat.dat"))
attr2 <- as.matrix(read.table("kapfat.dat"))

# �����趨

# ������趨
net <- sienaDependent(network,type="oneMode")

# Э�����趨
job_status <- coCovar(attr1[,1])
centrality <- coCovar(attr2[,1])


# ��������
data <- sienaDataCreate(net, job_status, centrality)

# ģ���趨
eff <- getEffects(data) 
eff <- includeEffects(eff, density, recip, transTrip, inPop_job_status)

model <- sienaModelCreate(data, eff, projname="Kapferer")

# ģ�͹���
alg <- sienaAlgorithmCreate(projname="Kapferer")

est.results <- siena07(alg, data=data, effects=eff)

# ������
print01Report(data)
summary(est.results)
