## Split on Nth line

seq 10 | csplit - 4

head xx*

rm xx*

## Split on regexp

csplit -q purchases.txt '/t.*p/'

head xx*

csplit -q purchases.txt '%t.*p%'

cat xx00

csplit -q purchases.txt '/xyz/'

## Regexp offset

csplit -q purchases.txt '/t.*p/1'

head xx*

csplit -q purchases.txt '%t.*p%2'

cat xx00

csplit -q purchases.txt '/t.*p/-2'

head xx*

csplit -q purchases.txt '/t.*p/5'

csplit -q purchases.txt '/t.*p/-5'

## Repeat split

seq 10 | csplit -q - 4 '{1}'

head xx*

cat log.txt

csplit -q log.txt '%warning%' '{2}'

cat xx00

csplit -q purchases.txt '/paste\|powder/' '{*}'

head xx*

seq 10 | csplit -q - 4 '{2}'

csplit -q purchases.txt '/tea/' '{4}'

## Keep files on error

seq 7 | csplit -q - 4 '{*}'

ls xx*

seq 7 | csplit -qk - 4 '{*}'

head xx*

## Suppress matched lines

seq 5 | csplit -q --suppress-matched - 3

head xx*

rm xx*

seq 10 | csplit -q --suppress-matched - 4 '{1}'

head xx*

csplit -q --suppress-matched purchases.txt '/soap\|powder/' '{*}'

head xx*

seq 11 16 | csplit -q --suppress-matched - '/[35]/' '{1}'

head xx*

rm xx*

## Exclude empty files

csplit -q --suppress-matched purchases.txt '/coffee\|tea/' '{*}'

head xx*

csplit -qz --suppress-matched purchases.txt '/coffee\|tea/' '{*}'

head xx*

## Customize filenames

seq 4 | csplit -q -f'num_' - 3

head num_*

seq 4 | csplit -q -n1 - 3

ls xx*

rm xx*

seq 4 | csplit -q -n3 - 3

ls xx*

seq 100 | csplit -q -b'%02x' - 3 '{20}'

ls xx*

rm xx*

seq 20 | csplit -q -f'num_' -b'%d.txt' - 3 '{4}'

ls num_*

