# dotfiles
Personal dotfiles, use at your own risk.

## Requirements

- zsh
  ```bash
  sudo yum install -y zsh
  sudo chsh -s /bin/zsh vagrant
  ```
- tmux & vim
  ```bash
  sudo yum install -y tmux vim
  ```
- Terminal with MesloLGS NF font for best performance. See [Installation](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)
- Iterm2, optional but recommended. Preferences can be loaded from `com.googlecode.iterm2.plist` file.

## Installation

```bash
$ make
```

this will:

- Create a ~/.bin directory
- Download VundleVim
- Download Antibody in ~/.bin
- Download Tmux TPM
- Create a symlink from all the dot files
- Install all tmux and vim plugins

to clean:

```bash
make clean
```

This will remove:
- All the dot files symlinks
- Remove ~/.bin ~/.vim ~/.tmux directories

## Features

- Antibody: fast zsh plugin manager.
- Powerlevel10K: Highly customizible prompt
- vim plugins and theme
- tmux plugins and theme
- custom aliases
- antigen-reinstall (good for removing a plugin)
- antigen-bundle (good for adding a new plugin)

## Dotfiles structure

The main file is `~/.zshrc` it starts by loading all the Antibody plugins.

Use the following files:
- `~/.aliases` Put here your aliases
- `~/.exports` Put here your exports
- `~/.functions` Put here your custom functions
- `~/.path` Put here all your PATH exports.
- `~/.extra` for everything else

## Usage

## Development

This package is meant to work on OS X and Linux Distros as much as possible.

### Requirements
1. Vagrant (for testing in different OS than OS X)

### Testing on Vagrant

To start vagrant environment

```bash
$ vagrant up
$ vagrant ssh
```

To stop:

```bash
$ vagrant stop
```

To destroy (free the virtual machine)

```bash
$ vagrant destroy
```