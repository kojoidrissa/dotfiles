# ~/.zshrc
# Add configurations here as you need them

# Homebrew (Apple Silicon)
eval "$(/opt/homebrew/bin/brew shellenv)" 2>/dev/null

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

# Aliases - add your own as you find yourself typing things repeatedly
alias ll="ls -lah"
alias gs="git status"

# Local overrides (not tracked in git)
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
export PATH="$HOME/.local/bin:$PATH"
