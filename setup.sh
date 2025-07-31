#!/bin/bash

# Define dotfiles directory
DOTFILES_DIR="$(pwd)"

# Backup directory
BACKUP_DIR="$HOME/.dotfiles_backup_$(date +%s)"
mkdir -p "$BACKUP_DIR"

# List of top-level dotfiles to link
FILES=(".bashrc")

# Symlink each top-level dotfile
for file in "${FILES[@]}"; do
  if [ -f "$HOME/$file" ] || [ -h "$HOME/$file" ]; then
    echo "Backing up $file to $BACKUP_DIR"
    mv "$HOME/$file" "$BACKUP_DIR/"
  fi
  echo "Linking $file"
  ln -s "$DOTFILES_DIR/$file" "$HOME/$file"
done

# Link config files under .config
CONFIG_DIRS=("alacritty" "awesome" "picom" "polybar" "tmux" "nvim")
mkdir -p "$HOME/.config"

for dir in "${CONFIG_DIRS[@]}"; do
  target="$HOME/.config/$dir"
  source="$DOTFILES_DIR/.config/$dir"

  if [ -d "$target" ] || [ -h "$target" ]; then
    echo "Backing up $target to $BACKUP_DIR"
    mv "$target" "$BACKUP_DIR/"
  fi

  echo "Linking $source -> $target"
  ln -s "$source" "$target"
done

echo "✅ Dotfiles setup complete."

