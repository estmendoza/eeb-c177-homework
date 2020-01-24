# Lecture Homework #3 Part 2

1. Count the number of occurrences for each category (EX, RE, etc.).
```
$ cat European_Red_List.csv | cut -d',' -f10 | tail +2 | grep -iwc EX
```
> 29

```
$ cat European_Red_List.csv | cut -d',' -f10 | tail +2 | grep -iwc RE
```
> 8

```
$ cat European_Red_List.csv | cut -d',' -f10 | tail +2 | grep -iwc CR
```
> 464

```
$ cat European_Red_List.csv | cut -d',' -f10 | tail +2 | grep -iwc EN
```
> 687

```
$ cat European_Red_List.csv | cut -d',' -f10 | tail +2 | grep -iwc VU
```
> 885

```
$ cat European_Red_List.csv | cut -d',' -f10 | tail +2 | grep -iwc NT
```
> 964

```
$ cat European_Red_List.csv | cut -d',' -f10 | tail +2 | grep -iwc LC
```
> 5805

```
$ cat European_Red_List.csv | cut -d',' -f10 | tail +2 | grep -iwc DD
```
> 2409

```
$ cat European_Red_List.csv | cut -d',' -f10 | tail +2 | grep -iwc NA
```
> 411

------
2. Repeat the previous step, but only consider birds (class AVES).
```
$ cat European_Red_List.csv | cut -d',' -f4,10 | tail +2 | grep AVES | grep -iwc EX
```
> 2

```
$ cat European_Red_List.csv | cut -d',' -f4,10 | tail +2 | grep AVES | grep -iwc RE
```
> 4

```
$ cat European_Red_List.csv | cut -d',' -f4,10 | tail +2 | grep AVES | grep -iwc CR
```
> 10

```
$ cat European_Red_List.csv | cut -d',' -f4,10 | tail +2 | grep AVES | grep -iwc EN
```
> 18

```
$ cat European_Red_List.csv | cut -d',' -f4,10 | tail +2 | grep AVES | grep -iwc VU
```
> 39

```
$ cat European_Red_List.csv | cut -d',' -f4,10 | tail +2 | grep AVES | grep -iwc NT
```
> 32

```
$ cat European_Red_List.csv | cut -d',' -f4,10 | tail +2 | grep AVES | grep -iwc LC
```
> 428

```
$ cat European_Red_List.csv | cut -d',' -f4,10 | tail +2 | grep AVES | grep -iwc DD
```
> 0

```
$ cat European_Red_List.csv | cut -d',' -f4,10 | tail +2 | grep AVES | grep -iwc NA
```
> 0

------
3. For each order of birds, compute the number of extinct/near extinct (EX, RE or CE) species.
```
$ cat European_Red_List.csv | cut -d',' -f4,5,10 | tail +2 | grep AVES | cut -d',' -f2,3 | grep -iw EX | uniq -c
```
> 2 CHARADRIIFORMES,EX

```
$ cat European_Red_List.csv | cut -d',' -f4,5,10 | tail +2 | grep AVES | cut -d',' -f2,3 | grep -iw RE | uniq -c
```
> 1 CHARADRIIFORMES,RE
> 1 PASSERIFORMES,RE
> 1 PELECANIFORMES,RE
> 1 SULIFORMES,RE

```
$ cat European_Red_List.csv | cut -d',' -f4,5,10 | tail +2 | grep AVES | cut -d',' -f2,3 | grep -iw CE | uniq -c
```
> *NOTHING RETURNED*

