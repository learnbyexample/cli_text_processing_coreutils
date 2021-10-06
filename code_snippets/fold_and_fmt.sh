## fold

cat greeting.txt

fold -w10 greeting.txt

fold -s -w10 greeting.txt

echo 'hi there' | fold -s -w4

printf 'a\tb\tc\t1\t2\t3\n' | fold -w6

printf 'a\tb\tc\t1\t2\t3\n' | fold -b -w6

## fmt

fmt info_fmt.txt

printf 'hi there' | fmt -w4

cat sample.txt

cut -c5- sample.txt | fmt -w30

printf 'Hi    there.    Have a nice   day\n' | fmt -u

