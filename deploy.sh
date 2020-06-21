#/bin/bash
set -e

if [ -z "$HOST" ]; then
  echo "Error: HOST must be set."
  exit 1
fi

export TIMESTAMP=$(date +%s)
#export PROMETHEUS_WEB_EXTERNAL_URL=http://$HOST/prometheus

docker stack deploy monitoring -c docker-compose.yml
