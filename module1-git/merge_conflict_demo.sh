#!/bin/bash

# Initialize a new Git repository
git init

# Create the initial code file
echo "Initial code" > functions.c
git add functions.c
git commit -m "this is the initial code of merge conflict"

# Create branches dev1 and dev2
git branch dev1
git branch dev2

# Switch to dev1 and make changes
git checkout dev1
echo -e "\nFunction1" >> functions.c
git add functions.c
git commit -m "dev1 changes for merge-conflict"

# Merge dev1 into master
git checkout master
git merge dev1

# Switch to dev2 and make changes
git checkout dev2
echo -e "\nFunction2" >> functions.c
git add functions.c
git commit -m "dev2 changes for git conflict"

# Merge dev2 into master and check status
git checkout master
git merge dev2
git status
