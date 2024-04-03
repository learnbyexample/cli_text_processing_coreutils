# Exercises

>![info](../images/info.svg) For solutions, see [Exercise_solutions.md](https://github.com/learnbyexample/cli_text_processing_coreutils/tree/main/exercises/Exercise_solutions.md).

<br>

# cat and tac

**1)** The given sample data has empty lines at the start and end of the input. Also, there are multiple empty lines between the paragraphs. How would you get the output shown below?

```bash
# note that there's an empty line at the end of the output
$ printf '\n\n\ndragon\n\n\n\nunicorn\nbee\n\n\n' | ##### add your solution here

     1  dragon

     2  unicorn
     3  bee

```

**2)** Pass appropriate arguments to the `cat` command to get the output shown below.

```bash
$ cat greeting.txt
Hi there
Have a nice day

$ echo '42 apples and 100 bananas' | cat ##### add your solution here
42 apples and 100 bananas
Hi there
Have a nice day
```

**3)** What does the `-v` option of the `cat` command do?

**4)** Which options of the `cat` command do the following stand in for?

* `-e` option is equivalent to
* `-t` option is equivalent to
* `-A` option is equivalent to

**5)** Will the two commands shown below produce the same output? If not, why not?

```bash
$ cat fruits.txt ip.txt | tac

$ tac fruits.txt ip.txt
```

**6)** Reverse the contents of `blocks.txt` file as shown below, considering `----` as the separator.

```bash
$ cat blocks.txt
----
apple--banana
mango---fig
----
3.14
-42
1000
----
sky blue
dark green
----
hi hello

##### add your solution here
----
hi hello
----
sky blue
dark green
----
3.14
-42
1000
----
apple--banana
mango---fig
```

**7)** For the `blocks.txt` file, write solutions to display only the last such group and last two groups.

```bash
##### add your solution here
----
hi hello

##### add your solution here
----
sky blue
dark green
----
hi hello
```

**8)** Reverse the contents of `items.txt` as shown below. Consider digits at the start of lines as the separator.

```bash
$ cat items.txt
1) fruits
apple 5
banana 10
2) colors
green
sky blue
3) magical beasts
dragon 3
unicorn 42

##### add your solution here
3) magical beasts
dragon 3
unicorn 42
2) colors
green
sky blue
1) fruits
apple 5
banana 10
```

<br>

# head and tail

**1)** Use appropriate commands and shell features to get the output shown below.

```bash
$ printf 'carpet\njeep\nbus\n'
carpet
jeep
bus

# use the above 'printf' command for input data
$ c=##### add your solution here
$ echo "$c"
car
```

**2)** How would you display all the input lines except the first one?

```bash
$ printf 'apple\nfig\ncarpet\njeep\nbus\n' | ##### add your solution here
fig
carpet
jeep
bus
```

**3)** Which command would you use to get the output shown below?

```bash
$ cat fruits.txt
banana
papaya
mango
$ cat blocks.txt
----
apple--banana
mango---fig
----
3.14
-42
1000
----
sky blue
dark green
----
hi hello

##### add your solution here
==> fruits.txt <==
banana
papaya

==> blocks.txt <==
----
apple--banana
```

**4)** Use a combination of `head` and `tail` commands to get the 11th to 14th characters from the given input.

```bash
$ printf 'apple\nfig\ncarpet\njeep\nbus\n' | ##### add your solution here
carp
```

**5)** Extract the starting six bytes from the input files `ip.txt` and `fruits.txt`.

```bash
##### add your solution here
it is banana
```

**6)** Extract the last six bytes from the input files `fruits.txt` and `ip.txt`.

```bash
##### add your solution here
mango
erish
```

**7)** For the input file `ip.txt`, display except the last 5 lines.

```bash
##### add your solution here
it is a warm and cozy day
listen to what I say
go play in the park
come back before the sky turns dark
```

**8)** Display the third line from the given `stdin` data. Consider the NUL character as the line separator.

```bash
$ printf 'apple\0fig\0carpet\0jeep\0bus\0' | ##### add your solution here
carpet
```

<br>

# tr

**1)** What's wrong with the following command?

```bash
$ echo 'apple#banana#cherry' | tr # :
```

**2)** Retain only alphabets, digits and whitespace characters.

