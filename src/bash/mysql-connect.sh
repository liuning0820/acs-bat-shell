#! /bin/bash

# You need to use the -p flag to send a password. And it's tricky because you must have no space between -p and the password.

mysql -h "server-name" -u "root" "-pXXXXXXXX" "database-name" < "filename.sql"

# If you use a space after -p it makes the mysql client prompt you interactively for the password, and then it interprets the next command argument as a database-name:

# $ mysql -h "server-name" -u "root" -p "XXXXX" "database-name" < "filename.sql"
# Enter password: <you type it in here>
# ERROR 1049 (42000): Unknown database 'XXXXX'


# sudo docker exec -it mysql02 mysql -h "172.17.0.2" -u "admin123" "-ppassword123" "onboarding" < "/app/SSO\\ Cloud/Database/2.tables.create.sql"


# sudo docker exec -it mysql02 mysql -h "172.17.0.2" -u   "admin123" "-ppassword123" "onboarding" < /mnt/onboarding/SSO\ Cloud/Database/2.tables.create.sql"