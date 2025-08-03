# Setup fzf
# ---------
if [[ ! "$PATH" == */home/vladwb/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/vladwb/.fzf/bin"
fi

eval "$(fzf --bash)"
