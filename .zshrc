# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ned/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

if [[ "$TERM" == "xterm-ghostty" ]]; then
    export TERM=xterm-256color
fi

# Begin add line between prompts
function precmd() {
    # Print a newline before the prompt, unless it's the
    # first prompt in the process.
    if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
        NEW_LINE_BEFORE_PROMPT=1
    elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
        echo ""
    fi
}
alias clear="unset NEW_LINE_BEFORE_PROMPT && clear"
# End add line between prompts

# Aliases
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'
alias ll='ls -la'

alias localip="ifconfig getifaddr en0" # or en1 - check your specific device
alias publicip="curl ifconfig.co/json"

# Plugins
source ~/.zsh/git-prompt.zsh/git-prompt.zsh
PROMPT='%{$fg[blue]%}%n%{$reset_color%}@%{$fg[blue]%}%m%  %{$fg[cyan]%}%~%{$reset_color%} $(gitprompt)'
PROMPT+='%(?.%(!.%F{white}❯%F{yellow}❯%F{red}.%F{blue}❯%F{cyan}❯%F{green})❯.%F{red}❯❯❯)%f '
RPROMPT=''

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
