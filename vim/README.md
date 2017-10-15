# Vim

Myvim configure is mainly used for python programing,


## install by vim-Vundle

You may want to backup your own ```.vimrc``` file first:

    mv .vimrc .vimrc.bak

get the ```.vimrc``` file:

    cd ~
    wget https://raw.githubusercontent.com/gccpacman/pyvim-power/master/.vimrc

Install ```vundle```:

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

Install all plugins by ```vundle```:

    vim +BundleInstall +qall

Done!


## Command-T compiling

    cd ~/.vim/bundle/command-t/ruby/command-t/ext/command-t/
    ruby extconf.rb
    make

## Powerline Fonts

If you want vim have a more beautiful look, you can try powerline,
 
[powerline font](https://github.com/powerline/fonts) should be installed to make it looks good, you can check the examples in powerline official repo [powerline](https://github.com/powerline/powerline).

Install ```powerline``` by pip:

    pip install --user git+git://github.com/powerline/powerline

(Archlinux) If you use Archlinux, you can easily install it by ```yaourt```t

    yaourt -S powerline-fonts-git 
[VIM basic key shortcuts](VIM_KEY_SHORTCUT.md)

[Question & Answer](Q&A.md)

