#!/bin/bash

FILES=libs/*.jar
for file in $FILES 
do
  # Get only filename without the .jar extensions
  ORIGINAL_FILENAME=$(basename $file .jar)
  # remove extension and version number
  FILENAME=${ORIGINAL_FILENAME%-*}
  # extract version number
  VERSION="${ORIGINAL_FILENAME##*-}"
  # remove replace . by - for artifactID
  # FILENAME=${FILENAME//./-}

  mvn deploy:deploy-file -DgroupId=net.sf.robocode \
    -DartifactId=$FILENAME \
    -Dversion=$VERSION \
    -Dpackaging=jar \
    -Dfile=$file \
    -Durl=file://m2 \
    -Djavadoc=javadoc.jar   
done