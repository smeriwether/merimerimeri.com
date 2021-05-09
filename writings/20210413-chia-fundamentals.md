## What is Chia?

*Skip this if you already know what Chia is*

[Chia](https://www.chia.net/) is a new cryptocurrency based on 
"proofs of space and time". It differs from "proofs of work" 
crypto (like Bitcoin) in the amount of energy it takes to validate 
transactions on the blockchain. With Chia, the energy-intensive work 
is done up-front to create "plots". Those plots are used to do the 
much-less-energy-intensive work of validating transactions, called 
"farming". Create plots once, and farm them forever.


## Plotting fundamentals

*Skip this if you already understand how plotting works*

Chia is based on ["proofs of space and time"](https://docs.google.com/document/d/1tmRIb7lgi4QfKkNaxuKOBHRmwbVlGL4f7EsBDr_5xZE/edit#heading=h.4cnt51q9b24t), 
which practically means that you run a computationally-expensive program 
that can take 6-12 hours to complete that creates a ~100GB file on your 
hard drive called a "plot". The Chia blockchain uses plots to "farm". 
The more plots you have, the better chance you have at being rewarded Chia coins. 

The total size of the Chia network is the combination of all plots connected 
to the network. As of this writing, there's about 310PiB of plots connected 
to the network. Crucially, your probability of being rewarded Chia is 
proportional to the amount of plots you contribute - the person with the 
most plots doesn't "win" all the Chia. Contributing only a single plot is 
enough to win Chia.

Since having more plots increases your odds of winning, many focus on 
creating as many plots as possible, as fast as possible. There are 3 
constraints to this:

* Hard drive read/write speeds (SSDs are better than HDDs for plotting, but not farming)
* Available RAM
* Available hard drive space

[Very little can be done to speed up the creation of a single plot](https://www.chia.net/2021/02/22/plotting-basics.html). Using SSDs instead of HDDs can reduce the time it takes to create a plot from ~12 hours to ~6 hours. There's not much you can do to get it faster than that. Given that, many people create multiple plots in parallel. Creating a single plot takes ~350GB of hard drive space* and consumes ~4GB of RAM. Creating 2 plots in parallel takes ~700GB of hard drive space and consumes ~8GB of RAM, you get the picture. To create plots in parallel you need the available hard drive space and the available RAM.

* _The final plot file is only ~100GB but the plotting process takes ~350GB of free hard drive space._


## Plotting in parallel

Plotting Chia can be done via the Chia Desktop app, but the Desktop app isn't great to use when plotting in parallel. The alternative is to use the Chai CLI, a command-line utility that you'll run in your computer's terminal. 

On a Mac:

_This assumes you've already [installed Chia](https://www.chia.net/)_

1. Open the Terminal app and type
2. `chia plots create -t {plotting-folder} -d {final-folder}`
3. Open a new tab (⌘-T) and do it again
4. `chia plots create -t {plotting-folder} -d {final-folder}`
5. Profit! You're now creating 2 plots in parallel! 

When creating a plot, Chia will need a folder to create the plot and a 
different folder to store the plot. To make the best use of your hardware, 
the "plotting folder" should be on a faster hard drive (like an SSD) and the 
"final folder" should be on your largest hard drive (typically a HDD, faster 
hard drives provide no value after the initial plotting step).


## My setup

My plotting setup is pretty simple. I use a laptop with an SSD to create plots and 
an external hard drive to store plots. My laptop has a 1TB SSD and 16GB of RAM, 
which means I can create 2 plots in parallel (I'm hard drive-space constrained). 
My external hard drive has 10TB of space, so it can hold ~100 plots. When I run 
the CLI command, it looks like this:

<img src="https://world.hey.com/smeriwether/ebba76eb/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCT2VLTVJVPSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--6f28c9918a16ff21c298722859280b53a6f43fc0/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDam9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RkhKbGMybDZaVjkwYjE5c2FXMXBkRnNIYVFLQUIya0NBQVU2REhGMVlXeHBkSGxwU3pvTGJHOWhaR1Z5ZXdZNkNYQmhaMlV3T2cxamIyRnNaWE5qWlZRPSIsImV4cCI6bnVsbCwicHVyIjoidmFyaWF0aW9uIn19--9333ff4f088aa9239bed4b0a224e37f2c7bab42d/My%20CLI%20command.png" alt="My CLI command.png" srcset="https://world.hey.com/smeriwether/ebba76eb/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCT2VLTVJVPSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--6f28c9918a16ff21c298722859280b53a6f43fc0/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDam9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RkhKbGMybDZaVjkwYjE5c2FXMXBkRnNIYVFJQUQya0NBQW82REhGMVlXeHBkSGxwUVRvTGJHOWhaR1Z5ZXdZNkNYQmhaMlV3T2cxamIyRnNaWE5qWlZRPSIsImV4cCI6bnVsbCwicHVyIjoidmFyaWF0aW9uIn19--435325a84611f9b4e2210760d04bed2a88c1f429/My%20CLI%20command.png 2x, https://world.hey.com/smeriwether/ebba76eb/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCT2VLTVJVPSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--6f28c9918a16ff21c298722859280b53a6f43fc0/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDam9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RkhKbGMybDZaVjkwYjE5c2FXMXBkRnNIYVFLQUZta0NBQTg2REhGMVlXeHBkSGxwUERvTGJHOWhaR1Z5ZXdZNkNYQmhaMlV3T2cxamIyRnNaWE5qWlZRPSIsImV4cCI6bnVsbCwicHVyIjoidmFyaWF0aW9uIn19--c01f3983c1786fbe1f418ce337eaa6c9bbc6125e/My%20CLI%20command.png 3x" decoding="async" loading="lazy">

## Set it and forget it

The one difference from the command I run to the command in "Plotting in parallel" 
is the addition of:

```
-n 5 
```

This "flag" tells Chia to create 5 plots in sequence; when one finishes, start another, 
5 times. For my computer, each plot takes ~8 hours to complete which means I only have 
to check it about every other day. 

I'm able to create ~6 plots a day, on a spare computer, with very little hands-on time.


Happy plotting! If you'd like to hear more from me you can subscribe below, [follow me on Twitter](https://twitter.com/_smeriwether), 
or send me an email at [smeriwether@hey.com](mailto:smeriwether@hey.com). Have a great day!
