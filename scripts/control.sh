#!/bin/sh

SERVICE=${1-all}
COMPOSE_COMMAND=${2-"up -d"}

if [ "${SERVICE}" = "all" ]; then
    # apply all
    for SERVICE_FILE in $(find ./services -type f); do
        echo docker-compose --env-file config.env -f ${SERVICE_FILE} ${COMPOSE_COMMAND}
    done
else
    # apply to service
    docker-compose --env-file config.env -f ./services/${SERVICE}/docker-compose.yml ${COMPOSE_COMMAND}
fi

