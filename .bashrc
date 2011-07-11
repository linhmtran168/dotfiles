
# Check for an interactive session
[ -z "$PS1" ] && return
# Start tmux when start a terminal
[[ $TERM != "screen" ]] && tmux && exit

# Colors
txtblk='\e[0;30m' # Black - Regular  
txtred='\e[0;31m' # Red  
txtgrn='\e[0;32m' # Green  
txtylw='\e[0;33m' # Yellow  
txtblu='\e[0;34m' # Blue  
txtpur='\e[0;35m' # Purple  
txtcyn='\e[0;36m' # Cyan  
txtwht='\e[0;37m' # White  
  
bldblk='\e[1;30m' # Black - Bold  
bldred='\e[1;31m' # Red  
bldgrn='\e[1;32m' # Green  
bldylw='\e[1;33m' # Yellow  
bldblu='\e[1;34m' # Blue  
bldpur='\e[1;35m' # Purple  
bldcyn='\e[1;36m' # Cyan  
bldwht='\e[1;37m' # White  
  
unkblk='\e[4;30m' # Black - Underline  
undred='\e[4;31m' # Red  
undgrn='\e[4;32m' # Green  
undylw='\e[4;33m' # Yellow  
undblu='\e[4;34m' # Blue  
undpur='\e[4;35m' # Purple  
undcyn='\e[4;36m' # Cyan  
undwht='\e[4;37m' # White  
  
bakblk='\e[40m'   # Black - Background  
bakred='\e[41m'   # Red  
bakgrn='\e[42m'   # Green  
bakylw='\e[43m'   # Yellow  
bakblu='\e[44m'   # Blue  
bakpur='\e[45m'   # Purple  
bakcyn='\e[46m'   # Cyan  
bakwht='\e[47m'   # White  
  
txtrst='\e[0m'    # Text Reset 

# Print prompt function
print_prompt () {
    printf "\n$bldcyn%s@%s: $txtgrn%s $txtpur%s\n$txtrst" "$USER" "$HOSTNAME" "$PWD" "$(vcprompt)"
}

alias ls='ls --color=auto'
alias work='cd ~/D_Drive/Work/workspace'
alias course='cd ~/D_Drive/Work/Courses'

PROMPT_COMMAND=print_prompt
PS1='$ '

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export PATH=$HOME/local/node/bin:$PATH
export PATH="$HOME/Aptana Studio 3":$PATH
export PATH=$HOME/vcprompt:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
