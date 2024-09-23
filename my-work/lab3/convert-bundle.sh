#!/usr/bin/bash

wget -c https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

tar -xzf lab3-bundle.tar.gz

mv lab3-bundle.tar.gz lab3-bundle.tsv

cat lab3-bundle | tr -s '\n' > lab3bundle.tsv

sed 's/'$'\t''/,/g' lab3bundle.tsv > lab3bundle.csv

LINECOUNT=wc -l lab3bundle.csv

echo $LINECOUNT

tar -czf converted-archive.tar.gz lab3bundle.csv

cat converted-archive.tar.gz
