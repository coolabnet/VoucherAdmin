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



grep -v "$nome" db.csv > /tmp/$$
mv /tmp/$$ db.csv

printf "Digite um voucher de 12 digitos: "
read voucher

echo "$nome,$voucher,," >> db.csv
sort -o db.csv db.csv

scp ./db.csv root@thisnode.info:/etc/nodogsplash/vale/db.csv


