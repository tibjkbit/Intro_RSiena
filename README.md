# RSIENA 中文文档

本文档主要参考自RSIENA 英文官方文档,仅用于学习交流,不用于商业用途。

原文链接:https://www.stats.ox.ac.uk/~snijders/siena/

## 简介

本文档概述了R语言中RSIENA库的用法,包括基本原理、数据准备、模型设定、结果分析等内容,旨在帮助国内R用户更好地使用RSIENA库进行网络分析。

RSIENA实现了随机行为者导向模型(Stochastic Actor Oriented Models,SAOM),这是一类网络演化模型,由Tom Snijders等人在上世纪90年代提出。SAOM从行动者视角出发,模型化网络演化过程中行动者进行连结改变的概率。

文档当前还在更新中,拟添加参数检验相关内容,欢迎有兴趣的用户参与完善。

## 文档结构

- 模型基本原理
  - SAOM模型简介
  - RSIENA模型类型
- 研究工具准备  
- 数据准备
- 模型设定
  - 基础效应
  - 数学规范
  - 效应设定
- 模型估计
  - 估计过程概述
  - 估计算法
  - 估计结果
- 模型评估
  - 拟合优度
  - 多重共线性
  - 
## 示例

- `example1.ipynb`:一步步演示使用 RSIENA 分析网络与行为协同演化的示例,可以帮助读者快速上手。
- `data1` 目录中包含了example1.ipynb使用 RSIENA 的数据及代码脚本，方便读者获取数据，原数据在“https://www.stats.ox.ac.uk/~snijders/siena/
”中也能获取。

示例基于 RSienaTest 包实现,需要先安装该包。

## 许可协议

除特别注明外,本仓库中的文档使用 CC0 1.0 通用协议许可。
协议全文请见 LICENSE 文件。

## 参与指南

欢迎通过Issue和Pull Request参与文档的修改和完善。

具体要求:

1. 使用 Markdown 格式
2. 注明内容来源  
3. 保持格式和结构一致

交流方式:   
* QQ群聊: 417131756
