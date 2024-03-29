#!/bin/bash

export ELASTIC_VERSION=7.1.1
export ELASTICSEARCH_USERNAME=elastic
export ELASTICSEARCH_PASSWORD=changeme
export ELASTICSEARCH_HOST=elkmgr01
export INITIAL_MASTER_NODES=elkmgr01

docker network create --driver overlay --attachable elastic
docker stack deploy --compose-file docker-compose.yml elastic
