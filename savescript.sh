#!/bin/bash

#If backup directory does not exist create it.
FILE=backup
if [[ ! -d "$FILE" ]]; then
	mkdir backup;
fi

