#!/bin/sh -l

export COMPOSER_AUTH="{\"github-oauth\": {\"github.com\": \"$GITHUB_TOKEN\"}}"

sh -c "composer install --no-scripts --no-progress && /composer/vendor/bin/phpstan $*"
