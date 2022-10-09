---
layout: post
title: "How to think about CSS font-display"
---

Web font performance is often overlooked, but can have a real impact on 
[your website’s user experience and performance](https://www.zachleat.com/web/css-tricks-web-fonts/). 
One of the best controls available to us is the [CSS font-display property](https://css-tricks.com/almanac/properties/f/font-display/). 
Using it, we’re able to tell the browser how we’d like it to render our web fonts.

## font-display

* **Block** – don’t render any text until the fonts load, resulting in “Flash of Invisible Text” or “FOIT”
* **Swap** – render un-styled (system) text first and swap it with web fonts once they load, resulting in “Flash of Unstyled Text” or “FOUT”
* **Fallback** – render un-styled text first, if the web fonts load in the next few seconds swap them out, otherwise give up
* **Optional** – render un-styled text first, load web fonts only if the user’s internet connection is strong enough to load web fonts
* **Auto** – let the browser decided, most use “block”

Even with those definitions it can be difficult to decide what to do with the 
web fonts on your website. Instead of thinking about how fonts are rendered, 
I've found it helpful to think about what my design requires or how critical are 
the fonts to the experience of my website. With this framing, I have different 
names to the font-display values.

## How I think about font-display

* **Critical** (“block”) – the web font is absolutely critical to my site’s experience; for something like a logo
* **Necessary** (“swap”) – the web font is definitely part of my site’s experience, but not the end of the world if it’s not there; for most body text
* **Preferred** (“fallback”) – it would be nice for the user to see the web font but I don’t care much if they don’t; I hardly ever use this
* **Optional** (“optional”) – the web font is barely, or not at all, an important part of my site’s experience; I never use this

Using this language, I’m able to more quickly decide what font-display value to use. 
I’d encourage you to use this language yourself, and then let me know if it helps!
