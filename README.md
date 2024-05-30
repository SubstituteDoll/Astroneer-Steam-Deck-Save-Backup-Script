# Astroneer-Steam-Deck-Save-Backup-Script
A bash script that backs up astroneer save files from the complicated path into the desktop directory.

## Why use this?
Because Astroneer is a buggy mess, it is recommended that you backup your save frequently, especially **before every time you take off from the planet**. Unfortunately, on the steam deck, the compatibility layer Proton makes navigating to the save files' directory **VERY** difficult, since it is buried beneath layers upon layers of compatibility directories. Not to mention, even before all that, you have to remember the Steam game ID of astroneer to even begin to navigate those!

## The idea is simple
Just use this script. It makes a directory called "AstroBackups" in your user's ("deck" by default) Desktop directory. Then, it makes a directory that is named after the current date (formatted to the second). Finally, it copies every save file from Astroneer's save file directory into that directory.

## The not so simple parts
* If there was another backup made in the same second, the script will just fail.
* If Steam actually changes Astroneer's game ID, the script's behavior is undefined, as the ID is hardcoded into the path that the script seeks. It will probably just fail because it can's find the directories specified, but keep a note of it just in case something weird happens.