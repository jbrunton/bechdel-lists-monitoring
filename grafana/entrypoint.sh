#!/bin/sh
set -e

if [ -z "$HOST" ]; then
  echo "Error: HOST must be set."
  exit 1
fi

envsubst < /etc/grafana/grafana.template.ini > /etc/grafana/grafana.ini

set -- /run.sh "$@"

exec "$@"
