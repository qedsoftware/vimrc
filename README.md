DESCRIPTION
===============
Yet another .vimrc. - W.Wu

INSTALLATION
===============
Requirements: vim, ctags

    sudo apt-get install vim
    sudo apt-get install exuberant-ctags

How to reproduce this Vundle-based vi configuration on a new machine:

    [ -d ~/.vim ]  && mv ~/.vim ~/.vim.bak
    git clone https://github.com/themathpath/vimrc ~/.vim
    mkdir -p ~/.vim/bundle
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    [ -f ~/.vimrc ]  && mv ~/.vimrc ~/.vimrc.bak
    ln -s ~/.vim/.vimrc ~/.vimrc

Now open vi, press ENTER to skip the error message, and execute 

    :BundleInstall

Note: You may need to delete line 106 on some machines.
