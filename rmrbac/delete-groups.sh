while read line
do
	groupdel $line
	echo " deleting group $line "
done < $1