```bash
$ printf 'Apple_42  cool,blue\tDragon:army\n' | ##### add your solution here
Apple42  coolblue       Dragonarmy
```

**3)** Similar to rot13, figure out a way to shift digits such that the same logic can be used both ways.

```bash
$ echo '4780 89073' | ##### add your solution here
9235 34528

$ echo '9235 34528' | ##### add your solution here
4780 89073
```

**4)** Figure out the logic based on the given input and output data. Hint: use two ranges for the first set and only 6 characters in the second set.

```bash
$ echo 'apple banana cherry damson etrog' | ##### add your solution here
1XXl5 21n1n1 3h5XXX 41mXon 5XXog
```

**5)** Which option would you use to truncate the first set so that it matches the length of the second set?

**6)** What does the `*` notation do in the second set?

**7)** Change `:` to `-` and `;` to the newline character.

```bash
$ echo 'tea:coffee;brown:teal;dragon:unicorn' | ##### add your solution here
tea-coffee
brown-teal
dragon-unicorn
```

**8)** Convert all characters to `*` except digit and newline characters.

```bash
$ echo 'ajsd45_sdg2Khnf4v_54as' | ##### add your solution here
****45****2****4**54**
```

**9)** Change consecutive repeated punctuation characters to a single punctuation character.

```bash
$ echo '""hi..."", good morning!!!!' | ##### add your solution here
"hi.", good morning!
```

**10)** Figure out the logic based on the given input and output data.

```bash
$ echo 'Aapple    noon     banana!!!!!' | ##### add your solution here
:apple:noon:banana:
```

**11)** The `books.txt` file has items separated by one or more `:` characters. Change this separator to a single newline character as shown below.

```bash
$ cat books.txt
Cradle:::Mage Errant::The Weirkey Chronicles
Mother of Learning::Eight:::::Dear Spellbook:Ascendant
Mark of the Fool:Super Powereds:::Ends of Magic

##### add your solution here
Cradle
Mage Errant
The Weirkey Chronicles
Mother of Learning
Eight
Dear Spellbook
Ascendant
Mark of the Fool
Super Powereds
Ends of Magic
```

<br>

# cut

**1)** Display only the third field.

```bash
$ printf 'tea\tcoffee\tchocolate\tfruit\n' | ##### add your solution here
chocolate
```

**2)** Display the second and fifth fields. Consider `,` as the field separator.

```bash
$ echo 'tea,coffee,chocolate,ice cream,fruit' | ##### add your solution here
coffee,fruit
```

**3)** Why does the below command not work as expected? What other tools can you use in such cases?

```bash
# not working as expected
$ echo 'apple,banana,cherry,fig' | cut -d, -f3,1,3
apple,cherry

# expected output
$ echo 'apple,banana,cherry,fig' | ##### add your solution here
cherry,apple,cherry
```

**4)** Display except the second field in the format shown below. Can you construct two different solutions?

```bash
# solution 1
$ echo 'apple,banana,cherry,fig' | ##### add your solution here
apple cherry fig

# solution 2
$ echo '2,3,4,5,6,7,8' | ##### add your solution here
2 4 5 6 7 8
```

**5)** Extract the first three characters from the input lines as shown below. Can you also use the `head` command for this purpose? If not, why not?

```bash
$ printf 'apple\nbanana\ncherry\nfig\n' | ##### add your solution here
app
ban
che
fig
```

**6)** Display only the first and third fields of the `scores.csv` input file, with tab as the output field separator.

```bash
$ cat scores.csv
Name,Maths,Physics,Chemistry
Ith,100,100,100
Cy,97,98,95
Lin,78,83,80

##### add your solution here
Name    Physics
Ith     100
Cy      98
Lin     83
```

**7)** The given input data uses one or more `:` characters as the field separator. Assume that no field content will have the `:` character. Display except the second field, with ` : ` as the output field separator.

```bash
$ cat books.txt
Cradle:::Mage Errant::The Weirkey Chronicles
Mother of Learning::Eight:::::Dear Spellbook:Ascendant
Mark of the Fool:Super Powereds:::Ends of Magic

##### add your solution here
Cradle : The Weirkey Chronicles
Mother of Learning : Dear Spellbook : Ascendant
Mark of the Fool : Ends of Magic
```

