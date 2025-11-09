# ────────────────────────────────
# 🧠  Core Environment
# ────────────────────────────────
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"
export PATH="$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# ────────────────────────────────
# 🎨  Gruvbox-style Colors
# ────────────────────────────────
autoload -U colors && colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"
export LS_COLORS="di=33:ln=36:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

# ────────────────────────────────
# 🧩  Plugins & Completion
# ────────────────────────────────

### ─── zsh-autosuggestions (Inline Ghost Text) ───────────────────────
# Load *before* zsh-autocomplete
if [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Tweak autosuggestion appearance and logic
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'   # grey ghost text
ZSH_AUTOSUGGEST_MANUAL_REBIND=1            # prevents binding conflicts with autocomplete


### ─── zsh-autocomplete (Tab & Menu Completion) ───────────────────────
# Load *after* autosuggestions
if [ -f /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh ]; then
  source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
fi

# Optional tuning (makes typing smoother)
zstyle ':autocomplete:*' min-delay 0.05
zstyle ':autocomplete:async' max-wait 0.2
zstyle ':autocomplete:tab:*' insert-unambiguous yes
zstyle ':autocomplete:predict' false     # disable its own “ghost text” to avoid conflict


### ─── zsh-syntax-highlighting (Command Colors) ──────────────────────
# Must come *last*
if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi


### ─── fzf Integration (Search / History) ─────────────────────────────
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"


# ────────────────────────────────
# ⚙️  Aliases & Replacements
# ────────────────────────────────
alias ls='eza --grid -lah --icons --color=auto'
alias la='eza -a'
alias ll='eza -lah'
alias cat='bat'
alias find='fd'
alias top='btop'
alias du='duf'
alias cd='z'
alias grep='rg'
alias vim='nvim'
alias vi='nvim'
alias update='sudo pacman -Syu'
alias cls='clear'

# ────────────────────────────────
# 🪄  Prompt
# ────────────────────────────────
PROMPT='%F{green}%n%f@%F{blue}%m%f:%F{yellow}%~%f %# '

# ────────────────────────────────
# 🧭  FZF + Zoxide + Tools
# ────────────────────────────────
eval "$(zoxide init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ────────────────────────────────
# 🧰  Utility Functions
# ────────────────────────────────
mkcd() { mkdir -p "$1" && cd "$1"; }
extract() { 
  case "$1" in
    *.tar.bz2) tar xjf "$1" ;;
    *.tar.gz)  tar xzf "$1" ;;
    *.bz2)     bunzip2 "$1" ;;
    *.rar)     unrar x "$1" ;;
    *.gz)      gunzip "$1" ;;
    *.tar)     tar xf "$1" ;;
    *.tbz2)    tar xjf "$1" ;;
    *.tgz)     tar xzf "$1" ;;
    *.zip)     unzip "$1" ;;
    *.Z)       uncompress "$1" ;;
    *.7z)      7z x "$1" ;;
    *) echo "unknown archive format: $1" ;;
  esac
}

# ────────────────────────────────
# 🪶  Quality of Life
# ────────────────────────────────
setopt HIST_IGNORE_DUPS HIST_FIND_NO_DUPS SHARE_HISTORY HIST_VERIFY
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

# ────────────────────────────────
# 🧭  Startup Message
# ────────────────────────────────
echo "Hello from the pig."

