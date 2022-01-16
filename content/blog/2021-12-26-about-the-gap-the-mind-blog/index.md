---
title: "About the Gap the Mind Blog"
subtitle: "An experiment and a journey on writing about data analytics, management and mental health"
excerpt: "The 'Gap the Mind' blog is an experiment and a journey on writing about data analytics, management and mental health."
date: 2021-12-31
author: "Thomas Lieb"
draft: false
series:
tags:
  - Blog
categories:
  - Management
  - Data Analytics
  - Mental Health
layout: single # single or single-sidebar
slug: about-the-gap-the-mind-blog
---

**TLDR**: {{< param excerpt >}}

## Motivation

<img src="featured.png" alt="Person looking in a colourful sky and asking: What's the gap he is talking about?" width="100%"/>
<p style="color:grey; font-size:0.7em; margin:0;">
Original photo by  <a href="https://unsplash.com/@grakozy?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText" target="_blank">Greg Rakozy</a> on <a href="https://unsplash.com/s/photos/blog?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText" target="_blank">Unsplash</a>.
</p>

For me, as for many other people writing about topics I'm interested in, helps me get a deeper understanding of them. On top of that, sharing the writing with others adds some benefits. That is, I'm not just writing for myself, but with an audience in mind. Explaining things to others helps expose to myself where I have knowledge gaps. And ultimately, sharing with others makes my knowledge accessible and thus hopefully even helpful for others. All of that along with the fun of [creating a blog and doing so with R](/blog/2022/01/01/how-to-set-up-your-own-blog-using-r-and-blogdown/) is enough reason for writing this blog.


## About the blog name

There are a 6 great reasons why the name of this blog is "Gap the Mind". These relate mostly to the topics I wanna write about, but they are also pragmatic. And, to be honest, I partly came up with some reasons after I found the name.

1. **This blog is about gaps and the mind**<br>
  As I'll describe later, the topics I wanna write about are all in some sense about gaps and the mind. But to summarise it here: Gaps to bridge are everywhere. And in today's world we like to use our mind to solve pretty much every problem. The later is too often the case, even if our mind is not the right tool for the problem.

2. **The name originates from "Mind the Gap"** -- surprise :astonished: --, **but often things are upside down**<br>
  "Mind the Gap" refers to many things. There are literal gaps in the ground like in the underground or mental gaps like between what you mean and what others understand. Ideally, we wanna mind these gaps. That is at least be aware of them and ideally not fall into them. At the same time, things are often mixed up.</br></br>
  Let's look at examples from a fictional person named Gary. Let's say Gary falls into a construction hole in the ground. Gary might think that the gap should not have been there in the first place. That is like Gary feeling he does not need to mind gaps, because they should not be here. Or Gary might say that someone else should mind the gap for him via security measures. Of course security is important, but that does not mean that we don't need to mind any gaps any more. Or lets say Gary is misunderstood by his friend and argues that it's the fault of his friend. Seems like an understanding gap. Garry things his friend did understood his words "wrong". And Gary's friend might say that Gary said the "wrong" words.</br></br>
  And to give credit where it is due: It was actually my wife that first suggested the name "mind the gap".

3. **"Mind the Gap" is used way to often on the internet**<br>
  Originally I thought about naming the blog "Mind the Gap". But too many blogs and sites use this name already. So, I simply needed something else.

