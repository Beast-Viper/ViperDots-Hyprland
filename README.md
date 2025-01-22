# My Hyprland Setup

This repository contains my personal configuration files for Hyprland, a dynamic tiling window manager for Linux. I've aimed for a clean, minimalistic setup, perfect for those who appreciate efficiency and a distraction-free workspace. These configurations are managed using GNU Stow for easy symlink management.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Screenshots](#screenshots)
- [Customization](#customization)
- [Dependencies](#dependencies)
- [License](#license)

## Installation

Setting up this configuration is a breeze! Just follow these steps:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Beast-Viper/ViperDots-Hyprland.git ~/ViperDots-Hyprland

2. **Navigate to the dotfiles directory:**
   ```bash
   cd ~/ViperDots-Hyprland

3. **Install Dependencies (Choose ONE method):**

   This step installs all the necessary programs.  Pick the method that suits your distro:

   a) **AUR Helper (paru or yay - Arch Linux):**

     ```bash
     paru -S avizo btop conky easyeffects fastfetch fish hyprland hyprlock hypridle hyprsunset kitty nautilus nvim swaync waybar wlogout
     ```

   b) **pacman (Arch Linux):**

     ```bash
     sudo pacman -S avizo btop conky easyeffects fastfetch fish hyprland hyprlock hypridle hyprsunset kitty nautilus nvim swaync waybar wlogout
     ```

   c) **Your Distribution's Package Manager:**
     Adapt the commands above to your package manager (apt, dnf, zypper, etc.).  You'll need to find the correct package names for your distro.

4. **Use Stow to create symlinks:**
   ```bash
   stow --target=$HOME/.config avizo
   stow --target=$HOME/.config btop
   stow --target=$HOME/.config conky
   stow --target=$HOME/.config easyeffects
   stow --target=$HOME/.config fastfetch
   stow --target=$HOME/.config fish
   stow --target=$HOME/.config gtk-3.0
   stow --target=$HOME/.config gtk-4.0
   stow --target=$HOME/.config hypr
   stow --target=$HOME/.config hyprlauncher
   stow --target=$HOME/.config kitty
   stow --target=$HOME/.config nvim
   stow --target=$HOME/.config swaync
   stow --target=$HOME/.config waybar
   stow --target=$HOME/.config wlogout


## Usage
  Any display manager should work for starting Hyprland but SDDM is recommended.

  You can see all keybinds using Super + / 

  Many basic things are taken from https://github.com/prasanthrangan/hyprdots but I like minimalistic stuff so I modified it. 

## Screenshots
Desktop:
![250122_16h44m56s_screenshot](https://github.com/user-attachments/assets/85a1257b-0c6c-4f7a-b469-a2e770715176)

Browser:
![250122_16h44m43s_screenshot](https://github.com/user-attachments/assets/50e57d2f-7fc1-4219-9ea7-ba7c549d5a08)

Others:
![250122_16h46m57s_screenshot](https://github.com/user-attachments/assets/4388916e-76ed-4e77-9e4f-83a9000561a8)
![250122_16h49m26s_screenshot](https://github.com/user-attachments/assets/016ef0cb-3f51-401a-b33e-329bac7ce6cc)





  (To be updated)   

