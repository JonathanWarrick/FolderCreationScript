#!/bin/bash
# Bash script to easily create folders for new client- and server-side modules
# Read in LOC (client or server), PATH, and MODULES (as many modules as you want to add as space-separated parameters) 

# Example use:
# FROM ROOT, to add three new modules within client/app, write ./FolderCreationScript.sh client client/app module1 module2 module3
# FROM ROOT, to add two new modules within server/api, write ./FolderCreationScript.sh server server/api module1 module2

# See the README for more instructions!

LOC=$1
TESTPATH=$2

ARGS=("$@")
COUNT=$#
START=2

cd $TESTPATH

while [ $START -lt $COUNT ]; do
	CURRENTMODULE=${ARGS[$START]}

	echo "Creating files for $CURRENTMODULE module."
	
	mkdir $CURRENTMODULE
	cd $CURRENTMODULE

	if [ $LOC = 'client' ] 
	then
		touch $CURRENTMODULE.controller.js
		touch $CURRENTMODULE.controller.spec.js
		touch $CURRENTMODULE.css
		touch $CURRENTMODULE.html
		touch $CURRENTMODULE.js
	fi

	if [ $LOC = 'server' ] 
	then
		touch index.js
		touch $CURRENTMODULE.controller.js
		touch $CURRENTMODULE.model.js
		touch $CURRENTMODULE.model.spec.js
		touch $CURRENTMODULE.spec.js
	fi

	let START=START+1
	
	cd ..
done
