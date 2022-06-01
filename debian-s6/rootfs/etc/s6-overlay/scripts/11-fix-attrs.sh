#!/command/with-contenv bash
# shellcheck shell=bash

# directorys to fix/set permissions
sys_dirs=(
    '/etc/cron.d'
    '/etc/s6-overlay/init'
    '/etc/s6-overlay/scripts'
)

# set permissions loop
for fix_dir in "${sys_dirs[@]}"; do
    echo "Fixing permissions in: ${fix_dir}"
    chown -R root:root "${fix_dir}"
    find "${fix_dir}/" -type d -exec chmod 755 {} \;
    find "${fix_dir}/" -type f -exec chmod 700 {} \;
done
