#aliases
alias ll="ls -l"
alias yless='rm -rf node_modules bower_components dist tmp && yarn install'
alias npmless='rm -rf node_modules dist tmp && npm install'
alias npmmore='rm -rf node_modules bower_components dist tmp && npm cache clear && bower cache clear && npm install && bower install'

alias cs="~/i/api/vendor/bin/phpcs --standard=~/i/api/phpcs.xml.dist ~/i/api/src ~/i/api/tests"
alias cct="rm -rf ~/i/api/var/tmp/*; rm -rf ~/i/api/var/cache/test; ~/i/api/bin/console cache:clear --no-warmup --env=test; ~/i/api/bin/console cache:warmup --env=test"
alias cc="~/i/api/bin/console cache:clear --no-warmup; ~/i/api/bin/console cache:warmup"
alias startdemodb='docker pull ilios/mysql-demo; docker run -d --name ilios-demo-db -p 3306:3306 ilios/mysql-demo'
alias startelasticsearch='docker run -d --name ilios-elasticsearch -p 9200:9200 elasticsearch:6.5.4'
alias demodb='docker exec -it ilios-demo-db bash'
alias dc='docker compose --env-file ~/.docker-empty.env'
alias d-c='docker-compose --env-file ~/.docker-empty.env'
alias composerless='rm -rf vendor; RM_STAR_SILENT=true rm -rf bin/.phpunit; RM_STAR_SILENT=true rm -rf var/cache/*;php -d memory_limit=-1 ~/bin/composer install; bin/console cache:warmup'
alias cat="bat"
alias cdic="cd ~/i/common"
alias cdif="cd ~/i/frontend"
alias cdii="cd ~/i/api"

switchphp() {
  brew unlink php && brew link --force --overwrite php@$1
}

#homebrew setup
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";

#ngrok autocompletions
if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi