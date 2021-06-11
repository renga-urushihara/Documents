# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/vagrant/.sdkman"
[[ -s "/home/vagrant/.sdkman/bin/sdkman-init.sh" ]] && source "/home/vagrant/.sdkman/bin/sdkman-init.sh"
# ---------------- aliases ----------------
alias 'll'='ls -l'
alias 'project'='cd ~/renga/mansion-note'
alias 'dcla'='docker container ls -a'
alias 'dsp'='docker system prune --force'
alias 'dl'='docker logs'
alias 'dc'='docker container'
alias 'dslb'='docker service logs -f wa_backend'
alias 'mn-script-dir'='cd ~/renga/mansion-note/env/vagrant/bin/'
alias 'mn-compile-js'='~/renga/mansion-note/webapp/bin/javascript.sh'
alias 'mn-compile-css'='~/renga/mansion-note/webapp/bin/css.sh'
alias 'mn-restart'='~/renga/mansion-note/env/vagrant/bin/restart-webapp.sh'
alias 'mn-stop-webapp'='docker stack rm wa'
alias 'mn-webapp-update'='(docker stack rm wa; ~/renga/bin/gradle.sh :mansion-note:mansion-note-webapp:buildDist; docker stack deploy --prune -c ~/renga/mansion-note/env/docker/compose/webapp.yml wa;)'
# -----------------------------------------
source ~/.git-prompt.sh
PS1='♨️  \[\e[0;33m\]\t(VM)\[\e[0;0m\] \[\e[0;32m\]\w\[\033[00m\]\[\e[0;31m\]$(__git_ps1 " (%s)")\[\033[00m\]\$'