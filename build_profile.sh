#!/bin/bash

BUILD_FILE="$HOME/.dotfiles/.profile_build"

# Backup previous build
if [ -f $BUILD_FILE ]
then
    cp ~/.dotfiles/.profile_build ~/.dotfiles/.profile_build_backup;
fi

echo "" > $BUILD_FILE
# Import all bash configurations from dotfiles repo
# assumes you cloned the project in home dir.
if [ -d ~/.dotfiles/bash ]; then
    # Cover hidden files with *
    shopt -s dotglob
    for f in ~/.dotfiles/bash/*
    do
        if [ -f $f ]
	then
	    cat $f >> "$BUILD_FILE";
	    echo "" >> "$BUILD_FILE";
	fi
    done
fi

