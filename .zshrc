HISTFILE=~/.histfile
HISTSIZE=10000000000
SAVEHIST=10000000000
setopt HIST_FIND_NO_DUPS
setopt INC_APPEND_HISTORY

for file in ~/.zsh/**/*.zsh;source "$file"

zstyle :compinstall filename '/home/ben/.zshrc'
d="/home/ben/.zsh/dircolors"
eval "$(dircolors $d)"

autoload -Uz compinit promptinit complist
compinit
promptinit
prompt spaceship
source /usr/share/doc/pkgfile/command-not-found.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias icat='kitty +kitten icat'

man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

nv() {
    __NV_PRIME_RENDER_OFFLOAD='1' \
    __GLX_VENDOR_LIBRARY_NAME="nvidia" \
    __VK_LAYER_NV_optimus="NVIDIA_only" \
    command "$@"
}

export SPACESHIP_PROMPT_ADD_NEWLINE=false
export EDITOR="nano"

# Window title
precmd () {
    vcs_info
    print -Pn "\e]0;%n@%M\a"
}
preexec () { print -Pn "\e]0;$1\a" }
