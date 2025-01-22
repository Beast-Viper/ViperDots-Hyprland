# My Hyprland Setup

This repository contains my personal configuration files for Hyprland, a dynamic tiling window manager for Linux. I've aimed for a clean, minimalistic setup, perfect for those who appreciate efficiency and a distraction-free workspace. Plus, I’m using **GNU Stow** to keep everything tidy with symlinks. 

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Screenshots](#screenshots)
- [Customization](#customization)
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
     paru -S avizo btop blueman conky easyeffects fastfetch fish hyprland hyprlock hypridle hyprsunset kitty nautilus nvim swaync waybar wlogout
     ```

   b) **pacman (Arch Linux):**

     ```bash
     sudo pacman -S avizo btop blueman conky easyeffects fastfetch fish hyprland hyprlock hypridle hyprsunset kitty nautilus nvim swaync waybar wlogout
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
  You can kick off Hyprland with any display manager, but I recommend SDDM for the best experience.

Want to see all the keybinds? Just hit Super + / and you’re good to go!

Feel free to dive in, customize, and make it your own! Happy tinkering! 🎉

A lot of the basics are inspired by https://github.com/prasanthrangan/hyprdots , but I’ve put my own minimalistic spin on things.

## Screenshots

Here’s a peek at my setup:

Desktop:
![250122_16h44m56s_screenshot](https://github.com/user-attachments/assets/85a1257b-0c6c-4f7a-b469-a2e770715176)

Browser:
![250122_16h44m43s_screenshot](https://github.com/user-attachments/assets/50e57d2f-7fc1-4219-9ea7-ba7c549d5a08)

Others:
![250122_16h46m57s_screenshot](https://github.com/user-attachments/assets/4388916e-76ed-4e77-9e4f-83a9000561a8)
![250122_16h49m26s_screenshot](https://github.com/user-attachments/assets/016ef0cb-3f51-401a-b33e-329bac7ce6cc)

## Customization

Feel free to tweak any of the configurations to fit your style! I’ve set things up to be as minimal as possible, but there’s always room for personal flair. 

~/.config/hypr contains most hyprland configs such as hyprland.conf, hypridle.conf, hyprlock.conf and many more.

You can also find separate files for individual things such as animations, keybinds and others.

GTK3/4 theme is a personal catppuccin-like modified version using https://github.com/vinceliuice/WhiteSur-gtk-theme as base.

## License

This project is licensed under the MIT License. Feel free to use, modify, and distribute it as you wish! Just make sure to include the original license in any copies or substantial portions of the software.

For more details, check out the [LICENSE](LICENSE) file in this repository.  

