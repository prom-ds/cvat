#!/bin/bash


echo "$@"


docker-compose\
    -f docker-compose.yml\
    -f components/analytics/docker-compose.analytics.yml\
    -f docker-compose.override.yml\
    -f components/tf_annotation/docker-compose.tf_annotation.ym\
    -f components/auto_segmentation/docker-compose.auto_segmentation.yml\
    -f cvat/apps/dextr_segmentation/docker-compose.dextr.yml\
    "$@"