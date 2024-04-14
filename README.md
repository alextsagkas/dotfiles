# My Dotfiles

This repository contains the dofiles for my system.

## Requirements

Ensure you have the following installed:

- git
- stow

## Installation

First, check out the dotfiles repository in your `$HOME` directory:

```bash
$ cd ~
$ git clone ...
$ cd dotfiles
```

Then use gnu stow to create symblinks:

```bash
$ stow .
```

The files that are ingored by deafult from stow are the following:

```text
# Comments and blank lines are allowed.

RCS
.+,v

CVS
\.\#.+       # CVS conflict files / emacs lock files
\.cvsignore

\.svn
_darcs
\.hg

\.git
\.gitignore
\.gitmodules

.+~          # emacs backup files
\#.*\#       # emacs autosave files

^/README.*
^/LICENSE.*
^/COPYING
```

To override those create a `.stow-global-ignore` file in
`.dotfiles/`.
