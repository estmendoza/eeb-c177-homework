# Extra Credit

## 1.10.1

2. What is the size of the file?
`
ls -sh my_file.fasta
`
> 556K my_file.fasta

4. How many contigs are classified as isogroup00036?
`grep -n "isogroup00036" my_file.fasta | wc -l`
> 16

5. Replace the original "two-spaces" delimiter with a comma.
`head my_file.fasta | tr -s ' ' ','`

6. How many unique isogroups are in the file?
`cat my_file.fasta | cut -sd' ' -f7 | tr ' ' ',' | uniq | wc -l`
> 43 

7. Which contig has the highest number of reads (numreads)? How many reads does it have? 
`cat my_file.fasta | cut -sd' ' -f5,1 | sort -k2`
> contig00329 numreads=995



## 1.10.2

1. How many times were the levels of individual 3 recorded?
`cat Gesquiere2011_data.csv | cut -f1 | grep -wc 3`
> 61
2. How many times were the levels of individual 27 recorded?
`cat Gesquiere2011_data.csv | cut -f1 | grep -wc 27`
> 5

3. Write a script taking as input the file name and the ID of the individual, and returning the number of records for that ID. 
`touch 1.10.2_Q2_EC.sh`
`gedit 1.10.2_Q2_EC.sh &`
`echo "what is the animal ID #?"
read ID
x=$(cat Gesquiere2011_data.csv | cut -f1 | grep -wc $ID)
echo "$x records for ID #$ID."`
`bash 1.10.2_Q2_EC.sh`

4. Write a script that returns the number of times each individual was sampled. 
`touch 1.10.2_Q3_EC.sh`
`gedit 1.10.2_Q3_EC.sh &`
`for x in {1..127}
	do y=$(cat Gesquiere2011_data.csv | cut -f1 | grep -wc $x)
echo "$y samples for ID #$x"
done`
`bash 1.10.3_Q2_EC.sh`

