#!/bin/bash 
dir=$(echo $PWD)
old=~/dotfiles_old

files=".vimrc .vim .tmux.conf .Xresources .xsessionrc .xmonad .xmobarrc"

if [! -d $old]; then
    echo "Creating backup directory for any existing dotfiles."
    mkdir -p $old
fi

cd $dir

# move any existing dotfiles in ~ to dotfiles_old
# and symlink new dotfiles
for file in $files; do

    if [ ! -e ~/$file ]; then
        echo "No $file dotfile found in home directory."
    else

        if [ -L ~/$file ]; then       # symlink
            echo "Removing existing '$file' symlink." 
            rm ~/$file
        else
            echo "Moving '$file' to $old."
            mv ~/$file $old/            # file or dir
        fi
    fi

    echo "Creating symlink to '$file' in home directory."
    ln -s $dir/$file ~/$file

    echo 
#    echo $file | sed -e "s/\(.*\)\(.symlink\)/\1/" 
done


echo "Finished."


