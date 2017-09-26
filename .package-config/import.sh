#!/bin/bash

cat ~/.package-config/brew | xargs brew install
cat ~/.package-config/brew-cask | xargs brew-cask install