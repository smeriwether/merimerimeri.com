I love building websites! I'm not talking about web apps that are more common on the 
internet these days, whether they be single-page React apps or server-side rendered 
Ruby on Rails apps. I'm talking about good, old fashioned websites. Websites that are 
simple and accessible. Websites that you don't have to fight with and also have a small 
footprint. There are lots of approaches to building sites like these, and here's mine.

## Hand-written HTML, TailwindCSS, and DigitalOcean

I write the HTML myself. I tend to avoid platforms like [Wordpress](https://wordpress.com/) or site-generators like 
[Hugo](https://gohugo.io/). Those tools serve a purpose, but most of the time they're unnecessary. 
My [personal website](https://stephen.fyi/) only has a couple of pages. The simple [tutoring website](https://www.rochestertutoring.com/) 
I built is the same. Websites don't need to have hundreds, or even dozens, of pages. 

I think [TailwindCSS](https://tailwindcss.com/) is awesome. Atomic CSS fits neatly with how I like to write CSS. 
These days, I use it for just about everything. It adds a build step (Tailwind is 
essentially a CSS generator), but I think it's a small price to pay.

I use [DigitalOcean](https://www.digitalocean.com/) to host most things. I like their product and I think their pricing is 
fair. I host about a dozen websites on a single $15/month droplet. I'm sure I'd run into 
problems if I all of a sudden get millions of page views but that isn't even the goal. I 
want a simple, reproducible process, that I enjoy working in. And because they're simple, 
static sites they can probably serve more requests than I think.

## A list of everything

* Hand-written HTML
* [TailwindCSS](https://tailwindcss.com/)
* [DigitalOcean](https://www.digitalocean.com/)
* [Nginx](https://www.nginx.com/) - a reverse proxy to serve multiple domains from a single droplet
* [Let's Encrypt](https://letsencrypt.org/) - for free TLS certificates
* [Fathom Analytics](https://usefathom.com/) - privacy-focused analytics

## Websites I've built

I've open-sourced many of the websites I've worked on, you can find them on [my Github](https://github.com/smeriwether). 
Here are links to a few of them (p.s. check the Javascript console on each site to learn more).

* My personal website - [https://stephen.fyi](https://stephen.fyi)
* Rochestor Tutoring - [https://rochestortutoring.com](https://rochestortutoring.com)
* Locally Curated - [https://locallycurated.com](https://locallycurated.com)
* The Modern - [https://themodern.fm](https://themodern.fm)

Websites don't need to be big, bloat-y things. Small, simple websites make the web a better place.
