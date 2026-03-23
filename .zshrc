# Core
export ZSH="$HOME/.oh-my-zsh"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting you-should-use zsh-bat)
source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt SHARE_HISTORY
setopt APPEND_HISTORY

# Autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
bindkey '^L' autosuggest-accept

# fzf
export FZF_DEFAULT_COMMAND='fd --type f '
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'
export BAT_THEME="gruvbox-dark"
export FZF_DEFAULT_OPTS="
  --color=bg+:#3c3836,bg:#282828,spinner:#fe8019,hl:#83a598
  --color=fg:#ebdbb2,header:#928374,info:#fabd2f,pointer:#fe8019
  --color=marker:#b8bb26,fg+:#fbf1c7,prompt:#fabd2f,hl+:#fb4934
  --height=40% --layout=reverse --border=rounded
  --preview-window=right:55%:wrap
"

[[ -f /data/data/com.termux/files/usr/share/fzf/key-bindings.zsh ]] &&
  source /data/data/com.termux/files/usr/share/fzf/key-bindings.zsh

# System
alias ls='lsd'
alias la='lsd -A'
alias ll='lsd -lA'
alias lt='lsd --tree --depth 2'
alias cat='bat -n'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias mkdir='mkdir -pv'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Termux
alias pkgi='pkg install'
alias pkgu='pkg upgrade'
alias pkgs='pkg search'
alias pkgr='pkg remove'

# Git
alias g='git'
alias ga='git add'
alias gaa='git add .'
alias gs='git status'
alias gc='git commit -m'
alias gca='git commit --amend --no-edit'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gl='git pull'
alias gd='git diff'
alias gds='git diff --staged'
alias glo='git log --oneline --graph --decorate'
alias gb='git branch'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gst='git stash'
alias gstp='git stash pop'
alias grb='git rebase'
alias grbi='git rebase -i'

# npm
alias ni='npm install'
alias nid='npm install --save-dev'
alias nig='npm install -g'
alias nu='npm uninstall'
alias nr='npm run'
alias nrd='npm run dev'
alias nrb='npm run build'
alias nrl='npm run lint'
alias nrt='npm run test'
alias nlg='npm list -g --depth=0'

# fzf shortcuts
alias cdf='cd $(fd --type d --hidden --exclude .git | fzf --preview "lsd --tree --depth 1 {}")'
alias nvimf='nvim $(fd --hidden --exclude .git | fzf --preview "bat --color=always {}")'
alias killfzf='kill -9 $(ps aux | fzf | awk "{print \$2}")'

# Functions
r()      { npm run dev }
reload() { source ~/.zshrc }

clone() {
  git clone "$1" && cd "$(basename "$1" .git)"
}

mkcd() { mkdir -p "$1" && cd "$1" }

gshow() {
  local commit
  commit=$(git log --oneline --graph --decorate | fzf --ansi | grep -o '[a-f0-9]\{7,\}' | head -1)
  [[ -n $commit ]] && git show "$commit"
}

# Bindings
zle -N r
zle -N reload
bindkey '^O'  r
bindkey '\er' reload