**8)** Which option would you use to not display lines that do not contain the input delimiter character?

**9)** Modify the command to get the expected output shown below.

```bash
$ printf 'apple\nbanana\ncherry\n' | cut -c-3 --output-delimiter=:
app
ban
che

$ printf 'apple\nbanana\ncherry\n' | ##### add your solution here
a:p:p
b:a:n
c:h:e
```

**10)** Figure out the logic based on the given input and output data.

```bash
$ printf 'apple\0fig\0carpet\0jeep\0' | ##### add your solution here | cat -v
ple^@g^@rpet^@ep^@
```

<br>

# seq

**1)** Generate numbers from `42` to `45` in ascending order.

```bash
##### add your solution here
42
43
44
45
```

**2)** Why does the command shown below produce no output?

```bash
# no output
$ seq 45 42

# expected output
##### add your solution here
45
44
43
42
```

**3)** Generate numbers from `25` to `10` in descending order, with a step value of `5`.

```bash
##### add your solution here
25
20
15
10
```

**4)** Is the sequence shown below possible to generate with `seq`? If so, how?

```bash
##### add your solution here
01.5,02.5,03.5,04.5,05.5
```

**5)** Modify the command shown below to customize the output numbering format.

```bash
$ seq 30.14 3.36 40.72
30.14
33.50
36.86
40.22

##### add your solution here
3.014e+01
3.350e+01
3.686e+01
4.022e+01
```

<br>

# shuf

**1)** What's wrong with the given command?

```bash
$ shuf --random-source=greeting.txt fruits.txt books.txt
shuf: extra operand ‘books.txt’
Try 'shuf --help' for more information.

# expected output
##### add your solution here
banana
Cradle:::Mage Errant::The Weirkey Chronicles
Mother of Learning::Eight:::::Dear Spellbook:Ascendant
papaya
Mark of the Fool:Super Powereds:::Ends of Magic
mango
```

**2)** What do the `-r` and `-n` options do? Why are they often used together?

**3)** What does the following command do?

```bash
$ shuf -e apple banana cherry fig mango
```

**4)** Which option would you use to generate random numbers? Given an example.

**5)** How would you generate 5 random numbers between `0.125` and `0.789` with a step value of `0.023`?

```bash
# output shown below is a sample, might differ for you
##### add your solution here
0.378
0.631
0.447
0.746
0.723
```

<br>

# paste

**1)** What's the default delimiter character added by the `paste` command? Which option would you use to customize this separator?

**2)** Will the following two commands produce equivalent output? If not, why not?

```bash
$ paste -d, <(seq 3) <(printf '%s\n' item_{1..3})

$ printf '%s\n' {1..3},item_{1..3}
```

**3)** Combine the two data sources as shown below.

```bash
$ printf '1)\n2)\n3)'
1)
2)
3)
$ cat fruits.txt
banana
papaya
mango

##### add your solution here
1)banana
2)papaya
3)mango
```

**4)** Interleave the contents of `fruits.txt` and `books.txt`.

```bash
##### add your solution here
banana
Cradle:::Mage Errant::The Weirkey Chronicles
papaya
Mother of Learning::Eight:::::Dear Spellbook:Ascendant
mango
Mark of the Fool:Super Powereds:::Ends of Magic
```

**5)** Generate numbers `1` to `9` in two different formats as shown below.

```bash
##### add your solution here
1:2:3
4:5:6
7:8:9

##### add your solution here
1 : 4 : 7
2 : 5 : 8
3 : 6 : 9
```

**6)** Combine the contents of `fruits.txt` and `colors.txt` as shown below. 

```bash
$ cat fruits.txt
banana
papaya
mango
$ cat colors.txt
deep blue
light orange
blue delight

##### add your solution here
banana,deep blue,papaya,light orange,mango,blue delight
```

<br>

# pr

**1)** What does the `-t` option do?

**2)** Generate numbers `1` to `16` in two different formats as shown below.

```bash
$ seq -w 16 | ##### add your solution here
01,02,03,04
05,06,07,08
09,10,11,12
13,14,15,16

$ seq -w 16 | ##### add your solution here
01,05,09,13
02,06,10,14
03,07,11,15
04,08,12,16
```

**3)** How'd you solve the issue shown below?

