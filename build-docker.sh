#!/bin/bash

tag="xaana/fabriq:latest"

mvn clean

rm -rf .poms .suppressions

mkdir .poms .suppressions

find . -name 'pom.xml' -exec cp --parents \{\} .poms \;

find . -name 'suppressions.xml' -exec cp --parents \{\} .suppressions \;

docker build -t "$tag" .