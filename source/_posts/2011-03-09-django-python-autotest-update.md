---
layout: post
title: Django/Python Autotest Update
date: '2011-03-09T19:08:00+00:00'
tags: []
tumblr_url: http://blog.stuartgrimshaw.co.uk/post/3746589206/django-python-autotest-update
---
The other week I wrote a post on the different options for autotesting Python (specifically Django apps)
This week Sebastian, my friend from work, used watchr to do the same thing for PHPUnit tests, based on his work I’ve written a watchr config file that will watch all your Python classes in a Django app and then run test.py for that app. See Seb’s post for how to set up Watchr & growl, and use this as your watchr.rb config file.
 You can specify multiple apps to watch, and if you prefer to use doctests instead on the Python unittesting framework, just change the “test” function to run those instead (you might also need to change the regex’s that pull out all the pass or fail info.
In Growl I have set up watchr to use the Music Video style & I’ve set the background for the highest priority to red, when the build fails it uses the Emergency priority & displays with a red background.
