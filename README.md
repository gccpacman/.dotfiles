# Zsh

Should be several different ways to install Zsh in your operation system.
Here is how to make it work on Linux Mint:

    sudo apt-get update
    sudo apt-get install git-core zsh

set as default shell:

    chsh -s /bin/zsh

Install ```oh-my-zsh```:

    wget --no-check-certificate http://install.ohmyz.sh -O - | sh

Then you can cp the ```.zshrc``` file to your ```$HOME``` directory:

    cp .pyvim-power/pyvim/.zshrc ~

Base On: https://www.computersnyou.com/3145/setup-zsh-oh-zsh-linux-mint-quick-guide/


# Tmux

I replace the ```bind-key``` from Ctrl+B to Ctrl+A

You can use <bind-key> ? to check key shortcuts.

## tmux package manager
There is something called ```Tmux Plugin Manager``` just works like the way Vundle for vim does, you can check this out:
[Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

You also should notice it only work for tmux 1.9+, then means install from debian package manager may not working currently.
So maybe you should install tmux from source. You can download it from [Tmux Official Site](https://tmux.github.io/)
For debian user only, you can add a source like this to upgrade you tumx:

    sudo apt-get update
    sudo apt-get install -y python-software-properties software-properties-common
    sudo add-apt-repository -y ppa:pi-rho/dev
    sudo apt-get update
    sudo apt-get install -y tmux=2.0-1~ppa1~t

Clone TPM:

    $ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

Put this at the bottom of .tmux.conf:

    # List of plugins
    set -g @plugin 'tmux-plugins/tpm'
    set -g @plugin 'tmux-plugins/tmux-sensible'
    # Other examples:
    # set -g @plugin 'github_username/plugin_name'
    # set -g @plugin 'git@github.com/user/plugin'
    # set -g @plugin 'git@bitbucket.com/user/plugin'

Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)

    run '~/.tmux/plugins/tpm/tpm'

## Reload TMUX environment so TPM is sourced:

    # type this in terminal
    $ tmux source ~/.tmux.conf

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

## Powerline Fonts

If you want vim have a more beautiful look, you can try powerline,
 
[powerline font](https://github.com/powerline/fonts) should be installed to make it looks good, you can check the examples in powerline official repo [powerline](https://github.com/powerline/powerline).

Install ```powerline``` by pip:

    pip install --user git+git://github.com/powerline/powerline

## install by pathogen (not use it anymore)

clone this git repo:

    git clone https://github.com/realhu1989/pyvim-power.git

install git, python, pip, for example you are on Ubuntu, you can try:

    sudo apt-get install git python python-pip

install the ```powerline```:

    pip install --user git+git://github.com/Lokaltog/powerline

init all submodules:

    git submodules update --init --recursive


------

[VIM basic key shortcuts](VIM_KEY_SHORTCUT.md)

[How to use tmux](HOW_TO_USE_TMUX.md)

[Question & Answer](Q&A.md)

