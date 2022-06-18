#!/usr/bin/with-contenv bash
# shellcheck shell=bash

# directorys to fix/set permissions
sys_dirs=(
    "/etc/cont-init.d/"
    "/etc/services.d/"
    "/etc/cron.d/"
)

# set permissions loop
for fix_dir in "${sys_dirs[@]}"; do
    echo "Fixing permissions in ${fix_dir}"
    chown -R root:root "${fix_dir}"
    find "${fix_dir}" -type d -exec chmod 755 {} \;
    find "${fix_dir}" -type f -exec chmod 700 {} \;
done
