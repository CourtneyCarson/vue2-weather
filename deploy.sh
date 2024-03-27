#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'deploy'
git push -f https://github.com/CourtneyCarson/vue2-weather.git main:gh-pages

cd -




