scp root@thisnode.info:/etc/nodogsplash/vale/db.csv ./
echo Eu tenho `cat db.csv | wc -l` vouchers cadastrados
echo "Que São:"
sort -o db.csv db.csv
cat db.csv

