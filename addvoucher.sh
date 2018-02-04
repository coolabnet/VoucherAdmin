scp root@thisnode.info:/etc/nodogsplash/vale/db.csv ./

echo " ___________________________________________________ "
echo "|                                                   |"
echo "|                                                   |"
echo "| Para cadastrar um novo usuario digite da seguinte |"
echo "| forma usuario,voucher12digitos,,                  |"
echo "|                                                   |"
echo "|___________________________________________________|"

printf "Para cadastrar um novo usuario digite o nome: "
read nome

echo "$nome" >> db.csv
sort -o db.csv db.csv
scp ./db.csv root@thisnode.info:/etc/nodogsplash/vale/db.csv
cat db.csv
