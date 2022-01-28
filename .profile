# Import all bash configurations from dotfiles repo
# assumes you cloned the project in home dir.
if [ -d ~/.dotfiles/bash ]; then
    for f in ~/.dotfiles/bash
    do
        . $f
    done
fi

