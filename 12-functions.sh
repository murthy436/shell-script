#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date + %F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE()
{
if [ $1 -ne 0 ]
then 
    echo "$2 .....FAILURE"
    exit1
else
    echo "$2......SUCESS"

fi
}

if [ $USERID -ne 0 ]
    then
        echo "You need to run with super user"
        exit 1
    else
        echo "You are super user"
fi

#Installing packages

dnf install mysql -y &>>LOFFILE
VALIDATE $? "Installing MYSQL"

dnf install git -y &>>LOGFILE
VALIDATE $? "Installing GIT"