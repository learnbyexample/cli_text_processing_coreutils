pr greeting.txt | head

## Columnate

seq 9 | pr -3t

seq 9 | pr -3ts

seq 9 | pr -3ts,

seq 9 | pr -3ts' : '

seq 8 | pr -4ats:

seq 10 | pr -4ats,

seq 10 | paste -d, - - - -

## Customizing page width

seq 100 | pr -50ats,

pr -w6 -2ts, greeting.txt

pr -J -w6 -2ts, greeting.txt

seq 6 | pr -J -w10 -3ats'::::'

seq 6 | pr -J -w11 -3ats'::::'

seq 6 | pr -J -w500 -3ats'::::'

## Concatenating files column wise

pr -mts colors_1.txt colors_2.txt

pr -mts' : ' <(seq 3) <(seq 4 6)

pr -n:1 -mts, colors_1.txt colors_2.txt

pr -mts$'\n' greeting.txt fruits.txt

## Miscellaneous

pr -dt fruits.txt

printf 'car\bt\r\nbike\0p\r\n' | pr -vt

printf 'a\nb\nc' | pr -t

