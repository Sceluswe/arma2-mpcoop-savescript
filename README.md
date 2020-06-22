# Introduction
Arma2 and Arma2:Operation Arrowhead cannot properly load multiplayer coop saves. When executed this script will create a backup folder and store each save inside it. Further it will clean the original save directory so that you can keep saving your game. So far you'll have to execute this script whenever you've saved your multiplayer coop game 6 times. Arma2 doesn't allow you to save any more than that, it'll simply refuse to save your game.

# Arma2 Multiplayer Coop Fixes
If you encounter an error saying you're lacking a certain kind of map when playing Arma2 multiplayer coop you'll need to either install Arma2 the base game and if that doesn't work you'll have to do the following:

1. Run STEAM Client as administrator (right click -> properties -> advanced -> run as admin)
2. Run Arma 2 once and exit it.
3. Open file explorer and navigate to:
```
C:\Program Files (x86)\Steam\SteamApps\common\ARMA 2 Operation Arrowhead\DLCsetup\0ACRlite\
```

# Further Improvements
1. Make the script a background process so the user can continue to play and save their game without ever having to execute the script more than once (before they start their arma2 coop game).
