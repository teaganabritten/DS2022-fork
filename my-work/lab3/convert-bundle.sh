#!/usr/bin/bash

wget -c https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

tar -xzf lab3-bundle.tar.gz > lab3bundle.tsv

awk '!/^[[:space:]]*$/' lab3bundle.tsv

tr '\t' ',' < lab3bundle.tsv > lab3bundle.csv

wc -l lab3bundle.csv

echo $LINECOUNT

tar -czf converted-archive.tar.gz lab3bundle.csv
