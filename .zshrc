export NVM_DIR="$HOME/.nvm"
export JAVA_HOME=$(/usr/libexec/java_home -v 17)
export ZSH="/Users/maik/.oh-my-zsh"

ZSH_THEME="avit"
plugins=(git docker npm ansible)

source $ZSH/oh-my-zsh.sh
source $(brew --prefix nvm)/nvm.sh
eval $(thefuck --alias)

