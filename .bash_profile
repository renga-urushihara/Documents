source ~/.bashrc
source ~/.git-prompt.sh
source ~/.bash_completion.sh 2>/dev/null
PS1='🐄 \[\e[0;36m\]\t\[\e[0;0m\] \[\e[0;32m\]\w\[\033[00m\] \[\e[0;31m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '
export BASH_SILENCE_DEPRECATION_WARNING=1