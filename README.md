# **Batch_Scripts**

[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/PhilRoli/Batch_Scripts/pulls) [![GitHub last commit](https://img.shields.io/github/last-commit/philroli/Batch_Scripts)](https://github.com/PhilRoli/Batch_Scripts/pulls) ![GitHub repo size](https://img.shields.io/github/repo-size/philroli/Batch_Scripts)

Just some Scripts I made that help me in stuff I have to do often and dont want to do by hand all the time.
Below you will find a list with explination to nearly all files in this repo.

Dont know if anyone will find this usefull, but I thought I would make it my first public repo.
Also please ignore my mixture of English and German in certain files.

---

## Files

---

- **[checkprogramm.bat](/checkprogramm.bat)**: Ask for user input of a certain programm, which then gets checked if it is running, if so user gets asked if he wants to kill it.

- **[createNewDir.bat](/createNewDir.bat)**: Makes a new Folder with user input name and creates a `README.md` file and execute "git init", then adds it to the current VSC Workspace. If VSC is not running it starts it.

- **[DestinySteam.bat](/DestinySteam.bat)**: Start Steam, wait 15 sec, then start Destiny 2. Included a .vbs file to start the bat script invisible.

- **[liveTasklist.bat](/liveTasklist.bat)**: Opens the launchTasklist.vbs file every second, thus resulting in a "live" tasklist.

- **[startup_programms.bat](/startup_programms.bat)**: Opens a cmd window where the user gets asked where he currently is, based on the answer a corresponding .vbs / .bat file gets opend.

- **[tasklistOut.bat](/tasklistOut.bat)**: Outputs the content of the tasklist command to a file in the users documents and then opens said file.

---

## Folders

---

- **[startup_files](./startup_files)**: Folder that contains all bat files which are used in the [startup_programms.bat](./startup_programms.bat) file.

- **[test_files](./test_files)**: Folder that contains all .bat files I created to test certain functions that then get used in the main Files.

- **[vbs_files](./vbs_files)**: Folder that contains all vbs files which open up the corresponding .bat files invisible and without having the trough .bat opend programms tied to the cmd session.
