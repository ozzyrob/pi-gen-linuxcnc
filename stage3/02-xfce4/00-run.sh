#!/bin/bash -e

install -m 644 files/99-linuxcnc-hook	"${ROOTFS_DIR}/etc/apt/apt.conf.d/99linuxcncmenufix"
install -m 755 files/linuxcnc-menu-fix  "${ROOTFS_DIR}/usr/local/bin/linuxcnc-menu-fix"
