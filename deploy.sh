#/bin/bash
set -e

if [ -z "$HOST_NAME" ]; then
  echo "Error: HOST_NAME must be set."
  exit 1
fi

export TIMESTAMP=$(date +%s)
export PROMETHEUS_WEB_EXTERNAL_URL=http://$HOST_NAME/prometheus

docker stack deploy monitoring -c docker-compose.yml
