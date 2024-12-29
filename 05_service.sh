#!/bin/bash -ux

cat << EOF | xargs sudo systemctl disable
crond.service
nis-domainname.service
nvmefc-boot-connections.service
sssd.service
sysstat.service
sssd-kcm.socket
dnf-makecache.timer
mlocate-updatedb.timer
sysstat-collect.timer
sysstat-summary.timer
EOF

