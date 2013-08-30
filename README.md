DESCRIPTION
===============
Yet another .vimrc. - W.Wu

INSTALLATION
===============
How to reproduce this Vundle-based vi configuration on a new machine:

    [ -d ~/.vim ]  && mv ~/.vim ~/.vim.bak
    git clone https://github.com/themathpath/vimrc ~/.vim
    mkdir -p ~/.vim/bundle
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    [ -f ~/.vimrc ]  && mv ~/.vimrc ~/.vimrc.bak
    ln -s ~/.vim/.vimrc ~/.vimrc

Now open vi, press ENTER to skip the error message, and execute 

    :BundleInstall

