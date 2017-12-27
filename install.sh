#!/bin/bash -ue


target=~/bin

while getopts hsc o
do
  case $o in
    s)
    target=/usr/local/bin ;;
    c)
    target="$OPTARG"
    [[ -d "${target}" ]] || { echo "Target directory ${target} does not exist - please create before continuing"; exit 1; }
    ;;
  esac
done
shift $(($OPTIND-1))

# symlink method - default
ln -s $( dirname ${0} )/termite-colorswitcher ${target}/termite-colorswitcher
