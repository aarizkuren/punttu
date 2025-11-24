# Punttu - Dotfiles

Personal development environment configuration for macOS with Zsh, Git, Neovim and more.

## Features

- **Zsh** with [Zim Framework](https://github.com/zimfw/zimfw) for a fast shell experience
- Custom prompt with **asciiship**
- **FZF** integration for fuzzy finding
- **Neovim** as default editor
- Advanced **Git** configuration with aliases and optimizations
- Package management with **Homebrew**
- Intelligent autocompletion and command suggestions
- Support for **nvm**, **pnpm** and other development tools

## Requirements

- macOS (Darwin)
- Terminal access
- Internet connection

> Note: Basic Linux (Debian) support is available, but the configuration is optimized for macOS.

## Installation

### Quick Install

1. **Clone the repository:**

```bash
cd ~
git clone https://github.com/aarizkuren/punttu.git
cd punttu
```

2. **Create environment file:**

```bash
touch .env
```

3. **Run the install script:**

```bash
chmod +x install
./install
```

The script will:
- Detect your operating system
- Create necessary directories (`~/.config`, `~/.local`, etc.)
- Install **Homebrew** if not present
- Configure **Git** with symlinks
- Install **Zim Framework** for Zsh
- Set up your shell with `.zshenv`

### Install Development Applications (Optional)

To install a complete set of development applications:

```bash
chmod +x os/osx/install_dev.sh
./os/osx/install_dev.sh
```

This installs browsers, terminals, editors (Cursor, VS Code, Neovim), Docker, Postman, database tools, and more.

## Using zimfw

### Installed Modules

This configuration includes the following Zim modules (defined in `shell/zsh/.zimrc`):

**Core Modules:**
- `environment` - Sensible Zsh environment options
- `git` - Useful Git aliases and functions
- `input` - Proper key bindings
- `termtitle` - Custom terminal title
- `utility` - Utility aliases and functions
- `fzf` - Fuzzy file and directory search
- `magic-enter` - Smart Enter key behavior
- `homebrew` - Homebrew aliases

**Prompt:**
- `duration-info` - Shows last command execution time
- `git-info` - Git repository status
- `asciiship` - Minimalist prompt based on Spaceship/Starship

**Completion:**
- `zsh-completions` - Additional completion definitions
- `completion` - Intelligent tab completion

**Enhanced Experience:**
- `zsh-syntax-highlighting` - Syntax highlighting while typing
- `zsh-history-substring-search` - History search with arrows
- `zsh-autosuggestions` - Automatic suggestions based on history
- `zsh-z` - Smart directory navigation (autojump)

### Useful Zim Commands

```bash
# Update Zim and all modules
zimfw update

# Install new modules after editing .zimrc
zimfw install

# View information about installed modules
zimfw info

# Uninstall modules no longer in .zimrc
zimfw uninstall

# Compile configuration for better performance
zimfw compile
```

### Adding New Modules

1. Edit the `.zimrc` file:
```bash
nvim ~/.config/zsh/.zimrc
```

2. Add the new module with `zmodule`:
```bash
# Official Zim module
zmodule archive

# GitHub module
zmodule sindresorhus/pure --source async.zsh --source pure.zsh
```

3. Install the module:
```bash
zimfw install
```
## Git Configuration

### Features

The included Git configuration provides:

- Default editor: Neovim
- Default branch: `main`
- Diff algorithm: Histogram (better for code)
- Auto-push: Automatically configures upstream
- Smart rebase: With autoSquash and autoStash
- Rerere enabled: Reuses conflict resolutions
- Auto-pruning: Cleans obsolete remote references
- Sorting: Branches by commit date, tags by version

### Private Configuration

The `git/config.local` file contains your personal information and should **not** be in the repository:

```bash
# Create your local configuration
nvim ~/.config/git/config.local
```

Example content:

```ini
[user]
    name = Your Name
    email = your.email@example.com

[github]
    user = your-github-username

[credential]
    helper = osxkeychain
    
[includeIf "gitdir:~/path/proyects/"]
    path = ~/.config/git/proyects
```

## Customization

### Add Custom Aliases

Add aliases in your `ZDOTDIR` (~/.config/zsh/.aliases):

```sh
# ~/.config/zsh/.aliases
alias gp='git pull'
alias gs='git status'
alias vim='nvim'
```

## Updating

To update your dotfiles:

```bash
cd ~/punttu
git pull origin main
./install
```

## Author

**Asier Arizkuren** - [@aarizkuren](https://github.com/aarizkuren)
