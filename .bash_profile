####PERSONAL####
alias preview="fzf --preview 'bat --color \"always\" {}'"
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"

###alias###
alias ip="ifconfig | grep -Eo \"([0-9]{1,3}\.){3}[0-9]{1,3}\""
alias cat='bat'

##cd##
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

##git##
alias gb="git branch"
alias gs="git status"
alias gd="git diff"
alias ga="git add"

###load bashrc###
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi