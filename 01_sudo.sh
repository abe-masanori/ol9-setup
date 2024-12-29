#!/bin/bash -ux

echo -e "%wheel\tALL=(ALL)\tNOPASSWD: ALL" | tee /etc/sudoers.d/wheel
chmod 640 /etc/sudoers.d/wheel
