#!/bin/zsh

DOTFILES_DIR=~/dotfiles

cd $DOTFILES_DIR

if [ $? -ne 0 ]; then
    echo "Error: Failed to navigate to $DOTFILES_DIR."
    exit 1
fi


if [ -f "Brewfile" ]; then
  rm Brewfile
  if [ $? -ne 0 ]; then 
    echo "Error: Failed to remove existing Brewfile."
    exit 1
  fi 
fi 

brew bundle dump
if [ $? -ne 0 ]; then
    echo "Error: Failed to create new Brewfile."
    exit 1
fi

echo "# Brewfile updated on $(date)" >> Brewfile
echo "Brewfile has been successfully updated."




