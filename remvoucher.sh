
scp root@thisnode.info:/etc/nodogsplash/vale/db.csv ./

echo " ___________________________________________________ "
echo "|                                                   |"
echo "|                                                   |"
echo "| Programa para remover usuarios, para isso digite  |"
echo "| exatamente o nome como no cadastro                |"
echo "|                                                   |"
echo "|___________________________________________________|"

printf "Nome do user a remover: "
read nome

grep -v "$nome" db.csv > /tmp/$$
mv /tmp/$$ db.csv
scp ./db.csv root@thisnode.info:/etc/nodogsplash/vale/db.csv
cat db.csv | cut -f1 -d "," > user
echo " "
echo "Os usuarios cadastrados são:"
cat user
