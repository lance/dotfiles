#!/bin/sh
self=$(basename $0)

echo "installing in $HOME"
echo "WARNING: This will overwrite your personal config files"
echo "WARNING: Be sure this is what you want to do"
echo "Press CTL-C to abort"

read

for file in $(ls -a) ; do
  if [ $file == "." ] ; then
    continue
  fi
  if [ $file == ".." ] ; then
    continue
  fi
  if [ $file == $self ] ; then
    continue
  else
    if [ -f $HOME/$file ] ; then
      echo "replacing $HOME/$file"
      mv $HOME/$file $HOME/$file.dotfile.bak
    fi
    echo "installing $HOME/$file"
    ln -s $(realpath ${file}) $HOME/$file
  fi
done

