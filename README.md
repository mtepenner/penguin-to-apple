# 🐧 Penguin to Apple (`ptoa.sh`)

## Description
Penguin to Apple is an automated bash scripting tool designed to seamlessly transform a standard Ubuntu GNOME desktop into a beautiful, macOS-inspired environment. By automating the installation of core dependencies, GTK themes, and dock managers, this tool saves time and provides a fully polished, unified UI with a single command. 

## Table of Contents
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)

## 🚀 Features
- **Dependency Automation:** Automatically installs necessary packages including `gnome-tweaks`, `plank`, `dconf-editor`, and essential GTK engines.
- **Theme Installation:** Automatically clones and applies the popular [WhiteSur GTK and Icon themes](https://github.com/vinceliuice/WhiteSur-gtk-theme) directly from GitHub.
- **Window Controls:** Modifies `gsettings` to move window control buttons (Close, Minimize, Maximize) to the left side of the window, mirroring native macOS behavior.
- **Dock Configuration:** Configures Plank as the default dock, sets it to launch on autostart, and gracefully hides the default Ubuntu dash-to-dock.

## 💻 Technologies Used
- **Bash** (Shell Scripting)
- **GNOME** (`gsettings`, `gnome-tweaks`)
- **Plank**
- **Git**

## 🛠️ Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/mtepenner/penguin-to-apple.git
   cd penguin-to-apple
   ```

2. **Make the script executable:**
   Ensure the script has the correct permissions to run on your machine:
   ```bash
   chmod +x ptoa.sh
   ```

## ⚙️ Usage

1. **Run the script:**
   Execute the script from your terminal. 
   ```bash
   ./ptoa.sh
   ```
   *Note: You will be prompted for your `sudo` password to install system dependencies via `apt`.*

2. **Apply the changes:**
   Once the script prints `Automation complete!`, log out of your current user session and log back in to apply all GNOME shell and theme changes.

## 🤝 Contributing
Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://github.com/mtepenner/penguin-to-apple/issues) if you want to contribute to the project.
