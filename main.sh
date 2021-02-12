#!/bin/bash
#
# Script Name: main.sh

SUCCESS=0
FILE_NOT_FOUND=240
UNABLE_TO_FETCH_DATA=241
NOT_ENOUGH_ARGUMENT_PROVIDED=242

BETA=beta
PROD=prod

# set -o errexit  # exit on error, disable it as ends the script if for example a curl fails
set -o pipefail

source ./common/logger.sh

# init function to be called at the beginning of the script
function init() {
    >./error.log
    cat ./common/boot.txt
}

# clean up function to be called at the end of the script
function hanlde_exit() {
    echo ""
    log_info "Finished execution"
    exit $SUCCESS
}

# main code
init


# add script here
if [ "$1" = "PROD" ]; then
    env=$PROD
else
    env=$BETA
fi

log_debug "$env has been selected"

# end
hanlde_exit
