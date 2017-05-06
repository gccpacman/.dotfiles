# Zsh

Should be several different ways to install Zsh in your operation system.
Here is how to make it work on Linux Mint:

    sudo apt-get update
    sudo apt-get install git-core zsh

    (Arch Linux)
    yaourt -S antigen-git
    yaourt -S oh-my-zsh-git
	ln -s /usr/share/oh-my-zsh ~/.oh-my-zsh


set as default shell:

    chsh -s /bin/zsh

Install ```oh-my-zsh```:

    wget --no-check-certificate http://install.ohmyz.sh -O - | sh

Then you can cp the ```.zshrc``` file to your ```$HOME``` directory:

    cp .pyvim-power/pyvim/.zshrc ~

Base On: https://www.computersnyou.com/3145/setup-zsh-oh-zsh-linux-mint-quick-guide/