#!/bin/bash

export ELASTIC_VERSION=7.2.0
export ELASTICSEARCH_USERNAME=elastic
export ELASTICSEARCH_PASSWORD=changeme
export ELASTICSEARCH_HOST=manager1
export INITIAL_MASTER_NODES=manager1

docker network create --driver overlay --attachable elastic
docker stack deploy --compose-file docker-compose.yml elastic
