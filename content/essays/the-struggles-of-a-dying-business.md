+++
date = "2021-09-08"
description = "Working on a business that's dying is a lot harder than I thought it would be."
slug = "the-struggles-of-a-dying-business"
title = "The Struggles of a Dying Business"
+++

Working on a business that's dying is a lot harder than I thought it would be.

<!--more-->

Last week was the penultimate Sprint Review at my engagement (I work as a Consultant at [Stride Consulting](https://stridenyc.com)) 
and only two people showed up. This was down from a couple dozen in its heyday, and the two that did show weren't 
stakeholders. The business is being sold, not because it did extraordinarily well but because it didn't live up 
to expectations, and I was tasked with leading a small team to keep the lights on until the sale was finalized.

I consulted at a well-known big tech (but not quite BigTechCo) company. This engagement started like any other 
engagement, a company flush with cash has ambitious deadlines and can’t hire fast enough so they supplement with 
high-priced consultants. I like to think that we don’t fit the “consultant stereotype” of making a bunch of 
well-meaning-but-wrong changes and then leave. Instead, we’re mostly-senior developers who join existing teams 
and leave the product and the codebase better than we found it. This Big-ishTechCo acquired a company a couple 
years back and had been on a 2 year journey to integrate the acquisitions technology with its own. When I arrived 
the team was probably 40% complete with what turned into a re-architect and redesign of the product. It was a mess. 
About half of the Pages had been redesigned which led to an inconsistent experience across the product. New domain 
language was introduced which also introduced a fair amount of context switching. The original monolith, which had 
high-coupling and low-cohesion, had started to be broken into micro-services but the implementation was 
understandably-messy which led to even more context switching. The product was buggy and users started to complain, 
Business folks weren't happy, and multiple KPI meetings ended with the dreaded “not what we were hoping for but 
we’re optimistic” message. A few months into the engagement we were told that the business was going to be sold and 
all new product development will stop.

It was a failed experiment, a decent business but not nearly big enough for a Big-ishTechCo. There were clear market 
headwinds that could explain the declining growth, but I can’t help but wonder how much of the decline was due to the 
re-platform, a project that was estimated to take 6 months but was 2 years in with no end in sight. Once the 
announcement was made Big-ishTechCo employees started jumping ship immediately. Quickly, the team responsible for 
undoing all of the changes made over the past couple of years was made up entirely of consultants. Some Big-ishTechCo 
employees were fired, I guess some folks had to be “held responsible” but most joined other internal teams because it 
“was impossible to get promoted on this team now”. It all happened so fast that I lost track of how many people were 
still working on the business. The last KPI meeting had only 3 attendees, was that because that’s all who was left or 
did everyone else just stop caring? 

When I was asked to lead the consultant-tech team (which had more to do with being one of the last few standing than 
anything about my abilities) I thought it would be fairly simple. The task was to undue basically every change made 
over the past 2 years and prep the software for a sale. We had little say in the matter - the redesign was 
“proprietary” - though it was probably the path of least resistance. The technical task was fairly simple, we kept 
around all of the old code paths hidden behind feature flags which just needed to be turned back on. As an aside, in 
the future I’ll probably advocate for a similar escape hatch to other “re-platforms”. It was all the other stuff that 
I didn't anticipate (I've definitely made that mistake before). The first was internal resistance. The decision to sell 
was told to those directly impacted - most of the people at BigishTechCo had no idea. Our requests to do things like 
change domain registrars or create a new GCP organization, were denied. It wasn't until they were “read in” before we 
got approval. I understood the pushback but it added weeks to our timeline. And the second thing I didn't anticipate 
came from people still assigned to the business. On more than one occasion we had people from other departments pop into 
our Sprint Planning meeting or our Slack channels asking (sometimes demanding) this or that be included in the work, 
only to be absent when we needed additional details or needed to follow up. It was this weird “caring but not enough to 
see it through” dynamic that was hardest to navigate. I’d spend hours past my normal working hours to work on a thing, 
only to never hear again from the person who requested the thing. It was weird and stressful. Our team seemed to care 
more about the success of the project than even the few that elected to stay on post-sale. I eventually just ignored 
those requests.

The end was anticlimactic. I guess I should've expected that, along with all the pushback that we encountered. But I 
guess that’s also why you pay a handful of high-priced consultants to do the job - it’s easier to have them deal with it 
than risk losing employees. 

On my “career bucket list” was to see a product through a sale. This wasn't exactly what I had in mind but I’m going to 
check it off anyway.

[Love you too](https://twitter.com/AlabamaFTBL/status/1425592614686838789?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1425592614686838789%7Ctwgr%5E%7Ctwcon%5Es1_&ref_url=https%3A%2F%2Ffansided.com%2F2021%2F08%2F12%2Fernie-johnson-speech-alabama-football%2F),

Stephen
