#!/bin/bash
# --------------------------------------------------------------------
# Script Name: docker_unused_res_cleanup.sh
# Author: Shiivam Agnihotri
# Date: (14 March 2024)
# Description: Clean docker unused resources based on threshold value.
# --------------------------------------------------------------------
# Set variables for cleanup thresholds
CONTAINER_THRESHOLD=7d
IMAGE_THRESHOLD=7d
VOLUME_THRESHOLD=30d
# Clean stopped containers older than threshold
echo "Cleaning stopped containers older than $CONTAINER_THRESHOLD..."
docker container prune --filter "until=$CONTAINER_THRESHOLD" -f
# Clean unused images older than threshold
echo "Cleaning unused images older than $IMAGE_THRESHOLD..."
docker image prune --filter "until=$IMAGE_THRESHOLD" -f
# Clean unused volumes older than threshold
echo "Cleaning unused volumes older than $VOLUME_THRESHOLD..."
docker volume prune --filter "until=$VOLUME_THRESHOLD" -f
echo "Docker cleanup complete."
