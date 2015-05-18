#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q idra
#
# optimal script: launch optimal solver and then the validator

./bin/optimalRoster n050w8 1 1 7 8 5 7 4 1 8 n050w8_1_1-7-8-5-7-4-1-8 > outfiles/Competition/n050w8_1_1-7-8-5-7-4-1-8/log.txt

instance=n050w8
weeksValue=(1 7 8 5 7 4 1 8 )

demand0="WD-${instance}-"
solutionFile="outfiles/Competition/n050w8_1_1-7-8-5-7-4-1-8/OptSol-n050w8-17857418-"
weeks=""
sols=""
i=0

for var in ${weeksValue[*]}
do
demand[$i]="datasets/${instance}/${demand0}${var}.txt"
weeks="${weeks} ${demand[$i]}"
solution[$i]="${solutionFile}${var}-${i}.txt"
sols="${sols} ${solution[$i]}"
((i++))
done

java -jar validator.jar --sce datasets/n050w8/Sc-n050w8.txt --his datasets/n050w8/H0-n050w8-1.txt --weeks $weeks --sols $sols > outfiles/Competition/n050w8_1_1-7-8-5-7-4-1-8/validatorOutput.txt 

exit 0;
