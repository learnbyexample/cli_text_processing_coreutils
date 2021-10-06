## Line, word and byte counts

cat greeting.txt

wc greeting.txt

## Individual counts

wc -l greeting.txt

wc -w greeting.txt

wc -c greeting.txt

wc -wc greeting.txt

printf 'hello' | wc -c

printf 'hello' | wc -c -

lines=$(wc -l <greeting.txt)

echo "$lines"

## Multiple files

wc greeting.txt nums.txt purchases.txt

wc greeting.txt nums.txt purchases.txt | tail -n1

wc *[ck]*.csv

printf 'greeting.txt\0nums.txt' | wc --files0-from=-

## Character count

printf 'αλεπού' | wc -c

printf 'αλεπού' | wc -m

printf 'αλεπού' | LC_ALL=C wc -m

## Longest line length

echo 'apple' | wc -L

printf 'apple\nbanana' | wc -L

wc -L sample.txt

wc -L <sample.txt

wc -L greeting.txt nums.txt purchases.txt

## Corner cases

printf 'good\nmorning\n' | wc -l

printf 'good\nmorning' | wc -l

printf '\n\n\n' | wc -l

echo 'apple ; banana ; cherry' | wc -w

echo 'apple ; banana ; cherry' | tr -cd 'a-zA-Z[:space:]'

echo 'apple ; banana ; cherry' | tr -cd 'a-zA-Z[:space:]' | wc -w

echo '2 : apples ;' | tr -cd '[:alnum:][:space:]' | wc -w

printf '\t' | wc -L

printf 'a\tb' | wc -L

printf 'a\34b' | wc -L

printf 'αλεπού' | wc -L

printf 'αλεπού' | LC_ALL=C wc -L

printf 'cag̈e' | wc -m

printf 'cag̈e' | wc -L

