---
layout: post
title: Finding who knows the most about the code.
date: '2012-01-12T09:51:00+00:00'
tags: []
tumblr_url: http://blog.stuartgrimshaw.co.uk/post/15717524239/finding-who-knows-the-most-about-the-code
---
UPDATE: Don’t do that, do this: 
    git shortlog -sn
which does exactly what I was trying to below.
When you start a new job it’s often hard to know who to talk to about a piece of code, but git & a bit of bash scripting can help you.
    git log --pretty=short . | grep ^Auth | sort | uniq -c | sort -nr
Which will give you a list of people who have made the most commits to files in the current tree.
     710 Author: dave <dave@example.com>     415 Author: pete <pete@example.com>     402 Author: cameron <cameron@example.com>
It’s not perfect, but it’s a good place to start.