4. **Mindfulness**<br>
  Early 2021, I started getting interested in [Mindfulness](https://en.wikipedia.org/wiki/Mindfulness). I like to think of Mindfulness as a practice for training your mind to help you be mindful where needed. Obviously, we wanna be mindful of gaps that we don't want to miss. But Mindfulness is actually about using more than just your mind. It's about using your senses and being aware of emotions and feelings as they arise. In some sense Mindfulness it not at all about minding gaps. Here, I'm referring to gaps in the sense of the difference between where we are and where we wanna be. Mindfulness is more about minding where we are right now.

5. **Gap the mind**<br>
  "Gap" is unfortunately not a verb. But let's not get hung up on details and understand "gap" in terms of "to bridge the gap from". That way we can understand "gap the mind" as "bridge the gap from the mind". So, a gap  to bridge from the mind to something else. And there are many gaps between our minds and other things. That is for example between the mind and our emotions, our actions, our words, other peoples perception, how much we get done and so on. In the next section, I'll write more about examples from the specific domains I wanna blog about.

6. **The domain is already bought**<br>
  As I figured "gap the mind" is a good enough name, I just went with it and bought the domain `gapthemind.info`. `.info`, because it was one of the cheapest [top level domains](https://en.wikipedia.org/wiki/Top-level_domain). And now that it is bought, I wanna think that [I went for the best option](https://en.wikipedia.org/wiki/Choice-supportive_bias).

To summarize, why I chose this blog name:

<div style="width:100%;height:0;padding-bottom:50%;position:relative;"><iframe src="https://giphy.com/embed/9G3xuelhlGbiyVocla" width="100%" height="100%" style="position:absolute" frameBorder="0" class="giphy-embed" allowFullScreen></iframe></div>
<p style="color:grey; font-size:0.7em; margin:0; text-align: center;"><a href="https://giphy.com/gifs/love-happy-yes-9G3xuelhlGbiyVocla">via GIPHY</a></p>

## Where we might wanna <i>gap the mind</i>

Now that you all know why I named this blog *Gap the Mind*, I wanna shed some light on how the name relates to the topics I wanna blog about.

### Data Analytics

Let's say we have data on songs. That might include information like the name of the song, artist, genre, length or how many people listened to the song. When analysing such data we typically want some sort of summary to give us insights.

* For example we could look at average daily number of people listening to a song.
* Or we could cluster the songs into groups of similar songs.
* We could also build a model telling us for a new person which songs they might like most.

All these cases give us a certain summary of the data revealing some insight. And in all these cases there are many gaps. For example there is a gap between the average daily number of people listening to a song and how many people actually listened to a specific song. Or there's a gap between what a model says a new person might like and what they'll actually like. Often these gaps are quantified for example by variation, but even then there's a gap between how we quantify the gap and the actual gap.

So, we wanna be mindful of these gaps. That is important to not draw any wrong conclusions. When the daily average number of listeners is a 100, we could expect for a new song on average 100 listeners per day. But we wanna be mindful that the actual number of listeners might be lower or higher.

And when analysing data, we do not just want to be mindful about the gap between our summary and what happens in reality. We also wanna watch out for how people interpret our data vs. which interpretation is actually feasible. That is, there are often quite some gaps between the ideas people have in their mind and the actual data.

All of that is a long way of saying, even though data analytics is often seen purely technical, there are many gaps and a lot happens in peoples minds. And way too often things get mixed up.

### Management

In management, managers have certain things in mind they want to achieve. And they have certain expectations towards their team in mind. Obviously, this can lead to many gaps: for example between the manager's expectations and what the team thinks is expected from them, or what the team is actually doing, or to which results, achievements and behaviours these expectations actually lead.

So many gaps to mind. And many gaps to bridge from the managers mind.

### Mental health

In mental health, our mind obviously play a central role. And there are many gaps. A big gap is that we'd all like to be mentally healthy while [according to the WHO](https://www.who.int/health-topics/mental-health#tab=tab_2) "20% of the world’s children and adolescents have a mental health condition".

Mental health is a serious and complex topic. While a lot of research is done, it is my understanding that there's a lot we still don't know. I feel more and more people talk about mental health along with their personal experience. But despite that, the topic is still widely disregarded and for many of us it comes with shame. Thus, there's quite a gap between where I'd hope we as a society will be and where we are today. Hopefully, I can help to narrow this gap, if only a tiny bit.

Related to mental health, I do think there are many gaps to bridge from what we have in our mind and what actually happens:

* We might think that mental health is nothing we need to worry about for ourselves. But nobody is immune to having mental health problems. Just think that anyone can experience difficult life situations.
* There are often gaps between how we think something will make us feel and how we actually feel. For example, when I worked on a stressful project, I thought that it would be so relaxing once the project was done and that I would be so happy. Those feelings where definitely there, but not as intense as I thought and certainly not as long lasting as I wished. Too often we think that things will be better if only x happens.
* For many people there is a gap between what we expect from ourselves or what we think others expect from us and what we're realistically able to do.
* There are often gaps between how we want to feel and how we actually feel. For example you might not want to feel anxious, stressed, depressed, scared or like an imposter. However, many if not all of us feel that way at least sometimes. And not wanting to feel that way usually makes things worse.

## And now?

Now, I hope that you have an idea where the name of this blog is coming from and what kind of topic I envision to write about.

If you have any topics you'd love to see me write about, please let me know in a comment below.
