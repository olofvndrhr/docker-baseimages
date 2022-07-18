#!/bin/bash
# shellcheck shell=bash
# shellcheck disable=SC1112
# shellcheck disable=SC2016
# shellcheck disable=SC1073
# shellcheck disable=SC1004

echo '
-------------------------------------------------
       __     __    _                        _____
  ____/ /__  / /_  (_)___ _____        _____/ ___/
 / __  / _ \/ __ \/ / __ `/ __ \______/ ___/ __ \
/ /_/ /  __/ /_/ / / /_/ / / / /_____(__  ) /_/ /
\__,_/\___/_.___/_/\__,_/_/ /_/     /____/\____/
    __
   / /_  ____ _________
  / __ \/ __ `/ ___/ _ \
 / /_/ / /_/ (__  )  __/
/_.___/\__,_/____/\___/

Source: git.44net.ch/44net-assets/docker-baseimages-build
Source GitHub: github.com/olofvndrhr/docker-baseimages'
echo "
-------------------------------------------------
Build Version: ${BASEIMAGE_VERSION}
-------------------------------------------------
"

exec "${@}"
