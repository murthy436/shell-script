#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo "Script started executed at: $TIMESTAMP"

#declaring function
VALIDATE()
{
    if [ $1 -ne 0 ]
    then
        echo -e "$2.....$R Failure $N"
        exit 1
    else
        echo -e "$2.....$R Sucess $N"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run the code with sudo access"
    exit2
else
    echo "you are a super user"
fi

#Installing packages
dnf install docker -y &>>$LOGFILE
VALIDATE $? "Installing docer file"

dnf install gcc -y &>>$LOGFILE
VALIDATE $? "Installing gcc file"