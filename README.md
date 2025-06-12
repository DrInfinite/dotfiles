# My dotfiles

- [My dotfiles](#my-dotfiles)
  - [Requirements](#requirements)
    - [Git](#git)
    - [Stow](#stow)
  - [Installation](#installation)

This directory contains the dotfiles for my system, made available under the
[MIT License](./LICENSE) for personal, professional and commercial use without warranty.

## Requirements

Ensure you have the following installed on your system

### Git

```sh
pacman -S git
```

### Stow

```sh
pacman -S stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```sh
git clone https://github.com/DrInfinite/dotfiles.git
cd dotfiles
```

then use GNU stow to create symlinks

```sh
stow .
```
