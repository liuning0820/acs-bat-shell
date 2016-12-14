#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y


#stardict
# sudo apt-get install stardict -y

#浏览器
# sudo apt-get install chromium-browser -y


#鼠标右键选中文件夹 - > Open In Terminal
# nautilus-open-terminal replaced by gnome-terminal
#sudo apt-get install nautilus-open-terminal -y
# sudo apt-get install gnome-terminal -y


# 自动清理

sudo apt-get autoclean && sudo apt-get autoremove

# fish shell - shell autosuggestion
sudo apt-get install fish

# 中文输入法
sudo apt-get install fcitx fcitx-pinyin fcitx-googlepinyin



