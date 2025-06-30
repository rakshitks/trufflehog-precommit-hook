#!/bin/bash

# Installing pre-commit to detect secrets while committing code
pip3 install pre-commit

# Setting up git hooks directory
mkdir -p ~/.git/hooks

# Copying required pre-commit hooks to destination
cp pre-commit ~/.git/hooks/

# Copying pre-commit hooks configuration file to the destination
cp .pre-commit-config.yaml ~/.git/hooks/

# Updating the permissions to pre-commit hooks
chmod a+x ~/.git/hooks/*

# Setting up global configuration of githooks
git config --global core.hookspath ~/.git/hooks

#installing trufflehog tool
#brew install trufflehog
curl -sSfL https://raw.githubusercontent.com/trufflesecurity/trufflehog/main/scripts/install.sh | sh -s -- -b /usr/local/bin

echo "Pre-commit hooks have been installed and configured successfully."
