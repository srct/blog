---
layout: post
title: "Hello SRCT"
date: 2014-03-16 20:13:09 -0400
comments: true
categories: notes 
---

This is a test post for the new note-taking platform we're testing out. We're using a Jekyll-based blogging platform called [Octopress](http://octopress.org/). Octopress allows simple and extensible editing and deployment. Once you've cloned down the source and installed the necessary dependencies, making a new post is straightforward.

``` bash
$ rake new_post["Hello SRCT"]
```

This creates a markdown source file for a new post. In this case, it'll be located inside `source/\_posts/2014-03-16-hello-srct.markdown`. Once you're finished editing, you can tell octopress to genereate static HTML files for your new post in the public directory

``` bash
$ rake generate
```

You can also utilize some of Octopress' features to dynamically genereate and preview your changes on localhost. Find out more info on creating posts [via the Octopress documentation](http://octopress.org/docs/blogging/)

Once you're done creating a new post, you can commit the new markdown file via git and push the changes up to the source branch. Then, to have the changes published on SRCT's website, you will have to login to SRCT's server to pull the changes genereate the HTML files there. 

This should be a simple enough process for now, but in the future if we continue to use this platform, we may explore utilizing Octopress' [Github Pages](http://octopress.org/docs/deploying/github/) integration, which will allow a poster to push changes to git and have Github automatically  generate and host the static site (even with a custom url). This would prevent user's having to ssh into a server to published changes.