```bash
$ seq 100 | pr -37ats,
pr: page width too narrow
```

**4)** Combine the contents of `fruits.txt` and `colors.txt` in two different formats as shown below. 

```bash
$ cat fruits.txt
banana
papaya
mango
$ cat colors.txt
deep blue
light orange
blue delight

##### add your solution here
banana : deep blue
papaya : light orange
mango : blue delight

##### add your solution here
 1:banana,deep blue
 2:papaya,light orange
 3:mango,blue delight
```

**5)** What does the `-d` option do?

<br>

# fold and fmt

**1)** What's the default wrap length of the `fold` and `fmt` commands?

**2)** Fold the given `stdin` data at 9 bytes.

```bash
$ echo 'hi hello, how are you?' | ##### add your solution here
hi hello,
 how are 
you?
```

**3)** Figure out the logic based on the given input and output data using the `fold` command.

```bash
$ cat ip.txt
it is a warm and cozy day
listen to what I say
go play in the park
come back before the sky turns dark

There are so many delights to cherish
Apple, Banana and Cherry
Bread, Butter and Jelly
Try them all before you perish

##### add your solution here
it is a 
warm and 
cozy day
listen to 
what I say
```

**4)** What does the `fold -b` option do?

**5)** How'd you get the expected output shown below?

```bash
# wrong output
$ echo 'fig appleseed mango pomegranate' | fold -sw7
fig 
applese
ed 
mango 
pomegra
nate

# expected output
$ echo 'fig appleseed mango pomegranate' | ##### add your solution here
fig
appleseed
mango
pomegranate
```

**6)** What do the options `-s` and `-u` of the `fmt` command do?

<br>

# sort

**1)** Default `sort` doesn't work for numbers. Which option would you use to get the expected output shown below?

```bash
$ printf '100\n10\n20\n3000\n2.45\n' | sort ##### add your solution here
2.45
10
20
100
3000
```

**2)** Which `sort` option will help you ignore case? `LC_ALL=C` is used here to avoid differences due to locale.

```bash
$ printf 'Super\nover\nRUNE\ntea\n' | LC_ALL=C sort ##### add your solution here
over
RUNE
Super
tea
```

**3)** The `-n` option doesn't work for all sorts of numbers. Which `sort` option would you use to get the expected output shown below?

```bash
# wrong output
$ printf '+120\n-1.53\n3.14e+4\n42.1e-2' | sort -n
-1.53
+120
3.14e+4
42.1e-2

# expected output
$ printf '+120\n-1.53\n3.14e+4\n42.1e-2' | sort ##### add your solution here
-1.53
42.1e-2
+120
3.14e+4
```

**4)** What do the `-V` and `-h` options do?

**5)** Is there a difference between `shuf` and `sort -R`?

**6)** Sort the `scores.csv` file numerically in ascending order using the contents of the second field. Header line should be preserved as the first line as shown below.

```bash
$ cat scores.csv
Name,Maths,Physics,Chemistry
Ith,100,100,100
Cy,97,98,95
Lin,78,83,80

##### add your solution here
Name,Maths,Physics,Chemistry
Lin,78,83,80
Cy,97,98,95
Ith,100,100,100
```

**7)** Sort the contents of `duplicates.csv` by the fourth column numbers in descending order. Retain only the first copy of lines with the same number.

```bash
$ cat duplicates.csv
brown,toy,bread,42
dark red,ruby,rose,111
blue,ruby,water,333
dark red,sky,rose,555
yellow,toy,flower,333
white,sky,bread,111
light red,purse,rose,333

##### add your solution here
dark red,sky,rose,555
blue,ruby,water,333
dark red,ruby,rose,111
brown,toy,bread,42
```

**8)** Sort the contents of `duplicates.csv` by the third column item. Use the fourth column numbers as the tie-breaker.

```bash
##### add your solution here
brown,toy,bread,42
white,sky,bread,111
yellow,toy,flower,333
dark red,ruby,rose,111
light red,purse,rose,333
dark red,sky,rose,555
blue,ruby,water,333
```

**9)** What does the `-s` option provide?

**10)** Sort the given input based on the numbers inside the brackets.

```bash
$ printf '(-3.14)\n[45]\n(12.5)\n{14093}' | ##### add your solution here
(-3.14)
(12.5)
[45]
{14093}
```

