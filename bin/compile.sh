#!/bin/bash
#
# This script is "compiling" through Pandoc the whole documentation from the RuggedPOD project
# It is lo
# (c) 2015 Splitted-Desktop Systems
# Author: Jean-Marie Verdun
#
# Released under GPL v2
# http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
# 

cd /home/vejmarie/compile/doc
# I am updating the local git
git pull
# just a short test
file=`find . -name '*.md'`
for file_name in $file
do
	# I must create the directory and first extract the name

	directory_names=`echo $file_name | sed 's/\.\///g'`
	
	# I must continue only if the number of FIELD is bigger than 0 otherwise the md is at the root tree of the
	# documentation

	occurence=`grep -o "/" <<< $directory_names | wc -l`
	if [ "$occurence" != "0" ]
	then
		# I am suppressing the slash from the directory name as to get the final entry which is the file name

		directory_names=`echo $directory_names | sed 's/\// /g'`

		# Storing the final entry as file_name

		short_file_name=`echo $directory_names | awk '{print $NF}'`

		# Rebuilding the directory tree

		directory_names=`echo $directory_names | awk '{$NF=""; print $0}'`
		pwd=`pwd`
		target_path="/usr/share/wordpress/documentation"
		web_path=""
		for dir_entry in $directory_names
		do
			if [ ! -d $target_path"/"$dir_entry ]
			then
				mkdir $target_path"/"$dir_entry
				chown -Rf www-data $target_path"/"$dir_entry
				chgrp -Rf www-data $target_path"/"$dir_entry
			fi
			target_path=$target_path"/"$dir_entry
			web_path=$web_path"/"$dir_entry
		done
		input_short_file_name=$short_file_name
		short_file_name=`echo $short_file_name | sed 's/\.md$/\.html/'`
		target_file_name=$target_path"/"$short_file_name
	else
		web_path=""
		directory_names=`echo $directory_names | sed 's/\.md$/\.html/'`
		target_file_name="/usr/share/wordpress/documentation/"$directory_names
		input_short_file_name="./"$file_name
		short_file_name=$directory_names
	fi
	pandoc -t html5 --toc -s -S -V toctitle:'Table of content' -o $target_file_name $file_name
	if [ ! -d "/usr/share/wordpress/documentation/pdf" ]
	then
		mkdir /usr/share/wordpress/documentation/pdf
		chown -Rf www-data /usr/share/wordpress/documentation/pdf
		chgrp -Rf www-data /usr/share/wordpress/documentation/pdf
	fi
	cp $file_name /tmp
	echo $file_name $input_short_file_name
	( cat /tmp/$input_short_file_name | sed 's/http:\/\/ruggedpod.qyshare.com\//\/usr\/share\/wordpress\//' ) > /tmp/$input_short_file_name.1
	iconv -f ISO8859-9 -t UTF-8 -o /tmp/$input_short_file_name /tmp/$input_short_file_name.1
	target_file_name_pdf=`echo $short_file_name | sed 's/\.html$/\.pdf/'`
	target_file_name_pdf="/usr/share/wordpress/documentation/pdf/"$target_file_name_pdf
	pandoc -t latex --latex-engine=xelatex --toc -s -S -V toctitle:'Table of content' -o $target_file_name_pdf /tmp/$input_short_file_name
	chown -Rf vejmarie $target_file_name
	chgrp -Rf www-data $target_file_name
	chown -Rf vejmarie $target_file_name_pdf
        chgrp -Rf www-data $target_file_name_pdf	
	# We must add a link into the main documentation file
	# We must add the link to the bottom only if this is not part of the README file
	if [ "$short_file_name" != "README.html" ]	
	then
		echo "<br><a href=\"http://ruggedpod.qyshare.com/documentation/$web_path/$short_file_name\"> $short_file_name </a>" >> /usr/share/wordpress/documentation/README.html
	fi
done
