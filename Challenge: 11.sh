#!/bin/bash

# Script: Ops 201 Class 03 Ops Challenge Solution 
# Author: Lamin Touray
# Date of latest revision:
# Purpose: Your script should perform the following:

# Enable File and Printer Sharing
# Allow ICMP traffic
# Enable Remote management
# Remove bloatware
# Enable Hyper-V
# Disable SMBv1, an insecure protocol

Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True

netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force

# Source: https://github.com/superswan/Powershell-SysAdmin