# dpremy bash config files and shell aliases

![Build Status](https://ci.davidremy.me/api/badges/dpremy/dot-bash/status.svg)

## Purpose

This repository contains the dotfiles and configs I use with bash. It is desinged to work with [GNU stow](https://www.gnu.org/software/stow/), but can easily be used without it.

## Installation

```shell
# if you don't already have GNU stow, install stow for your OS

# clone this repo in to a .files directory
git clone -q https://gitlab.com/dpremy/dot-bash.git ~/.files/dot-bash

# use stow to symlink this 'package' in to your home directory
stow -d ~/.files/ -t ~/ -S dot-bash
```

### NixOS

NixOS may not load ~/.bashrc due to a variety of issues related to shells and which files are loaded when. See [here](https://discourse.nixos.org/t/bash-not-sourcing-bashrc/) for more detail on this issue.

The easiest fix is to likely create `~/.bash_profile` with the following content:

```bash
# ~/.bash_profile
[[ $- == *i* && -f "$HOME/.bashrc" ]] && source "$HOME/.bashrc"
```

## Usage

The files in [.bash](.bash) may be worth reviewing.
