#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'deploy'
git push -f https://github.com/CourtneyCarson/vue2-weather.git main:gh-pages

cd -

# Path: vue.config.js

module.exports = {
  publicPath: process.env.NODE_ENV === 'production'
    ? '/vue-todo/'
    : '/'
}

# Path: package.json
