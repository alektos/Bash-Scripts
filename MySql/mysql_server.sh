#!/bin/bash
arg=$1
mysql_path="/usr/local/mysql/support-files/mysql.server"

if [ -z $arg ]
then
    echo "NULL is not valid argument."
elif [ $arg == "start" ]
then
    sudo $mysql_path $arg
elif [ $arg == "stop" ]
then
    sudo $mysql_path $arg
elif [ $arg == "restart" ]
then
    sudo $mysql_path $arg
else
    echo "$1 is not valid argument."
fi
