---
layout: post
title: "Ben Thompson: Resiliency and Scale"
description: "Ben Thompson on how the internet is built for resiliency but scale economics get in the way."
---

The best thing I read this week was [Resiliency and Scale](https://stratechery.com/2025/resiliency-and-scale/) by Ben Thompson. Ben Thompson is my favorite writer on the internet - my [X bio says "Patron saint of Stratechery"](https://x.com/_smeriwether). I've intentionally shied away from mentioning his work because otherwise I'd likely post too much of it. This week, he wrote about the recent AWS outage and how even though the internet is designed for resiliency, scale economics gets in the way.

> The Internet story is easier to tell. While the initial motivation for ARPANET, the progenitor of the Internet, was to share remote computing resources, the more famous motivation of surviving a nuclear attack did undergird a critical Internet technology: packet switching. Knocking out one node of the Internet should not break the whole thing, and, technically, it doesn’t. And yet we have what happened this week: US-East-1 is but one node on the Internet, but it is so critical to so many applications that it effectively felt like the Internet was broken. The reasoning is straightforward: scale and inertia.

In my experinece, US-East-1 really is the default option for most product teams. He describes why:

> That data center became what is known as US-East-1, and from the beginning it has been the location with the most capacity, the widest variety of instance types, and the first region to get AWS’s newest features. It’s so critical that AWS itself has repeatedly been shown to have dependencies on US-East-1; it’s also the default location in tutorials and templates used by developers around the world. You might make the case that “no one got fired for using US-East-1”, at least until now.

Relience on a single AWS region is a known issue for most product teams but solving it is tricky. Even PaaS providers like Heroku don't have a good solution for this problem.

> And, nestled within AWS’s scale, was US-East-1: that was the place with the cheapest instances, because it had the most, and that is where both startups and established businesses started as they moved to the cloud. Sure, best practices meant you had redundancy, but best practices are not always followed practices, and when it comes to networking, things can break in weird ways, particularly if DNS is involved.

The result is that datacenters today are more reliable, AWS hardly ever experiences outages, but when they do most of the internet goes down with it.

> The end result is that, as we saw this week, the Internet in practice is less resilient than it was 20 years ago. Back then data centers went down all of the time, but if that data center served a single customer in an office park it didn’t really matter; now one data center in Northern Virgina is a failure point that affects nearly everyone.
