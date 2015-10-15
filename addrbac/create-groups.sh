while read line
do

	#echo "Add group  $line"
	groupadd $line
	echo "group $line created"
done < $1

