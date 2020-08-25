### oh-my-zsh default key-bindings
# Use emacs key bindings
bindkey -e

# [PageUp] - Up a line of history
bindkey '^[[5~' up-line-or-history
# [PageDown] - Down a line of history
bindkey '^[[6~' down-line-or-history
# Start typing + [Up-Arrow] - search backward
bindkey '^[[A' history-beginning-search-backward
# Start typing + [Down-Arrow] - search forward
bindkey '^[[B' history-beginning-search-forward
# [Home] - Go to beginning of line
bindkey '^[[H' beginning-of-line
# [End] - Go to end of line
bindkey '^[[F'  end-of-line

# [Shift-Tab] - move through the completion menu backwards
bindkey '^[[Z' reverse-menu-complete
# [Backspace] - delete backward
bindkey '^?' backward-delete-char
# [Delete] - delete forward
bindkey '^[[3~' delete-char
# [Ctrl-Delete] - delete whole forward-word
bindkey '^[[3;5~' kill-word
# [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5C' forward-word
# [Ctrl-LeftArrow] - move backward one word
bindkey '^[[1;5D' backward-word


bindkey '\ew' kill-region                             # [Esc-w] - Kill from the cursor to the mark
bindkey -s '\el' 'ls\n'                               # [Esc-l] - run command: ls
bindkey '^r' history-incremental-search-backward      # [Ctrl-r] - Search backward incrementally for a specified string. The string may begin with ^ to anchor the search to the beginning of the line.
bindkey ' ' magic-space                               # [Space] - don't do history expansion


# Edit the current command line in $EDITOR
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

# file rename magick
bindkey "^[m" copy-prev-shell-word
