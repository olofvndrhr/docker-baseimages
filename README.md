# Docker baseimages with s6 overlay. Built on debian-slim.

[![Build Status](https://drone.44net.ch/api/badges/44net-assets/docker-baseimages-build/status.svg)](https://drone.44net.ch/44net-assets/docker-baseimages-build)

includes:
* s6-overlay
* cron
* ca-certificates for https downloads
* webcurler - wget, curl
* archive tools - tar,gzip,bzip2,zip (not in slim)
* widely used tools - rsync, git (rsync not in slim)

## proposed s6 file-structure

All files/folder with a '!' as a remark are default files, and exist already.
```
.
└── rootfs !
    └── etc !
        ├── cron.d !
        │   ├── cron_startapp
        │   └── cron_stuff
        └── s6-overlay !
            ├── init !
            │   └── 00-init !
            └── s6-rc.d !
                ├── init !
                │   ├── type !
                │   └── up !
                ├── cron !
                │   ├── type !
                │   ├── run !
                │   └── dependencies !
                ├── myapp
                │   ├── type (longrun)
                │   ├── run (command)
                │   └── dependencies !always add 'init' here
                └── scripts !
                    ├── 10-set-timezone !
                    ├── 11-fix-attrs !
                    ├── 12-setuid !
                    ├── 51-install-app
                    ├── 52-install-extras
                    ├── 53-other-stuff
                    ├── 53-other-stuff
                    └── 80-fixperm

```
