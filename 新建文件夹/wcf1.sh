#! /bin/bash
function files_attribut() {
	for file in `ls $1`
	do
		filepath=$1/$file
		if [ -d $filepath ]
		then
			files_attribut $filepath
		else
			ext=${file##*.}
			size=`du -b $filepath|awk '{print $1/1024/1024}'`MB
			m_date=`ls -l $filepath --time-style=full-iso|awk '{print $6,$7;}'|sed -e 's/\..*//' -e 's/[- :]//g'`
			if [ $ext == 'mp3' ] || [ $ext == 'mp4' ]
			then
				length=`ffmpeg -i $file 2>&1 | grep "Duration"| cut -d ' ' -f 4 | sed s/,//`
				echo "$1,$file,$ext,$size,$m_date,$length" >> $csv
			else
				echo "$1,$file,$ext,$size,$m_date" >> $csv

			fi
		fi
	done
}
contentFile=`pwd`
csv="$contentFile/wcf.csv"
echo "Filepath,Filename,Extension,Size,Modify date,Length" >> $csv
files_attribut $contentFile
