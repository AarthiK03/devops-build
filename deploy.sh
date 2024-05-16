#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u aarthik -p $DOCKER_PASSWORD
    docker tag test aarthik/dev
    docker push aarthik/dev

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u aarthik -p $DOCKER_PASSWORD
    docker tag test aarthik/prod 
    docker push aarthik/prod
fi
