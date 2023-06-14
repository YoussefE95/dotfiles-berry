yay -Syyu

yay -S berry-git sxhkd dmenu dunst feh xorg-server xorg-xrdb xsettingsd polkit libsecret lxsession-gtk3 polybar eww stalonetray picom scrot acpi bc wireless_tools pavucontrol alsa-utils wmctrl brightnessctl bluez bluez-utils blueberry alacritty neovim xclip zsh starship apple-fonts ttf-iosevka-nerd ranger ueberzugpp htop discord slack-desktop dropbox expressvpn spotifyd spotify-tui cmake extra-cmake-modules jq python-pip nodejs npm

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

python3 -m pip install -U https://github.com/leovoel/BeautifulDiscord/archive/master.zip

sudo rsync -a .config .local .xinitrc .Xresources .zshrc ~/
sudo cp .config/theme-setter/set-theme /usr/local/bin/
sudo cp .config/theme-setter/get-theme /usr/local/bin/
sudo cp .config/theme-setter/reapply-theme /usr/local/bin/

sudo cp .config/spotifyd/spotifyd.service /etc/systemd/user/

sudo rm -rf ~/Documents ~/Music ~/Public ~/Videos ~/Templates ~/Pictures

systemctl --user enable spotifyd.service --now
sudo systemctl enable bluetooth
sudo systemctl enable expressvpn

# set discord theme
# python3 -m beautifuldiscord --css ~/.config/beautdisc/global_theme.css
