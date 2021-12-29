---
title: "How to setup your own blog (using blogdown)"
subtitle: "A simple path (for R users) to a beautiful website"
excerpt: "This is a brief overview on how you can also build your own blog. I'll mostly share my own story, but also point out some alternatives. The rebuild what I did, you could simply follow [this guide](https://hugo-apero-docs.netlify.app/start/)"
date: 2022-01-01
author: "Thomas Lieb"
draft: false
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

Blogdown has very handy [website](https://bookdown.org/yihui/blogdown/) explaining pretty much everything you'll need to know. Blogdown creates a static website for you using the popular static site generator Hugo.

After reading about blogdown, the first action you're encouraged to take is to decide on a theme. The theme will largely determine the look and feel of your site along with which features will be at your disposal. You can explore a lot of themes at https://themes.gohugo.io/. I personally went for the Hugo Apéro theme ([Github](https://github.com/apreshill/apero), [demo site](https://hugo-apero.netlify.app/)) which was built by [Alison Presmanes Hill](https://www.apreshill.com/) and other contributors evolving afaik around the R community. I did so because I liked the modern look and feel and as it was coming with a bunch of useful features like many customisation options.

After you picked a theme, you can follow [the recommended workflow](https://bookdown.org/yihui/blogdown/workflow.html) to create your website, push it to Github and even deploy it on Netlify.

It's also worth mentioning that the Hugo Apéro documentation has a great step by step tutorial to get your site up and running. Even though the tutorial is specific to the Hugo Apéro theme, it's pretty straightfoward to apply it to any theme.

## Further customisations

Following above guide, you're pretty much done with creating your own beautiful blog. So, you'd be ready to create content. However, there are many ways you can customise your blog. Here, I wanna point out some aspects where I needed further research to find out.

### Commenting

You may want to enable readers of your blog to comment on your posts. Many themes, including the Apéro theme, have commenting features built in. That is, using third party tools to be embeded in your blog. The Apéro theme allows for comments using [Utterances](https://utteranc.es/) or [Disqus](https://disqus.com/).

* **Utterances** is lightweight, completely free and uses Github issues in the background. For commenting a Github account is needed. So it seems ideal if you can expect the majority of your readers having a Github account anyway. The Apéro theme has a section `params.utterances` in the *config.toml*-file for configuration.
* **Disquis** offers commenting with lots of features. However, the free option comes with adds and core features only. I went for Disqus as they offer multiple ways for users to identify themselves. That is popular social media accounts and optionally also guest commenters. If you wanna use Disqus, you need to sign up, create a Disqus-site that represents your blog and set the `disqusShortname` parameter in *config.toml* to the Disqus short name. Don't forget to set `use_utterances` to `false` and you should be good to go.

### Taxonomy overview pages

There's a bunch of metadata your posts come with. You can also create a taxonomy of your pages via providing tags and categories for your posts. You may even collect posts via a series. For these taxonomies, many themes, including the Apéro theme, (maybe all?) automatically provide an overview page for each taxonomy. You can access them via *<your_base_url>/tag* / *<your_base_url>/categories* / *<your_base_url>/series* (replace *<your_base_url>* with your base url). You can easily link these in your header/fotter. For example I linked the tags overview page in the footer via placing the following under `[menu]` in *config.toml*:

```toml
  [[menu.footer]]
    name = "Tags"
    title = "Tags"
    url = "/tags/"
    weight = 4
```

### Archive page

I do like the idea of an archive page providing readers a quick and easy chronological overview of all blog posts. Some themes do come with a archive page, but the Apéro theme does not seem to do so. At least I couldn't find it. So, I built one one my own which you are welcome to reuse:

Here blogdown comes in handy, as I can use R markdown to programatically create content. I created a folder `archive` within the `content` folder and placed an `index.Rmd` file in there. You can find the code of the current live version on Github: [`/content/archive/index.Rmd`](https://github.com/rietho/blogdown_website/blob/main/content/archive/index.Rmd) and [`R/functions.R`](https://github.com/rietho/blogdown_website/blob/main/R/functions.R). In theory you should be able to simplay copy these files as they are. The code is a bit scrappy, but it should work well:

The basic idea is the following:

* extract the yaml section of all pages
* filter out non-draft blog posts
* extract the information needed for the archive page: title, link, year, nonth
* clean up the data frame for being displayed as a table
* format and display the archive as a table

The R markdown files need to be rendered before deployment. I think that Netlify does not render them for you. In any way, it's easy to do so locally via the following R code:

```r
blogdown::build_site(run_hugo = F, build_rmd = T)
```

Once the R markdown file is rendered, you can place it for example in your header via:

```toml
  [[menu.header]]
    name = "Archive"
    title = "Archive"
    url = "/archive/"
    weight = 4
```

### Using your own domain

In case you are using Netlify, you end up with a link that looks something like `name-of-your-blog.netlify.app`. That itself may be everything you need. But you may want to have your blog online on a custom domain. Read more about domains [here](https://bookdown.org/yihui/blogdown/domain-name.html). In that case, you need to buy a domain. Depending on the domain, the cost itself starts from around 10$/year. There are a bunch of domain registrars where you can buy them. On choosing one watch out for potential hidden costs you might get charged.

I was using [Cloudflare] to buy my domain, as the are offering free CNAME flattening. This includes, that my blog can be reahed via https://gapthemind.info (i.e. the `www` can be omitted). Both Cloudflare and Netlify need to be configured to work togehter. It took me a bit to figure out how, but [here](https://jaketrent.com/post/cloudflare-dns-netlify-host)'s a nice blog post illustrating the steps.

## Summing things up

There are many options how you can create your own blog. With blogdown you have a nice R package at your disposal giving you lot of options how to customise the look and feel of your blog. You can even use R markdown to generate content. In any case, I hope you find this post helpful.

Happy blogging!
