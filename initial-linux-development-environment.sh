#!/bin/bash
#这个脚本最后都加了-y代表直接输入y的意思，效果相当于一个回车
#添加源并更新
# apt-cache search 搜索软件包的命令
# Personal Package Archives (PPA) allow you to upload Ubuntu source packages to be built and
# published as an apt repository by Launchpad.
# Ubuntu Make is a command line tool which allows you to download the latest
# version of popular developer tools on your installation https://wiki.ubuntu.com/ubuntu-make
    sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
    sudo apt-get update
    sudo apt-get install ubuntu-make  -y

    #install visual studio code ide, default to /home/pi/.local/share/umake/ide/visual-studio-code
    umake ide visual-studio-code

    #uninstall visual studio code IDE
    # umake ide visual-studio-code --remove



### http://www.unixmen.com/how-to-install-lamp-stack-on-ubuntu-16-04/ ###
#development environment: web server : Apache
    sudo apt-get install apache2 -y
# The default Ubuntu document root is /var/www/html

#development environment: database: MySQL
    sudo apt-get install mysql-server mysql-client  -y



#development environment: languages
    sudo apt-get install python python3 -y

#install LAMP: php
    sudo apt-get install libapache2-mod-php7.0 php7.0-mysql php7.0-curl php7.0-cgi  php7.0


###End of install LAMP###


# set python web crawling environment
    #install beautifulsoup
    sudo apt-get install python-bs4

#development environment: source control: git
echo "***** start to install source control tool : git *****"
    sudo apt-get install git -y

#development environment: build, continious integration. jenkins
# https://wiki.jenkins-ci.org/display/JENKINS/Installing+Jenkins+on+Ubuntu
    # wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
    # sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
    # sudo apt-get update
    # sudo apt-get install default-jre
    # sudo apt-get install jenkins

# development environment: mantis bug tracker


#web development environment: javascript (nodejs + http-server)
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

# Alternatively, for Node.js v7
# curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
# sudo apt-get install -y nodejs

# Install web servers, after installation, open the folder in commandline which you want to host, type "http-server" to start the host.
npm install http-server -g


    #stardict
    # sudo apt-get install stardict -y

    #浏览器
    # sudo apt-get install chromium-browser -y


#鼠标右键选中文件夹 - > Open In Terminal
# nautilus-open-terminal replaced by gnome-terminal
    #sudo apt-get install nautilus-open-terminal -y
    # sudo apt-get install gnome-terminal -y

    #肯定系统需要更新一些软件包
    sudo apt-get upgrade -y
    #重启
    # sudo reboot




# 自动清理

sudo apt-get autoclean && sudo apt-get autoremove

