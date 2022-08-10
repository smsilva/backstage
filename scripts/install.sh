#!/bin/bash
NODE_VERSION="v16.16.0"

# Prerequisites
# https://backstage.io/docs/getting-started/#prerequisites

# Installing nvm
# https://github.com/nvm-sh/nvm#install--update-script

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

nvm ls

nvm install ${NODE_VERSION?}

nvm alias default ${NODE_VERSION?}

# Install via npm
npm install --location=global yarn

# Create your Backstage App
# https://backstage.io/docs/getting-started/#create-your-backstage-app

npx @backstage/create-app

# Run the Backstage app
# https://backstage.io/docs/getting-started/#run-the-backstage-app

cd backstage

yarn dev

# http://localhost:3000
