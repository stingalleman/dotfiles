#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  ln -srfvi config/fish/ ~/.config
  ln -srfvi config/starship.toml ~/.config
elif [[ "$OSTYPE" == "darwin"* ]]; then
  ln -sfvi ~/.dotfiles/config/fish/ ~/.config/fish
  ln -sfvi ~/.dotfiles/config/starship.toml ~/.config/starship.toml
else
  echo "UNSUPPORTED OS!! ($OSTYPE)"
fi

echo "Syslinked dotfiles"
