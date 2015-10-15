#- ***************************************************************************************************
#-
#- Script to take HDFS - RBAC backup
#- version 1.0
#- description this script is to take complete backup of the rbac of all files and directories of HDFS
#-
#- ***************************************************************************************************
#sdt=`date +%m-%d-%Y:%H:%M:%S`
sdt=`date +%c`
bk_filename_pfx="backup"
bk_filename_obj="rbac-hdfs"
bk_filename_id=`date +%m%d%Y%H%M%S-%N`
bk_filename=$bk_filename_pfx"-"$bk_filename_obj"-"$bk_filename_id
bk_backup_directory="./backup-all/hdfs/rbac"
echo "Backup RBAC of HDFS "
echo "---------------------"
echo "Backup date 	: "$sdt
echo "Backup type 	: complete "
echo "Backup directory  : $bk_backup_directory"
echo "Backup script	: bk-rbac-complete"
echo "Backup filename   : "$bk_filename
echo "Backup system	: "`uname`
echo "Backup scheduled  : No"

echo "confirm (y/n) :"
read uip
#echo "you: $uip"

if [ "$uip" ==  "y" ]; then

	echo " back up starts ... "

	mkdir -p $bk_backup_directory
	hdfs dfs -getfacl -R / > $bk_backup_directory"/"$bk_filename
	echo " done "
else 
	
	echo "exit without changes "

fi


