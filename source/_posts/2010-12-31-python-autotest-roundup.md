---
layout: post
title: Python Autotest Roundup
date: '2010-12-31T14:11:00+00:00'
tags:
- python
- unit testing
- autotest
- autonose
- sniffer
- modipyd
tumblr_url: http://blog.stuartgrimshaw.co.uk/post/2541961878/python-autotest-roundup
---
Update: See my new post for a better way to autotest Django apps, including Growl notifications for OSX users.
For some time I’ve been searching for a Python equivalent to ZenSpider’s ZenTest (commonly known as Autotest). I’ve found 3 alternatives and had success with 1 of them.
The first of the 3 candidates are Modipyd, which is really a framework for monitoring file system changes, but comes with a tool called pyautotest. I’ve never managed to get pyautotest to work properly with my simple project, it struggles importing the modules needed by the tests. I’m pretty sure it’s down to the way I’m launching it.
Next is a util called autonose, however it’s not the easiest to install as the author has withdrawn support for easy_install for at least one of the dependencies that autonose needs. If you use a supported platform (ie, not OSX) it should be fairly easy to install & use the authors preferred install tool, 0install but for us OSX users you have to install it manually, which is too much to expect of users who just want your simple library.
I did manage to get autonose installed using an alternative Python install tool, pip. It was a case of downloading the source for autonose and running setup.py numerous times, fixing dependencies with a combination of source for the missing deps,easy_install & pip.
There are a couple of other gotchas for OSX users too. The gui doesn’t work & running it in console mode fails because one of the 3rd party modules used by autonose doesn’t work on OSX, pyinotify won’t even install.
The final candidate then, and by way of the fact it works, the winner is called sniffer. There were a couple of problems getting it installed, but if you
sudo pip install sniffer
and install any deps it can’t find from source or easy_setup then you won’t go far wrong. It’s missing notification through growl or some other notifier, but other than that it works.
So there you go, for OSX Python developers, there’s only 1 choice that really works right now, but it does work quite well.
