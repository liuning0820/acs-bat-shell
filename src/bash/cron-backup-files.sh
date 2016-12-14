#!/bin/bash
# using crontab -e to create crontab file and add below line into crontab file to introduce tasks to be run by cron.
# */5 * * * *   /mnt/c/Users/hpadmin/Documents/ln-projects-code/acs-bat-bash-shell/src/bash/cron-backup-files.sh


cp -f '/mnt/c/Program Files/mRemoteNG-Portable-1.76.20.24669/confCons.xml' '/mnt/c/Users/hpadmin/Documents/LNDocument/mRemoteNG-confCons.xml'
cp -f '/mnt/c/Users/hpadmin/.ssh/config' '/mnt/c/Users/hpadmin/Documents/LNDocument/bastion-config'
cp -r '/mnt/c/Users/hpadmin/.ssh/' '/mnt/c/Users/hpadmin/Documents/LNDocument/'
cp -f '/mnt/c/Users/hpadmin/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/profiles.json' '/mnt/c/Users/hpadmin/Documents/LNDocument/windows-terminal-profiles.json'

