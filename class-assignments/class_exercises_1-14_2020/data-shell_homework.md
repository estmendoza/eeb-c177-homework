# Data-Shell Homework

### Moving the ZIP
`mv ~/Downloads/data-shell.zip ~/Developer/repos/eeb-c177-homework/class-assignments/class_exercises_1-14_2020` 


### Unzipping the File
`unzip data-shell.zip` 
`cd data-shell`


### Creating a Directory
`mkdir thesis`


### Creating a Text File
`Cd thesis`
`Nano draft.txt`
> 1. Write in the text editor
> 2. *Ctrl O* to write file
> 3. *Return* to save file
> 4. *Ctrl X* to exit file


### Creating a file a different way
`touch my_file.txt`


### Moving Files and Directories
`cd ~/Developer/repos/eeb-c177-homework/class-assignments/class_exercises_1-14_2020/data-shell`
`mv thesis/draft.txt thesis/quotes.txt` 
> changed file name in same (thesis) directory
`mv thesis/quotes.txt .` 
> moved file into previous (data-shell) directory


### Copying Files and Directories
`Cp quotes.txt thesis/quotations.txt` 
> copies quotes.txt into thesis directory and renames it quotations.txt 
`Cp -r thesis thesis_backup` 
> copy of thesis directory and all of its contents renamed as thesis_backup 


### Renaming Files
`mv statstics.txt statistics.txt` 
> renames the file


### Moving and Copying
`mkdir recombine`
`mv proteins.dat recombine/`
`cp recombine/proteins.dat ../proteins-saved.dat`
`ls`
Recombine 
> You would only see the recombine directory, because we placed the proteins.dat file into the recombine folder, but then copied it (..) to the directory above the one that we’re currently working in.

 
### Removing Files and Directories
`cd ~/Developer/repos/eeb-c177-homework/class-assignments/class_exercises_1-14_2020/data-shell`
`Rm quotes.txt` 
> deleted the quotes.txt file

`rm -i thesis_backup/quotations.txt` 
> asks you if you’re sure that you want to delete

`Rm -r thesis` 
> need -r to remove a directory


### Copy with Multiple Filenames
`cd ~/Developer/repos/eeb-c177-homework/class-assignments/class_exercises_1-14_2020/data-shell/data`

`mkdir backup`
`cp amino-acids.txt animals.txt backup/` 
> copies the files into the backup directory

`cp amino-acids.txt animals.txt morse.txt` 
> error message because no directory was listed


### List Filenames Matching a Pattern
`~/Developer/repos/eeb-c177-homework/class-assignments/class_exercises_1-14_2020/data-shell/molecules`

Ethane.pdb methane.pdb 
> `ls *t??ne.pdb` will print this result because * includes anything before the t and ?? makes sure there’s two characters between the t and n


### More on Wildcards
`cp *calibration.txt backup/calibration` 
> (*) includes the dates of calibration files and cp copies them into the backup calibration directory
`cp 2015-11-* send_to_bob/all_november_files/` 
> (*) includes all november files and cp copies them to the all_november_files directory inside the send_to_bob  directory
`cp *-23-dataset* send_to_bob/all_datasets_created_on_a_23rd/` 
> (*) includes all files from the 23rd and cp copies them to the all_datasets_created_on_a_23rd inside the send_to_bob  directory


### Organizing Directories and Files
`mv *.dat analyzed` 
> * moves the .dat files into the analyzed directory


### Reproduce a Folder Structure
`mkdir 2016-05-20` 
> creates 2016-05-20 directory
`mkdir 2016-05-20/data` 
> create data directory inside of 2016-05-20 directory
`mkdir 2016-05-20/data/processed` 
> create processed directory inside the data directory
`mkdir 2016-05-20/data/raw` 
> create raw directory inside the data directory

`mkdir 2016-05-20` 
> creates 2016-05-20 directory
`cd 2016-05-20` 
> go into 2016-05-20 directory
`mkdir data` 
> create data directory
`cd data` 
> go into data directory
`mkdir raw processed` 
> create raw and processed directories

