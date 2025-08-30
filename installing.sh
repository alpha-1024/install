#!/bin/bash

terminal_colors()
{
    # 下载脚本到临时目录
    wget -O /tmp/terminal_colors.sh https://raw.githubusercontent.com/alpha-1024/install/main/terminal_colors.sh
    # 给脚本加执行权限
    chmod +x /tmp/terminal_colors.sh
    # 在当前 shell 执行脚本，让环境变量生效
    . /tmp/terminal_colors.sh
}

while true; do
    clear
    echo "RUN Choose Task:[请输入括号内的数字]"
    echo "---众多工具，等君来用---"
    echo "系统配置相关:"
    echo "  [1]: 配置终端高亮"
    echo ""
    echo "  [0]: quit"

    # 读取用户输入
    read -p "请输入选择的数字: " choice

    case $choice in
        1)  
            echo "执行 配置终端高亮 任务..." 
            terminal_colors
            ;;
        0) 
            echo "退出脚本"; break 
            ;;
        *) 
            echo "无效选择，请重新输入！" 
            ;;
    esac

    read -p "按回车键继续..." temp
done
