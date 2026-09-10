#!/usr/bin/env bash
set -euo pipefail


echo "Installing cz..."
curl -fsSL https://raw.githubusercontent.com/ShafiqIslam/cz-convention/main/install.sh | bash

echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.6/install.sh | bash

echo "Installing FVM..."
curl -fsSL https://fvm.app/install.sh | bash

echo "Installing Claude Code..."
curl -fsSL https://claude.ai/install.sh | bash

echo "Installing Herdr..."
curl -fsSL https://herdr.dev/install.sh | sh

echo "Installing PI..."
curl -fsSL https://pi.dev/install.sh | sh

echo "Installing Krew..."
(
  set -x; cd "$(mktemp -d)" &&
  OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
  ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
  KREW="krew-${OS}_${ARCH}" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
  tar zxvf "${KREW}.tar.gz" &&
  ./"${KREW}" install krew
)