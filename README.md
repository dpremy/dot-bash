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

## Usage

The files in [.bash](.bash) may be worth reviewing.
