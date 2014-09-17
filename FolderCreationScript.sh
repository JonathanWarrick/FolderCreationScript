#!/bin/bash
# Bash script to easily create folders for new client- and server-side modules
# Read in PATH, LOC (client or server), MODULE (module name) 
# Example use:
# FROM ROOT, to add a new module within client/app, write ./fileCreate.sh newModuleName client client/app
# FROM ROOT, to add a new module within server/api, write ./fileCreate.sh newModuleName server server/api

MODULE=$1
LOC=$2
TESTPATH=$3
DIRPATH=$TESTPATH/$MODULE

echo "Creating files for $MODULE module on $LOC-side in $DIRPATH."
mkdir $DIRPATH
cd $DIRPATH

if [ $LOC = 'client' ] 
then
	touch $MODULE.controller.js
	touch $MODULE.controller.spec.js
	touch $MODULE.css
	touch $MODULE.html
	touch $MODULE.js
fi

if [ $LOC = 'server' ] 
then
	touch index.js
	touch $MODULE.controller.js
	touch $MODULE.model.js
	touch $MODULE.model.spec.js
	touch $MODULE.spec.js
fi
