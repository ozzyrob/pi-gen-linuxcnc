#!/bin/bash -e



install -m 644 files/thunar.xml "${ROOTFS_DIR}/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/thunar.xml"
install -m 644 files/xfce4-terminal.xml "${ROOTFS_DIR}/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-terminal.xml"
install -m 644 files/enable-rt.sh "${ROOTFS_DIR}/etc/profile.d/enable-linuxcnc-rt.sh"
install -m 644 files/wallpaper-lcnc.jpg "${ROOTFS_DIR}/usr/share/images/lcnc/lcnc-wallpaper-lcnc.jpg"





