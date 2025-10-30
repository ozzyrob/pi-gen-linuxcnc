#!/bin/bash -e

if [ -f "${ROOTFS_DIR}/etc/lightdm/lightdm.conf" ]; then
	sed -i 's/^greeter-session=.*/greeter-session=lightdm-gtk-greeter/' "${ROOTFS_DIR}/etc/lightdm/lightdm.conf"
	sed -i 's/^user-session=.*/user-session=xfce/' "${ROOTFS_DIR}/etc/lightdm/lightdm.conf"
	sed -i 's/^autologin-session=.*/autologin-session=xfce/' "${ROOTFS_DIR}/etc/lightdm/lightdm.conf"
fi	

install -d -m 755 "${ROOTFS_DIR}/usr/share/images/lcnc/lcnc-login"
install -m 644 files/lcnc-login.jpg "${ROOTFS_DIR}/usr/share/images/lcnc/lcnc-login.jpg"
install -m 644 files/lightdm-gtk-greeter.conf "${ROOTFS_DIR}/etc/lightdm/lightdm-gtk-greeter.conf"

