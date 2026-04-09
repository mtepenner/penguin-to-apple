#!/bin/bash

# 1. System Updates and Core Dependencies
echo "Installing core dependencies..."
sudo apt update
sudo apt install -y gnome-tweaks gnome-shell-extension-manager plank \
gtk2-engines-murrine gtk2-engines-pixbuf git libglib2.0-dev-bin dconf-editor

# 2. Setup Directory Structure
mkdir -p ~/.themes
mkdir -p ~/.icons
mkdir -p ~/.config/autostart

# 3. Automate Theme and Icon Downloads (WhiteSur)
echo "Downloading macOS themes and icons..."
cd /tmp
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git --depth=1
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git --depth=1

# Install the GTK Theme
cd WhiteSur-gtk-theme
./install.sh -t all -s 280 -i ubuntu
cd ..

# Install the Icon Theme
cd WhiteSur-icon-theme
./install.sh -t default
cd ..

# 4. Configure GNOME Shell via gsettings
echo "Configuring GNOME desktop environment..."

# Move window buttons to the left (Close, Minimize, Maximize)
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'

# Set the Icon Theme
gsettings set org.gnome.desktop.interface icon-theme 'WhiteSur'

# Set the GTK Theme
gsettings set org.gnome.desktop.interface gtk-theme 'WhiteSur-Light'

# 5. Automate Plank Startup
echo "Setting Plank dock to start automatically..."
cat <<EOF > ~/.config/autostart/plank.desktop
[Desktop Entry]
Type=Application
Exec=/usr/bin/plank
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=Plank
Comment=The simplest dock on the planet
EOF

# 6. Hide the default Ubuntu Dock
echo "Hiding default Ubuntu Dock..."
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 16
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false

echo "--------------------------------------------------------"
echo "Automation complete! Please log out and log back in."
echo "--------------------------------------------------------"
