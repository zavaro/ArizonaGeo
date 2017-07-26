#!/bin/bash

for year in 2003 2004 2005 2006 2007 2008 2009; do
	for month in 01 02 03 04 05 06 07 08 09 10 11 12; do
		for day in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31; do
			date=$year"."$month"."$day
			echo "Downloading "$date
			wget -r --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies --keep-session-cookies --no-check-certificate --auth-no-challenge=on -r --reject xml,html --accept H5 -np -e robots=off https://n5eil01u.ecs.nsidc.org/GLAS/GLAH05.034/$date
			echo -en '\n'
		done
	done
done
