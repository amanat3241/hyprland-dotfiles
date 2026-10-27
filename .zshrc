# ==========================================
# ZSH CONFIGURATION — ARCH LINUX
# ==========================================

# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY

# Shell behavior
setopt AUTO_CD
setopt INTERACTIVE_COMMENTS
setopt NO_BEEP
setopt EXTENDED_GLOB

# Completion
autoload -Uz compinit
compinit

# Colors
autoload -Uz colors
colors

# Key bindings
bindkey -e

# Useful navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cls='clear'
alias c='clear'
alias h='history'
alias reload='source ~/.zshrc'

# Arch Linux
alias update='sudo pacman -Syu'
alias install='sudo pacman -S'
alias remove='sudo pacman -Rns'
alias search='pacman -Ss'
alias orphans='pacman -Qtdq'

# Files and directories
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
alias mkdir='mkdir -pv'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -I'

# Git
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'

# Editors and terminal tools
alias v='nvim'
alias vim='nvim'
alias cat='bat'
alias y='yazi'
alias lg='lazygit'

# Kitty / Hyprland
alias hyprreload='hyprctl reload'
alias hyprmon='hyprctl monitors'
alias hyprwin='hyprctl clients'

# Better grep
alias grep='grep --color=auto'

# Completion styling
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Autosuggestions
if [[ -r /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Syntax highlighting — load near the end
if [[ -r /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Prompt
PROMPT='%n@%m %F{blue}%~%f %(?.❯.%F{red}❯)%f '
# Zsh autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Suggestion color: dim gray
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'


# Animated ASCII splash on terminal startup
if [[ -o interactive && -t 1 ]]; then
    "$HOME/.config/neofetch/animated-neofetch.sh" 0.05
fi

# Clear Neofetch cache whenever Alacritty opens
if [[ "$TERM" == "alacritty" ]]; then
    rm -f ~/.cache/neofetch.txt
fi
# ==========================================
# END
# ==========================================
