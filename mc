#!/bin/bash
headers=$(ls | grep ".hpp")
if [ $(echo $headers | wc -c) -eq 1 ]; then
	echo "No headers found"
	exit 1
fi

template="#pragma once\n\nclass @@ {\n\tpublic:\n\t\t@@ ();\n\t\t~@@ ();\n\t\t@@ &operator=(const @@ &other);\n\t\t@@ (const @@ &other);\n};\n"

for file in *.hpp; do
	if [ $(cat $file | wc -c) -gt 0 ]; then
		echo "$file: Not empty"
		continue
	fi
	classname=$(basename $file .hpp)
	echo -e "$template" | sed "s/@@/$classname/g" > $file
done