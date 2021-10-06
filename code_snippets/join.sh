## Default join

cat shopping_jan.txt

cat shopping_feb.txt

join shopping_jan.txt shopping_feb.txt

join <(printf 'a f1_x\na f1_y') <(printf 'a f2_x\na f2_y')

## Non-matching lines

join -a1 shopping_jan.txt shopping_feb.txt

join -a1 -a2 shopping_jan.txt shopping_feb.txt

join -v1 shopping_jan.txt shopping_feb.txt

join -v1 -v2 shopping_jan.txt shopping_feb.txt

## Change field separator

cat marks.csv 

cat dept.txt

join -t, <(sort marks.csv) dept.txt

## Files with headers

cat report_1.csv

cat report_2.csv

join --check-order -t, report_1.csv report_2.csv

join --check-order --header -t, report_1.csv report_2.csv

## Change key field

cat names.txt

join -t, -1 2 <(sort -t, -k2,2 marks.csv) names.txt

## Customize output field list

join -t, -1 2 -o 1.1,1.2,1.3 <(sort -t, -k2,2 marks.csv) names.txt

join --header -t, -o 1.1,2.2,1.2,1.3 report_1.csv report_2.csv

## Same number of output fields

join <(printf 'a 1 2\nb p q r') <(printf 'a 3 4\nb x y z')

join -o auto <(printf 'a 1 2\nb p q r') <(printf 'a 3 4\nb x y z')

join -o auto <(printf 'a 1 2\nb p') <(printf 'a 3 4\nb x')

join -o auto -e '-' <(printf 'a 1 2\nb p') <(printf 'a 3 4\nb x')

join -o auto -a1 -e 'NA' shopping_jan.txt shopping_feb.txt

join -o auto -a1 -a2 -e 'NA' shopping_jan.txt shopping_feb.txt

## Set operations

paste colors_1.txt colors_2.txt

join -t '' -a1 -a2 colors_1.txt colors_2.txt

join -t '' -v1 -v2 colors_1.txt colors_2.txt

join -t '' colors_1.txt colors_2.txt

join -t '' -v2 colors_1.txt colors_2.txt

join -t '' -v1 colors_1.txt colors_2.txt

paste list_1.txt list_2.txt

sort list_1.txt list_2.txt | uniq -d

comm -12 list_1.txt list_2.txt

join -t '' list_1.txt list_2.txt

## NUL separator

join -z <(printf 'a 1\0b x') <(printf 'a 2\0b y') | cat -v

