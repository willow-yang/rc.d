alias grep='grep -I --color=auto --exclude-dir={.git,.hg,.svn,.venv}'
export GREP_COLOR='1;31'
if [ -d $HOME/.local/bin ]; then
    export PATH=$HOME/.local/bin:$PATH
fi

# brew
if which brew > /dev/null; then
    # BREWHOME=`brew --prefix`
    BREWHOME="/usr/local"
    export LDFLAGS="-L$BREWHOME/lib"
    export CPPFLAGS="-I$BREWHOME/include"
    export PKG_CONFIG_PATH="$BREWHOME/lib/pkgconfig"
fi

# Golang env
export GOPATH="$HOME/src/Golang"
export PATH="$GOPATH/bin:$PATH"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if which pyenv > /dev/null; then
    # eval "$(pyenv init -)";
    # eval "$(pyenv virtualenv-init -)"
    # pyenv alias
    alias pyv='pyenv versions'
    alias chpy='pyenv global'
    alias chlpy='pyenv local'
    alias chgpy='pyenv global'
fi

# Custom alias
# alias .='source'
alias l='ls -Clho'
alias ll='ls -ClhF'
alias la='ls -A'
alias lla='ls -ClhFA'

alias rs='rsync -cvrP --exclude={.git,.hg,.svn,.venv}'
alias httpserver='python -m SimpleHTTPServer'
alias httpserver3='python -m http.server'
alias psgrep='ps ax|grep -v grep|grep'
alias tree='tree -C --dirsfirst'
alias less='less -N'
alias tkill='tmux kill-session -t'
alias aria='aria2c -c -x 16 --file-allocation=none'
alias axel='axel -n 30'
alias myip='curl -s http://seamile.org/myip'
alias ping='ping -i 0.1 -c 10'
alias vnccnt='netstat -nat|grep -w 5900|grep -c ESTABLISHED '

# macOS alias
if [ `uname` = "Darwin" ]; then
    export HOMEBREW_NO_AUTO_UPDATE=true  # disable homebrew auto update
    alias tailf='tail -F'
    alias rmds='find . -type f -name .DS_Store -delete'
    alias showfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
    alias hidefiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
    alias power="echo Power: $(pmset -g batt|awk 'NR==2{print $3}'|sed 's/;//g')"
    alias clsattr="xattr -lr ."
    alias tree='tree -N'
fi

# Python alias
alias py='python'
alias py2='python2'
alias py3='python3'
alias ipy='ipython'
alias ipy2='ipython2'
alias ipy3='ipython3'
alias venv='python -m venv'
alias jpy='jupyter notebook'
alias pep='pycodestyle --ignore=E501'
alias rmpyc='find . | grep -wE "py[co]|__pycache__" | xargs rm -rvf'
alias pygrep='grep --include="*.py"'

# Git alias
alias gst='git status -sb'
alias gdf='git difftool'
alias glg='git log --stat --graph --max-count=10'
alias gco='git checkout'
alias gmg='git merge --no-commit --squash'
