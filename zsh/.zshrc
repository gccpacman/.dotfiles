# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/teotfw/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# aliases
alias code="/usr/bin/code-insiders"
alias tmux-wsl="tmux new -A -s wsl"

# environment variables
DISPLAY=:0
GOPATH="/usr/local/go"
PATH="$HOME/bin:$GOPATH/bin:$HOME/go/bin:$HOME/.local/bin:$PATH"

# docker-machine env
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.99.100:2376
export DOCKER_CERT_PATH="/home/teotfw/winhome/.docker/machine/machines/default"
export DOCKER_MACHINE_NAME=default

# colors
eval `dircolors $HOME/.dircolors`

# Shell Title
look_for_cmd=0
print_cmd() {
  if [ ${look_for_cmd} = 1 ] ;then
    if [ "${BASH_COMMAND}" != 'print_host' ] ;then
      cmdline=$(history 1 | xargs | cut -d\  -f3-)
      if [[ "${cmdline}" =~ ^(sudo|ssh|vi|man|more|less)\  ]] ;then
        first=$(echo "${cmdline}" | awk '{print $1}')
        for i in ${cmdline} ;do
          if ! [[ "${i}" =~ ^-.*$ ]] && ! [[ "${i}" =~ ^${first}$ ]] ;then
            cmd="${first}[${i}]"
            break
          fi
        done
      elif [[ "${cmdline}" =~ ^[A-Z]*=.*$ ]] ;then
        cmd=$(echo ${cmdline} | awk '{print $2}')
      else
        cmd=$(echo ${cmdline} | awk '{print $1}')
      fi
      echo -ne "\033k${cmd}\033\\" 1>&2
      look_for_cmd=0
    else
      return
    fi
  fi
}
print_host() {
  echo -ne "\033k${HOSTNAME}\033\\" 1>&2
  look_for_cmd=1
}
PROMPT_COMMAND="print_host"
trap "print_cmd" DEBUG

# go to home directory
if [ -t 1 ]; then
  cd ~
fi
