## Install all the dotfiles

## Bash
# Include .profile
if [ -f ~/.bashrc ] && [ $(grep -c "^##Bash profiles$" ~/.bashrc) -eq 0 ];
then
    echo 'Building bash profile';
    ~/.dotfiles/build_profile.sh;

    echo 'Including profiles in .bashrc'    
    echo '##Bash profiles' >> ~/.bashrc;
    # Assumes .dotfiles are in home dir
    echo '. ~/.dotfiles/.profile_build' >> ~/.bashrc;
    echo '' >> ~/.bashrc
else
    echo 'Bash profile skipped'
fi

## Git
if [ ! -f ~/.gitconfig ]
then
    echo "Adding .gitconfig";
    cp ~/.dotfiles/git/.gitconfig ~/;
else
    echo ".gitconfig skipped";
fi

if [ ! -f ~/.gitignore_global ]
then
    echo "Adding .gitignore_global";
    cp ~/.dotfiles/git/.gitignore_global ~/;
else
    echo ".gitignore_global skipped";
fi
