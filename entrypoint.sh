#!/bin/sh -l
sh -c "COMPOSER_AUTH="{\"github-oauth\": {\"github.com\": \"$GITHUB_TOKEN\"}}" \ && echo $COMPOSER_AUTH"
sh -c "composer install --no-scripts --no-progress && /composer/vendor/bin/phpstan $*"
