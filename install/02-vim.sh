#!/bin/bash -ex

dir=$(dirname $0)

cd $dir/../vim
cdir=$(pwd)
cd -

vimConfigDir="$HOME/.vim/config"

echo "VIM Config Files"
echo "=============================="
# for k in 'coc-settings.json config'; do
# done
if [[ -e $vimConfigDir ]]; then
  echo "Vim config already installed"
  exit 0
fi
ln -s $cdir/config $vimConfigDir
