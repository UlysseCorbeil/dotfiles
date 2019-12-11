# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# SVN
alias sup='svn update'
alias ss='svn stat'
alias slog='svn log -l 10'
alias scm='svn commit -m'
alias sme='svn merge'
alias sad='svn add'
alias sd='svn diff'

# bash
alias c='clear'
alias cr='cargo run'

#make
alias mc="make clean"
alias m="make"

# vim
alias vim='/usr/local/Cellar/macvim/8.1-161/MacVim.app/Contents/MacOS/Vim'
alias v="vim"
alias mm="mvim"

# GIT
alias gp="git push"
alias gm="git commit -m"
alias gom='git pull origin master'
alias gpm='git push origin master'
export PATH="$HOME/.cargo/bin:$PATH"
