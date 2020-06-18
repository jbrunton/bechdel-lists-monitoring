#/bin/bash
set -e

export TIMESTAMP=$(date +%s)
docker stack deploy monitoring -c docker-compose.yml
