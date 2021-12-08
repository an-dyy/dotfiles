export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR=nvim

source $HOME/.config/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle command-not-found

antigen theme https://gist.github.com/xfanwu/18fd7c24360c68bab884.git xxf
antigen apply

alias ls="ls -a"
alias commit="git commit"
alias clone="git clone"
alias pull="git pull"

export PATH="$HOME/.poetry/bin:$PATH"
