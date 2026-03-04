#installed with `brew install zinit` and used to manage packages
source $HOMEBREW_PREFIX/opt/zinit/zinit.zsh

zinit snippet OMZL::git.zsh
zinit snippet OMZP::git

# configure and use nvm
export NVM_AUTO_USE=true
zinit light lukechilds/zsh-nvm

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

HISTSIZE=1000000000
SAVEHIST=1000000000

path+=("/Users/jrjohnson/bin")
path+=("/Users/jrjohnson/.composer/vendor/bin")
path+=("/Users/jrjohnson/.yarn/bin")
path+=("/Users/jrjohnson/.docker/bin")
path+=("/Users/jrjohnson/Library/Application Support/JetBrains/Toolbox/scripts")
path=("/opt/homebrew/bin" $path)
path=("/opt/homebrew/sbin" $path)
path=("/Users/jrjohnson/Library/pnpm" $path)

manpath+=("/opt/homebrew/share/man")
infopath+=("/opt/homebrew/share/info")

export PATH
export MANPATH
export INFOPATH

export EDITOR=nvim

# pnpm
export PNPM_HOME="/Users/jrjohnson/Library/pnpm"
# pnpm end

# enable zoxide
eval "$(zoxide init zsh)"

zinit snippet OMZP::vscode
zinit snippet OMZP::direnv

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions

# Initialize completion system
autoload -Uz compinit
compinit
zinit cdreplay -q

# add auto complete for ilios commands
eval "$(/Users/jrjohnson/Documents/code/ilios/api/bin/console completion zsh)"

#ngrok autocompletions
if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi