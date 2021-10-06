## Retain single copy of duplicates

printf 'red\nred\nred\ngreen\nred\nblue\nblue' | uniq

printf 'red\nred\nred\ngreen\nred\nblue\nblue' | sort | uniq

printf '2 balls\n13 pens\n2 pins\n13 pens\n' | sort -n | uniq

printf 'red\nred\nred\ngreen\nred\nblue\nblue' | awk '!seen[$0]++'

## Duplicates only

cat purchases.txt

sort purchases.txt | uniq -d

sort purchases.txt | uniq -D

## Unique only

sort purchases.txt | uniq -u

printf 'red\nred\nred\ngreen\nred\nblue\nblue' | uniq -u

## Grouping similar lines

sort purchases.txt | uniq --group

sort purchases.txt | uniq --all-repeated=prepend

## Prefix count

sort purchases.txt | uniq -c

sort purchases.txt | uniq -dc

sort purchases.txt | uniq -c | sort -n

sort purchases.txt | uniq -c | sort -nr

## Ignoring case

printf 'cat\nbat\nCAT\ncar\nbat\nmat\nmoat' | sort -f | uniq -iD

## Partial match

printf '2 cars\n5 cars\n10 jeeps\n5 jeeps\n3 trucks\n' | uniq -f1 --group

printf '2 cars\n5 cars\n1 jeeps\n5  jeeps\n3 trucks\n' | uniq -f1

printf '* red\n* green\n- green\n* blue\n= blue' | uniq -s1

printf '1) apple\n1) almond\n2) banana\n3) cherry' | uniq -w2

printf '2 @blue\n10 :black\n5 :cherry\n3 @chalk' | uniq -f1 -s2 -w2

## Specifying output file

printf 'apple\napple\nbanana\ncherry\ncherry\ncherry' > ip.txt

uniq ip.txt op.txt

cat op.txt

## NUL separator

printf 'cherry\0cherry\0cherry\0apple\0banana' | uniq -z | cat -v

