# Yazi, Zoxide and Zsh Integration
This plugin for [zsh](https://www.zsh.org) adds just one shortcut, but unfolds the magic of both [Zoxide](https://github.com/ajeetdsouza/zoxide) and [yazi](https://github.com/sxyazi/yazi/) 🧙
Without arguments, `y` just opens yazi. If you supply an argument that is a directory, yazi is opened in that directory. But if you supply anything else as an argument, `zoxide` is called with the argument and `yazi` is opened there. This is the efficiency you always wanted.

When exiting yazi the current working directory is changed to the one that was opened in yazi. press `q` to exit yazi and change the CWD or press`Q` to quit if you don't want to change.

# Installation
Install the zsh plugin using your favorite plugin manager or source the file in your .zshrc config.

# History
This is shamelessly/efficiently copied from [yazi quickstart quide](https://yazi-rs.github.io/docs/quick-start) and [yzai-zoxide-zsh](https://github.com/fdw/yazi-zoxide-zsh) which was borrowed [ranger-zoxide](https://github.com/fdw/ranger-zoxide), which was also just an interation of [ranger-autojump](https://github.com/fdw/ranger-autojump).
