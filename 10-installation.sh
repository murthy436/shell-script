#!/bin/bash

USERID=$(id -u)

if[ $USERID -ne 0 ]
then
        echo "Run this code with superuser"
        exit 1
else
        echo "You are super user"
fi

#Install mysql server
dnf install mysql -y

if[ $? -ne 0 ]
    then
        echo "Installing mysql server is failure"
        exit 1
    else
        echo "Installation of mysql server is success"
fi

dnf install git -y

if[ $? -ne 0 ]
    then
        echo "Installaton of git is failure"
        exit 2
    else
        echo "Installation of git is Sucess"
fi

echo "is script is proceesiding"