**11)** What do the `-c`, `-C` and `-m` options do?

<br>

# uniq

**1)** Will `uniq` throw an error if the input is not sorted? What do you think will be the output for the following input?

```bash
$ printf 'red\nred\nred\ngreen\nred\nblue\nblue' | uniq
```

**2)** Are there differences between `sort -u file` and `sort file | uniq`?

**3)** What are the differences between `sort -u` and `uniq -u` options, if any?

**4)** Filter the third column items from `duplicates.csv`. Construct three solutions to display only unique items, duplicate items and all duplicates.

```bash
$ cat duplicates.csv
brown,toy,bread,42
dark red,ruby,rose,111
blue,ruby,water,333
dark red,sky,rose,555
yellow,toy,flower,333
white,sky,bread,111
light red,purse,rose,333

# unique
##### add your solution here
flower
water

# duplicates
##### add your solution here
bread
rose

# all duplicates
##### add your solution here
bread
bread
rose
rose
rose
```

**5)** What does the `--group` option do? What customization features are available?

**6)** Count the number of times input lines are repeated and display the results in the format shown below.

```bash
$ s='brown\nbrown\nbrown\ngreen\nbrown\nblue\nblue'
$ printf '%b' "$s" | ##### add your solution here
      1 green
      2 blue
      4 brown
```

**7)** For the input file `f1.txt`, retain only unique entries based on the first two characters of each line. For example, `abcd` and `ab12` should be considered as duplicates and neither of them will be part of the output.

```bash
$ cat f1.txt
3) cherry
1) apple
2) banana
1) almond
4) mango
2) berry
3) chocolate
1) apple
5) cherry

##### add your solution here
4) mango
5) cherry
```

**8)** For the input file `f1.txt`, display only the duplicate items without considering the first two characters of each line. For example, `abcd` and `12cd` should be considered as duplicates. Assume that the third character of each line is always a space character.

```bash
##### add your solution here
1) apple
3) cherry
```

**9)** What does the `-s` option do?

**10)** Filter only unique lines, but ignore differences due to case.

```bash
$ printf 'cat\nbat\nCAT\nCar\nBat\nmat\nMat' | ##### add your solution here
Car
```

<br>

# comm

**1)** Get the common lines between the `s1.txt` and `s2.txt` files. Assume that their contents are already sorted.

```bash
$ paste s1.txt s2.txt
apple   banana
coffee  coffee
fig     eclair
honey   fig
mango   honey
pasta   milk
sugar   tea
tea     yeast

##### add your solution here
coffee
fig
honey
tea
```

**2)** Display lines present in `s1.txt` but not `s2.txt` and vice versa.

```bash
# lines unique to the first file
##### add your solution here
apple
mango
pasta
sugar

# lines unique to the second file
##### add your solution here
banana
eclair
milk
yeast
```

**3)** Display lines unique to the `s1.txt` file and the common lines when compared to the `s2.txt` file. Use `==>` to separate the output columns.

```bash
##### add your solution here
apple
==>coffee
==>fig
==>honey
mango
pasta
sugar
==>tea
```

**4)** What does the `--total` option do?

**5)** Will the `comm` command fail if there are repeated lines in the input files? If not, what'd be the expected output for the command shown below?

```bash
$ cat s3.txt
apple
apple
guava
honey
tea
tea
tea

$ comm -23 s3.txt s1.txt
```

<br>

# join

>![info](../images/info.svg) Assume that the input files are already sorted for these exercises.

**1)** Use appropriate options to get the expected outputs shown below.

```bash
# no output
$ join <(printf 'apple 2\nfig 5') <(printf 'Fig 10\nmango 4')

# expected output 1
##### add your solution here
fig 5 10

# expected output 2
##### add your solution here
apple 2
fig 5 10
mango 4
```

**2)** Use the `join` command to display only the non-matching lines based on the first field.

```bash
$ cat j1.txt
apple   2
fig     5
lemon   10
tomato  22
$ cat j2.txt
almond  33
fig     115
mango   20
pista   42

# first field items present in j1.txt but not j2.txt
##### add your solution here
apple 2
lemon 10
tomato 22

# first field items present in j2.txt but not j1.txt
##### add your solution here
almond 33
mango 20
pista 42
```

