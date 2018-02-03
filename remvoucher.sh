grep -v "$1" db.csv > /tmp/$$
mv /tmp/$$ db.csv
scp ./db.csv root@thisnode.info:/etc/nodogsplash/vale/db.csv
