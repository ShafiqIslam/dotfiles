#!/usr/bin/env bash
set -euo pipefail


echo "Installing cz..."
curl -fsSL https://raw.githubusercontent.com/ShafiqIslam/cz-convention/main/install.sh | bash

echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.6/install.sh | bash

echo "Installing FVM..."
curl -fsSL https://fvm.app/install.sh | bash