#!/bin/bash
# Deploy the website to the asf-site branch.
set -e
set -u

echo "Start to generate and deploy site ..."
jekyll b
cp .gitignore .gitignore.bak
git checkout asf-site

# remove all existing files, excluding the docs
git ls-files | grep -v ^docs| xargs  rm -f

# copy new files into the current site
cp .gitignore.bak .gitignore
cp -rf _site/* .
DATE=`date`
git add --all && git commit -am "Build at ${DATE}"
git push origin asf-site
git checkout master
echo "Finish deployment at ${DATE}"
