#!/bin/bash
#copy files and exclude others
rsync -avzp --del --exclude='.git*' --filter=':- .gitignore' $PWD/ theo@167.99.131.128:/home/theo/apps/portfolio/
#build the project
#with docker
ssh theo@167.99.131.128 "cd /home/theo/apps/ && docker-compose up --build -d"