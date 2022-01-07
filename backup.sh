#!/bin/sh

TODAY=`date '+%Y%m%d'`
mkdir backup

for DIR in `ls -d day*`
do
	if [ -n "$(ls $DIR)" ]
	then
        	FILES=`ls $DIR/*.cs`
        	for FILE in $FILES
        	do
			if [ -f $FILE ] 
			then
				FILE_NAME=$(echo $FILE | cut -d '/' -f2)
				cp $FILE backup/${TODAY}_${DIR}_${FILE_NAME}
				echo "clear ${TODAY}_${DIR}_${FILE_NAME}"
        	fi
		done
    	else
 	      	`echo "${DIR} is empty"`
	fi
done
cd backup

COUNT=`ls -l | grep ^- | wc -l` 
echo "${COUNT}개의 파일"

if [ $COUNT -eq 0 ] 
then
	echo "no file"
	exit 0
fi
	
cd ..

NAME="backup-${TODAY}.zip"

zip $NAME backup/*

scp -r /Users/cmsskkk/Desktop/CS02/$NAME ron2@192.168.64.2:/home/aaron/backup

rm -r backup

