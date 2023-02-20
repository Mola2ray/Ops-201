
#!/bin/bash


# Script: Ops 201 Class 08 Ops Challenge Solution
# Author: Lamin Touray
# Date of latest revision:15Feb2023
# Purpose: "Robocopy"

@echo off
set source="%USERPROFILE%\Desktop\Jorge's Work Files"
set destination="D:\Backups\Jorge's Work Files Backup"

echo Backing up Jorge's work files...
echo Source: %source%
echo Destination: %destination%

robocopy %source% %destination% /E /COPYALL /R:3 /W:10 /LOG+:backup.log

echo Backup complete!
pause
End
