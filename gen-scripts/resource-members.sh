#---------------------------------------------------------------#
#-								#
#------ Script to list Ownership list on resource - HDFS -------#
#-								#
#-	Version 0.1						#
#---------------------------------------------------------------#

read -p "Enter folder or resource on HDFS eg. /tmp/data :" line
hdfs dfs -getfacl $line
