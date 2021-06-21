#!/bin/bash -ex

dir=$(dirname $0)

cd $dir/../vim
cdir=$(pwd)
cd -
vimConfigDir="$HOME/.vim"

mkdir -p $vimConfigDir/bundle

echo "VIM Config Files"
echo "=============================="
for k in coc-settings.json config; do
  target="$vimConfigDir/$k"
  if [[ -e $target ]]; then
    echo "~${target} already exists... Skipping"
    continue
  fi
  ln -s $cdir/$k $target
done

#install plugins
#===================
if [[ ! -e $vimConfigDir/autoload/plug.vim ]]; then
  # git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
vim -u $cdir/vimrc.onlyplugins.vim +'PlugInstall --sync' +qall
#===================
#end install plugins
