# Bash Console Application : Node.js Backend Skeleton
This bash script generates a Node.js skeleton server that accepts requests from the frontend, queries a mongodb database and returns the result back to the frontend. 
<br>
**Note:** The user guide is at the bottom of this README
## Problem Space
I created a lot of projects that use a Node.js backend. There is a lot of repetition with regard to setting up a coherent and functional file system and installing 
dependencies. This is tedious and inefficient, slowing down production and presenting an obstacle to the creative process. 
## Solution
Streamline the process by having an application that would create a skeleton code, complete with necessary dependencies and have it link to a git repository. All 
that will be required of the user is preparing a database and a git repository.
## Requirements
* Create a local instance of a Node.js backend with necessary dependencies that links to a pre-existing git repository.
* The server can come online as soon as the application is run.
* It must be simple to use with minimal prompts.
## Implementation
### Features
* Installs all necessary dependencies
* Queries user for database url (as used in mongodb) to establish a database connection
* Provides skeleton for server, mongo schema and api endpoints.
### Technologies Used
* jq, a bash library that allows the script to parse and edit json. Useful for adding scripts to package.json.
* Bash (command line script)
* Visual Studio Code (development)
* Github (version control and deployment)
### How it Works
1. Necessary dependencies are installed (node modules, cors, express, mongoose etc.)
2. The scripts section of package.json is appended such that scripts.test is removed and in its place are node server and nodemon server
3. A gitignore file is created and the node modules and environment variables are added to it. 
4. The user is prompted for the database url. If the user has none a hashtag can be entered and the url can be configured later.
5. The skeleton code is applied.
### Future Improvements
They say that no work of art is ever complete and I plan to add the following improvements to my project:
* Automate the creation of a React frontend. 
* Give the user an option to create a user schema with a login, authenticate and JSON web token logic configured. 
## User Guide
1. Install jq
```bash
sudo apt-get install jq
```
2. Clone this repository
```bash
git clone https://github.com/michyhems/BashConsoleApp.git
```
3. Navigate to the local instance of the cloned repo and give it permission to make changes
```bash
chmod +x nodejs-setup.sh
```
3. Create an empty repository on Github and clone it
4. Navigate to the empty repo and execute the bash application
```bash
./path/to/bash/application/nodejs-setup.sh
```
5. The application will prompt you to enter the url for a mongodb cluster. Enter url or enter #
6. Run application
```bash
npm dev start
```
