#!/bin/sh
# Hyprland basic packages
yay -S hyprland xdg-desktop-portal-hyprland grimblast-git waybar rofi-lbonn-wayland-git pavucontrol nwg-look-bin alacritty grim slurp hyprpicker  pipewire pipewire-pulse wireplumber wl-clipboard pamixer dunst libnotify blueberry  brightnessctl hyprland-workspaces hypridle waypaper-git --noconfirm

# Hyprland extra packages
yay -S gammastep  swaybg --noconfirm

yay -S ttf-jetbrains-mono-nerd  ttf-noto-nerd noto-fonts-cjk noto-fonts-emoji noto-fonts-extra --noconfirm

# Theme
yay -S catppuccin-gtk-theme-mocha kvantum catppuccin-cursors-mocha --noconfirm

# Neovim
yay -S neovim nodejs-lts-hydrogen python3 python-pip ripgrep fd lua gcc npm unzip tidy wget lldb clang python-pynvim bear --noconfirm
sudo npm i -g neovim

# Other important applications
yay -S okular qbittorrent ranger  64gram-desktop ungoogled-chromium-bin chromium-extension-web-store uget  mpv viewnior btop thunderbird zsh lazygit stow github-cli blender gimp discord kdenlive syncthing dust  bat obs-studio --noconfirm
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh)
rm -rf ~/.zshrc # Remove the config generated by zap

stow .
