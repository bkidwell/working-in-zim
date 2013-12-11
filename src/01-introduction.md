# Introduction

## Who Am I?

I am a free and open source developer living in New York City, but I'm originally from Boston. I have a day job working remotely for the IT department Abt Associates Inc., which is a global policy research consulting form working in health, social and economic policy, and international development.

Except for my day job, I use various server and desktop versions of Linux on all my computers. My main desktop at the moment runs Linux Mint 16 with MATE desktop environment. Some major apps I use all the time include:

* Firefox
* Sublime Text 3, which is an excellent non-FOSS text editor/IDE
* Zim for personal notebooks
* KeePassX for storing passwords
* Working on transitioning from using DropBox with client-side encryption layered on top, to ownCloud running on my private server
* WordPress content manangement system on my web site
* DokuWiki for various private but shared wikis

## Privacy Matters

We all need to take notes on our computers, and with all the work that we naturally do "online", it's tempting to use a cloud service or a cloud application to store all of our private informal notes. Services like [Microsoft OneNote](http://office.microsoft.com/onenote/) and [EverNote](http://evernote.com/) provide online storage of your notebooks with excellent front-ends that make writing, reading, and searching your notes simple.

But what kind of control do you have over all that private data stored online? Usually very little. You have token access controls that prevent the general public from reading your notes, but you have no guarantee that these controls will never fail --- you have no way to inspect the server environment to validate its security. Additionally, your vendor, their advertizing partners, and the government are all likely to look at that data and do things with it that are not in your interest. Richard Stallman from the [Free Software Foundation](https://www.fsf.org/) has written about these issues. See this Guardian article, for example: [Cloud computing is a trap, warns GNU founder Richard Stallman](http://www.theguardian.com/technology/2008/sep/29/cloud.computing.richard.stallman).

My default security posture in all my computing work is to share as little as possible with remote systems over which I have no control. So that leads to private note-taking applications like Zim on my desktop and privately-controlled file sharing schemes such as those I will demonstrate in this guide.

## Conventions Used in this Guide

Zim tries to be a platform-agnostic application, compatible with any modern desktop operating system, but when you do complicated things with Zim, sometimes you are using it in concert with *other* applications and systems. For the sake of simplicity, I will mostly assume you are using an Ubuntu-based operating system such as Ubuntu, Kubuntu, or Linux Mint. Where I can comment on differences with other OSes, I will.

## PATH Variable in Windows

If you are using Windows, you may end up installing some external tools to support functions of some Zim plugins. For example, you might want to use [LaTeX](http://www.latex-project.org/) via Zim's Insert Equation plugin.

Even after you've installed the external tool, Zim might still say that the commands provided by the tool aren't found. That might be because Zim didn't find the commands in folders listed in your system's `PATH` environment variable. To resolve that:

- Locate the path where the tool's binary executables were installed; this is probably somewhere under `C:\Program Files` or `C:\Program Files (x86)` . Copy the path of the **folder** to the clipboard.
- [Edit your System Path environment variable](http://www.computerhope.com/issues/ch000549.htm). Paste the path you copied to the clipboard at the end of the value, separated from the previous entry in the list by a semicolon (`;`).
