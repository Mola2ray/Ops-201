#!/bin/bash


# Script: Ops 201 Class 10 Ops Challenge Solution
# Author: Lamin Touray
# Date of latest revision: 17Feb2023
# Purpose: "Powershell"


#Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.

Get-Process | Sort-Object -Descending CPU | Format-Table Name, CPU -AutoSize

#Print to the terminal screen all active processes ordered by highest Process Identification Number at the top

Get-Process | Sort-Object -Descending PID | Format-Table Name, PID -AutoSize

#Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.

Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 5 Name,WorkingSet

#Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.

Start-Process iexplore.exe -ArgumentList "https://owasp.org/www-project-top-ten/"

#Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.

for ($i = 1; $i -le 10; $i++) {
Start-Process iexplore.exe -ArgumentList "https://owasp.org/www-project-top-ten/"
}

#Close all Internet Explorer windows.

Get-Process iexplore | Stop-Process -Name iexplore

 
#Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge.
 
Get-Process -Id 160

# End