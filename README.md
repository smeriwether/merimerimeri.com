# My personal blog

[https://merimerimeri.com](https://merimerimeri.com) is my blog. I wanted a place, independent of the rest of my online presence, to write. That's what this is.

## How it's built

[https://merimerimeri.com](https://merimerimeri.com) is a [Wordpress](https://wordpress.org) blog. I self-host on a small DigitalOcean droplet that I use to host all
of my projects. My theme is a fork of the [Markiter](https://wordpress.org/themes/markiter/) theme, with my own customizations on top.

## How to deploy

Every push to the `main` branch will automatically deploy. If you need to deploy manually there's a deploy script.

Using the deploy script is as easy as running `./deploy.sh`. But, there are a few prerequisites. 
* You'll need the `$WEBSITE_SERVER` environment variable. The value should look like `username@ip-address`. 
* You'll need to be able to ssh into `username@ip-address` 



