# enable vi mod in bash
set -o vi

# Add bin director to Path
export PATH="$PATH:~/bin"

# Load Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
# Restart your shell for the changes to take effect.
# Load pyenv-virtualenv automatically by adding
# the following to ~/.bashrc:
eval "$(pyenv virtualenv-init -)"
# Direnv setup
eval "$(direnv hook bash)"

# init starship
eval "$(starship init bash)"
