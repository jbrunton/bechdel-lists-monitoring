#/bin/bash
set -e

export TIMESTAMP=$(date +%s)
export PROMETHEUS_WEB_EXTERNAL_URL=http://192.168.99.100/prometheus
docker stack deploy monitoring -c docker-compose.yml
