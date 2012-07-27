# Load zsh modules
autoload -U colors
colors

# Add some color to the terminal
export TERM="xterm-color"
alias ls="ls -G"
export GREP_OPTIONS="--color"

# Make `stat` readable
alias stat="stat -f '%Sp %z bytes %N%SY%n%tAcc %Sa - Mod %Sm' -t '%Y %b %d %H:%M'"

# I like history
export HISTSIZE=10000
export HISTFILE="$HOME/.zsh-history"
export SAVEHIST=$HISTSIZE

# Set up the PATH
export PATH=$PATH:/usr/games:~/bin/

# Variable prompt. If $CUSTOM_PROMPT is set, it is used. If not, the "default"
# prompt I like is used.
setopt prompt_subst
if [ $PROMPT_CUSTOM ]; then
	PROMPT="$PROMPT_CUSTOM"
else
	# Set up the prompt as the following, with "mbp:" dark but bold
	# mbp:path-2/path-1% 
	if [ ! $PROMPT_GREY ]; then
		PROMPT_GREY=mbp
	fi
	PROMPT="%{$fg_bold[grey]%}$PROMPT_GREY:%{$reset_color%}%2d%% "
fi

# Keybindings
bindkey '^h' backward-word
bindkey '^l' forward-word

# Load RVM
[[ -s "/Users/hr4dish/.rvm/scripts/rvm" ]] && source "/Users/hr4dish/.rvm/scripts/rvm"
