`Vim` 配置兼容 Linux, Mac OS, Windows, `Vim` 主要针对Python/Vuejs开发的便利优化配置。

目录
---
1. [特性和快捷键](#特性和快捷键)
2. [安装](#安装)

## 特性和快捷键

`<leader>` 按键设置 ','

1) [command-t](https://github.com/wincent/command-t): 检索工具（[截图](https://github.com/gccpacman/.dotfiles4pythonide/raw/master/asserts/command-t.png)）

    `<leader> + t` : 搜索当前目录下所有的文件名
    `<leader> + b` : 搜索已经打开的buffer文件名
    `<leader> + y` : 搜索最近执行的vim命令



2) [ack.vim](https://github.com/mileszs/ack.vim): 全局文本搜索（[截图](https://github.com/gccpacman/.dotfiles4pythonide/raw/master/asserts/ack.png)）

[ack](https://github.com/davidgiven/ack)是一个全局搜索文件内容，但是其实这里只是用了ack的vim插件，实际上配置的是ag，搜索代码而言，ag比ack更加友好，

    `<leader> + c` 或者直接 ':Ack + ' : 搜索最近执行的vim命令



3) [nerdtree](https://github.com/scrooloose/nerdtree): 文件树（[截图](https://github.com/gccpacman/.dotfiles4pythonide/raw/master/asserts/nerdtree.png)）

    `<leader> + q` : 打开文件树



4）[gitgutter](https://github.com/airblade/vim-gitgutter): git文件差异查看（[截图](https://github.com/gccpacman/.dotfiles4pythonide/raw/master/asserts/git.png)）

    `<leader> + g` : 打开，隐藏git差异



5）[jedi-vim](https://github.com/davidhalter/jedi-vim): python自动完成工具

    `<leader> + j` : 跳转到变量定义
    `<leader> + a` : 跳转到变量赋值
    `<leader> + k` : 跳转到文档
    `<leader> + u` : 列出全局引用
    `<leader> + r` : 变量重命名

## 安装

1)备份你的 `.vimrc` 文件:

    $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    $ mv .vimrc .vimrc.bak

2)用wget获取 `.vimrc` :

    $ cd ~
    $ wget https://raw.githubusercontent.com/gccpacman/.dotfiles4pythonide/master/vim/.vimrc

3)安装 [vundle](https://github.com/VundleVim/Vundle.vim)类似于vim包管理，可以很轻松的安装所有插件:

    $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    
4)安装所有插件 ```vundle```:

    $ vim +BundleInstall +qall

5)如果`command-t`，则需要手动编译ruby，确保你的电脑安装了ruby环境：

    $ cd .vim/bundle/command-t/ruby/command-t/ext/command-t
    $ ruby extconf.rb
    $ make

PS： 如果是windows，command-t的安装可以参考[vim插件command-t在windows上编译](http://gccpacman.com/2017/10/24/vim%E6%8F%92%E4%BB%B6command-t%E5%9C%A8windows%E4%B8%8A%E7%BC%96%E8%AF%91)

maintained by [@Gccpacman](https://github.com/gccpacman)
