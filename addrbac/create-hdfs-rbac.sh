#-*************************************************************************-#
#-
#- Script to bulk add acls to files and directories in HDFS
#- version 1.0
#- This script is used to add acls to files and directories , a bulk add 
#-
#-*************************************************************************-#


echo "Add ACL"
while read line
do
echo "acl-spec : $line"
echo "hdfs dfs -setfacl -m $line "
hdfs dfs -setfacl -m $line
echo "added .. "
done < $1
