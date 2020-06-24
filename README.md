# HSSA-journal-LaTeX-stylesheet
Maintenance site for the LaTeX stylesheet for History of Science in South Asia (https://hssa-journal.org)

## The most important files here are 

* `hssa.cls`
* `hssa.sty`

These two contain the formatting instructions for the journal's articles.  They call the other files, like

* `hssa-biblatex.sty`
* `hssa-indexing.sty`
* `hssa-reledmac.sty`  (for two-column footnotes and for critical editions)

The file 

* `hssa-documentation.dtx`

is the driver file for formatting and printing the documentation for users and hackers (see the output PDF).

## Template

The `template_HSSA.tex` file gives a brief example of how an article works.  

## snapshot and bundledoc 
Note that the template starts by calling `snapshot.sty`.  
This creates a file `foobar.dep` that lists all the files used in a TeX run.  
After an article is finished and published, I run `bundledoc-dw foobar` and that creates a `foobar.zip` archive file 
that contains *all* the files needed to compile the document.  This is helpful as the years pass and small changes accumulate
in TeXLive, or if one just wants to send someone the whole thing without worrying about dependencies.  In the long run,
it might be sensible to upload these archive files to the HSSA OJS website, to sit with the original articles, for the sake
of long-term archival integrity.

## To do:

Make a separate, much simpler file for authors.
