FolderCreationScript
==============

Bash script to automate folder creation for both client- and server-side modules.
Perfect for MEAN stack applications.

## Usage
To use the script, include it in the root directory of your project.
From the root directory, run the script, passing it three parameters:
```
./FolderCreationScript.sh MODULE CLIENT/SERVER PATH
```
For a client-side creation, the following files will be generated:
```
MODULE.controller.js
MODULE.controller.spec.js
MODULE.css
MODULE.html
MODULE.js
```
For a server-side creation, the following files will be generated:
```
index.js
MODULE.controller.js
MODULE.model.js
MODULE.model.spec.js
MODULE.spec.js
```

* The MODULE parameter is the name of the new module you are creating. This will be the name of the new folder created in the specified path as well as the start of all files in the folder.
* The CLIENT/SERVER parameter is where you specify whether you want to create a client-side folder or a server-side folder (see above for the different structures).
* The PATH parameter specifies where to create the new directory and corresponding files.  Enter the path parameter in relation to the root directory (i.e.; from where the script is run).

Below is an example of how you would use the script to create a 'test' folder:
```
./FolderCreationScript.sh test client client/app/testingFolders
```
The above would result in the following files being generated in the following path:
```
root
  |
   -client
      |
       -app
          |
           -testingFolders
              |
               -test
                  |
                   -test.controller.js
                   -test.controller.spec.js
                   -test.css
                   -test.html
                   -test.js
```

## Contributing

* Feel free to contribute with any of the items in the backlog

To Contribute via Issue Notice:
* Write up a description of the problem
* I will write a fix correspondingly

To Contribute via Pull Request:
* Fork the repo
* Add your changes
* Submit a pull request to master branch
