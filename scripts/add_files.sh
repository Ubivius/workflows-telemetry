#!/bin/sh
while read line;
do
    cp -Rf src/.github $line
    cd $line;
    git add .;
    git commit -m "Adding files from workflows to update branch";
    git push;
    cd ..;
done
