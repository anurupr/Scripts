#!/bin/bash
# ----------------------------------------------------------------------
# AsianetLogin
# Copyright (c) 2011 Anurup Raveendran
# mailme:anurupraveendran@gmail.com
# https://github.com/anurupr/Shell-Scripts
#
# This script allows the automatic login for the asianet dataline
# [unlimited] connection. It uses another shell script designed by 
# zyxware.com which does the actual login. This script just makes sure
# that the login script runs after 10 seconds
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as published
# by the Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# ----------------------------------------------------------------------

while true
 do   
result=$(gksudo autologin)
echo $result
sleep 10
done
