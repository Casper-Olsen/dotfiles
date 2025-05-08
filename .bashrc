env=~/.ssh/agent.en

agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

agent_start () {
    (umask 077; ssh-agent >| "$env")
    . "$env" >| /dev/null ; }

agent_load_env

# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2=agent not running
agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
    agent_start
    ssh-add
elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
    ssh-add
fi

unset env

# Alias
alias vim='nvim'

# Oh my posh
eval "$(oh-my-posh init bash --config ~/.poshthemes/rudolfs-dark.omp.json)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# fzf
cdf() {
  local dir
  dir=$(find . -type d -not -path '*/\.*' 2> NUL | fzf) && cd "$dir"
}
