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


[How to use tmux](HOW_TO_USE_TMUX.md)


