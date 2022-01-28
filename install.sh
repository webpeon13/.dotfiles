## Install all the dotfiles

##Bash

# Include .profile
if [ -f ~/.bashrc ] && [ $(grep -c "^##Bash profiles$" ~/.bashrc) -eq 0 ];
then
    echo 'Installing bash profiles'	
    echo '##Bash profiles' >> ~/.bashrc;
    # Assumes .dotfiles are in home dir
    echo '. ~/.dotfiles/.profile' >> ~/.bashrc;
    echo '' >> ~/.bashrc
else
    echo 'Bash profile skipped'
fi
