#!/bin/bash
#
# Script Name: logger.sh
#
# Description: output messages

ERROR=1
WARN=1
DEBUG=1
INFO=1

RED='\033[0;31m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
DEFAULT='\033[0m'

function log_error() {
    [[ "${ERROR}" == "1" ]] && echo -e "${RED}[ERROR]: $*${DEFAULT}"
}

function log_warn() {
    [[ "${WARN}" == "1" ]] && echo -e "${YELLOW}[WARN]: $*${DEFAULT}"
}

function log_debug() {
    [[ "${DEBUG}" == "1" ]] && echo -e "${BLUE}[DEBUG]: $*${DEFAULT}"
}

function log_info() {
    [[ "${INFO}" == "1" ]] && echo -e "${DEFAULT}[INFO]: $*${DEFAULT}"
}