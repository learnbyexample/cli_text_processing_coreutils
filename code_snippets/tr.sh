## Transliteration

echo 'leet speak' | tr 'lets' '1375'

echo 'apple;banana;cherry' | tr ; :

echo 'apple;banana;cherry' | tr ';' ':'

echo 'HELLO WORLD' | tr 'A-Z' 'a-z'

echo 'Hello World' | tr 'a-zA-Z' 'A-Za-z'

echo 'Hello World' | tr 'a-zA-Z' 'n-za-mN-ZA-M'

echo 'Uryyb Jbeyq' | tr 'a-zA-Z' 'n-za-mN-ZA-M'

tr 'a-z' 'A-Z' <greeting.txt

## Different length sets

echo 'apple banana cherry' | tr 'abc' 'A-Z'

echo 'apple banana cherry' | tr 'a-z' 'ABC'

echo 'apple banana cherry' | tr -t 'a-z' 'ABC'

echo 'apple banana cherry' | tr 'a-z' '[A*5]F-Z'

echo 'apple banana cherry' | tr 'a-z' 'ABC[-*]XYZ'

## Escape sequences and character sets

printf 'apple\tbanana\tcherry\n' | tr '\t' ':'

echo 'apple:banana:cherry' | tr ':' '\n'

tr '[:lower:]' '[:upper:]' <greeting.txt

echo '/python-projects/programs' | tr '/-' '\\_'

## Deleting characters

echo '2024-08-12' | tr -d '-'

s='"Hi", there! How *are* you? All fine here.'

echo "$s" | tr -d '[:punct:]'

## Complement

s='"Hi", there! How *are* you? All fine here.'

echo "$s" | tr -cd 'a-zA-Z.!?[:space:]'

s='"Hi", there! How *are* you? All fine here.'

echo "$s" | tr -c 'a-zA-Z.!?[:space:]' '1%'

echo "$s" | tr -c 'a-zA-Z.!?[:space:]' '%'

## Squeeze

echo 'HELLO... hhoowwww aaaaaareeeeee yyouuuu!!' | tr -s 'a-z'

echo 'hhoowwww aaaaaareeeeee yyouuuu!!' | tr -s 'a-z' 'A-Z'

echo 'hhoowwww aaaaaareeeeee yyouuuu!!' | tr -sd '!' 'a-z'

echo 'apple    noon     banana!!!!!' | tr -cs 'a-z'

