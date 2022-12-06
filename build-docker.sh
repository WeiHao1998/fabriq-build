#!/bin/bash

tag="xaana/fabriq:latest"

mvn clean

rm -rf .poms

mkdir .poms

find . -name 'pom.xml' -exec cp --parents \{\} .poms \;

docker build -t "$tag" .