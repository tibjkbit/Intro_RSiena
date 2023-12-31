library(RSiena)

setwd("D:/desk/newproject/R_RSiena/data2") 

list.files()

# 读取四个网络数据文件
net1 <- as.matrix(read.table("kapfts1.dat"))  
net2 <- as.matrix(read.table("kapfts2.dat"))
net3 <- as.matrix(read.table("kapfti1.dat"))
net4 <- as.matrix(read.table("kapfti2.dat"))

# 检查数据维度  
dim(net1) # 39 x 39
dim(net2) # 39 x 39 
dim(net3) # 39 x 39
dim(net4) # 39 x 39

# 将四个矩阵合并为一个三维数组
network <- array(c(net1, net2, net3, net4), dim = c(39, 39, 4))

# 读取节点属性文件
attr1 <- as.matrix(read.table("kapfa_stat.dat"))
attr2 <- as.matrix(read.table("kapfat.dat"))

# 变量设定

# 因变量设定
net <- sienaDependent(network,type="oneMode")

# 协变量设定
job_status <- coCovar(attr1[,1])
centrality <- coCovar(attr2[,1])


# 捆绑数据
data <- sienaDataCreate(net, job_status, centrality)

# 模型设定
eff <- getEffects(data) 
eff <- includeEffects(eff, density, recip, transTrip, inPop_job_status)

model <- sienaModelCreate(data, eff, projname="Kapferer")

# 模型估计
alg <- sienaAlgorithmCreate(projname="Kapferer")

est.results <- siena07(alg, data=data, effects=eff)

# 结果输出
print01Report(data)
summary(est.results)

