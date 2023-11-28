#!/bin/bash

VALIDATE(){
    
    SCRIPT_NAME=$0
    DATE=$(date +%F)
    LOGFILE=/tmp/$SCRIPT_Name-$DATE.log
    if [ $1 -ne 0 ]
    then
        echo "Installation.....FAILURE"
        exit 1
    else
        echo "Installation.....SUCCESS"
        fi

}
USERID=$(id -u)
 if [ $USERID -ne 0 ]
 then
    echo "ERROR:: Please run this script with root access"
    exit 1
fi
yum install mysql -y &>>$LOGFILE

VALIDATE $? 
yum install postfix -y &>>$LOGFILE

VALIDATE $? 

