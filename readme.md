# 🧠 Zsh Environment Dependencies & Installation Guide

This document lists every package, plugin, and CLI tool required by your `.zshrc`, including their official GitHub pages and platform-specific install commands.

---

## ⚙️ Required Tools

| Tool | Description | GitHub |
|:--|:--|:--|
| **zsh** | Your primary shell interpreter | [zsh](https://github.com/zsh-users/zsh) |
| **zsh-autosuggestions** | Inline ghost text suggestions | [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) |
| **zsh-autocomplete** | Smart tab completion and async search | [zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete) |
| **zsh-syntax-highlighting** | Command syntax coloring for zsh | [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) |
| **fzf** | Fuzzy finder for files, command history, etc. | [fzf](https://github.com/junegunn/fzf) |
| **zoxide** | Smarter `cd` command (directory jumper) | [zoxide](https://github.com/ajeetdsouza/zoxide) |
| **eza** | Modern replacement for `ls` with icons and colors | [eza](https://github.com/eza-community/eza) |
| **bat** | `cat` alternative with syntax highlighting | [bat](https://github.com/sharkdp/bat) |
| **fd** | Faster, user-friendly alternative to `find` | [fd](https://github.com/sharkdp/fd) |
| **btop** | Resource monitor (CPU, RAM, processes) | [btop](https://github.com/aristocratos/btop) |
| **duf** | Disk usage analyzer with color output | [duf](https://github.com/muesli/duf) |
| **ripgrep (rg)** | Fast file searcher using regex | [ripgrep](https://github.com/BurntSushi/ripgrep) |
| **neovim (nvim)** | Modern Vim-compatible text editor | [neovim](https://github.com/neovim/neovim) |
| **node / npm** | JavaScript runtime + package manager | [node](https://github.com/nodejs/node) |
| **tree-sitter-cli** | Incremental parsing library for syntax trees | [tree-sitter](https://github.com/tree-sitter/tree-sitter) |
| **p7zip / unrar / unzip / tar / gzip / bzip2** | Archive & extraction utilities used by `extract()` | [p7zip](https://github.com/p7zip-project/p7zip) |

---

## 💻 Installation Commands

### 🐧 Arch Linux
sudo pacman -S --needed zsh fzf zoxide eza bat fd btop duf ripgrep neovim nodejs npm p7zip unrar unzip tar gzip bzip2
# AUR plugins (use yay or paru)
yay -S zsh-autosuggestions zsh-autocomplete zsh-syntax-highlighting tree-sitter-cli

Use npm *install -g tree-sitter-cli* after Node/npm install.
