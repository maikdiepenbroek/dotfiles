export NVM_DIR="$HOME/.nvm"
export JAVA_HOME=$(/usr/libexec/java_home -v 17)

ZSH_THEME="avit"
plugins=(git docker npm)

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval $(thefuck --alias)
