#! /bin/bash
#Author: Kyle Zhang<knitzhang@pm.me>
#Program
#	Match epub of book files and create folder with book name then put book into the folder

TARGET=$1
TYPE=epub

if [ ! -d "$TARGET" ]; then
	echo "The target directory does not exist"
	exit 1
fi

case $1 in
	-h | --help)
		echo "Usage: $0 <directory>"
		echo "This script will create a folder for each book and move the book into the folder"
		exit 0
		;;
	*)
		;;
esac

for file in ${TARGET}/*.${TYPE}; do
	if [ -f "$file" ]; then
		filename=$(basename -s .${filetype} "${file}" | sed -E -e 's/^([^-\(（【]+)\s?-?.+/\1/g' -e 's/(.+)\s$/\1/g')
		mkdir -p "$filename"
		echo 'Created folder: ' "$filename"
		mv "$file" -t "$filename"
		echo "Moving $file to $filename"
	fi
done
