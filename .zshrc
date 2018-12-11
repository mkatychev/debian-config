# If you come from bash you might have to change your $PATH.
export PATH=~/.symlinks:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/$GOPATH/bin:$PATH
export RUSTUP_HOME=~/.rustup
export CARGO_HOME=~/.cargo
export GOPATH=~/.go

export doc=~/Documents
export dl=~/Downloads
export cfg=~/.config
export rs=~/Documents/rust/
export py=~/Documents/python/

# Path to your oh-my-zsh installation.
export ZSH=/$HOME/.oh-my-zsh
export ZSH_THEME="node"
export ZSH_DISABLE_COMPFIX=true
# Set name of the theme to load. Optionally, if you set this to "random"
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# https://github.com/pkulev/zsh-rustup-completion
plugins=(git rustup)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
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
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# PYTHON PATHS
alias pipup="pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"
# export PATH="$(brew --prefix python)/libexec/bin:$(brew --prefix)/opt/gdal2/bin:$(brew --prefix)/bin:$PATH"
# export VIRTUALENVWRAPPER_PYTHON=`which python`
# source `which virtualenvwrapper.sh`
# export PATH="/usr/local/opt/python@2/bin:$PATH"
# export PYTHONPATH="/usr/local/lib/python3.6/site-packages"
# filepath aliasing
alias cdp="~/Documents/python/"
alias cdr="~/Documents/rust/"
alias cdn="~/Documents/notes/"
alias cdg="~/Documents/go"
alias gitconf="(mv ~/.git ~/.got || mv ~/.got ~/.git) 2> /dev/null"
alias batt="BAT_PAGER=~/.config/usr_tools/bat_pager.sh bat"

# initialize theme
bindkey ^v vi-cmd-mode
