#!/bin/bash

echo "Building..."

echo "Deploying..."

scp -o StrictHostKeyChecking=no -rp ./index.html $WEBSITE_SERVER:/var/www/merimerimeri.com/index.html
if [ $? == 1 ]; then
  echo "Deploy failed"
  exit 1
fi

scp -o StrictHostKeyChecking=no -rp ./nginx.conf $WEBSITE_SERVER:/etc/nginx/sites-enabled/merimerimeri.com
if [ $? == 1 ]; then
  echo "Deploy failed"
  exit 1
fi

ssh $WEBSITE_SERVER "sudo systemctl restart nginx"
if [ $? == 1 ]; then
  echo "Deploy failed"
  exit 1
fi

echo "Cleaning up..."

echo "Finished!"
