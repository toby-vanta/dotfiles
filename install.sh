#!/bin/bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

create_symlinks() {
    # Get a list of all files in this directory that start with a dot.
    files=$(find -maxdepth 1 -type f -name ".*")

    # Create a symbolic link to each file in the home directory.
    for file in $files; do
        name=$(basename $file)
        echo "Creating symlink to $name in home directory."
        rm -rf ~/$name
        ln -s $SCRIPT_DIR/$name ~/$name
    done
}

install_zsh_theme() {
    mkdir -p ~/.oh-my-zsh/themes
    ln -s $SCRIPT_DIR/toby.zsh-theme ~/.oh-my-zsh/themes/toby.zsh-theme
}

create_symlinks
install_zsh_theme

