# Homework Part 3

## Pipe

1. 
```
$ cd ~/Developer/repos/CSB/unix/data/
$ ls | wc -l > pipe-data-lines.txt
```

2. 
```
$ cd ~/Developer/repos/CSB/unix/data/miRNA
$ cat *.fasta | wc -m > fasta-cat.txt
```

## Cut

1. 
```
$ head Pacifici2013_data.csv
$ nano Pacifici-delim.txt
```

2. 
```
$ head -n 11 Pacifici2013_data | cut -d ";" -f3
```


## Tail

1. 
```
$ head -n 11 Pacifici2013_data.csv | cut -d';' -f1 | tail -n +2 
```

2. 
```
$ head -n 11 Pacifici2013_data.csv | cut -d';' -f1 | tail -n +2 > Pacifici-ten.txt
```

3. 
```
$ history > hw2-part3-commands.txt
```
