---
title: "How to setup your own blog (using blogdown)"
subtitle: "A simple path (for R users) to a beautiful website"
excerpt: "This is a brief overview on how you can also build your own blog. I'll mostly share my own story, but also point out some alternatives. The rebuild what I did, you could simply follow [this guide](https://hugo-apero-docs.netlify.app/start/)"
date: 2021-12-22T18:31:50+01:00
author: "Thomas Lieb"
draft: true
series:
tags: [r, blog, blogdown, hugo]
categories:
layout: single # single or single-sidebar
---

**TLDR**: This is a brief overview on how you can also build your own blog. I'll mostly share my own story, but also point out some alternatives. The rebuild what I did, you could simply follow [this guide](https://hugo-apero-docs.netlify.app/start/).

## Motivation

You might ask yourself, why create a blog in the first place. Well, it depeneds on your interestes and motivations. Here's a brief intro into my story:

I always thought that it would be a great project to create a blog to write about stuff that is of interest to me. I find it very beneficial for my learning process to write about things of interest to me. It forces me to put a structure around it, how to explain it to others and fill in gaps with research.

Moreover, I regularly came across pormissing projects to make website building easy and fun. That was most importantly the R package [blogdown](https://bookdown.org/yihui/blogdown/). Creating a blog using blogdown comes with a bunch of features:

-   Create a blog powered (amongst others) by R. That is, I can easily use my favourite IDE [Rstudio](https://www.rstudio.com/), I can integrate R code in my blog and I can benefit from the supportive R community.
-   Use all the advantages of git version control with all it's advantages like branching along with free hosting of all my code on [Github](https://github.com/rietho/blogdown_website).
-   Benefit from all the tooling blogdown is powered by like [Hugo](https://gohugo.io/) as well as tools ths allows me to connect to like [Netlify](https://www.netlify.com/).


## How to get started

To get started with your own blog, you need to make a bunch of decisions. Ideally, first you get an understanding of why you want to create a blog. This will be a useful guide throughout the whole process.

### Create your own blog?

You do not actually need to create your own blog in order to blog. There are a bunch of sites where you can sign up and use existing infrastructure to blog. For example TBD

For me building the blog itself was part of the motivation, so I went that route. There are lots of different tools out there. A lot of them use simple drag and drop UIs. Many of them can be used for free, but with limited features only. But you can create them programatically as well with many existing packages to automate a bunch of steps. I wanted to do something with R. There the most popular packages seemed [blogdown]() and [distill](). Both are quite similar, while blogdown seems to give you more freedown in tweaking the website while distill seems to have a higher level of automation and thus esier to use.

TBD: blogdown vs. distill

TBD: Wordpress?, add other examples above

## Using blogdown

Blogdown has very handy [bookdown website](TBD) explaining pretty much everything you'll need to know. Blogdown creates a static website for you using the popular static site generator Hugo. 

After reading about blogdown, the first action you're encouraged to take is to decide on a theme. The theme will largely determine the look and feel of your site along with which features will be at your disposal. You can explore a lot of themes at https://themes.gohugo.io/. I personally went for the Hugo Apéro theme ([Github](https://github.com/apreshill/apero), [demo site](https://hugo-apero.netlify.app/)) which was built by [Alison Presmanes Hill](https://www.apreshill.com/) and other contributors evolving afaik around the R community. I did so because I liked the modern look and feel and as it was coming with a bunch of useful features like many customisation options.

After you picked a theme, you can follow [the recommended workflow](https://bookdown.org/yihui/blogdown/workflow.html) to create your website, push it to Github and even deploy it on Netlify.

It's also worth mentioning that the Hugo Apéro documentation has a great step by step tutorial to get your site up and running. Even though the tutorial is specific to the Hugo Apéro theme, it's pretty straightfoward to apply it to any theme.

## Some specifics

* Commenting
* Taxonomy specific sites (tags / categories / series)
* Archive
* Use your own domain


### Wanna use your own domain?

I was using Cloudflare to buy my domain. Cloudflare and Netlify need to be configured to work alongside each other. [Here](https://jaketrent.com/post/cloudflare-dns-netlify-host)'s a nice blog illustrating the steps.
