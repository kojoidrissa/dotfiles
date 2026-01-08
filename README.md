# Dotfiles

Minimal configuration files. Grow this as needed.

## Setup

```bash
cd ~/dotfiles
./install.sh
```

## How it works

Each file here gets symlinked to your home directory with a dot prefix:
- `zshrc` → `~/.zshrc`
- `gitconfig` → `~/.gitconfig`
- `ssh_config` → `~/.ssh/config`
- `gitignore_global` → `~/.gitignore_global`

When you edit `~/dotfiles/zshrc`, you're editing the actual config because `~/.zshrc` is just a pointer to it.

## Adding new dotfiles

1. Copy/create the file in this directory (without the dot)
2. Add a `link` line to `install.sh`
3. Run `./install.sh`
4. Commit and push

Example: to track your vim config:
```bash
# If you already have a .vimrc, move it here
mv ~/.vimrc ~/dotfiles/vimrc

# Or create a new one
touch ~/dotfiles/vimrc
```

Then add to install.sh:
```bash
link "$DOTFILES/vimrc" "$HOME/.vimrc"
```

## Local overrides

For machine-specific settings you don't want in git, use `~/.zshrc.local`. The zshrc sources it automatically if it exists.

## Common files to add later

| File | What it configures |
|------|--------------------|
| `vimrc` | Vim editor |
| `config/starship.toml` | Starship prompt (if you install it) |

## iTerm2 Configuration

iTerm2 stores preferences in binary plist files. For version control, you have a few options:

1. **Dynamic Profiles** (Recommended): Create JSON profiles in `~/Library/Application Support/iTerm2/DynamicProfiles/`
2. **Export Preferences**: iTerm2 → Preferences → General → Preferences → Load preferences from a custom folder
3. **Manual Export**: Export specific settings via iTerm2's export feature
