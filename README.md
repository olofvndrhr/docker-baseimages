# Docker baseimages with s6 overlay. Built on debian-slim.

[![status-badge](https://ci.44net.ch/api/badges/44net-assets/docker-baseimages-build/status.svg)](https://ci.44net.ch/44net-assets/docker-baseimages-build)

includes:
* s6-overlay
* cron
* ca-certificates for https downloads
* webcurler - wget, curl
* archive tools - tar,gzip,bzip2,zip (not in slim)
* widely used tools - rsync, git (rsync not in slim)

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
