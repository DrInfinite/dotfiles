# My dotfiles

<!--toc:start-->
- [My dotfiles](#my-dotfiles)
  - [Requirements](#requirements)
    - [Git](#git)
    - [Stow](#stow)
  - [Installation](#installation)
<!--toc:end-->

This directory contains the dotfiles for my system, made available under the
[MIT License](./LICENSE) for personal, professional and commercial use without warranty.

## Requirements

Ensure you have the following installed on your system

### Git

```
pacman -S git
```

### Stow

```
pacman -S stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
git clone https://github.com/DrInfinite/dotfiles.git
cd dotfiles
```

then use GNU stow to create symlinks

```
stow .
```
