#!/bin/bash

# Get the first argument as the uname variable
uname=$1

# Ask the user what their operating system is
echo "REP --> What is your operation system?"

# Check if the operating system is Linux
if [ $1 ! "Linux"]; then   # Error: There should be a space before the closing bracket and after the "!" operator
         echo "Error: Operating system type is not Linux. Ending program... ">> ~/linuxsetup.log
         exit
fi

# Create a directory called TRASH in the user's home directory
mkdir -p ~/.TRASH   # Troubleshooting: Use the "-p" option to avoid an error if the directory already exists

# Check if the .vimrc file exists in the user's home directory, and if it does, rename it and log the change
if [ -e ~/.vimrc ]; then
    mv ~/.vimrc ~/.bup\ vimrc
    echo "The current .vimrc file was changed to '.bup vimrc'" >> ~/linuxsetup.log
fi

# Overwrite the contents of the .vimrc file in the user's home directory with the contents of /etc/vimrc
sudo cat /etc/vimrc > ~/.vimrc

# Add a line to source a custom bash configuration file to the end of the .bashrc file in the user's home directory
echo "source ~/.dotfiles/etc/bashrc custom" >> ~/.bashrc

