#!/bin/bash

echo "Building..."

cd theme; zip -r -q -1 -X ../theme.zip *; cd ..

echo "Deploying..."

scp -o StrictHostKeyChecking=no -rp ./theme.zip $WEBSITE_SERVER:/tmp/theme.zip
if [ $? == 1 ]; then
  echo "Deploy failed"
  exit 1
fi

scp -o StrictHostKeyChecking=no -rp ./nginx.conf $WEBSITE_SERVER:/etc/nginx/sites-enabled/merimerimeri.com
if [ $? == 1 ]; then
  echo "Deploy failed"
  exit 1
fi

ssh $WEBSITE_SERVER "rm -rf /var/www/merimerimeri.com/wp-content/themes/theme/"
ssh $WEBSITE_SERVER "wp theme install /tmp/theme.zip --path=/var/www/merimerimeri.com --activate --allow-root"
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

rm theme.zip
if [ $? == 1 ]; then
  echo "Deploy failed"
  exit 1
fi

ssh $WEBSITE_SERVER "rm /tmp/theme.zip"
if [ $? == 1 ]; then
  echo "Deploy failed"
  exit 1
fi

echo "Finished!"
