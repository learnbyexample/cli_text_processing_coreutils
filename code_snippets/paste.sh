## Concatenating files column wise

cat colors_1.txt

cat colors_2.txt

paste colors_1.txt colors_2.txt

seq 5 | paste -d, - <(seq 6 10)

paste -d'|' <(seq 3) <(seq 4 5) <(seq 6 8)

paste -d '' <(seq 3) <(seq 6 8)

## Interleaving lines

paste -d'\n' <(seq 11 13) <(seq 101 103)

## Multiple columns from single input

seq 10 | paste -d, - -

seq 10 | paste -d: - - - - -

<colors_1.txt paste -d: - - -

seq 6 | paste - nums.txt -

printf 'x %.s' a b c

printf -- '- %.s' {1..5}

seq 10 | paste -d, $(printf -- '- %.s' {1..5})

## Multicharacter delimiters

paste -d',-' <(seq 3) <(seq 4 6) <(seq 7 9)

paste -d',-:;.[]' <(seq 3) <(seq 4 6) <(seq 7 9) <(seq 10 12)

seq 10 | paste -d':,' - - - - -

paste -d' : ' <(seq 3) /dev/null /dev/null <(seq 4 6)

> e

paste -d' :  - ' <(seq 3) e e <(seq 4 6) e e <(seq 7 9)

## Serialize

paste -sd, colors_1.txt

printf 'apple\nbanana\ncherry' | paste -sd-

paste -sd: colors_1.txt colors_2.txt

paste -sd, <(seq 3) <(seq 5 9)

## NUL separator

printf 'a\0b\0c\0d\0' | paste -z -d: - - | cat -v

