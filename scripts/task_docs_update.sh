#!/bin/bash
# Deploy the docs to the asf-site branch.
set -e
set -u
set -o pipefail

cleanup()
{
    git checkout master
}
trap cleanup 0

echo "Start to update docs ..."

DOCS_TGZ=docs.tgz

if [ ! -f "$DOCS_TGZ" ]; then
    echo "$DOCS_TGZ does not exist!!"
    exit 255
fi

cp .gitignore .gitignore.bak
git checkout asf-site

# remove all docs files
git ls-files | grep -e ^docs | xargs  rm -f
cp .gitignore.bak .gitignore

mkdir -p docs
tar xf "$DOCS_TGZ" -C docs

DATE=`date`
git add --all && git commit -am "Docs build at ${DATE}"
git push origin asf-site
echo "Finish docs update at ${DATE}"
