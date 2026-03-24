# Tools setup that requires more than one line or 
# is more complex than a simple path addition.
# Simple path additions is in paths.sh.
# This is sourced by .bashrc and should not be run directly.

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 2>/dev/null # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ANDROID_SDK_ROOT="$HOME/Android/sdk"
export PATH="$ANDROID_SDK_ROOT/cmdline-tools/latest:$PATH"
export PATH="$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$PATH"
export PATH="$ANDROID_SDK_ROOT/platform-tools:$PATH"
export ANDROID_SDK="$ANDROID_SDK_ROOT"
export PATH="$ANDROID_SDK:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
SDKMAN_BIN="$SDKMAN_DIR/bin"
[[ -s "$SDKMAN_BIN/sdkman-init.sh" ]] && source "$SDKMAN_BIN/sdkman-init.sh"
