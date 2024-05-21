#!/bin/bash

Imagename="capstoneimg"
tag="latest"

docker build -t $Imagename:$tag .
