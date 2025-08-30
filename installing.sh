#!/bin/bash

terminal_colors()
{
    wget -O /tmp/terminal_colors.sh https://raw.
}
while true; do
    clear
    echo "RUN Choose Task:[请输入括号内的数字]"
    echo "---众多工具，等君来用---"
    echo "系统配置相关:"
    echo "  [1]: 配置终端高亮"
    # echo "  [3]: 一键安装:rosdep(小鱼的rosdepc,又快又好用)"
    # echo "  [4]: 一键配置:ROS环境(快速更新ROS环境设置,自动生成环境选择)"
    # echo "  [9]: 一键安装:Cartographer(18 20测试通过,16未测. updateTime 20240125)"
    # echo "  [11]: 一键安装:ROS Docker版(支持所有版本ROS/ROS2)"
    # echo "  [16]: 一键安装:系统自带ROS (！！警告！！仅供特殊情况下使用)"
    # echo ""
    # echo "常用软件:"
    # echo "  [2]: 一键安装:github桌面版(小鱼常用的github客户端)"
    # echo "  [6]: 一键安装:NodeJS环境"
    # echo "  [7]: 一键安装:VsCode开发工具"
    # echo "  [8]: 一键安装:Docker"
    # echo "  [10]: 一键安装:微信(可以在Linux上使用的微信)"
    # echo "  [12]: 一键安装:PlateformIO MicroROS开发环境(支持Fishbot)"
    # echo "  [15]: 一键安装:QQ for Linux"
    # echo ""
    # echo "配置工具:"
    # echo "  [5]: 一键配置:系统源(更换系统源,支持全版本Ubuntu系统)"
    # echo "  [13]: 一键配置:python国内源"
    # echo "  [17]: 一键配置: Docker代理(支持VPN+代理服务两种模式)"
    echo ""
    echo "  [0]: quit"

    # 读取用户输入
    read -p "请输入选择的数字: " choice

    case $choice in
        1)  echo "执行 配置终端高亮 任务..." 
            
        ;;
        # 2) echo "执行 Github 桌面版安装..." ;;
        # 3) echo "执行 rosdep 安装..." ;;
        # 4) echo "执行 ROS 环境配置..." ;;
        # 5) echo "执行系统源配置..." ;;
        # 6) echo "执行 NodeJS 安装..." ;;
        # 7) echo "执行 VSCode 安装..." ;;
        # 8) echo "执行 Docker 安装..." ;;
        # 9) echo "执行 Cartographer 安装..." ;;
        # 10) echo "执行 微信安装..." ;;
        # 11) echo "执行 ROS Docker 版安装..." ;;
        # 12) echo "执行 PlatformIO MicroROS 安装..." ;;
        # 13) echo "执行 Python 国内源配置..." ;;
        # 15) echo "执行 QQ for Linux 安装..." ;;
        # 16) echo "执行系统自带 ROS 安装..." ;;
        # 17) echo "执行 Docker 代理配置..." ;;
        0) echo "退出脚本"; break ;;
        *) echo "无效选择，请重新输入！" ;;
    esac

    read -p "按回车键继续..." temp
done

