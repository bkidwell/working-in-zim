# Installing Zim

## GNU/Linux and BSD

Install the package called `zim` using your desktop's package manager. Then you should see a new entry "Zim Desktop Wiki" in your desktop's application menu under "Accessories" or "Utilities" or some other name, depending on your desktop. You can also launch Zim from your desktop's Run command by executing the command

~~~
zim
~~~

If your operating system doesn't have a built-in package for Zim, you can get the source code as a tarball from the [Download](http://zim-wiki.org/downloads.html) page on Zim's web site.

### Installing the Latest Version in Ubuntu

Zim is under active development and your operating system's default repositories may include an older version of Zim. If you are using an Ubuntu-derived operating system, you can run the following commands in a Terminal to install the latest package directly from the Zim project:

~~~
sudo add-apt-repository ppa:jaap.karssenberg/zim
sudo apt-get update
sudo apt-get install zim
~~~

### Installing from Source

If you do not have access to the latest version of Zim within your operating system, you can install it from the source code tarball.

See also the official [installation instructions](http://zim-wiki.org/install.html).

Make sure you have these packages installed in your system:

* gtk+
* python
* python-gtk
* python-gobject
* python-simplejson
* python-xdg
* xdg-utils

You can try out Zim without installing it globally by extracting the source tarball to a folder in your profile such as `~/Apps`, and then executing `zim.py` in that folder.

To install globally, open a command prompt, navigate to the folder were you extracted the tarball, and run

~~~
sudo setup.py install
~~~

Then you should see "Zim Desktop Wiki" in your application menu or you can run the command

~~~
zim
~~~

with your desktop's Run command.

## Windows

Zim is available as a standard installer package and as a portable application (zero global configuration, run from its own folder) from the [Zim Desktop Wiki for Windows](http://www.glump.net/software/zim-windows) page on my web site.

## OS X

The official [installation instructions](http://zim-wiki.org/install.html) offer some tips on installing Zim in OS X. I have not had a chance to try this.
