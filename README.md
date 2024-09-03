# macOS Configuration

This repository contains my personal configuration files for various tools and applications on macOS. It serves as a centralized location to store and manage my preferred settings, making it easier to set up a new machine or restore my configuration after a system reinstall.

## Table of Contents

- [Shell Configuration](#shell-configuration)
- [Window Management](#window-management)
- [Applications](#applications)
- [Homebrew Packages](#homebrew-packages)

## Shell Configuration

- [`.zshrc`](zsh/.zshrc): Configuration file for the Z shell (Zsh), including settings for Oh My Zsh, plugins, aliases, and environment variables.
- [`.zprofile`](zsh/.zprofile): Zsh profile file for setting up environment variables.
- [`.zshenv`](zsh/.zshenv): Zsh environment file for setting up environment variables.

## Window Management

- [`yabairc`](yabai/yabairc): Configuration file for the Yabai window manager, controlling window layouts, padding, and mouse behavior.
- [`skhdrc`](skhd/skhdrc): Configuration file for the Skhd hotkey daemon, defining keyboard shortcuts for window management.

## Applications

[`apps.md`](zsh/apps.md) contains a list of productive applications I use on macOS, along with their descriptions and links.

## Homebrew Packages

[`homebrew.md`](homebrew.md) lists the Homebrew formulae and casks I have installed, including command-line utilities and desktop applications.

## Setup Instructions

1. Clone this repository to your local machine.
2. Copy or symlink the desired configuration files to their respective locations (e.g., `~/.zshrc`, `~/.yabairc`, etc.).
3. Install the required applications and packages listed in the respective files.
4. Customize the configuration files as needed to suit your preferences.
