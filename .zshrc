export NVM_DIR="$HOME/.nvm"
export ZSH="/Users/maik/.oh-my-zsh"

ZSH_THEME="avit"
plugins=(git docker npm ansible)

source $ZSH/oh-my-zsh.sh
source $(brew --prefix nvm)/nvm.sh
eval $(thefuck --alias)
export PATH=$PATH:$(go env GOPATH)/bin


# pnpm
export PNPM_HOME="/Users/maik/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
#
# # ---------------------------------------------------------------------------
  # Agent sandbox shortcuts — ~/.config/sandbox-exec
  # ---------------------------------------------------------------------------
  _SANDBOX_RUN="$HOME/.config/sandbox-exec/run-sandboxed.sh"

  # safe-claude / safe-codex: run agent sandboxed in current directory.
  # Pass --workdir=/path as the first arg to override the working directory.
  safe-claude() { "$_SANDBOX_RUN" "$@" -- claude; }
  safe-codex()  { "$_SANDBOX_RUN" "$@" -- codex;  }

  # Convenience: sandbox any arbitrary command in the current directory.
  safe-run() {
    local workdir_arg=""
    if [[ "${1:-}" == --workdir=* ]]; then workdir_arg="$1"; shift; fi
    "$_SANDBOX_RUN" ${workdir_arg:+"$workdir_arg"} -- "$@"
  }

export PATH="$HOME/.local/bin:$PATH"
