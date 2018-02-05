#!/bin/bash
scp root@thisnode.info:/etc/nodogsplash/vale/db.csv ./
echo Temos `cat db.csv | wc -l` vouchers cadastrados
echo "Que São:"
sort -o db.csv db.csv
cat db.csv

