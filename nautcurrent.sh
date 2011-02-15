#!/bin/bash
# ----------------------------------------------------------------------
# NautCurrent
# Copyright (c) 2011 Anurup Raveendran
# mailme:anurupraveendran@gmail.com
# https://github.com/anurupr/Shell-Scripts
#
# This script allows the loading of the nautilus tool with the current working 
# directory
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# ----------------------------------------------------------------------


echo "'`pwd`'" | xargs nautilus --browser
