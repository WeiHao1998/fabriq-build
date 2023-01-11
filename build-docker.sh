#!/bin/bash

buildTag="xaana/fabriq-build:latest"
sandboxTag="xaana/fabriq-sandbox:latest"
distTag="xaana/fabriq:latest"

mvn clean

rm -rf .poms .suppressions

mkdir .poms .suppressions

find . -name 'pom.xml' -exec cp --parents \{\} .poms \;

find . -name 'suppressions.xml' -exec cp --parents \{\} .suppressions \;

docker build -t "$buildTag" -f Dockerfile.build .

# docker build -t "$sandboxTag" -f Dockerfile.sandbox .

# docker build -t "$distTag" -f Dockerfile.dist .