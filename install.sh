
#!/bin/bash

# Backup directory
BACKUP_DIR=~/config_backup

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# List of directories to manage
DIRS=("avizo" "btop" "conky" "easyeffects" "fastfetch" "fish" "gtk-3.0" "gtk-4.0" "hypr" "hyprlauncher" "kitty" "nvim" "swaync" "waybar" "wlogout")

# Loop through each directory
for DIR in "${DIRS[@]}"; do
    TARGET="$HOME/.config/$DIR"
    
    if [ -d "$TARGET" ]; then
        echo "Backing up $TARGET to $BACKUP_DIR"
        mv "$TARGET" "$BACKUP_DIR/"
    fi
done

echo "All existing configurations have been backed up to $BACKUP_DIR."

# Stow command to create symlinks
cd ~/ViperDots-Hyprland/config/ || exit

for DIR in "${DIRS[@]}"; do
    echo "Stowing $DIR..."
    stow --target="$HOME/.config" "$DIR"
done

echo "All dotfiles have been stowed successfully!"
