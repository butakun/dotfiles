set -o vi
bind -m vi-insert '"kj":vi-movement-mode'

alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'

lj() {
	jq -C . $* | less -R
}

# Prompt customization
politi_g="#D7E54A"
politi_b="#081D3A"
politi_b2="#1B2F49"
politi_b3="#2C4460"

blue1="#5dd5fb"
blue2="#1762f4"
blue3="#01105B"
yellow="#f1fa8c"
green="#50fa7b"
gray="#6272a4"
triangle='\ue0b0'
arrow='\u279c'

color_path_bg=$gray
color_path_fg="black"
color_venv_bg=$yellow
#color_path_bg=$blue2
#color_path_fg="white"
#color_venv_bg=$blue1

funciton virtualenv_name() {
	if [[ -n $VIRTUAL_ENV ]]; then
		venv=$(basename $VIRTUAL_ENV | sed -E 's/-py[0-9\.]+$//' | sed -E 's/^.+\/(.+)-[[:alnum:]]+$/\1/')
		echo "%K{$color_venv_bg}%F{black}$venv%k%F{$color_venv_bg}%K{$color_path_bg}\ue0b0"
	else
		echo "%F{black}%K{$color_path_bg}\ue0b0"
	fi
}

setopt PROMPT_SUBST
VIRTUAL_ENV_DISABLE_PROMPT=1
PS1=$'\$(virtualenv_name)%K{$color_path_bg}%F{$color_path_fg}%1~%F{$color_path_bg}%k\ue0b0 %f'
