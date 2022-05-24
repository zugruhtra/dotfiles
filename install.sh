#!/usr/bin/env bash

TARGET_DIR=$HOME
STOW_FOLDERS=(
    nvim
    zsh
)

for folder in "${STOW_FOLDERS[@]}"
do
    stow -D --target "$TARGET_DIR" "$folder"
    stow --target "$TARGET_DIR" "$folder"
done
