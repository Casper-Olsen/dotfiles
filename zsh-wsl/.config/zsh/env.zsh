# Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH=$PATH:/snap/bin
export PATH="/opt/nvim/nvim-linux64/bin:$PATH"

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$HOME/.dotnet:$PATH

# opencode
export PATH=/home/casper/.opencode/bin:$PATH

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Set file descriptor limit
ulimit -n 65536
