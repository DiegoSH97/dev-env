# Path to your oh-my-zsh installation.
export ZSH="/home/diegos/.oh-my-zsh"
export XDEBUG_CONFIG="idekey=VSCODE"
#Theme
ZSH_THEME="robbyrussell"

#Plugins
plugins=(git docker docker-compose docker-machine composer laravel homestead vagrant tmux)

#NVM
export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Uses the zsh precmd function hook to set the tab title to the current working directory before each prompt
function precmd () {
    window_title="\\033]0;${PWD##*/}\\007"
    echo -ne "$window_title"
}

# Allow the use of the z plugin to easily navigate directories
. /usr/local/etc/profile.d/z.sh

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi


# Z function 
fpath=($fpath "/home/diegos/.zfunctions")

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship
source /home/diegos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -U add-zsh-hook

load-nvmrc() {
    local node_version="$(nvm version)" # Current node version
    local nvmrc_path="$(nvm_find_nvmrc)" # Path to the .nvmrc file

    # Check if there exists a .nvmrc file
    if [ -n "$nvmrc_path" ]; then
	local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    # Check if the node version in .nvmrc is installed on the computer
    if [ "$nvmrc_node_version" = "N/A" ]; then

        # Install the node version in .nvmrc on the computer and switch to that node version
        nvm install

    # Check if the current node version matches the version in .nvmrc
    elif [ "$nvmrc_node_version" != "$node_version" ]; then

        # Switch node versions
        nvm use
    fi

    # If there isn't an .nvmrc make sure to set the current node version to the default node version
    elif [ "$node_version" != "$(nvm version default)" ]; then

	echo "Reverting to nvm default version"
	nvm use default
    fi
}

# Add the above function when the present working directory (pwd) changes
add-zsh-hook chpwd load-nvmrc
load-nvmrc

#Colors
#source $(dirname $(gem which colorls))/tab_complete.sh

#Alias
alias c="clear"
alias update="source ~/.zshrc"
alias l="colorls --group-directories-first --almost-all"
alias ll="colorls --group-directories-first --almost-all --long"
alias ls="colorls -h --group-directories-first -1"
alias n="nvim ." 

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
