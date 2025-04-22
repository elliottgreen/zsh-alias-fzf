# alias-fzf.plugin.zsh
#
# A lightweight Zsh plugin that lets you fuzzy-search and execute alias commands
# found in your ~/.aliases and ~/.zshrc files. This version limits the search scope
# to only those files and binds the action to Ctrl+0 by default.

# -----------------------------------------------------------------------------
# Main Function: alias-fzf
# -----------------------------------------------------------------------------
# This function reads alias definitions from ~/.aliases and ~/.zshrc,
# lets you fuzzy search using fzf, and executes the selected alias command.
alias-fzf() {
  # Use grep to extract alias definitions from ~/.aliases and ~/.zshrc
  # The '2>/dev/null' hides errors if one of the files does not exist
  grep '^alias ' ~/.aliases ~/.zshrc 2>/dev/null |
    fzf --ansi --preview "echo {}" | \
    sed -E 's/^alias[[:space:]]+[^=]+=.(.*).$/\1/' | \
    xargs -r eval
}

# -----------------------------------------------------------------------------
# Widget Function: alias_fzf_widget
# -----------------------------------------------------------------------------
# This wraps the alias-fzf function so it can be bound to a key using ZLE
alias_fzf_widget() {
  zle reset-prompt            # Clean up the prompt before drawing
  alias-fzf                   # Call the main function
}

# -----------------------------------------------------------------------------
# Safe ZLE Integration
# -----------------------------------------------------------------------------
# Only register the widget if ZLE is active (interactive shell)
# Bind it to Ctrl+0 (ASCII code 16 → ^P) for convenience.
if [[ -o zle ]]; then
  zle -N alias_fzf_widget         # Register as a ZLE widget
  bindkey '^[0' alias_fzf_widget   # Bind to Alt+0 (interpreted as ^P in many terminals)
fi
