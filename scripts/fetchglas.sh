#!/bin/bash

# Pulls data from NASA GLAS db for Spring Equinox for each year

for year in 2003 2004 2005 2006 2007 2008 2009; do
	for month in 03; do
		for day in 20; do
			date=$year"."$month"."$day
			echo "Downloading "$date
			wget -r --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies --keep-session-cookies --no-check-certificate --auth-no-challenge=on -r --reject xml,html --accept H5 -np -e robots=off https://n5eil01u.ecs.nsidc.org/GLAS/GLAH05.034/$date
			echo -en '\n'
		done
	done
done