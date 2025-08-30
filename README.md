# 基于`shell`编写的`linux`环境配置工具

## 1.项目介绍

本项目是使用`linux`原生语言shell脚本语言编写的一套在线程序，主要用来快速配置`linux`环境下的一些配置。

各个文件的功能如下：

- src：存放相关的功能代码，供installing.sh调用
- install.sh：存放相关的代码，这个文件是用户需要执行的文件
- installing.sh:install.sh用来下载并运行这段代码，功能包括用法提示和接受用户指令等等。

## 2.使用方法

本项目开发平台信息如下：

- 系统版本：ubuntu22.04

### 2.1安装

- 下载install.sh文件

```
wget https://raw.githubusercontent.com/alpha1024/install/refs/heads/main/install.sh -O alpha && . alpha		
```

- 然后根据指示进行进一步操作

   
