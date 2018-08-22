#!/usr/bin/env bash
set -e

FILE=docker-cloud.yml

if [ "$1" = "down" ]; then
	docker-compose -f ${FILE} down
else
	docker-compose -f ${FILE} up
fi