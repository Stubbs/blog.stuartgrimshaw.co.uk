---
layout: post
title: The Build fails, the build succeeds.
date: '2012-02-14T16:42:35+00:00'
tags: []
tumblr_url: http://blog.stuartgrimshaw.co.uk/post/17610747013/the-build-fails-the-build-succeeds
---
Set up watchr to automatically run your unit tests when you save a file, follow +Sebastian Marek''s guide here:http://criticallog.thornet.net/2011/03/08/autotesting-with-watchr-growl-and-phpunit/ and see my copy of the watchr script here:https://gist.github.com/1723342My version of the script works with Phing rather than phpunit directly & comes with options to use notify_send on Ubuntu, or Growl on OSX. Just change “growl” on line 15 to notify_send to use on Ubuntu (and probably anything Gnome based)The images in case you are interested are Susan Boyle & Simon Cowel ;-)
