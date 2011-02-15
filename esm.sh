#!/bin/bash
# ----------------------------------------------------------------------
# Easy Samba Mount
# Copyright (c) 2011 Anurup Raveendran
# mailme:anurupraveendran@gmail.com
# https://github.com/anurupr/Shell-Scripts
#
# This script allows the mounting of samba shares.
# Input : IP Address / Computer Name
#  	  Share Name
#	  Username & Password
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as published
# by the Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# ----------------------------------------------------------------------

#HOST=$(zenity --entry --title="Hostname" --text="Enter the IP Address/Hostname")
SHARE=$(zenity --entry --title="Sharename" --text="Enter the share name")
#MOUNTPATH=$(zenity --entry --title="Mountpath" --text="Enter the mount path")
#USERNAME=$(zenity --entry --title="Username" --text="Enter the server username")
#PASSWORD=$(zenity --entry --title="Password" --text="Enter the server password")
var=$(sudo smbmount //192.168.10.6/$SHARE /mnt/win -o username=UNFORGIVEN,password=master10; echo $?)
if [ $var -eq 0 ]; then
`nautilus --browser /mnt/win`
else
 echo "Share not found. Please try again"
fi

