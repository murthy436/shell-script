#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo "Script starting with: $TIMESTAMP"
#Declaring the validate function
VALIDATE()
{
    if [ $1 -ne 0 ]
    then 
        echo -e "$2..... $R Failure $N"
        exit 1
    else
        echo -e "$2.... $G Sucess $N"
    fi
}


if [ $USERID -ne 0 ]
    then 
        echo "Please rund the code with supre user"
        exit 1
    else
        echo "You are a supre user"
fi

#Writing for loop to installations of packages

for i in $@
do
    echo "Packages to Install: $i"
    dnf list installed $i -y &>>$LOGFILE
    if [ $? -ne 0 ]
    then
        echo -e "$i Installed already skipping... $y Skipping... $n"
    else
        dnf istall $i -y &>>$LOGFILE
        VALIDATE $? "Installation of $i"
    fi
done