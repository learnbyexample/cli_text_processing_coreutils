## Integer sequences

seq 3

seq 25434 25437

seq -5 -3

seq 1000 5 1010

seq 3 1

seq 3 -1 1

seq 5 -5 -10

## Floating-point sequences

seq 0.5 3

seq 0.25 0.33 1.12

seq 1.2e2 1.22e2

seq 1.2e2 0.752 1.22e2

## Customizing separator

seq -s' ' 4

seq -s: -2 0.75 3

seq -s' - ' 4

seq -s$'\n\n' 4

## Leading zeros

seq 008 010

seq -w 8 10

seq -w 0003

## printf style formatting

seq -f'%g' -s: 1 0.75 3

seq -f'%.4f' -s: 1 0.75 3

seq -f'%.3e' 1.2e2 0.752 1.22e2

## Limitations

seq 100000000000000000000 3 100000000000000000010

seq 100000000000000000000000000000 100000000000000000000000000005

