# Deprecation notice
This project has been archived and isn't used anymore, this version of these dotfiles was
replaced by home-manager and Nix for six years in the [davidtwco/veritas][veritas]
and then that was replaced by the dotfiles in the `main` branch of this repository.

[veritas]: https://github.com/davidtwco/veritas

## dotfiles
[![license][license-badge]][license]
[![antibody][ab-badge]][ab]
[![minpac][mp-badge]][mp]
[![tpm][tpm-badge]][tpm]
[![say thanks][st-badge]][st]

<p align="center">
  <img alt="Screenshot" src=".yadm/screenshot.png" />
</p>

These are my dotfiles! This repository contains my Vim (or Neovim), tmux, and zsh (and the
equivalent bash) configurations. I've tested that these dotfiles work on NixOS, Ubuntu, ArchLinux
and within Bash for Windows.

[license]: https://github.com/davidtwco/dotfiles
[license-badge]: https://img.shields.io/github/license/davidtwco/dotfiles.svg?style=flat-square
[ab]: https://github.com/getantibody/antibody
[ab-badge]: https://img.shields.io/badge/powered%20by-antibody-blue.svg?style=flat-square
[mp]: https://github.com/k-takata/minpac
[mp-badge]: https://img.shields.io/badge/powered%20by-minpac-blue.svg?style=flat-square
[tpm]: https://github.com/tmux-plugins/tpm
[tpm-badge]: https://img.shields.io/badge/powered%20by-tpm-blue.svg?style=flat-square
[st]: https://saythanks.io/to/davidtwco
[st-badge]: https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg?style=flat-square

## How do I use these dotfiles?
These dotfiles are managed using [yadm](https://thelocehiliosan.github.io/yadm). After installing
yadm by [following their installation instructions][yadm_instr], to clone my dotfiles, run the
following:

```
yadm clone git@gitlab.com:davidtwco/dotfiles.git
```

You may have conflicts with pre-existing files, like `.bashrc`, after cloning. You can run
`yadm status` and then `yadm reset HEAD <filename>` and `yadm checkout -- <filename>` to reset all
files to those from the repository.

If you didn't run into any issues above, then yadm will have executed the
[bootstrap script](.yadm/bootstrap) script to create symlinks and install plugins. If you need to
run this manually, execute the following:

```
.yadm/bootstrap
```

### How do I manually install zsh plugins using Antibody?
I use [Antibody](https://github.com/getantibody/antibody) for managing my zsh plugins - this
should be set up and installed by the bootstrap script. However, if it wasn't or you need to
update the installed plugins, you can follow the steps below.

First, if you haven't already, install Antibody as below:

```
curl -sL https://git.io/antibody | bash -s
```

Next, run the following to re-generate the `.zsh_plugins.sh` script that zsh will source to load
plugins (you will need to redo this every time you change the [antibody bundle](.antibody_bundle)
file that contains the list of plugins).

```
source <(antibody init)
bash -c 'antibody bundle < ~/.antibody_bundle > .zsh_plugins.sh'
antibody update
```

[yadm_instr]: https://thelocehiliosan.github.io/yadm/docs/install
