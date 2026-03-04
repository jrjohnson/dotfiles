#aliases
alias ll="ls -l"
alias yless='rm -rf node_modules bower_components dist tmp && yarn install'
alias npmless='rm -rf node_modules dist tmp && npm install'
alias pnpmless='rm -rf **/node_modules && pnpm install'

alias cct="rm -rf ~/i/api/var/tmp/*; rm -rf ~/i/api/var/cache/test; ~/i/api/bin/console cache:clear --no-warmup --env=test; ~/i/api/bin/console cache:warmup --env=test"
alias cc="~/i/api/bin/console cache:clear --no-warmup; ~/i/api/bin/console cache:warmup"
alias dc='docker compose --env-file ~/.docker-empty.env'
alias composerless='rm -rf vendor; RM_STAR_SILENT=true rm -rf bin/.phpunit; RM_STAR_SILENT=true rm -rf var/cache/*;php -d memory_limit=-1 ~/bin/composer install; bin/console cache:warmup'
alias vim='nvim'
switchphp() {
  brew unlink php
  echo "Switching to PHP $1"
  brew link --force --overwrite php@$1
}

#homebrew setup
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";

export DIRENV_LOG_FORMAT=$'\033[2mdirenv: %s\033[0m'
