# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
[[ -f /usr/local/opt/fzf/shell/key-bindings.zsh ]] && source "/usr/local/opt/fzf/shell/key-bindings.zsh"

[[ -f /usr/share/fzf/shell/key-bindings.zsh ]] && source "/usr/share/fzf/shell/key-bindings.zsh"