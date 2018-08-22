#!/bin/bash
set -e

shift 1

BUILD_ARGS=( "${@/#/--build-arg }" )


function test {
    echo $@
}

test "${BUILD_ARGS[@]}"