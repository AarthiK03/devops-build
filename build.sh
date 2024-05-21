#!/bin/bash

Imagename="test"
tag="latest"
echo "this is my build file!!."
docker build -t $Imagename:$tag .
