# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="example"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git textmate)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/X11/bin
export USE_AMQP_CUSTOM_GEMS=1
export USE_JSUS_CUSTOM_GEMS=1
unsetopt auto_name_dirs

# Aliases
alias be="bundle exec"

# Keyboard bindings
stty erase ^H
bindkey "^[[3~" delete-char
# alias screen='screen -U'
# set meta-flag on
# set input-meta on
# set output-meta on
# set convert-meta off
alias rspec="nocorrect rspec"

compile_and_run() { cc $1.c -o $1 && ./$1 $2 $3 $4 $5 $6 $7 $8 $9 }
alias ccr="nocorrect compile_and_run"
# stty erase "^?"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.