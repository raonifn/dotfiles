#!/bin/bash -e

dir=$(dirname $0)

$dir/install/01-links.sh
$dir/install/02-vim.sh

# $dir/install/zsh-theme.sh
