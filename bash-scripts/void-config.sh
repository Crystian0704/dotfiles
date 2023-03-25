# Configuration void linux post install
------------------------------------------------------------
# update packages and repositories

xbps-install -Su -y

# update xbps

xbps-install -u xbps -y

# install packages 

xbps-install -y \
    xorg-minimal \
    xorg-fonts \
    xdg-user-dirs \
    i3 \
    i3status \
    nano \
    alacritty \
    firefox \
    cronie \
    curl \
    wget \
    git \
    neofetch \
    htop \
    dmenu \
    xf86-video-nouveau \
    xf86-input-libinput \
    xf86-input-synaptics \
    lightdm \
    lightdm-gtk-greeter \
    elogind \
    pipewire \
    alsa-pipewire \
    libjack-pipewire \
    wireplumber \
    pavucontrol \

# enable services

ln -s /etc/sv/cronie /var/service
ln -s /etc/sv/dbus /var/service
ln -s /etc/sv/lightdm /var/service
ln -s /etc/sv/elogind /var/service

# set mirrors

mkdir -p /etc/xbps.d

echo "repository=https://voidlinux.com.br/repo/current" > /etc/xbps.d/00-repository-main.conf

echo "repository=https://voidlinux.com.br/repo/current/multilib" > /etc/xbps.d/10-repository-multilib.conf

echo "repository=https://voidlinux.com.br/repo/current/nonfree" > /etc/xbps.d/10-repository-nonfree.conf

echo "repository=https://voidlinux.com.br/repo/current/multilib-nonfree" > /etc/xbps.d/10-repository-multilib-nonfree.conf

# set the keyboard layout on Xorg

mkdir -p /etc/X11/xorg.conf.d 

keyborad-config="Section \"InputClass\"
    Identifier \"system-keyboard\"
    MatchIsKeyboard \"on\"
    Option \"XkbLayout\" \"br\"
    Option \"XkbModel\" \"abnt2\"
EndSection"

echo "$keyborad-config" > /etc/X11/xorg.conf.d/00-keyboard.conf

# set touchpad configuration

touchpad-config="Section \"InputClass\"
    Identifier \"touchpad\"
    Driver \"libinput\"
    MatchIsTouchpad \"on\"
    Option \"Tapping\" \"on\"
    Option \"NaturalScrolling\" \"true\"
    Option \"AccelProfile\" \"flat\"
    Option \"AccelSpeed\" \"0\"
EndSection"

echo "$touchpad-config" > /etc/X11/xorg.conf.d/50-synaptics.conf

# set the default shell
chsh -s /bin/bash

# set the default editor
sudo xbps-alternatives -s nano

# set display manager

sed -i 's/#pam-greeter-service=lightdm-greeter/pam-greeter-service=lightdm-greeter' /etc/lightdm/lightdm.conf



