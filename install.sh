#!/bin/bash

# 更新软件源并升级系统
sudo apt update
sudo apt upgrade -y

mkdir -p /tmp/alpha/tools/translation/assets
wget  https://raw.githubusercontent.com/alpha-1024/install/refs/heads/main/src/terminal_colors.sh -O /tmp/alpha/install.sh 2>>/dev/null 
chmod  +x /tmp/alpha/install.sh
source /etc/profile

source /tmp/alpha/install.sh

SUDO=''
if [ $UID -ne 0 ];then
    SUDO='sudo'
fi

$SUDO rm -rf /tmp/alpha/

if [ -f alpha ]; then
    $SUDO rm alpha
fi

# 初始假设默认是 Bash
shell_name='bash'
if shopt -u lastpipe 2> /dev/null; then
    # 当前 shell 是 Bash
    :
else
    # 当前 shell 是 Zsh 或其他 shell
    if test -n "$ZSH_VERSION"; then
        shell_name='zsh'
    else
        # 当前使用的 shell 不是 Bash 或 Zsh
        shell_name=''
    fi
fi

# 根据 shell 名称加载相应的配置文件
if [ "$shell_name" = "bash" ]; then
    if [ -f ~/.bashrc ]; then
        source ~/.bashrc
    fi
elif [ "$shell_name" = "zsh" ]; then
    if [ -f ~/.zshrc ]; then
        source ~/.zshrc
    fi
fi