#!/bin/bash
############################################
# This script is to create soft symlinks
#from the home directory to any desired
#dotfiles in ${homedir}/dotfiles
############################################

############################################
#How to find the home directory?
#Try echo $HOME
############################################

if [ "$#" -ne 1 ]
then
  echo "Invalid usage!!"
  echo "Usage: setup.sh <home_directory>"
  exit 1
fi

homedir=$1

#dot files directory
dotfilesdir=${homedir}/dotfiles

#list of files in this folder
files="zshrc"

#changing to the dotfiles directory
echo "Switching to the dotfiles directory..."
cd ${dotfilesdir}
echo "Witched!"

for file in ${files};
do
  echo "Creating symlink to ${file} in home directory"
  # ln -sf /${dotfilesdir}/.${file} /${homedir}/.${file}
  ln -sf ${dotfilesdir}/.{$file} ${homedir}/.{$file}
  source ${homedir}/.{$file}
done

#run the brew.sh script to download items from homebrew.
echo "====================================================="
echo "Dowloading stuff from homebrew...."
./brew.sh
echo "=====================DONE============================="
