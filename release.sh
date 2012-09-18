#!/bin/bash

mvn deploy:deploy-file -DgroupId=net.sf.robocode \
  -DartifactId=robocode \
  -Dversion=1.7.4.2 \
  -Dpackaging=jar \
  -Dfile=robocode.jar \
  -Durl=file://m2 \
  -Djavadoc=javadoc.jar