#!/bin/bash

# radio and tv are separate as they could have different configuration

# handy commands
# list: --pvr-list
# add: --pvr-add {name} --pid {pid}
# delete: --pvr-del {name}
# search: {query}
# one-off fetch by PID: --pid {pid}
# one-off fetch by URL: --url {url}

COMMAND=${@}

SCRIPT_DIR=$( dirname -- "${BASH_SOURCE[0]}"; )
ROOT_DIR=$(realpath ${SCRIPT_DIR}/..)

source ${ROOT_DIR}/config.env

if [ -z "${COMMAND}" ]; then
    COMMAND="--pvr"
fi

docker run \
    --rm \
    --userns=keep-id \
    -v ${CONFIG_DIR}/iplayer-tv:/data/config \
    -v ${IPLAYER_DIR}:/data/output \
    docker.io/barwell/get-iplayer:latest \
    ${COMMAND}
