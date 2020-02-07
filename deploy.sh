#!/bin/bash
git clone https://github.com/castacks/website-dev airlab-temp
cd airlab-temp
last_commit=$(git log -1 --format="%at" | xargs -I{} date -d @{} +%s)
git clone https://github.com/castacks/castacks.github.io _site
cd _site
last_push=$(git log -1 --format="%at" | xargs -I{} date -d @{} +%s)
if [ $last_commit -ge $last_push ]; then
  cd ..
  rm -rf _site
  docker run --rm --volume="$PWD:/srv/jekyll" -it jekyll/jekyll:4.0 jekyll build
  cd _site
  git init
  git remote add origin https://github.com/castacks/castacks.github.io
  touch .nojekyll
  touch CNAME
  echo "theairlab.org" >> CNAME
  git add -A
  git commit -m "Auto deploy"
  git push origin master -f
  cd ../../
  rm -rf airlab-temp
  echo "Pushed changes!"
else
  cd ../../
  rm -rf airlab-temp
  echo "Up to date!"
fi 