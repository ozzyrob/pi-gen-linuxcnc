#!/bin/bash -e



install -m 644 files/xml/thunar.xml "${ROOTFS_DIR}/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/thunar.xml"
install -m 644 files/xml/xfce4-terminal.xml "${ROOTFS_DIR}/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-terminal.xml"
install -m 644 files/xml/displays.xml "${ROOTFS_DIR}/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/displays.xml"
install -m 644 files/xdg/autostart/nodpms.desktop "${ROOTFS_DIR}/etc/xdg/autostart/nodpms.desktop"
install -m 644 files/xdg/autostart/noscreenblank.desktop "${ROOTFS_DIR}/etc/xdg/autostart/noscreenblank.desktop"


install -m 644 files/profile/enable-rt.sh "${ROOTFS_DIR}/etc/profile.d/enable-linuxcnc-rt.sh"

install -d -m 755 "${ROOTFS_DIR}/usr/share/desktop-base/linuxcnc-theme/lock-screen"
install -d -m 755 "${ROOTFS_DIR}/usr/share/desktop-base/linuxcnc-theme/login"
install -d -m 755 "${ROOTFS_DIR}/usr/share/desktop-base/linuxcnc-theme/wallpaper"
install -m 644 files/image/lcnc-login.jpg "${ROOTFS_DIR}/usr/share/desktop-base/linuxcnc-theme/login/lcnc-login.jpg"
install -m 644 files/image/wallpaper-lcnc.jpg "${ROOTFS_DIR}/usr/share/desktop-base/linuxcnc-theme/wallpaper/lcnc-wallpaper.jpg"
install -m 644 files/image/xfce-x.svg "${ROOTFS_DIR}/usr/share/backgrounds/xfce/xfce-x.svg"

install -d -m 755 -o 1000 -g 1000 "${ROOTFS_DIR}"/home/"${FIRST_USER_NAME}/.config"
install -d -m 755 -o 1000 -g 1000 "${ROOTFS_DIR}"/home/"${FIRST_USER_NAME}/.config/autostart"
install -d -m 755 -o 1000 -g 1000 "${ROOTFS_DIR}"/home/"${FIRST_USER_NAME}/.config/xfce4"
install -d -m 755 -o 1000 -g 1000 "${ROOTFS_DIR}"/home/"${FIRST_USER_NAME}/.config/xfce4/xfconf"
install -d -m 755 -o 1000 -g 1000 "${ROOTFS_DIR}"/home/"${FIRST_USER_NAME}/.config/xfce4/xfconf/xfce-perchannel-xml"

install -m 644 -o 1000 -g 1000 files/.config/autostart//xfce4-power-manager.desktop "${ROOTFS_DIR}"/home/"${FIRST_USER_NAME}/.config/autostart/xfce4-power-manager.desktop"
install -m 644 -o 1000 -g 1000 files/.config/autostart/xfce4-screensaver.desktop "${ROOTFS_DIR}"/home/"${FIRST_USER_NAME}/.config/autostart/xfce4-screensaver.desktop"



on_chroot << EOF
apt -y remove modemmanager sane-airscan sane-utils usb-modeswitch usb-modeswitch-data wf-panel-pi wayvnc rpi-usb-gadget ppp
apt -y autoremove
apt -y install piwiz
EOF
