#!/bin/sh
set -e

if [ -z "$HOST_NAME" ]; then
  echo "Error: HOST_NAME must be set."
  exit 1
fi

envsubst < /etc/grafana/grafana.template.ini > /etc/grafana/grafana.ini

set -- /run.sh "$@"

exec "$@"
