 #!/bin/bash

 USERID=$(id -u)

 VALIDATE(){
    if [ $1 -ne 0]
    then
        echo "$2....FAILURE"
        exit 1
    else
        echo "$2....SUCCESS"
    fi
 }                      


 if [ $USERID -ne 0 ]
 then
    echo "ERROR:: Please run this script with root access"
    exit 1
fi

yum install mysql -y
VALIDATE $? "Installing MYSQL"

# if [ $? -ne 0 ]
# then 
#     echo "Installation of mysql is error"
#     exit 1
# else
#     echo "Installation of mysql is success"
# fi

yum install postfix -y
VALIDATE $? "Installing POSTFIX"

# if [ $? -ne 0 ]
# then 
#     echo "Installation of postfix is error"
#     exit 1
# else
#     echo "Installation of postfix is success"
# fi