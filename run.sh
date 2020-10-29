#!/bin/bash


echo "$@"


docker-compose\
    -f docker-compose.yml\
    -f components/analytics/docker-compose.analytics.yml\
    -f components/serverless/docker-compose.serverless.yml\
    -f docker-compose.override.yml\
    "$@"