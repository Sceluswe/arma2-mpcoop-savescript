#!/bin/bash

# Remove all autosaves.
rm -rf *autosave*

# Remove all continue saves.
rm -rf *continue*

#If backup directory does not exist create it.
FILE=backup
if [[ ! -d "$FILE" ]]; then
	mkdir backup;
fi

# Every minute loop through the save files and create backup folders.

# Name each folder after the creation date of the save file.
