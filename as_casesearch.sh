#! /bin/bash

echo "SELECT THE OPTION BELOW"
echo "1)SEARCH WORD"
echo "2)CHECK THE NAME FILE OR DIRECTORY"
echo "3)CREATE SOFTLINK OF A FILE"
echo "4)FIND A FILE"
echo "5)RENAME A FILE"
echo "6)EXIT"


read option

case $option in

	1) echo "ENTER WORD TO SEARCH"
		read WORD
		grep -l -R "$WORD" * > list
		if [$? -eq 0];
		then
			echo "this files have word $WORD"
			cat list
		else
			echo "$WORD not found"
		fi
		;;

	2) echo "enter file for diretory name"
		read NAME
		if [ -f $NAME ];
		then 
			echo "$NAME is a file"
		elif [ -d $NAME ];
		then
			echo "$NAME is a directory"
		else
			echo "$NAME is not file or directory"
		fi
		;;

	3)  echo "enter file name to create softlink"
		read file
		if [ -f $file ] ;
		then
			echo "file does not exist"
			exit
		fi
		echo "enter the link name"
		read link
		if [ -L $link ] ;
		then
			echo "$link already exist"
			exit
		fi

		ln -s $file $link
		;;

	4) echo "enter file to find"
		read file
		find /home -type f -name "$file" >location
		if [$! -eq 0] ;
		then
			echo "file found"
			cat location
		else
			echo "file not found"
		fi
		;;

	5) echo "enter file name to rename"
		read file
		echo "enter the new name"
		read fil1
		mv file file1
		;;

	6) echo "will exit from script"
		;;
esac
