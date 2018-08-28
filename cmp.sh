#!/usr/bin/env bash
set -e

FILE=docker-cloud.yml

case "$1" in
        down)
            docker-compose -f ${FILE} down
            ;;

        restart)

            if [[ -z $2 ]]; then
                echo "No service name provided"
                exit 1;
            fi

            docker-compose -f ${FILE} restart $2
            ;;

        *)
            docker-compose -f ${FILE} up

esac

exit 0