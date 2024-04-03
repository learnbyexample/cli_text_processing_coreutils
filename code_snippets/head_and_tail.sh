## Leading and trailing lines

cat sample.txt

head sample.txt

tail sample.txt

seq 3 | head

head -n3 sample.txt

tail -n2 sample.txt

## Excluding the last N lines

head -n -11 sample.txt

## Starting from the Nth line

tail -n +11 sample.txt

## Multiple input files

seq 2 | head -n1 greeting.txt -

tail -q -n2 sample.txt nums.txt

## Byte selection

printf 'apple pie' | head -c3

printf 'apple pie' | tail -c3

printf 'car\njeep\nbus\n' | head -c -4

printf 'car\njeep\nbus\n' | tail -c +5

printf 'αλεπού' | head -c2

printf 'cag̈e' | tail -c4

## Range of lines

tail -n +9 sample.txt | head -n3

head -n7 sample.txt | tail -n +6

## NUL separator

printf 'car\0jeep\0bus\0' | head -z -n2 | cat -v

printf 'car\0jeep\0bus\0' | tail -z -n2 | cat -v

