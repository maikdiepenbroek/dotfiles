export NVM_DIR="$HOME/.nvm"
export ZSH="/Users/maik/.oh-my-zsh"

ZSH_THEME="avit"
plugins=(git docker npm ansible)

source $ZSH/oh-my-zsh.sh
source $(brew --prefix nvm)/nvm.sh
eval $(thefuck --alias)
export PATH=$PATH:$(go env GOPATH)/bin

