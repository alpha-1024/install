#!/bin/bash

# 安装 vim 和 bash-completion
sudo apt install -y vim bash-completion

# 配置 Bash 命令行高亮和自动补全
BASHRC="$HOME/.bashrc"

# 防止重复添加
if ! grep -q "Bash 命令行高亮" "$BASHRC"; then
    cat <<'EOF' >> "$BASHRC"

# ========== Bash 命令行高亮 ==========
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

# 彩色提示符：用户名绿色，路径蓝色
export PS1='\[\e[1;32m\]\u@\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ '

# ls 彩色显示
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:*.sh=32:*.py=36'

# 命令行补全增强
bind 'set colored-stats on'
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
EOF

    echo "已将命令行高亮配置追加到 $BASHRC"
else
    echo "$BASHRC 已包含命令行高亮配置，未重复添加"
fi

# 立即生效
source "$BASHRC"


