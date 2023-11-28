USERID=$(id -u)
VALIDATE(){
    G="\e[32m"
    R="\e[31m"
    N="\e[0m"

    for i in $@
do 
    yum install $i -y
done

    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $G Installation.....FAILURE $N"
        exit 1
    else
        echo -e "$2 ... $R Installation.....SUCCESS $N"
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

