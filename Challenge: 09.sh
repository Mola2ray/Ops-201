#!/bin/bash


# Script: Ops 201 Class 09 Ops Challenge Solution
# Author: Lamin Touray
# Date of latest revision: 16Feb2023
# Purpose: "write directories and arrays"





$day = Get-Date
Get-EventLog -LogName System -After $day.AddDays(-1) >last_24.txt

Get-EventLog -LogName System -EntryType Error >errors.txt

Get-EventLog -LogName System -InstanceId 16
Get-EventLog -LogName System -Newest 20
Get-EventLog -LogName System -Newest 500 |Format-Table -wrap