#!/bin/bash
scp root@thisnode.info:/etc/nodogsplash/vale/db.csv ./

echo " ___________________________________________________ "
echo "|                                                   |"
echo "|                                                   |"
echo "| Programa para editar usuarios, para isso digite   |"
echo "| o nome como no cadastro, e depois um voucher      |"
echo "|                                                   |"
echo "|___________________________________________________|"

printf "Nome do user para editar: "
read nome

if [ ${#nome}=0 ]
then
grep -v "$nome" db.csv > /tmp/$$
mv /tmp/$$ db.csv

printf "Digite um voucher de 12 digitos: "
read voucher
	if [ ${#voucher} -ne 12 ]
	then
	echo "O voucher que vc digitou tem ${#voucher}, e ele precisa ter 12 digitos"
	else
	
	echo "$nome,$voucher,," >> db.csv
        sort -o db.csv db.csv
        scp ./db.csv root@thisnode.info:/etc/nodogsplash/vale/db.csv
	fi
else
echo "Não deixe o nome em branco, isso atrapalha a vida!"
fi
