#!/bin/bash

hoje="$(date +%s)"
vale_secs=2592000 #seconds = 30 days

echo " ___________________________________________________ "
echo "|                                                   |"
echo "|                                                   |"
echo "| Este programa vai te ajudar a consultar o prazo de|"
echo "| validade do voucher de user cadastrado.           |"
echo "|___________________________________________________|"

printf "Para consultar digite o nome do usuario cadastrado "
read nome

if [ ${#nome}=0 ]
then


cat db.csv |grep "$nome" | cut -f3 -d "," > usertemp
cat db.csv |grep "$nome" | cut -f1 -d "," > user

cat usertemp | while read temp
do
	rest=$[(($temp-$hoje)+$vale_secs)/86400]
	echo faltam $rest dias para acabar seu voucher
done

else
echo "Não deixe o nome em branco, isso atrapalha a vida!"
fi


