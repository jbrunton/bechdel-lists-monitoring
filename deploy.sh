#/bin/bash
set -e

if [ -z "$DOMAIN" ]; then
  echo "Error: DOMAIN must be set."
  exit 1
fi

export TIMESTAMP=$(date +%s)
#export PROMETHEUS_WEB_EXTERNAL_URL=http://$HOST_NAME/prometheus

docker stack deploy monitoring -c docker-compose.yml
