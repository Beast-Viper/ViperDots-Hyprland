# My Hyprland Setup

This repository contains my personal configuration files for Hyprland, a dynamic tiling window manager for Linux. I've aimed for a clean, minimalistic setup, perfect for those who appreciate efficiency and a distraction-free workspace. Plus, I’m using **GNU Stow** to keep everything tidy with symlinks. 

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Screenshots](#screenshots)
- [Customization](#customization)
- [Contributing](#contributing)
- [Acknowledgement](#acknowledgement)
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
     paru -S avizo btop blueman bluez bluez-utils brightnessctl conky easyeffects fastfetch fish hyprland hyprlock hypridle hyprsunset kitty nautilus network-manager-applet nvim nwglook pactl pavucontrol qt5ct qt6ct swaync swww waybar wlogout
     ```

   b) **pacman (Arch Linux):**

     ```bash
     sudo pacman -S avizo btop blueman bluez bluez-utils brightnessctl conky easyeffects fastfetch fish hyprland hyprlock hypridle hyprsunset kitty nautilus network-manager-applet nwglook nvim pactl pavucontrol qt5ct qt6ct swaync swww waybar wlogout
     ```

   c) **Your Distribution's Package Manager:**
     Adapt the commands above to your package manager (apt, dnf, zypper, etc.).  You'll need to find the correct package names for your distro.

4. **Run the install script:**
   
   IMPORTANT: Make sure you are not logged into Hyprland before running the script else script will fail.

   ```bash
   chmod +x install.sh          #Make it executable

   ./install.sh                 #Run the script


## Usage
  You can kick off Hyprland with any display manager, but I recommend SDDM for the best experience.

Want to see all the keybinds? Just hit Super + / and you’re good to go!

Feel free to dive in, customize, and make it your own! Happy tinkering! 🎉

A lot of the basics are inspired by https://github.com/prasanthrangan/hyprdots , but I’ve put my own minimalistic spin on things.

## Screenshots

Here’s a peek at my setup:

Desktop w/ waybar:
![250122_16h44m56s_screenshot](https://github.com/user-attachments/assets/85a1257b-0c6c-4f7a-b469-a2e770715176)

Browser (Zen w/ adaptive css):
![250122_16h44m43s_screenshot](https://github.com/user-attachments/assets/50e57d2f-7fc1-4219-9ea7-ba7c549d5a08)

Others:
![250122_16h46m57s_screenshot](https://github.com/user-attachments/assets/4388916e-76ed-4e77-9e4f-83a9000561a8)
![250122_16h49m26s_screenshot](https://github.com/user-attachments/assets/016ef0cb-3f51-401a-b33e-329bac7ce6cc)

## Customization

Feel free to tweak any of the configurations to fit your style! I’ve set things up to be as minimal as possible, but there’s always room for personal flair. 

~/.config/hypr contains most hyprland configs such as hyprland.conf, hypridle.conf, hyprlock.conf and many more.

You can also find separate files for individual things such as animations, keybinds and others.

GTK3/4 theme is a personal catppuccin-like modified version using https://github.com/vinceliuice/WhiteSur-gtk-theme as base.

## Contributing

Contributions are welcome! If you find any bugs or have suggestions for improvements, please open an issue or submit a pull request.

## Acknowledgement

All wallpapers are made by Arseniy Chebynkin and his collegue.
Artstation link: https://www.artstation.com/arsenixc

## License

This project is licensed under the MIT License. Feel free to use, modify, and distribute it as you wish! Just make sure to include the original license in any copies or substantial portions of the software.

For more details, check out the [LICENSE](LICENSE) file in this repository.  

