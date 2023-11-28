USERID=$(id -u)
VALIDATE(){
    DATE=$(date)
    if [ $1 -ne 0 ]
    then
        echo "Installation.....FAILURE"
        exit 1
    else
        echo "Installation.....SUCCESS"
        fi

}

 if [ $USERID -ne 0 ]
 then
    echo "ERROR:: Please run this script with root access"
    exit 1
fi
yum install mysql -y

VALIDATE $? "Installing MYSQL"

yum install postfix -y

VALIDATE $? "Installing postfix"

