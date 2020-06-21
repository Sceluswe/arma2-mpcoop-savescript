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
for i in mpsave*; do # Whitespace-safe but not recursive.
	SAVEDATE=$(stat -c %y $i)
	SAVEDATE=${SAVEDATE%.*}
	SAVEDATE=${SAVEDATE// /_}
	SAVEDATE=${SAVEDATE//:/.}
	mkdir backup/$SAVEDATE
	# Save the two campaign files.
	# cp campaign.sqc backup/campaign.sqc
	# cp objects.sav backup/objects.sav
	echo $SAVEDATE
done



# Name each folder after the creation date of the save file.

