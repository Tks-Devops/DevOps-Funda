#!/bin/bash

# Another developer working on the code? Here's how to collaborate:

# Step 1: Clone the repository
# Copy the repository URL and clone it into the "test" folder
#mkdir -p test
#cd test
#git clone <repository_url>
#cd <repository_name>  # Navigate into the cloned repository

# Step 2: Create a new file
touch logging.html

# Step 3: Stage the new file
git add logging.html

# Step 4: Commit the changes with a meaningful message
git commit -m "Adding logging.html file"

# Step 5: Check the status of the repository
git status

# Step 6: View the commit history
git log

# Step 7: Push changes to the 'feature' branch
# Ensure you are on the correct branch or switch to it before pushing
git checkout -b feature  # Create and switch to the 'feature' branch if it doesn't exist
git push origin feature
