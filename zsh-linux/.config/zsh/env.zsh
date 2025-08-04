# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# dotnet
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$HOME/.dotnet:$PATH

# vcpkg
export PATH=$PATH:$HOME/vcpkg
export VCPKG_ROOT=$HOME/vcpkg

# Set file descriptor limit
ulimit -n 65536
