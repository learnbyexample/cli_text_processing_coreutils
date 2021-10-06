## Default sort and Collating order

cat greeting.txt

<greeting.txt tr ' ' '\n' | sort

printf '(banana)\n{cherry}\n[apple]' | sort

<greeting.txt tr ' ' '\n' | LC_ALL=C sort

printf '(banana)\n{cherry}\n[apple]' | LC_ALL=C sort

## Ignoring headers

cat scores.csv

( sed -u '1q' ; sort ) <scores.csv

## Dictionary sort

printf '(banana)\n{cherry}\n[apple]' | LC_ALL=C sort -d

## Reversed order

printf 'peace\nrest\nquiet' | sort -r

## Numeric sort

printf '20\n2\n3' | sort

printf '20\n2\n3' | sort -n

cat mixed_numbers.txt

sort -n mixed_numbers.txt

cat e_notation.txt

sort -g e_notation.txt

printf '2 pins\n13 pens\n2 balls' | sort -n

printf 'z\na2p\n13p\n2b\n-1\n    10' | sort -n

## Human numeric sort

cat file_size.txt

sort -hr file_size.txt

## Version sort

printf '1.10\n1.2' | sort -n

printf '1.10\n1.2' | sort -V

cat versions.txt

sort -V versions.txt

cat timings.txt

sort -V timings.txt

## Random sort

sort -R mixed_numbers.txt

## Unique sort

printf '(10)\n[20]\n[10]' | sort -du

cat purchases.txt

sort -u purchases.txt

printf '2 balls\n13 pens\n2 pins\n13 pens\n' | sort -nu

printf '2 balls\n13 pens\n2 pins\n13 pens\n' | sort -r -nu

printf '2 balls\n13 pens\n2 pins\n13 pens\n' | sort -n | uniq

printf 'cat\nbat\nCAT\ncar\nbat\n' | sort -u

printf 'cat\nbat\nCAT\ncar\nbat\n' | sort -fu

## Column sort

cat shopping.txt

sort -k2,2n shopping.txt

cat marks.csv

sort -t, -k2,2 marks.csv

sort -t, -k2,2 -k3,3nr marks.csv

printf 'Aug-20\nMay-5\nAug-3' | sort -t- -k1,1M -k2,2n

sort -t, -s -k2,2 marks.csv

sort -t, -u -k2,2 marks.csv

## Character positions within columns

printf 'car,(20)\njeep,[10]\ntruck,(5)\nbus,[3]' | sort -t, -k2.2,2n

printf 'car,(20)\njeep,[10]\ntruck,(5)\nbus,[3]' | sort -t, -k2.1,2.1

printf 'car   (20)\njeep  [10]\ntruck (5)\nbus   [3]' | sort -k2.2,2n

printf 'car   (20)\njeep  [10]\ntruck (5)\nbus   [3]' | sort -k2.2b,2n

## Debugging

printf 'car (20)\njeep [10]\ntruck (5)\nbus [3]' | sort -k2.2,2n --debug

printf 'car (20)\njeep [10]\ntruck (5)\nbus [3]' | sort -k2.2b,2n --debug

## Check if sorted

cat shopping.txt

sort -c shopping.txt

echo $?

sort -C shopping.txt

echo $?

## Specifying output file

sort -R nums.txt -o rand_nums.txt

cat rand_nums.txt

## Merge sort

shuf -n1000000 -i1-999999999999 > n1.txt

shuf -n1000000 -i1-999999999999 > n2.txt

sort -n n1.txt > n1_sorted.txt

sort -n n2.txt > n2_sorted.txt

time sort -n n1.txt n2.txt > op1.txt

time sort -mn n1_sorted.txt <(sort -n n2.txt) > op2.txt

time sort -mn n1_sorted.txt n2_sorted.txt > op3.txt

diff -sq op1.txt op2.txt

diff -sq op1.txt op3.txt

## NUL separator

printf 'cherry\0apple\0banana' | sort -z | cat -v

