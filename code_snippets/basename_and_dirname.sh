## Extract filename from path

basename /home/learnbyexample/example_files/scores.csv

basename 'path with spaces/report.log'

basename /home/learnbyexample/example_files/

basename filename.txt

basename /

## Remove file extension

basename -s'.csv' /home/learnbyexample/example_files/scores.csv

basename -s'_2' final_report.txt_2

basename -s'.tar.gz' /backups/jan_2021.tar.gz

basename -s'.txt' purchases.txt.txt

basename -s'report' /backups/report

basename example_files/scores.csv .csv

## Remove filename from path

dirname /home/learnbyexample/example_files/scores.csv

dirname /home/learnbyexample/example_files/

## Multiple arguments

basename -a /backups/jan_2021.tar.gz /home/learnbyexample/report.log

basename -s'.txt' logs/purchases.txt logs/report.txt

dirname /home/learnbyexample/example_files/scores.csv ../report/backups/

## Combining basename and dirname

basename $(dirname /home/learnbyexample/example_files/scores.csv)

## NUL separator

basename -zs'.txt' logs/purchases.txt logs/report.txt | cat -v

basename -z logs/purchases.txt | cat -v

dirname -z example_files/scores.csv ../report/backups/ | cat -v

