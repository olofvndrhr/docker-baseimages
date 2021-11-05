# Docker baseimage with s6 overlay. Build on debian.

[![Build Status](https://drone.44net.ch/api/badges/44net-assets/docker-baseimage-debian-s6/status.svg)](https://drone.44net.ch/44net-assets/docker-baseimage-debian-s6)

includes:
* s6-overlay
* cron
* ca-certificates for https downloads
* archive tools - tar,gzip,bzip2,zip
* webcurler - wget, curl
* widely used tools - rsync, git

## proposed s6 file-structure

```
.
└── rootfs
    ├── cont-init.d
    │   ├── 10-set-timezone     !default
    │   ├── 11-fix-attrs        !default
    │   ├── 12-setuid           !default    
    │   ├── 20-setenv
    │   ├── 51-install-app
    │   ├── 52-install-extras
    │   ├── 53-other-stuff
    │   └── 80-fixperm
    ├── cron.d
    │   ├── cron-startapp
    │   └── cron-stuff
    └── services.d
        ├── cron                !default
        │   └── run             !default
        └── app
            └── run

```
