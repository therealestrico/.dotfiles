#!/bin/bash

# Remove the .vimrc file in the user's home directory
rm ~/.vimrc

# Remove the line that sources a custom bashrc file from the .bashrc file in the user's home directory
sed -i '/source ~/.dotfiles/bashrc custom/d' ~/.bashrc  

# Remove the TRASH directory and all of its contents in the user's home directory
rm -r ~/.TRASH 

