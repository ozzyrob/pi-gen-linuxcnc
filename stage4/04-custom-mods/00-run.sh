#!/bin/bash -e



install -m 644 files/xml/thunar.xml "${ROOTFS_DIR}/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/thunar.xml"
install -m 644 files/xml/xfce4-terminal.xml "${ROOTFS_DIR}/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-terminal.xml"
#install -m 644 files/xml/xfce4-desktop.xml "${ROOTFS_DIR}/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml"
install -m 644 files/profile/enable-rt.sh "${ROOTFS_DIR}/etc/profile.d/enable-linuxcnc-rt.sh"

#install -d -m 755 "${ROOTFS_DIR}/usr/share/desktop-base/linuxcnc-theme/lock-screen"
#install -d -m 755 "${ROOTFS_DIR}/usr/share/desktop-base/linuxcnc-theme/login"
#install -d -m 755 "${ROOTFS_DIR}/usr/share/desktop-base/linuxcnc-theme/wallpaper"


#install -m 644 files/image/wallpaper-lcnc.jpg "${ROOTFS_DIR}/usr/share/desktop-base/linuxcnc-theme/wallpaper/lcnc-wallpaper.jpg"
install -m 644 files/image/xfce-x.svg "${ROOTFS_DIR}/usr/share/backgrounds/xfce/xfce-x.svg"


on_chroot << EOF
apt -y remove modemmanager sane-airscan sane-utils usb-modeswitch usb-modeswitch-data wf-panel-pi wayvnc rpi-usb-gadget ppp
apt -y autoremove
EOF
