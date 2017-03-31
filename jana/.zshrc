ZSH_THEME="jana-pure"
mpddev="jmckinnon@164.82.7.2"

export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
export ZSH=/Users/jmckinnon/.oh-my-zsh
export MANPATH="/usr/local/man:/usr/local/coreutils/libexec/gnuman:$MANPATH"
export EDITOR='vim'

alias cat="pygmentize -g -O style=colorful,linenos=1"
alias cl="clear"
alias ll="gls -la --color=always"
alias lha="gls -lhat --color=always"
alias cdd="cd ~/Documents"
alias starwars="telnet towel.blinkenlights.nl"
alias docs="cd /Users/jmckinnon/Documents"
alias home="cd ~"
alias mpd="ssh $mpddev"
alias dcilocal="ssh jmckinnon@source.dcilocal.com"
alias dpass="grep -n \"password\" ~/Documents/cch-test/dataloader.properties"
alias dhosts="grep -n \"hostname\" ~/Documents/cch-test/dataloader.properties"
alias dname="grep -n \"databasename\" ~/Documents/cch-test/dataloader.properties"
alias ggrep="grep"
alias cp="cp -r"
alias scp="scp -r"

bindkey "${terminfo[kend]}" end-of-line
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kdch1]}" delete-char

plugins=(gnu-utils git svn-fast-info vi-mode svn svn-fast-info)
source $ZSH/oh-my-zsh.sh

function expand-dots() {
    local MATCH
    if [[ $LBUFFER =~ '\.\.\.+' ]]; then
        LBUFFER=$LBUFFER:fs%\.\.\.%../..%
    fi
}
function expand-dots-then-expand-or-complete() {
    zle expand-dots
    zle expand-or-complete
}
function expand-dots-then-accept-line() {
    zle expand-dots
    zle accept-line
}
zle -N expand-dots
zle -N expand-dots-then-expand-or-complete
zle -N expand-dots-then-accept-line
bindkey '^I' expand-dots-then-expand-or-complete
bindkey '^M' expand-dots-then-accept-line

COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
# Uncomment the following line if you want to disable marking untracked files
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
# export LANG=en_US.UTF-8