**3)** Filter lines from `j1.txt` and `j2.txt` that match the items from `s1.txt`.

```bash
$ cat s1.txt
apple
coffee
fig
honey
mango
pasta
sugar
tea

##### add your solution here
apple 2
fig 115
fig 5
mango 20
```

**4)** Join the `marks_1.csv` and `marks_2.csv` files to get the expected output shown below.

```bash
$ cat marks_1.csv
Name,Biology,Programming
Er,92,77
Ith,100,100
Lin,92,100
Sil,86,98
$ cat marks_2.csv
Name,Maths,Physics,Chemistry
Cy,97,98,95
Ith,100,100,100
Lin,78,83,80

##### add your solution here
Name,Biology,Programming,Maths,Physics,Chemistry
Ith,100,100,100,100,100
Lin,92,100,78,83,80
```

**5)** By default, the first field is used to combine the lines. Which options are helpful if you want to change the key field to be used for joining?

**6)** Join the `marks_1.csv` and `marks_2.csv` files to get the expected output with specific fields as shown below.

```bash
##### add your solution here
Name,Programming,Maths,Biology
Ith,100,100,100
Lin,100,78,92
```

**7)** Join the `marks_1.csv` and `marks_2.csv` files to get the expected output shown below. Use `50` as the filler data.

```bash
##### add your solution here
Name,Biology,Programming,Maths,Physics,Chemistry
Cy,50,50,97,98,95
Er,92,77,50,50,50
Ith,100,100,100,100,100
Lin,92,100,78,83,80
Sil,86,98,50,50,50
```

**8)** When you use the `-o auto` option, what'd happen to the extra fields compared to those in the first lines of the input data?

**9)** From the input files `j3.txt` and `j4.txt`, filter only the lines are unique — i.e. lines that are not common to these files. Assume that the input files do not have duplicate entries.

```bash
$ cat j3.txt
almond
apple pie
cold coffee
honey
mango shake
pasta
sugar
tea
$ cat j4.txt
apple
banana shake
coffee
fig
honey
mango shake
milk
tea
yeast

##### add your solution here
almond
apple
apple pie
banana shake
coffee
cold coffee
fig
milk
pasta
sugar
yeast
```

**10)** From the input files `j3.txt` and `j4.txt`, filter only the lines are common to these files.

```bash
##### add your solution here
honey
mango shake
tea
```

<br>

# nl

**1)** `nl` and `cat -n` are always equivalent for numbering lines. True or False?

**2)** What does the `-n` option do?

**3)** Use `nl` to produce the two expected outputs shown below.

```bash
$ cat greeting.txt
Hi there
Have a nice day

# expected output 1
##### add your solution here
001     Hi there
002     Have a nice day

# expected output 2
##### add your solution here
001) Hi there
002) Have a nice day
```

**4)** Figure out the logic based on the given input and output data.

```bash
$ cat s1.txt
apple
coffee
fig
honey
mango
pasta
sugar
tea

##### add your solution here
15. apple
13. coffee
11. fig
 9. honey
 7. mango
 5. pasta
 3. sugar
 1. tea
```

**5)** What are the three types of sections supported by `nl`?

**6)** Only number the lines that start with `----` in the format shown below.

```bash
$ cat blocks.txt
----
apple--banana
mango---fig
----
3.14
-42
1000
----
sky blue
dark green
----
hi hello

##### add your solution here
 1) ----
    apple--banana
    mango---fig
 2) ----
    3.14
    -42
    1000
 3) ----
    sky blue
    dark green
 4) ----
    hi hello
```

**7)** For the `blocks.txt` file, determine the logic to produce the expected output shown below.

```bash
##### add your solution here

1. apple--banana
2. mango---fig

1. 3.14
2. -42
3. 1000

1. sky blue
2. dark green

1. hi hello
```

**8)** What does the `-l` option do?

**9)** Figure out the logic based on the given input and output data.

```bash
$ cat all_sections.txt
\:\:\:
Header
teal
\:\:
Hi there
How are you
\:\:
banana
papaya
mango
\:
Footer

##### add your solution here

 1) Header
 2) teal

 3) Hi there
 4) How are you

 5) banana
 6) papaya
 7) mango

    Footer
```

<br>

# wc

**1)** Save the number of lines in the `greeting.txt` input file to the `lines` shell variable.

