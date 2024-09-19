#!/usr/bin/python3

import pandas as pd

# Read TSV file
tsv_file = 'your_file.tsv'
df = pd.read_csv(tsv_file, sep='\t')

# Write the DataFrame to a CSV file
csv_file = 'your_file.csv'
df.to_csv(csv_file, index=False)
