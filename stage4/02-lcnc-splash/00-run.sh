#!/bin/bash -e


install -d -m 755 "${ROOTFS_DIR}/usr/share/plymouth/themes/linuxcnc/"
install -m 644 files/linuxcnc.script "${ROOTFS_DIR}/usr/share/plymouth/themes/linuxcnc/linuxcnc.script"
install -m 644 files/linuxcnc.plymouth "${ROOTFS_DIR}/usr/share/plymouth/themes/linuxcnc/linuxcnc.plymouth"
install -m 644 files/chips.png "${ROOTFS_DIR}/usr/share/plymouth/themes/linuxcnc/chips.png"

on_chroot <<- \EOF
	plymouth-set-default-theme -R linuxcnc
EOF
