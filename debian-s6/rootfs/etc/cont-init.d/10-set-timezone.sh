#!/usr/bin/with-contenv bash
# shellcheck shell=bash

# set timezone in container

if [[ -f "/usr/share/zoneinfo/${TZ}" ]]; then
    echo "Setting Timezone: ${TZ}"
    ln -snf "/usr/share/zoneinfo/${TZ}" "/etc/localtime"
    echo "${TZ}" > "/etc/timezone"
else
    echo "WARNING: ${TZ} is not a valid time zone."
fi
