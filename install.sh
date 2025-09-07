#!/bin/bash

set -e

usage(){
    echo "Usage: $0 [nvim|vim]"
}

backup(){
    local target=$1
    if [ -e "$target" ]; then
        local bak_target="${target}.bak"
        echo "[INFO] $target exists, moving to $bak_target"
        mv "$target" "$bak_target"
    fi
}

install_neovim() {
    local src_dir="./nvim"
    local dest_dir="$HOME/.config/nvim/"
    mkdir -p "$HOME/.config/"
    backup "$dest_dir"
    echo "[INFO] Copying $src_dir -> $dest_dir"
    cp -r "$src_dir" "dest_dir"
}

install_vim() {
    local src_file="./vim/vimrc"
    local dest_file="$HOME/.vimrc"

    backup "$dest_dir"
    echo "[INFO] Copying $src_dir -> $dest_dir"
    cp -r "$src_dir" "dest_dir"
}

if [[ $# -ne 1 ]]; then
    usage
    exit
fi

case "$1" in
    nvim)  
        install_neovim
    ;;
    vim) 
        install_vim
    ;;
    *) 
        usage
    ;;
esac

echo "[DONE] Installation complete."
