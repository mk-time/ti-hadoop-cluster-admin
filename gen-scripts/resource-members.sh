#---------------------------------------------------------------#
#-								#
#------ Script to list Ownership list on resource - HDFS -------#
#-								#
#-	Version 0.1						#
#---------------------------------------------------------------#

echo "Enter folder or resource on HDFS eg. /tmp/data :"
read line 
for grplst in `hdfs dfs -getfacl $line` 
do
	echo $grplst
done
