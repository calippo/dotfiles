# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  vi-mode
  git
  bundler
  dotenv
  osx
  sbt
  scala
  rust
  cask
  docker
  node
  tmux
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

if [ -f ~/.zsh_aliases ]; then
  . ~/.zsh_aliases
fi

if [ -f ~/.zsh_alinity ]; then
  . ~/.zsh_alinity
fi

export TERM=xterm

export EDITOR="$VISUAL"
export ALTERNATE_EDITOR=""
export VISUAL="emacsclient -t"
export EDITOR="emacsclient -t"

# NODE version
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

nvm use v8.9.4 > /dev/null

export PATH="$HOME/bin:$PATH"

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

#Prevent closing the shell pressing C-d by mistake
set -o ignoreeof

#Security first
export DRONE_SERVER=http://drone.our.buildo.io
export DRONE_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZXh0IjoiY2FsaXBwbyIsInR5cGUiOiJ1c2VyIn0.9KVhjSXEPDrt1TL5_BGlPhGXckGi67U4dJWV4Hy_upA

alias lc='colorls -r'

function httpdump {
    if [[ $# < 2 ]] ; then
        echo usage: httpdump port interface;
    else
        dumpname=$1 ;
        tcpdump 'tcp port '$1' and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)' -i $2;
    fi ;
}

export ROAMER_EDITOR=vim
PATH=$(brew --prefix openssl)/bin:$PATH
export PATH="/usr/local/opt/libressl/bin:$PATH"
export PATH="/Users/cale/.cargo/bin:$PATH"
export PATH="/Users/cale/bin:$PATH"

#jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export PATH="/usr/local/share/emacs/site-lisp/cask:$PATH"
export PATH="/Applications/VMware Fusion.app/Contents/Library/VMware OVF Tool:$PATH"
export PATH="/Users/cale/Library/Python/3.6/bin:$PATH"
export PATH="$HOME/Library/Haskell/bin:$PATH"

export SBT_OPTS="-Xmx2G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=2G -Xss2M  -Duser.timezone=GMT"