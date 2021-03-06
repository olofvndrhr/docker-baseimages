#!/usr/bin/with-contenv bash
# shellcheck shell=bash
# shellcheck disable=SC1112
# shellcheck disable=SC2016
# shellcheck disable=SC1073
# shellcheck disable=SC1004

# set pid/gid or leave on default
: "${PUID:=4444}"
: "${PGID:=4444}"

groupmod -o -g "${PGID}" abc
usermod -o -u "${PUID}" abc

echo '
-------------------------------------------------
       __     __    _                        _____
  ____/ /__  / /_  (_)___ _____        _____/ ___/
 / __  / _ \/ __ \/ / __ `/ __ \______/ ___/ __ \
/ /_/ /  __/ /_/ / / /_/ / / / /_____(__  ) /_/ /
\__,_/\___/_.___/_/\__,_/_/ /_/     /____/\____/
            __   _
   _____   / /  (_)  ____ ___
  / ___/  / /  / /  / __ `__ \
 (__  )  / /  / /  / / / / / /
/____/  /_/  /_/  /_/ /_/ /_/

Source: git.44net.ch/44net-assets/docker-baseimages-build
Source GitHub: github.com/olofvndrhr/docker-baseimages'
echo "
-------------------------------------------------
S6 Version: ${S6_VERSION}
Build Version: ${BASEIMAGE_VERSION}
-------------------------------------------------
User UID: $(id -u abc)
User GID: $(id -g abc)
-------------------------------------------------
"
