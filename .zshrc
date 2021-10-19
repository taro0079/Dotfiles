# Use powerline
# USE_POWERLINE="true"
# Source manjaro-zsh-configuration
# if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
#   source /usr/share/zsh/manjaro-zsh-config
# fi
# # Use manjaro zsh prompt
# if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#   source /usr/share/zsh/manjaro-zsh-prompt
# fi
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
# Mac
#export PATH="~/.local/share/gem/ruby/3.0.0/bin:$PATH"

neofetch

alias e='exa --icons --git'
alias l=e
alias ls=e
alias ea='exa -a --icons --git'
alias la=ea
alias ee='exa -aahl --icons --git'
alias ll=ee
alias et='exa -T -L 3 -a -I "node_modules|.git|.cache" --icons'
alias lt=et
alias eta='exa -T -a -I "node_modules|.git|.cache" --color=always --icons | less -r'
alias lta=eta
alias l='clear && ls'
# vim keybind
bindkey -v

source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh





# GOPATH setting
export GOPATH=~/go  # GOPATHにすると決めた場所
export PATH=$GOPATH/bin:$PATH

# 補完の有効化
autoload -U compinit
compinit
export PATH="$HOME/.rbenv/bin:$PATH"
# mac
export PATH="$HOME/.cargo/bin:$PATH"
eval "$(rbenv init -)"

export PATH="$HOME/.local/bin:$PATH"

#export FZF_DEFAULT_COMMAND="find -L"
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'


# starship
eval "$(starship init zsh)"

export DENO_INSTALL="/home/taro/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:~/.nimble/bin

# only for wsl
export BROWSER=wslview
alias open=wslview


