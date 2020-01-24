# Lecture Homework #3 Part 1

### 1. Find the number of winners for each Nobel prize (chemistry, economics, literature, medicine, peace, physics).
```
$ cat nobel.csv | cut -d',' -f3 | grep -iwc chemistry
```
181

```
$ cat nobel.csv | cut -d',' -f3 | grep -iwc economics
```
81

```
$ cat nobel.csv | cut -d',' -f3 | grep -iwc literature
```
114

```
$ cat nobel.csv | cut -d',' -f3 | grep -iwc medicine
```
216

```
$ cat nobel.csv | cut -d',' -f3 | grep -iwc peace
```
133

```
$ cat nobel.csv | cut -d',' -f3 | grep -iwc physics
```
210

------
### 2. Find the winners of multiple Nobel prizes.
```
$ cat nobel.csv | cut -d',' -f5-6 | tail +2 | sort | uniq -d
```
"Comité international de la Croix Rouge (International Committee of the Red Cross)",NA

"Frederick","Sanger"

"John","Bardeen"

"Linus Carl","Pauling"

"Marie","Curie

"Office of the United Nations High Commissioner for Refugees (UNHCR)",NA
 
------
### 3. Find the most common surnames among the winners.
```
$ cat nobel.csv | cut -d',' -f6 | tail +2 | sort | uniq -c | sort -nr | head -n6
```
31 NA
5 "Smith"
4 "Wilson"
4 "Fischer"
3 "Müller"
3 "Lewis"

------
### 4. The Nobel prizes have not been awarded every year since 1901. Which one has been awarded the most? Which the least?
```
$ cat nobel.csv | cut -d',' -f2 | tail +2 | sort | uniq -c | sort -nr | head -n1
```
15 2001

```
$ cat nobel.csv | cut -d',' -f2 | tail +2 | sort | uniq -c | sort -n | head -n1
```
1 1916

