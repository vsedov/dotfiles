# Setup fzf
# ---------
if [[ ! "$PATH" == */home/viv/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/viv/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/viv/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/viv/.fzf/shell/key-bindings.bash"
