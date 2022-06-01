#!/command/with-contenv bash
# shellcheck shell=bash

# execute all scripts in the /etc/s6-overlay/scripts directory

for script in "/etc/s6-overlay/scripts"/*; do
    echo "Executing: ${script}"
    with-contenv bash "${script}"
    echo "Exit code: ${?}"
done
