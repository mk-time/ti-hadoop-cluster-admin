
tmp="hdfs dfs -setfacl -m "
while read -r line; do

echo "$tmp $line"

if [[ $line == $'\n' ]] ; then
	echo "new line found"
fi
done < $1
#echo $tmp
