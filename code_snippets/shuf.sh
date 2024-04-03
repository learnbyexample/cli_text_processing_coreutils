## Randomize input lines

cat purchases.txt

shuf purchases.txt

## Limit output lines

printf 'apple\nbanana\ncherry\nfig\nmango' | shuf -n2

## Repeated lines

cat fruits.txt

shuf -n3 -r fruits.txt

shuf -n5 -r fruits.txt

## Specify input lines as arguments

shuf -e hi there 'hello world' good

shuf -n1 -e brown green blue

shuf -n4 -r -e brown green blue

echo *.csv

shuf -n2 -e *.csv

## Generate random numbers

shuf -i 5-8

shuf -n3 -i 100-200

shuf -n5 -r -i 0-1

shuf -i 18446744073709551612-18446744073709551615

shuf -i 18446744073709551612-18446744073709551616

seq 100000000000000000000000000000 100000000000000000000000000105 | shuf -n2

seq -10 -8 | shuf

seq -f'%.4f' 100 0.25 3000 | shuf -n3

## Specifying output file

cat book_list.txt

shuf book_list.txt -o book_list.txt

cat book_list.txt

## NUL separator

printf 'apple\0banana\0cherry\0fig\0mango' | shuf -z -n3 | cat -v

