# Advanced Topics

## Exporting from Zim

Zim offers some functions for exporting single Pages or entire Notebooks to HTML, LaTeX, MarkDown, and ReStructuredText. See the [Exporting](http://zim-wiki.org/manual/Help/Export.html) in the manual for general instructions.

<div class="tip">Be careful what you use the HTML export for. It will work for most purposes, but Zim does not export syntactically correct HTML code. For example, quotation marks in the text are not properly encoded as `&quot;` . If I want to export one long Page to start working on it another document format, I usually export to Markdown format and then use [Pandoc](http://johnmacfarlane.net/pandoc/) to make a first pass at converting it to my target format.</div>

## External Wikis and Services

Not all Links to web sites from Zim Pages need to be given as a complete URL. Zim keeps a list of shortcuts in a file called `urls.list`. You can look at the file [online in the Zim source code](http://bazaar.launchpad.net/~jaap.karssenberg/zim/pyzim/view/head:/data/urls.list). For example, if you make a Link to `wp?Zim (software)` then Zim will translate that to `http://en.wikipedia.org/wiki/Zim+(software)` when you click on it.

I use this feature to link to pages and tickets in my company's internal instance of [FogBugz](http://www.fogbugz.com/). To create your own URL shortcut, create a file `~/.local/share/zim/urls.list` in your desktop profile:

~~~
# Brendan's FogBugz
fb http://fogbugz/default.asp?

# TV Tropes
tvtropes http://tvtropes.org/pmwiki/search_result.php?q=
~~~

## Graphics

Besides having the ability to attach arbitrary images Zim includes several plugins for creating graphics from source code. They all require you to have their respective applications installed on your system to create new graphics; you can view the rendered graphics on other Zim instances on computers where you don't have all the external tools installed.

Insert Diagram
  ~ Uses [Graphviz](http://graphviz.org/) to draw mathematical "graphs" which are collections of nodes and edges connecting the nodes.
Insert Ditaa
  ~ Uses [Ditaa](http://ditaa.sourceforge.net/) to make smooth images out of ASCII art. I like to make my Ditaa drawings using [JAVE](http://jave.de/) and then copy and paste from JAVE into Zim's "Insert Ditaa" dialog box.
Insert Equation
  ~ Uses [LaTeX](http://www.latex-project.org/) to render images of mathematical expressions in LaTeX's math syntax.
Insert GNU R Plot
  ~ Uses [GNU R](http://www.r-project.org/) to run an R script to produce an image.
Insert Gnuplot
  ~ Uses [Gnuplot](http://www.gnuplot.info/) to run a Gnuplot script to produce an image.
Insert Score
  ~ Uses [GNU Lilypond](http://lilypond.org/) to render music notation.
Insert Screenshot
  ~ Uses [Scrot](http://en.wikipedia.org/wiki/Scrot) to capture screenshots.

To use any of these plugins, make sure you have the required software installed, and then go to Edit → Preferences → Plugins, and enable the ones you want.

## Tables

One of the most requested features of Zim is the ability to create inline tables. Unfortunately, the way Zim is built doesn't allow for easily editing tables within the rich text widget, and allowing for tables would require extensive modifications to Zim.

Two easy workarounds are available. The first workaround is to simply create the table in a spreadsheet such as LibreOffice Calc, and attach it to a Page as you would attach any file.

A more useful workaround is to use the Insert Equation plugin. This allows you to show the table (read-only) inline as an image. You can edit the table like you would any Equation by right-clicking on the image and selecting Edit Equation.

Here is a template for a LaTeX table you can write using the Insert Equation command:

~~~
\begin{tabular}{ l l l }
  1 & 2 & 3 \\
  4 & 5 & 6 \\
  7 & 8 & 9 \\
\end{tabular}
~~~

The first line specifies that the table has three columns, aligned "l"eft, "l"eft, and "l"eft. Then the rest of the lines until `\end` list three table cells separated by `&`, and with rows separated by `\\`.

For more information on LaTeX's table syntax, see the [Tables chapter in the LaTeX WikiBook](https://en.wikibooks.org/wiki/LaTeX/Tables).

## Quick Note

The Quick Note plugin is a convenient command line interface to add pages to a certain area where you want to capture notes from other places. Usage information can be found [in the manual](http://zim-wiki.org/manual/Plugins/Quick_Note.html).

As a simple example, create a shortcut in your application menu or on your taskbar that runs this command:

~~~
zim --plugin quicknote notebook=~/Cloud/fileserver/zim-demo namespace=Inbox input=clipboard
~~~

When you run it, Zim will open a Quick Note dialog box with

* The notebook `~/Cloud/fileserver/zim-demo` selected.
* The top-level Page "Inbox" selected.
* The page text copied from the desktop clipboard.

Click OK to finish creating the Quick Note.

## Tray Icon

If you enable the Tray Icon plugin, Zim will always display an icon in your desktop's System Tray that opens a menu of all registered Notebooks, and the Quick Note command (if the Quick Note plugin is enabled).

To always start the Tray Icon when you login, without opening a Notebook right away, create a launcher in your desktop's automatic-start collection that runs this command:

```
zim --plugin trayicon
```

## Line Sorter

The Line Sorter plugin is easy to overlook, but it comes in handy for me quite often. It add an Edit → Sort Lines command sorts the selected lines of text.
