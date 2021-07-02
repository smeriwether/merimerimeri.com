#!/bin/bash

rm -rf ./site

npm install
bundle install

npx postcss --config=./website/config/postcss.config.js ./website/styles.css -o ./site/styles.css

bundle exec ruby ./website/build.rb

if [[ $NODE_ENV == "production" ]]; then
  for file in ./site/*.html; do
    mv -- "$file" "${file%%.html}"
  done
fi

echo "Here's what's in the site dir"
ls ./site

cp -R ./public ./site
