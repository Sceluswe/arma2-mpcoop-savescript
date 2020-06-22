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

# Save the two campaign files.
#cp campaign.sqc backup/campaign.sqc
#cp objects.sav backup/objects.sav

# Loop through the save files and create backup folders.
for i in save*; do
	# Create a folder named after the save files original modification date.
	SAVEDATE=$(stat -c %y $i)
	SAVEDATE=${SAVEDATE%.*}
	SAVEDATE=${SAVEDATE// /_}
	SAVEDATE=${SAVEDATE//:/.}
	mkdir backup/$SAVEDATE
	
	# Save the two campaign files and the two related save files in the folder.
	cp -p campaign.sqc backup/$SAVEDATE/campaign.sqc
	cp -p objects.sav backup/$SAVEDATE/objects.sav
	#mv $i.* backup/$SAVEDATE/$i.*
	#mv mp$i.* backup/$SAVEDATE/mp$i.*
	echo $SAVEDATE
done

