#!/bin/bash
cd /home/vejmarie/compile/doc
# I am updating the local git
# git pull
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
		short_file_name=`echo $short_file_name | sed 's/\.md$/\.html/'`
		target_file_name=$target_path"/"$short_file_name
	else
		web_path=""
		directory_names=`echo $directory_names | sed 's/\.md$/\.html/'`
		target_file_name="/usr/share/wordpress/documentation/"$directory_names
		short_file_name=$directory_names
	fi
	pandoc -o $target_file_name $file_name
	chown -Rf www-data $target_file_name
	chgrp -Rf www-data $target_file_name
	# I must add a link into the main documentation file
	echo "<br><a href=\"http://ruggedpod.qyshare.com/documentation/$web_path/$short_file_name\"> $short_file_name </a>" >> /usr/share/wordpress/documentation/README.html;
done
