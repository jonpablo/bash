#
# Colorful prompt. Very nice.
#
at1="\[\033[01;38;5;250m\]@"
na1="\[\033[01;38;5;215m\]\h"
co1="\[\033[01;38;5;250m\]:"
cd1="\[\033[01;38;5;088m\]\w"
ds1="\[\033[01;38;5;250m\]$"
loc="$at1$na1$co1$cd1$ds1"

if [ "$USER" = "jonathon" ]; then
    jj1="\[\033[01;38;5;088m\]j"
    oo1="\[\033[01;38;5;124m\]o"
    nn1="\[\033[01;38;5;196m\]n"
    aa1="\[\033[01;38;5;202m\]a"
    tt1="\[\033[01;38;5;208m\]t"
    hh1="\[\033[01;38;5;214m\]h"
    oo2="\[\033[01;38;5;220m\]o"
    nn2="\[\033[01;38;5;226m\]n"
    __user_and_host="$jj1$oo1$nn1$aa1$tt1$hh1$oo2$nn2$loc"
elif [ "$USER" = "root" ]; then
    __user_and_host="\[\033[01;31;40m\][\[\033[00;37;41m\]root\[\033[01;31;40m\]]$loc"
else
    __user_and_host="\[\033[01;38;5;215m\]\u$loc"
fi

export PS1="$__user_and_host"

#
# Fix stupid folder colors when running under Windows.
#
LS_COLORS=$LS_COLORS:'di=1;35:ow=00;35' ; export LS_COLORS

#
# My aliases.
#
alias a='source ~/.bashrc'
alias b=nano
alias qa='b ~/.bash_aliases'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias ..=cd..
alias ...=cd...
alias ....=cd....
alias .....=cd.....
alias d=ls
alias dir='ls -al'
alias cls=clear
alias shocol='for x in {0..8}; do for i in {30..37}; do for a in {40..47}; do echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "; done; echo; done; done; echo ""'

nd() {
    mkdir $1 && cd $1
}
