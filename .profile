# jas
export HISTSIZE=2000

if [ "$(uname)" = "Darwin" ]; then
    alias ll='ls -l'
    alias l='ls -alh'
else
    export LS_OPTIONS='--color=auto'
    eval `dircolors`
    alias ls='ls $LS_OPTIONS'
    alias ll='ls $LS_OPTIONS -l'
    alias l='ls $LS_OPTIONS -alh'
fi

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cd..='cd ..'
alias c='cd -P'

alias rmd='rmdir'
alias md='mkdir -p'
alias untar='tar -zxf'

alias s='screen'
alias sl='screen -ls'
alias sr='screen -r'

alias dus='du -h -s *'
alias du.='du -h -s `pwd -P`'
alias du='du -h'
alias df='df -h'

alias wl='wc -l'
alias note="cat <<'' >> ~/note;echo '-----------------------------------' >> ~/note"
alias cal='cal -m'
alias cgrep='grep --color=always'

alias rmx='rm -rf'

alias defchmod664='chmod -R 664 . && find . -type d -exec chmod a+x {} \;'
alias defchmod644='chmod -R 644 . && find . -type d -exec chmod a+x {} \;'

alias wget="wget --trust-server-names"
alias vi='vim'
export EDITOR='/usr/bin/vim'

d="$HOME/.config/jas-profile"
h="$(hostname)"
s="$(basename $SHELL)"
test -f ${d}/.profile.${h} && . ${d}/.profile.${h}
test -f ${d}/.profile.${s} && . ${d}/.profile.${s}
test -f ${d}/.profile.${h}.${s} && . ${d}/.profile.${h}.${s}
true