```bash
$ lines=##### add your solution here
$ echo "$lines"
2
```

**2)** What do you think will be the output of the following command?

```bash
$ echo 'dragons:2 ; unicorns:10' | wc -w
```

**3)** Use appropriate options and arguments to get the output as shown below. Also, why is the line count showing as `2` instead of `3` for the `stdin` data?

```bash
$ printf 'apple\nbanana\ncherry' | ##### add your solution here
      2      25 greeting.txt
      2      19 -
      4      44 total
```

**4)** Use appropriate options and arguments to get the output shown below.

```bash
$ printf 'greeting.txt\0scores.csv' | ##### add your solution here
2 6 25 greeting.txt
4 4 70 scores.csv
6 10 95 total
```

**5)** What is the difference between `wc -c` and `wc -m` options? And which option would you use to get the longest line length?

**6)** Calculate the number of comma separated words from the `scores.csv` file.

```bash
$ cat scores.csv
Name,Maths,Physics,Chemistry
Ith,100,100,100
Cy,97,98,95
Lin,78,83,80

##### add your solution here
16
```

<br>

# split

>![info](../images/info.svg) Remove the output files after every exercise.

**1)** Split the `s1.txt` file 3 lines at a time.

```bash
##### add your solution here

$ head xa?
==> xaa <==
apple
coffee
fig

==> xab <==
honey
mango
pasta

==> xac <==
sugar
tea

$ rm xa?
```

**2)** Use appropriate options to get the output shown below.

```bash
$ echo 'apple,banana,cherry,dates' | ##### add your solution here

$ head xa?
==> xaa <==
apple,
==> xab <==
banana,
==> xac <==
cherry,
==> xad <==
dates

$ rm xa?
```

**3)** What do the `-b` and `-C` options do?

**4)** Display the 2nd chunk of the `ip.txt` file after splitting it 4 times as shown below.

```bash
##### add your solution here
come back before the sky turns dark

There are so many delights to cherish
```

**5)** What does the `r` prefix do when used with the `-n` option?

**6)** Split the `ip.txt` file 2 lines at a time. Customize the output filenames as shown below.

```bash
##### add your solution here

$ head ip_*
==> ip_0.txt <==
it is a warm and cozy day
listen to what I say

==> ip_1.txt <==
go play in the park
come back before the sky turns dark

==> ip_2.txt <==

There are so many delights to cherish

==> ip_3.txt <==
Apple, Banana and Cherry
Bread, Butter and Jelly

==> ip_4.txt <==
Try them all before you perish

$ rm ip_*
```

**7)** Which option would you use to prevent empty files in the output?

**8)** Split the `items.txt` file 5 lines at a time. Additionally, remove lines starting with a digit character as shown below.

```bash
$ cat items.txt
1) fruits
apple 5
banana 10
2) colors
green
sky blue
3) magical beasts
dragon 3
unicorn 42

##### add your solution here

$ head xa?
==> xaa <==
apple 5
banana 10
green

==> xab <==
sky blue
dragon 3
unicorn 42

$ rm xa?
```

<br>

# csplit

>![info](../images/info.svg) Remove the output files after every exercise.

**1)** Split the `blocks.txt` file such that the first 7 lines are in the first file and the rest are in the second file as shown below.

```bash
##### add your solution here

$ head xx*
==> xx00 <==
----
apple--banana
mango---fig
----
3.14
-42
1000

==> xx01 <==
----
sky blue
dark green
----
hi hello

$ rm xx*
```

**2)** Split the input file `items.txt` such that the text before a line containing `colors` is part of the first file and the rest are part of the second file as shown below.

```bash
##### add your solution here

$ head xx*
==> xx00 <==
1) fruits
apple 5
banana 10

==> xx01 <==
2) colors
green
sky blue
3) magical beasts
dragon 3
unicorn 42

$ rm xx*
```

**3)** Split the input file `items.txt` such that the line containing `magical` and all the lines that come after are part of the single output file.

```bash
##### add your solution here

$ cat xx00
3) magical beasts
dragon 3
unicorn 42

$ rm xx00
```

**4)** Split the input file `items.txt` such that the line containing `colors` as well the line that comes after are part of the first output file.

