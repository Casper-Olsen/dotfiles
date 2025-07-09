# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# thefuck
# WSL workaround for Windows path issues. See: https://github.com/microsoft/WSL/issues/1640#issuecomment-616887435
# Add the following to /etc/wsl.conf to prevent Windows paths from being appended:
#   [interop]
#   appendWindowsPath = false
eval $(thefuck --alias)

# fzf
source <(fzf --zsh)

# bun completions
[ -s "/home/casper/.bun/_bun" ] && source "/home/casper/.bun/_bun"
