## Introduction

This configuration improves productivity and makes your terminal easier to use.

## Installation

```

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/MichaelAquilina/zsh-you-should-use ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use
git clone https://github.com/fdellwing/zsh-bat ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-bat

# packages 
pkg install starship zoxide lsd bat fd fzf zsh

```

## Requirements

Install these first:

- `oh-my-zsh` — plugin manager
- `starship` — prompt
- `zoxide` — smart cd
- `lsd` — better ls
- `bat` — better cat
- `fd` — fast find
- `fzf` — fuzzy finder
- `zsh-autosuggestions` — inline suggestions
- `zsh-syntax-highlighting` — syntax colors
- `you-should-use` — alias hints
- `zsh-bat` — bat integration

## Autosuggestions

- Source: history then completion
- Accept: <kbd>→</kbd>, <kbd>End</kbd>, <kbd>Ctrl</kbd>+<kbd>L</kbd>
- Buffer limit: 20 chars


## fzf

- Gruvbox dark theme

Keys:

- <kbd>Ctrl</kbd>+<kbd>T</kbd> — file search
- <kbd>Alt</kbd>+<kbd>C</kbd> — directory jump
- <kbd>Ctrl</kbd>+<kbd>R</kbd> — history search


## Aliases

### System

- `ls` → `lsd`
- `la` → `lsd -A`
- `ll` → `lsd -lA`
- `lt` → tree view
- `cat` → `bat -n`
- `cp` `mv` `rm` → interactive verbose
- `mkdir` → create parents
- `..` `...` `....` → up dirs

---

### Termux

- `pkgi` — install
- `pkgu` — upgrade
- `pkgs` — search
- `pkgr` — remove

---

### Git

- `g` — git
- `ga` — add
- `gaa` — add all
- `gs` — status
- `gc` — commit
- `gp` — push
- `gl` — pull
- `gd` — diff
- `gpf` — safe force push
- `gco` — checkout
- `gcb` — new branch
- `glo` — log graph
- `grb` — rebase
- `grbi` — interactive rebase


### npm

- `ni` — install
- `nid` — dev install
- `nig` — global install
- `nu` — uninstall
- `nr` — run
- `nrd` — dev
- `nrd` — build
- `nrl` — lint
- `nrt` — test
- `nlg` — list global


### fzf helpers

- `cdf` — pick dir and cd
- `nvimf` — pick file in nvim
- `killfzf` — pick process and kill


## Functions

- `run` → npm run dev
- `rel` → reload config
- `clone <url>` → clone and cd
- `gshow` → browse git log


## Keybinds

- <kbd>Ctrl</kbd>+<kbd>O</kbd> — run dev
- <kbd>Esc</kbd>+<kbd>R</kbd> — reload
- <kbd>Ctrl</kbd>+<kbd>L</kbd> — accept suggestion
- <kbd>Ctrl</kbd>+<kbd>T</kbd> — file search
- <kbd>Alt</kbd>+<kbd>C</kbd> — dir jump
- <kbd>Ctrl</kbd>+<kbd>R</kbd> — history

## zoxide

- `z foo` — jump
- `zi foo` — interactive
- `z ..` — up
- `z -` — previous

