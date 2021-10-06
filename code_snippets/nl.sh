## Default numbering

nl greeting.txt fruits.txt nums.txt

printf 'apple\n\nbanana\n\ncherry\n' | nl

## Number formatting

nl -n'rn' greeting.txt

nl -n'rz' greeting.txt

nl -n'ln' greeting.txt

## Customize width

nl -w2 greeting.txt

## Customize separator

nl -w2 -s' ' greeting.txt

nl -w1 -s' --> ' greeting.txt

## Starting number and increment

nl -v10 greeting.txt

nl -v-1 fruits.txt

nl -w2 -s') ' -i2 greeting.txt fruits.txt nums.txt

## Section wise numbering

cat body.txt

nl -w1 -s' ' body.txt

cat header_body.txt

nl -w1 -s' ' header_body.txt

cat all_sections.txt

nl -w1 -s' ' all_sections.txt

nl -w1 -s' ' -ha -fa all_sections.txt

nl -p -w1 -s' ' all_sections.txt

nl -p -w1 -s' ' -ha -fa all_sections.txt

cat body_sep.txt

nl -w1 -s' ' -d'%=' body_sep.txt

## Section numbering criteria

printf 'apple\n\nbanana\n\ncherry\n' | nl -w1 -s' ' -ba

printf 'a\n\n\n\n\nb\n\nc' | nl -w1 -s' ' -ba -l2

nl -w1 -s' ' -bp'^[ct]' purchases.txt

