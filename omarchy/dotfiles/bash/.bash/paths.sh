# Simple path addition to add tools or custom binaries to PATH.
# Complex tool setup that requires more than one line is in tools.sh.
# This is sourced by .bashrc and should not be run directly.

export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/fvm/bin"
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/usr/local/go/bin
