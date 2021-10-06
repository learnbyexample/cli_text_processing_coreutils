## Individual field selections

printf 'apple\tbanana\tcherry\n' | cut -f2

printf 'apple\tbanana\tcherry\n' | cut -f1,3

printf 'apple\tbanana\tcherry\n' | cut -f3,1

printf 'apple\tbanana\tcherry\n' | cut -f1,1,2,1,2,1,1,2

printf 'good\tfood\ntip\ttap' | cut -f2

## Field ranges

printf 'apple\tbanana\tcherry\tdates\n' | cut -f2-4

printf 'apple\tbanana\tcherry\tdates\n' | cut -f-3

printf 'apple\tbanana\tcherry\tdates\n' | cut -f3-

## Input field delimiter

cat scores.csv

cut -d, -f2,4 scores.csv

echo 'one;two;three;four' | cut -d; -f3

echo 'one;two;three;four' | cut -d';' -f3

## Output field delimiter

printf 'apple\tbanana\tcherry\n' | cut --output-delimiter=, -f1-

echo 'one;two;three;four' | cut -d';' --output-delimiter=' : ' -f1,3-

echo 'one;two;three;four' | cut -d';' --output-delimiter=$'\t' -f1,3-

echo 'one;two;three;four' | cut -d';' --output-delimiter=$'\n' -f2,4

## Complement

printf 'apple ball cat\n1 2 3 4 5' | cut --complement -d' ' -f2

printf 'apple ball cat\n1 2 3 4 5' | cut --complement -d' ' -f1,3

## Suppress lines without delimiters

cat mixed_fields.csv

cut -d, -f2 mixed_fields.csv

cut -sd, -f2 mixed_fields.csv

cut --complement -sd, -f2 mixed_fields.csv

printf 'apple ball cat\n1 2 3 4 5' | cut -d' ' -f4

## Character selections

printf 'apple\tbanana\tcherry\n' | cut -c2,8,11

printf 'apple\tbanana\tcherry\n' | cut -c2,8,11 --output-delimiter=-

printf 'apple\tbanana\tcherry\n' | cut -c-5

printf 'apple\tbanana\tcherry\n' | cut --complement -c13-

printf 'cat-bat\ndog:fog\nget;pet' | cut -c5-

## NUL separator

printf 'good-food\0tip-tap\0' | cut -zd- -f2 | cat -v

