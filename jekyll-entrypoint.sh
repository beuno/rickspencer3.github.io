#!/bin/bash

source /opt/bitnami/stacksmith-utils.sh
print_welcome_page
check_for_updates &

echo "Grana Y Yooooooo"

bundle exec jekyll new . --force

exec tini -- "$@"
