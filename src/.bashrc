# http://research.libd.org/rstatsclub/post/edit-your-bashrc-file-for-a-nicer-terminal-experience/#.YNBYDWhKhPY
# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# http://www.biostat.jhsph.edu/~afisher/ComputingClub/webfiles/KasperHansenPres/IntermediateUnix.pdf
# https://unix.stackexchange.com/questions/48713/how-can-i-remove-duplicates-in-my-bash-history-preserving-order
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=10000
shopt -s histappend
shopt -s cmdhist

# Auto-complete command from history
# http://lindesk.com/2009/04/customize-terminal-configuration-setting-bash-cli-power-user/
export INPUTRC=~/.inputrc

# http://superuser.com/questions/384769/alias-rm-rm-i-considered-harmful
alias rmi='rm -i'

# Change command prompt
# http://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html
# http://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
# https://bbs.archlinux.org/viewtopic.php?id=48910
# previous in enigma2: "[\u@\h \W]\$ "
# previously in mac: "\h:\W \u\$ "
export PS1="\[\e[0;33m\]\A \W \$ \[\e[m\]"


# colors
# http://norbauer.com/notebooks/code/notes/ls-colors-and-terminal-app
# used BSD pattern ExGxFxDxBxEgEdxbxgxhxd on http://geoff.greer.fm/lscolors/
# that tool does not specify the colors, which I did by looking manually at
# http://blog.twistedcode.org/2008/04/lscolors-explained.html
# and the norbauer.com site previously mentioned
alias ls="ls --color=auto"
#export LS_COLORS="di=1;34;40:ln=1;36;40:so=1;35;40:pi=1;93;40:ex=1;31;40:bd=1;34;46:cd=1;34;43:su=0;41:sg=0;46:tw=0;47:ow=0;43"
## After switching to RStudio:
# https://askubuntu.com/questions/466198/how-do-i-change-the-color-for-directories-with-ls-in-the-console
export LS_COLORS="di=0;32:ln=0;36:so=0;35:pi=0;93:ex=0;31:bd=0;34;46:cd=0;34;43:su=0;41:sg=0;46:tw=0;47:ow=0;43:fi=0;33"

alias c='clear'

alias gs='git status'

gpush(){
	git add . && git commit -m "$1" && git push
}

alias x='exit'

alias seagull='cd d: && cd AngularProjects && cd seagull'

createng() {
	ng new "$1" --prefix "$1" --routing --skip-git --style scss
}