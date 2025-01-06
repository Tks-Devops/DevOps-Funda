#!/bin/bash

# Run Ubuntu container
docker run -it -d ubuntu
ubuntu_container=$(docker ps -q -f ancestor=ubuntu)

# List running containers
docker ps

# Wait for the container to be ready and execute commands inside the container
docker exec -it $ubuntu_container bash

# Commit the container to a new image
docker commit $ubuntu_container tulasisahu/apache2

# List images
docker images

# Remove the container
docker rm -f $ubuntu_container

# Run the new container with port mapping (use a different port if 80 is already in use)
docker run -it -p 8080:82 -d tulasisahu/apache2
apache_container=$(docker ps -q -f ancestor=tulasisahu/apache2)

# List running containers again
docker ps

# Execute commands inside the new container
docker exec -it $apache_container bash
docker exec -it $apache_container service apache2 status
docker exec -it $apache_container netstat -tuln

# Stop and remove the container
docker stop $apache_container
docker rm $apache_container

# Run a new container with port mapping (use a different port if 80 is already in use)
docker run -d -p 8081:80 tulasisahu/apache2

# List running containers
docker ps

