    #!/bin/bash
    #这个脚本最后都加了-y代表直接输入y的意思，效果相当于一个回车
    #安装gnome3、ubuntu-tweak和歌词osdlyrics，添加源并更新
    # sudo add-apt-repository ppa:tualatrix/ppa -y
    # sudo add-apt-repository ppa:gnome3-team/gnome3 -y
    # sudo add-apt-repository ppa:osd-lyrics/ppa
    sudo apt-get update

    #鼠标右键选中文件夹 - > Open In Terminal
    # nautilus-open-terminal replaced by gnome-terminal
    # sudo apt-get install nautilus-open-terminal -y
    sudo apt-get install gnome-terminal -y

    #development environment: languages
    sudo apt-get install python python3 -y


    #development environment: source control: git
    sudo apt-get install git -y

    #development environment: build, continious integration. jenkins
    


    
    #stardict
    sudo apt-get install stardict -y

    #浏览器
    # sudo apt-get install chromium-browser -y


    #肯定系统需要更新一些软件包
    sudo apt-get upgrade -y
    #重启
    sudo reboot