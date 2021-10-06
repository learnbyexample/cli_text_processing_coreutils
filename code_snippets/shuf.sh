## Randomize input lines

cat purchases.txt 

shuf purchases.txt

## Limit output lines

printf 'apple\nbanana\ncherry' | shuf -n2

## Repeated lines

cat fruits.txt

shuf -n3 -r fruits.txt

shuf -n5 -r fruits.txt

## Specify input as arguments

shuf -e hi there 'hello world' good

shuf -n1 -e red green blue

shuf -n4 -r -e red green blue

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

shuf nums.txt -o rand_nums.txt

cat rand_nums.txt

## NUL separator

printf 'apple\0banana\0cherry' | shuf -z -n2 | cat -v

