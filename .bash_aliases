#
# Colorful prompt. Very nice.
#
if [ "$USER" = "jonathon" ]; then
    jj1="\[\033[01;38;5;088m\]j"
    oo1="\[\033[01;38;5;124m\]o"
    nn1="\[\033[01;38;5;196m\]n"
    aa1="\[\033[01;38;5;202m\]a"
    tt1="\[\033[01;38;5;208m\]t"
    hh1="\[\033[01;38;5;214m\]h"
    oo2="\[\033[01;38;5;220m\]o"
    nn2="\[\033[01;38;5;226m\]n"
    at1="\[\033[01;38;5;250m\]@"
    na1="\[\033[01;38;5;215m\]\h"
    co1="\[\033[01;38;5;250m\]:"
    cd1="\[\033[01;38;5;088m\]\w"
    ds1="\[\033[01;38;5;250m\]$"

    __user_and_host="$jj1$oo1$nn1$aa1$tt1$hh1$oo2$nn2$at1$na1$co1$cd1$ds1"
else
    __user_and_host="\[\033[01;36m\]\u"
fi

export PS1="$__user_and_host$__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color"

#
# Fix stupid blue folders.
#
LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

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

nd() {
    mkdir $1 && cd $1
}
