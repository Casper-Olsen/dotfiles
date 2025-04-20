# if you come from bash you might have to change your $path.
# export path=$home/bin:$home/.local/bin:/usr/local/bin:$path

# path to your oh my zsh installation.
export zsh="$home/.oh-my-zsh"

# see https://github.com/ohmyzsh/ohmyzsh/wiki/themes
zsh_theme="powerlevel10k/powerlevel10k"

# uncomment the following line to use case-sensitive completion.
# case_sensitive="true"

# uncomment the following line to use hyphen-insensitive completion.
# case-sensitive completion must be off. _ and - will be interchangeable.
# hyphen_insensitive="true"

# uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# uncomment the following line if pasting urls and other text is messed up.
# disable_magic_functions="true"

# uncomment the following line to disable colors in ls.
# disable_ls_colors="true"

# uncomment the following line to disable auto-setting terminal title.
# disable_auto_title="true"

# uncomment the following line to enable command auto-correction.
# enable_correction="true"

# uncomment the following line to display red dots whilst waiting for completion.
# you can also set it to another string to have that shown instead of the default red dots.
# e.g. completion_waiting_dots="%f{yellow}waiting...%f"
# caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# completion_waiting_dots="true"

# uncomment the following line if you want to disable marking untracked files
# under vcs as dirty. this makes repository status check for large repositories
# much, much faster.
# disable_untracked_files_dirty="true"

# uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# you can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# hist_stamps="mm/dd/yyyy"

# would you like to use another custom folder than $zsh/custom?
# zsh_custom=/path/to/new-custom-folder

# which plugins would you like to load?
# standard plugins can be found in $zsh/plugins/
# custom plugins may be added to $zsh_custom/plugins/
# example format: plugins=(rails git textmate ruby lighthouse)
# add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $zsh/oh-my-zsh.sh

# user configuration

# export manpath="/usr/local/man:$manpath"

# you may need to manually set your language environment
# export lang=en_us.utf-8

# preferred editor for local and remote sessions
if [[ -n $ssh_connection ]]; then
  export editor='vim'
else
  export editor='nvim'
fi

# compilation flags
# export archflags="-arch $(uname -m)"

# set personal aliases, overriding those provided by oh my zsh libs,
# plugins, and themes. aliases can be placed here, though oh my zsh
# users are encouraged to define aliases within a top-level file in
# the $zsh_custom folder, with .zsh extension. examples:
# - $zsh_custom/aliases.zsh
# - $zsh_custom/macos.zsh
# for a full list of active aliases, run `alias`.
#
# example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vim="nvim"
