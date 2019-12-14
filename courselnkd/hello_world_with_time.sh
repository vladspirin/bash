#!/bin/bash

# Standard Greeting
echo 'Hello, World!'

# print current date and time
echo 'Today is:'
date

# Create an empty text file on the current users desktop
touch ~/Desktop/mytextfile.txt
# Copy the emty text file to another folder
cp "~/Desktop/mytextfile.txt" ~/Documents/Exercise\ Files/

# print current date and time in Unix epoch (seconds since Jan 1, 1970)
echo -n 'Unix Epoch Time: '
#- n : don't print newline at end date +'%s'
# formating string for unix epoch, see man page for detail

