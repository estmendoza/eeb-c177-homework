echo "what is the animal ID #?"
read ID
x=$(cat Gesquiere2011_data.csv | cut -f1 | grep -wc $ID)
echo "$x records for ID #$ID."
