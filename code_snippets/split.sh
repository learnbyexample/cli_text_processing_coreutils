## Default split

seq 10000 | split

ls x*

head -n1 xaa xab xae xaj

rm x*

## Change number of lines

split -l3 purchases.txt

head x*

## Split by byte count

split -b15 greeting.txt

head x*

cat x*

split -C20 purchases.txt 

head x*

wc -c x*

printf 'apple\nbanana\n' | split -C4

head x*

cat x*

## Divide based on file size

split -n2 purchases.txt

head x*

wc x*

seq 6 | split -n2

split -n1/2 greeting.txt 

split -nl/2 purchases.txt

head x*

split -nl/2/3 sample.txt

## Interleaved lines

seq 5 | split -nr/2

head x*

split -nr/1/3 sample.txt

## Custom line separator

printf 'apple\nbanana\n;mango\npapaya\n' | split -t';' -l1

head x*

## Customize filenames

split -l1 greeting.txt op_

head op_*

seq 10 | split -l1 -a1

ls x*

rm x*

seq 10 | split -l1 -a3

ls x*

rm x*

seq 100 | split -l1 -a1

ls x*

seq 10 | split -l1 -d

ls x*

rm x*

seq 10 | split -l2 --numeric-suffixes=10

ls x*

seq 10 | split -l1 --hex-suffixes=8

ls x*

seq 10 | split -l2 -a1 --additional-suffix='.log'

ls x*

rm x*

seq 10 | split -l2 -a1 -d --additional-suffix='.txt' - num_

ls num_*

## Exclude empty files

split -nl/3 greeting.txt 

head x*

rm x*

split -e -nl/3 greeting.txt

head x*

## Process parts through another command

split -l1 --filter='gzip > $FILE.gz' greeting.txt 

ls x*

zcat xaa.gz 

zcat xab.gz

cat body_sep.txt 

split -l3 --filter='tail -n +2 > $FILE' body_sep.txt

head x*

