# Introduction
Arma2 and Arma2:Operation Arrowhead cannot properly load multiplayer coop saves. When executed this script will create a backup folder and store each save inside it. Further it will clean the original save directory so that you can keep saving your game. So far you'll have to execute this script whenever you've saved your multiplayer coop game 6 times. Arma2 doesn't allow you to save any more than that, it'll simply refuse to save your game.

# Using my script (for now, hopefully I can make it a background process)
1. Place the arma2savescript.sh file inside your arma2 save game folder (you only have to do this once).
```
C:\Users\[Your Username]\Documents\ArmA 2\Saved\ca\missions\campaign
```
2. Run the script whenever you want to load a game or when you've saved your game 6 times.
3. Copy the save files you want to use from the backup folder back into your save game folder. The save game folder should contain:
```
mpsaveX.ArmA2save
saveX.roles.ArmA2save
object.sav
campaign.sqc
```
X = nothing, or a number 1-6.
4. Host your multiplayer coop campaign and it'll resume your save.


# Arma2 Multiplayer Campaign Coop Fixes
## Fix 1: Missing maps
If you encounter an error saying you're lacking a certain kind of map when playing Arma2 multiplayer coop you'll need to either install Arma2 the base game and if that doesn't work you'll have to do the following:

1. Run STEAM Client as administrator (right click -> properties -> advanced -> run as admin)
2. Run Arma 2 once and exit it.
3. Open file explorer and navigate to:
```
C:\Program Files (x86)\Steam\SteamApps\common\ARMA 2 Operation Arrowhead\DLCsetup\0ACRlite\
```
4. As administrator run the file "datacachepreprocessor.exe".
5. Arma2 or Arma2OA will launch when the exe has finished, during the games startup it's downloading your missing files.
6. Once the game has started, close it.
This should remove the missing map error.

## Fix 2: Cannot load/resume multiplayer campaign coop saves and what my script does.
This is the problem my script solves with one execution but I'm going to write down precisely what it does and why:
1. Open the folder where your saves are located:
```
C:\Users\[Your Username]\Documents\ArmA 2\Saved\ca\missions\campaign
```
2. DO NOT remove object.sav or campaign.sqc. This is the save files for the campaign and every object in it.
3. Remove all "autosaves" and "continue" saves. Both of these will always cause the game to fail to load your saves and force you to restart the game. These files are named:
```
autosave.roles.Arma2Save
mpautosave.Arma2Save
continue.roles.Arma2Save
mpacontinue.Arma2Save
```
4. Backup multiplayer coop save files (along with the campaign and object file) in a separate folder and preserve their modification date. These files are named:
```
mpsaveX.ArmA2save
saveX.roles.ArmA2save
```
X = no number or any number between 1-6.
Preserving the modification date is crucial as the game uses this to determine which save files belong together.
5. If the game still fails to load your multipayer coop save and you've already deleted the autosaves and continue saves, make sure you delete all save files except for the ones you want to load (and except for the campaign and object files). Your Arma2 save folder should only contain these files:
```
mpsave.ArmA2save
save.roles.ArmA2save
object.sav
campaign.sqc
```
7. When you've made backups of your save files and deleted the ones you don't want to load, alt+tab back into the game and keep playing and saving until you've got 6 save files again, then repeat this process.

# Further Improvements
1. Make the script a background process so the user can continue to play and save their game without ever having to execute the script more than once (before they start their arma2 coop game).
