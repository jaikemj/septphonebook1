#!/bin/sh

while :
do
clear
echo "Welcome to Jaike's phonebook"
echo "hi everyone"
echo "1. Add new number"
echo "2. Display  number for name"
echo "3. List of contacts"
echo "4. Delete contact"
echo "5  Delete phonebook"
echo "6. EXIT"
read -p "Enter your choice" x
clear
case $x in

        1)read -p "give name " name
        read -p "give number " num
        echo "$name --> $num" >> phone.log;;
        2)read -p "enter name " n
        grep -i $n phone.log;;
        3)if [ -s phone.log ]
        then

                cat phone.log
        else

                echo "the list is empty"
        fi;;
        4)read -p "name of contact to be deleted " c
        sed -i -e "/$c/d" phone.log;;
        5)rm -r phone.log
        echo "Deleted entire phonebook";;
        6)break;;
        *)echo "invalid option";;
esac;
read -p " Exit to menu or anythingelse " exit
if [ $exit -eq 6 ]
then break
fi
done
