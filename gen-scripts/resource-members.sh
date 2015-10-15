#---------------------------------------------------------------#
#-								#
#------ Script to list Ownership list on resource - HDFS -------#
#-								#
#-	Version 0.1						#
#---------------------------------------------------------------#

<<<<<<< HEAD
read -p "Enter folder or resource on HDFS eg. /tmp/data :" line
hdfs dfs -getfacl $line
=======
echo "Enter folder or resource on HDFS eg. /tmp/data :"
read line 
for grplst in `hdfs dfs -getfacl $line` 
do
	echo $grplst
done
>>>>>>> 3eb678cd8bc286b60b9c1fc7cf13c1e5c491c161
