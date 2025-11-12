#!/bin/bash

BLUE="\e[0;34m"
RED="\e[0;31m"
CLEAR="\e[0m"
GREEN="\e[0;32m"


log_info () {

    echo -e "${BLUE}[INFO]${CLEAR} $1"
}


log_fail() {

    echo -e "${RED}[FAIL]${CLEAR} $1"
}


log_success() {

    echo -e "${GREEN}[SUCCESS]${CLEAR} $1"
}

check_files() {
    if [  -f "~/.config/scripts/pacman.txt" ]; then
        echo "Pacman File does not exsist"
        return 1
    fi

    if [ ! -f "~/.config/scripts/yay.txt " ]; then
        echo "Yay file does not exsist"
        return 1
    fi
    return 0

}


check_yay() {
    log_info "Checking if yay is installed..."
    yay --version
    if [ $? -ne 0 ]; then 
        log_fail "Yay is not installed"
        return 1
    fi

    log_success "Yay is installed"

    return 0
}

check_sudo() {
    if [[ "$EUID" -eq 0 ]]; then
        log_info "Currently running arch_install as sudo or root. DO NOT DO THIS!"
        log_fail "Do not run arch_install as sudo"
        return 1
    fi
}

install_yay() {

    log_info "Installing yay"

    local temp=$(mktemp -d)
    cd "$temp"
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm

    

}

post_installation() {

    echo
    log_success "Installation Complete"
    echo "Reboot device"
    echo "Edit dotfiles at ~/.config"
    echo

}

install() {
    check_sudo
    check_yay
    check_files

    post_installation
}

install

