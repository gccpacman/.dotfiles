export ZSH=$HOME/.oh-my-zsh
export ZSH_CACHE_DIR=$HOME/.tmp/zsh_cache

# powerline
#if [[ -r /usr/lib/python3.5/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#  source /usr/lib/python3.5/site-packages/powerline/bindings/zsh/powerline.zsh
#fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# Good theme bira with two command line
#ZSH_THEME="fino"
#ZSH_THEME="suvash"
#ZSH_THEME="ys"
#ZSH_THEME="jnrowe"
#ZSH_THEME="agnoster"
#ZSH_THEME="powerlevel9k/powerlevel9k"
# PowerLine
#ZSH_THEME="powerline"

ZSH_THEME="robbyrussell"

#POWERLINE_RIGHT_A_COLOR_FRONT="black"
#POWERLINE_RIGHT_A_COLOR_BACK="blue"
#POWERLINE_PATH="short"
#POWERLINE_DETECT_SSH="true"
#POWERLINE_HIDE_HOST_NAME="true"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
#DISABLE_AUTO_UPDATE="true"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras hub github web-search debian node npm history-substring-search zsh-syntax-highlighting sublime themes)

# https://github.com/zsh-users/zsh-completions
plugins+=(zsh-completions)
autoload -U compinit && compinit

# User configuration

# export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:"
# export MANPATH="/usr/local/man:$MANPATH"

export PATH="$HOME/bin:$HOME/.local/bin:$HOME/go/bin:/usr/local/heroku/bin:$PATH"
export EDITOR='vim'

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

### Do some git alias
source ~/.bash_aliases

# not install tmuxinator yet, commented
# source #HOME/.tmuxinator.zsh

# Golang Configuation
#plugins+=(golang)
export GOPATH=$HOME/go

# Python Configuation
export WORKON_HOME=~/Virtualenvs
source virtualenvwrapper.sh

plugins+=(virtualenvwrapper pip)
if [ -n "$VIRTUAL_ENV" ]; then
  . "$VIRTUAL_ENV/bin/activate"
fi

# Ruby Configuation
#plugins+=(rake rails bundler ruby)
export GEM_HOME=$(ruby -e 'print Gem.user_dir')
export PATH="$GEM_HOME/bin:$PATH"

# Path to your oh-my-zsh installation.
source $ZSH/oh-my-zsh.sh

