#!/bin/sh
# Hyprland basic packages
# Waypaper is a gui tool to define wallpapers and needs a backend, you can use swaybg if you dont have time to compile swww, but if your cpu isnt very old it doesnt lasts reaaally long
yay -S hyprland xdg-desktop-portal-hyprland grimblast-git waybar rofi-lbonn-wayland-git pavucontrol nwg-look-bin alacritty grim slurp hyprpicker  pipewire pipewire-pulse wireplumber wl-clipboard pamixer dunst libnotify blueberry  brightnessctl hyprland-workspaces swayidle waypaper-git

# Hyprland extra packages
yay -S watershot ttf-jetbrains-mono-nerd  gammastep  swaybg

# Theme
yay -S catppuccin-gtk-theme-mocha

# Neovim
yay -S neovim nodejs-lts-hydrogen python3 python-pip ripgrep fd lua gcc npm unzip tidy wget lldb clang python-pynvim
sudo npm i -g neovim

# Other important applications
yay -S okular qbittorrent ranger  64gram-desktop ungoogled-chromium-bin chromium-extension-web-store uget  mpv viewnior btop thunderbird zsh lazygit stow github-cli blender gimp discord kdenlive
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh)
