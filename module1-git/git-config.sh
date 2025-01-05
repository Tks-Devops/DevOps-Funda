#!/bin/bash

# Creating microservice application
touch login.html catalog.html

# Initialize a Git repository
git init 

# Check the status of the repository
git status 

# Stage all changes
git add .

# Commit the changes with a message
git commit -m "1st commit: adding login.html and catalog.html"

# View the commit history
git log

# Check the status again to confirm no pending changes
git status

# Configure global Git username
git config --global user.name "tksahu"

# (Optional) Add a remote repository
# Uncomment the following line and replace {url} with your repository URL
# git remote add origin {url}

# (Optional) Push changes to the remote repository
# Uncomment the following line if you want to push changes
# git push -u origin main
