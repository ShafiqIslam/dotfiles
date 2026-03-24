#!/usr/bin/env bash
set -euo pipefail

ANDROID_SDK_ROOT="$HOME/Android/sdk"
mkdir -p "$ANDROID_SDK_ROOT/cmdline-tools"
mkdir -p "$ANDROID_SDK_ROOT/platform-tools"

# Download cmdline-tools if not already
if [ ! -d "$ANDROID_SDK_ROOT/cmdline-tools/latest" ]; then
  echo "Downloading Android command-line tools..."
  cd /tmp
  wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip -O cmdline-tools.zip
  unzip cmdline-tools.zip
  mkdir -p "$ANDROID_SDK_ROOT/cmdline-tools/latest"
  mv cmdline-tools/* "$ANDROID_SDK_ROOT/cmdline-tools/latest/"
  rm -rf cmdline-tools cmdline-tools.zip
fi

# Add to PATH temporarily, permanent addition is in dotfiles/.bash/tools.sh
export PATH="$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/platform-tools:$PATH"

# Accept licenses
yes | sdkmanager --licenses

# Install required SDK platforms & build-tools
sdkmanager --install \
  "platform-tools" \
  "platforms;android-34" \
  "platforms;android-36" \
  "build-tools;34.0.0" \
  "build-tools;36.0.0" \
  "emulator" \
  "system-images;android-36;google_apis;x86_64"