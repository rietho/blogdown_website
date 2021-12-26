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

Content:

-   blogdown
-   Hugo Apéro theme

**TLDR**: This is a brief overview on how you can also build your own blog. I'll mostly share my own story, but also point out some alternatives. The rebuild what I did, you could simply follow [this guide](https://hugo-apero-docs.netlify.app/start/).

## Motivation

You might ask yourself, why create a blog in the first place. Well, it depeneds on your interestes and motivations. Here's a brief intro into my story:

I always thought that it would be a great project to create a blog to write about stuff that is of interest to me. I find it very beneficial for my learning process to write about things of interest to me. It forces me to put a structure around it, how to explain it to others and fill in gaps with research.

Moreover, I regularly came across pormissing projects to make website building easy and fun. That was most importantly the R package [blogdown](https://bookdown.org/yihui/blogdown/). Creating a blog using blogdown comes with a bunch of features:

-   Create a blog powered (amongst others) by R. That is, I can easily use my favourite IDE [Rstudio](https://www.rstudio.com/), I can integrate R code in my blog and I can benefit from the supportive R community.
-   Use all the advantages of git version control with all it's advantages like branching along with free hosting of all my code on [Github](https://github.com/rietho/blogdown_website).
-   Benefit from all the tooling blogdown is powered by like [Hugo](https://gohugo.io/) as well as tools ths allows me to connect to like [Netlify](https://www.netlify.com/).


## How to get started

To get started with 

## Wanna use your own domain?

I was using Cloudflare to buy my domain. Cloudflare and Netlify need to be configured to work alongside each other. [Here](https://jaketrent.com/post/cloudflare-dns-netlify-host)'s a nice blog illustrating the steps.
