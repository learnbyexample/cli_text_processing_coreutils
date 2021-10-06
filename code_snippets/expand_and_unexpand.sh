## Default expand

printf 'apple\tbanana\tcherry\na\tb\tc\n' | cat -T

printf 'apple\tbanana\tcherry\na\tb\tc\n' | expand

printf 'αλε\tπού\n' | expand

printf 'deviate\treached\nbackdrop\toverhang\n' | expand

printf 'cart\bd\tbard\n' | cat -t

printf 'cart\bd\tbard\n' | expand

printf 'cart\bd\tbard\n' | expand | cat -t

## Expand only initial tabs

printf 'a\tb\tc\n' | expand -i | cat -T

printf '\ta\tb\tc\n' | expand -i | cat -T

printf '\t \ta\tb\tc\n' | expand -i | cat -T

## Customize tab stop width

cat -T code.py

expand -t 2 code.py

printf 'a\tb\tc\td\te\n' | expand -t 3,7

printf 'a\tbb\tc\td\te\n' | expand -t 3,7

printf 'a\tbbbbbbbb\tc\td\te\n' | expand -t 3,7

printf 'a\tb\tc\td\te\tf\tg\n' | expand -t 3,/7

printf 'a\tb\tc\td\te\tf\tg\n' | expand -t 3,7,/5

printf 'a\tb\tc\td\te\tf\tg\n' | expand -t 3,+7

printf 'a\tb\tc\td\te\tf\tg\n' | expand -t 3,7,+5

## Default unexpand

printf '        a       b       c\n' | unexpand | cat -T

printf '         a       b       c\n' | unexpand | cat -T

printf '\t\ta\tb\tc\n' | expand | unexpand | cat -T

printf '    \ta b\n' | unexpand | cat -T

## Unexpand all blanks

printf '        a       b       c\n' | unexpand | cat -T

printf '        a       b       c\n' | unexpand -a | cat -T

printf 'riddled reached\n' | unexpand -a | cat -T

printf 'riddle  reached\n' | unexpand -a | cat -T

printf 'oh  hi  hello\n' | unexpand -a | cat -T

printf 'cart\bd    bard\n' | unexpand -a | cat -T

printf 'cart\bd    bard\n' | unexpand -a | cat -t

## Change tab stop width

printf '\ta\n\t\tb\n' | expand -t 2

printf '\ta\n\t\tb\n' | expand -t 2 | unexpand -t 2 | cat -T

printf 'a\tb\tc\td\te\n' | expand -t 3,7

printf 'a  b   c d e\n' | unexpand -t 3,7 | cat -T

printf 'a\tb\tc\td\te\n' | expand -t 3,7 | unexpand -t 3,7 | cat -T

printf 'a\tb\tc\td\te\tf\n' | expand -t 3,/7

printf 'a  b   c      d      e      f\n' | unexpand -t 3,/7 | cat -T

printf 'a\tb\tc\td\te\tf\n' | expand -t 3,+7

printf 'a  b      c      d      e      f\n' | unexpand -t 3,+7 | cat -T

