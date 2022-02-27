#installed with `brew install antigen` and used to manage packages
source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle aws
antigen bundle brew
antigen bundle colorize
antigen bundle command-not-found
antigen bundle composer
antigen bundle docker-compose
antigen bundle docker
antigen bundle ember-cli
antigen bundle extract
antigen bundle git
antigen bundle git-remote-branch
antigen bundle heroku
antigen bundle history
antigen bundle npm
antigen bundle rvm
antigen bundle symfony2
antigen bundle vscode
antigen bundle macos


# Other Bundles
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# configure and use nvm
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
antigen bundle lukechilds/zsh-nvm
antigen bundle lukechilds/zsh-better-npm-completion

# Load the theme.
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure@main

# Tell Antigen that you're done.
antigen apply

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

HISTSIZE=10000000
SAVEHIST=10000000

path+=("/Users/jrjohnson/bin")
path+=("/Users/jrjohnson/.composer/vendor/bin")
path+=("/Users/jrjohnson/.yarn/bin")

export PATH

export EDITOR=vim
