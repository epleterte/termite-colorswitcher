#!/bin/bash -ue


target=~/bin
method="symlink"

function print_usage {
  cat <<EOF
Simple install script for termite-colorswitcher
Usage: ${0} [-hs] [-c <target directory>
  -h    This helpful text
  -c    Specify custom install path
  -C    Copy file instead of using default symlink method
  -s    Install system-wide (/usr/local/bin)
EOF
}

while getopts hsc: o
do
  case $o in
    h)
    print_usage ; exit ;;
    c)
    target="$OPTARG"
    [[ -d "${target}" ]] || { echo "Target directory ${target} does not exist - please create before continuing"; exit 1; }
    ;;
    C)
    method="copy" ;;
    s)
    target=/usr/local/bin ;;
  esac
done
shift $(($OPTIND-1))

case $method in
  "symlink")
  # symlink method - default
  ln -s $( dirname ${0} )/termite-colorswitcher ${target}/termite-colorswitcher
  ;;
  "copy")
  cp $( dirname ${0} )/termite-colorswitcher ${target}/termite-colorswitcher
  ;;
  *)
  echo "Unknown install method ${methpd} - bailing" ; exit 1
  ;;
esac

echo "termite-colorswitcher installed to ${target}/ using method ${method}"
