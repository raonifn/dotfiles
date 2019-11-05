#!/bin/bash

dir=$(dirname $0)
cd $dir/..
fdir=$(pwd)
cd -

echo "Symlinks"
echo "=============================="
for file in $(find $fdir -type f -name '*.symlink'); do
  target="$HOME/.$(basename $file '.symlink')"
  if [[ -e $target ]]; then
    echo "~${target#$HOME} already exists... Skipping"
    continue
  fi
  echo "Creating symlink for $file"
  ln -s $file $target
done

