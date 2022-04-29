#! /bin/bash

docker run \
    --rm \
    -e LOG_LEVEL="debug" \
    -e RENOVATE_BRANCH_CONCURRENT_LIMIT=0 \
    -e RENOVATE_RECREATE_CLOSED=true \
    -e GITHUB_ACCESS_TOKEN="$GITHUB_ACCESS_TOKEN" \
    -v $(pwd)/config.js:/usr/src/app/config.js \
    renovate/renovate
