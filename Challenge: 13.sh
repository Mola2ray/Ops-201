#!/bin/bash

# Script: Ops 201 Class 13 Ops Challenge Solution
# Author: Lamin Touray
# Date of latest revision: 22Feb2023
# Purpose: Create a script that asks a user to type a domain, then displays information about the typed domain. Operations that must be used include:
# whois
# dig
# host
# nslookup









# Main
echo -e "Please choose a command: \nwhois\ndig \nhost \nnslookup"
read command

echo "Please enter a file name:"
read filetype

# Prompt the user for a domain name
echo "Please enter a domain name:"
read domain



cont_var=1

while [[ $cont_var -eq 1 ]]; do 
     
    if [[ $command == "whois" ]]; then
        whois $domain > $filetype
        cont_var=0
    elif [[ $command == "dig" ]]; then
        dig $domain > $filetype
        cont_var=0
    else 
        [[ $command == "nslookup"; then
         nslookup $domain > $filestype
        cont_var=0
    fi 
    
done 

# Directed by Tyler to compare this with code challenge 06. It helped alot.

# End