```bash
##### add your solution here

$ head xx*
==> xx00 <==
1) fruits
apple 5
banana 10
2) colors
green

==> xx01 <==
sky blue
3) magical beasts
dragon 3
unicorn 42

$ rm xx*
```

**5)** Split the input file `items.txt` on the line that comes before a line containing `magical`. Generate only a single output file as shown below.

```bash
##### add your solution here

$ cat xx00
sky blue
3) magical beasts
dragon 3
unicorn 42

$ rm xx00
```

**6)** Split the input file `blocks.txt` on the 4th occurrence of a line starting with the `-` character. Generate only a single output file as shown below.

```bash
##### add your solution here

$ cat xx00
----
sky blue
dark green
----
hi hello

$ rm xx00
```

**7)** For the input file `blocks.txt`, determine the logic to produce the expected output shown below.

```bash
##### add your solution here

$ head xx*
==> xx00 <==
apple--banana
mango---fig

==> xx01 <==
3.14
-42
1000

==> xx02 <==
sky blue
dark green

==> xx03 <==
hi hello

$ rm xx*
```

**8)** What does the `-k` option do?

**9)** Split the `books.txt` file on every line as shown below.

```bash
##### add your solution here
csplit: ‘1’: line number out of range on repetition 3

$ head row_*
==> row_0 <==
Cradle:::Mage Errant::The Weirkey Chronicles

==> row_1 <==
Mother of Learning::Eight:::::Dear Spellbook:Ascendant

==> row_2 <==
Mark of the Fool:Super Powereds:::Ends of Magic

$ rm row_*
```

**10)** Split the `items.txt` file on lines starting with a digit character. Matching lines shouldn't be part of the output and the files should be named `group_0.txt`, `group_1.txt` and so on.

```bash
##### add your solution here

$ head group_*
==> group_0.txt <==
apple 5
banana 10

==> group_1.txt <==
green
sky blue

==> group_2.txt <==
dragon 3
unicorn 42

$ rm group_*
```

<br>

# expand and unexpand

**1)** The `items.txt` file has space separated words. Convert the spaces to be aligned at 10 column widths as shown below.

```bash
$ cat items.txt
1) fruits
apple 5
banana 10
2) colors
green
sky blue
3) magical beasts
dragon 3
unicorn 42

##### add your solution here
1)        fruits
apple     5
banana    10
2)        colors
green
sky       blue
3)        magical   beasts
dragon    3
unicorn   42
```

**2)** What does the `expand -i` option do?

**3)** Expand the first tab character to stop at the 10th column and the second one at the 16th column. Rest of the tabs should be converted to a single space character.

```bash
$ printf 'app\tfix\tjoy\tmap\ttap\n' | ##### add your solution here
app       fix   joy map tap

$ printf 'appleseed\tfig\tjoy\n' | ##### add your solution here
appleseed fig   joy

$ printf 'a\tb\tc\td\te\n' | ##### add your solution here
a         b     c d e
```

**4)** Will the following code give back the original input? If not, is there an option that can help?

```bash
$ printf 'a\tb\tc\n' | expand | unexpand
```

**5)** How do the `+` and `/` prefix modifiers affect the `-t` option?

<br>

# basename and dirname

**1)** Is the following command valid? If so, what would be the output?

```bash
$ basename -s.txt ~///test.txt///
```

**2)** Given the file path in the shell variable `p`, how'd you obtain the outputs shown below?

```bash
$ p='~/projects/square_tictactoe/python/game.py'
##### add your solution here
~/projects/square_tictactoe

$ p='/backups/jan_2021.tar.gz'
##### add your solution here
/
```

**3)** What would be the output of the `basename` command if the input has no leading directory component or only has the `/` character?

**4)** For the paths stored in the shell variable `p`, how'd you obtain the outputs shown below?

```bash
$ p='/a/b/ip.txt /c/d/e/f/op.txt'

# expected output 1
##### add your solution here
ip
op

# expected output 2
##### add your solution here
/a/b
/c/d/e/f
```

**5)** Given the file path in the shell variable `p`, how'd you obtain the outputs shown below?

```bash
$ p='~/projects/python/square_tictactoe/game.py'
##### add your solution here
square_tictactoe

$ p='/backups/aug_2024/ip.tar.gz'
##### add your solution here
aug_2024
```

