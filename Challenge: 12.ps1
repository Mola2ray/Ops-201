# Script: Ops 201 Class 12 Ops Challenge Solution
# Author: Lamin Touray
# Date of latest revision: 21Feb2023
# Purpose: "Write a Powershell script that returns the IPv4 address of the computer.
# Use Select-String cmdlet to only return the IPv4 address string and no other extraneous information.#


$ip_output = ipconfig >> "network_report.txt"
$reset_dhcp = ipconfig /release; ipconfig /renew


Function myfunc {
  $ip_output
  $reset_dhcp
  $ip_output
}

myfunc