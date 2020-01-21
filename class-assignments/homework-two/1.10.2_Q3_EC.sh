for x in {1..127}
	do y=$(cat Gesquiere2011_data.csv | cut -f1 | grep -wc $x)
echo "$y samples for ID #$x"
done 
