#!/bin/bash

source /opt/bitnami/stacksmith-utils.sh
print_welcome_page
check_for_updates &

echo "building new jekyll content"

#TODO: don't run if /app exists
jekyll new . --force


exec tini -- "$@"
