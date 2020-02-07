#!/bin/bash
git clone https://github.com/castacks/website-dev airlab-temp
cd airlab-temp
git pull origin master
docker run --rm --volume="$PWD:/srv/jekyll" -it jekyll/jekyll:4.0 jekyll build
cd _site
touch .nojekyll
touch CNAME
echo "theairlab.org" >> CNAME
git init
git remote add origin https://github.com/castacks/castacks.github.io
git add -A
git commit -m "Auto deploy"
git push origin master -f
cd ../../
rm -rf airlab-temp