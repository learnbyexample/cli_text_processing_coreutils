## Three column output

paste colors_1.txt colors_2.txt

comm colors_1.txt colors_2.txt

comm <(seq 3) <(seq 2 5)

comm --output-delimiter=, <(seq 3) <(seq 2 5)

## Suppressing columns

comm -3 colors_1.txt colors_2.txt

comm -12 colors_1.txt colors_2.txt

comm -23 colors_1.txt colors_2.txt

comm -13 colors_1.txt colors_2.txt

comm --total -123 colors_1.txt colors_2.txt

## Duplicate lines

paste list_1.txt list_2.txt

comm list_1.txt list_2.txt

## NUL separator

comm -z -12 <(printf 'a\0b\0c') <(printf 'a\0c\0x') | cat -v

