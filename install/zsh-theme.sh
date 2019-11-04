#!/bin/bash

dir=$(dirname $0)

if ! zsh --version; then
  echo "Install zsh and run $0"
	exit 1
fi

if [[ ! -d $HOME/.oh-my-zsh ]]; then
  echo 'Installing Oh My ZSH';
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

echo 'Installing themes'
cd $dir/../zsh/themes
fdir=$(pwd)
cd -
for file in $(find $fdir -type f); do
  if [[ -e $file ]]; then
    echo "Theme $file already exists. Skipping"
    continue
  fi
  target="$HOME/.oh-my-zsh/themes/$(basename $file)"
  echo "Creating symlink for $file"
  ln -s $file $target
done
