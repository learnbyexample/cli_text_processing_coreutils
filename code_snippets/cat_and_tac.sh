## Creating text files

cat > greeting.txt

cat greeting.txt

cat << 'EOF' > fruits.txt
banana
papaya
mango
EOF

cat fruits.txt

tr 'a-z' 'A-Z' << 'end' > op.txt
hi there
have a nice day
end

cat op.txt

## Concatenate files

cat greeting.txt fruits.txt nums.txt

cat greeting.txt fruits.txt nums.txt > op.txt

cat op.txt

## Accepting stdin data

echo 'apple banana cherry' | cat

echo 'apple banana cherry' | cat greeting.txt -

printf 'Some\nNumbers' | cat - nums.txt

## Squeeze consecutive empty lines

printf 'hello\n\n\nworld\n\nhave a nice day\n\n\n\n\n\napple\n'

printf 'hello\n\n\nworld\n\nhave a nice day\n\n\n\n\n\napple\n' | cat -s

## Prefix line numbers

cat -n greeting.txt fruits.txt nums.txt

printf 'apple\n\nbanana\n\ncherry\n' | cat -n

printf 'apple\n\nbanana\n\ncherry\n' | cat -b

## Viewing special characters

printf 'mar\bt\nbike\rp\n'

printf 'mar\bt\nbike\rp\n' | cat -v

printf 'car\0jeep\0bus\0' | cat -v

printf '1 2\t3\f4\v5\n' | cat -v

printf 'good food\tnice dice\napple\tbanana\tcherry\n' | cat -T

printf 'ice   \nwater\n cool  \n chill\n' | cat -E

printf 'mar\bt\nbike\rp\n' | cat -e

printf '1 2\t3\f4\v5\n' | cat -t

printf '1 2\t3\f4\v5\n' | cat -A

## Useless use of cat

cat greeting.txt | sed -E 's/\w+/\L\u&/g'

sed -E 's/\w+/\L\u&/g' greeting.txt

cat greeting.txt | tr 'a-z' 'A-Z'

<greeting.txt tr 'a-z' 'A-Z'

cat greeting.txt fruits.txt nums.txt | grep -n '[o0]'

grep -n '[o0]' greeting.txt fruits.txt nums.txt

grep -c '[o0]' greeting.txt fruits.txt nums.txt

cat greeting.txt fruits.txt nums.txt | grep -c '[o0]'

## tac

tac greeting.txt fruits.txt

printf 'apple\nbanana\ncherry\n' | tac

printf 'apple\nbanana\ncherry' | tac

cat log.txt

tac log.txt | grep -m1 'warning'

tac log.txt | sed '/warning/q' | tac

## Customize line separator for tac

printf 'car\0jeep\0bus\0' | tac -s '' | cat -v

printf 'apple banana cherry' | tac -s ' ' | cat -e

printf 'apple banana cherry ' | tac -s ' ' | cat -e

cat body_sep.txt

tac -b -s '%=%=' body_sep.txt

cat shopping.txt

tac -b -rs '^[am]' shopping.txt

tac -b -rs '^.*warning' log.txt | awk '/warning/ && ++c==2{exit} 1'

