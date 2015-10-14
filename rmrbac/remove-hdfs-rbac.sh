while read line
do
	echo "acl-spec : $line"
 	hdfs dfs -setfacl -x $line
done < $1
