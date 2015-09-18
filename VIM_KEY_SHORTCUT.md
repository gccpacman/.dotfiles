# vim 基本操作 :  

具体用法和配置文件有关，以下仅供参考。

## 分屏操作：

:sp         打开垂直上下的窗口

:vsp        打开平行左右的窗口

Ctrl+h / Ctrl+l / Ctrl+j / Ctrl+ k
            vim多窗口之间切换  

Ctrl+w 然后 =  增加屏幕大小（仅上下屏）

Ctrl+w 然后 -  减小屏幕大小（仅上下屏）

:resize 60     直接设置大小

:res +5        增加5行

:res -5        减少5行

:vertical resize 80    设置宽度

:vertical resize +5    宽度+5

:vertical resize -5    宽度-5

## 多tab操作

:tabnew 新建tab

:tabnext 下一个tab

:tabprevious 上一个tab

:tabclose 关闭tab

:tabedit 用tab打开某个文件


## 文件操作
:new <filename>
            新建一个文件

<F3>        查看文件树

<F7>          查看代码结构

## 普通复制黏贴：
先按v选择，然后按y  复制

先按v选择，然后按x  剪贴

按p                 黏贴

## 鼠标：

### cygwin让鼠标操作起作用
:set mouse=n

<F5>  (Insert模式下)进入黏贴模式（用鼠标黏贴而不是vim）

Ctrl+I / Ctrl+O
            在历史位置之间来回切换

``          在最近两个位置之间切换

## 行号

set nu      显示行号

set nonu    取消行号

<F12>       显示关闭行号显示

# python编程相关

## 查看定义
K           查看定义

## 方法跳转

\ + g       跳转到方法

``          返回原来的位置

## 批量注释

Ctrl+V然后移动方向键选中（或者Ctrl+D选择模块）

然后按I， 输入内容，然后按ESC让每行生效

## 代码块折叠/打开

zc/zo  折叠，打开

zR/zM  全部折叠，全部打开

# 缩进

v 选中， shift+. /shift+,