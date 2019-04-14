#!/bin/bash

for i in {1..44}
do
   echo "Subject $i"
   cd "subject $i"
   for s in {anger,disgust,fear,happiness,sadness,surprise}
   do
      cd $s
      echo "Entering $s"
      find . -mindepth 2 -type f -print -exec mv {} . \;
      find . -name "Thumbs.db" -exec rm -rf {} \;
      find . -name "sentence *" -exec rm -rf {} \;

      cd ..
      echo "Exited $s"

   done
   cd ..
done



