This repo holds a collection of LaTeX style files that I use for lecture notes and problem sets.  I originally had
a separate style file for each class, but this led to some code duplication.  Instead, collating these classes once
and for all will allow me to customize LaTeX in a uniform way.

This directory will contain a few different `.cls` files for problem sets, lecture notes (rich and minimal), and
possibly other things. I would also like to document the options I provide for these classes, explaining how to use
them and to provide some examples.

### Current Status

This is still very much a work in progress, and even when it's "finished" I intend to add other useful commands or
tweak the style. Here's what exists now:

- The `pset_d` directory contains a style file for problem sets, `pset_d.cls`.  At this point, I'm using this class
  for problem sets with no huge snafus.  There are a couple of things I still want to fix: specifically, I would
  like the ability to define custom problem numbers such as `\item[2.A.]` and have the class automatically handle
  things like equation numbering within that item or `\ref`s to that item; this is currently not in place. There
  are also various smaller TODOs scattered throughout the file. I would also like to provide some more examples:
  some minimal examples of how to use the class, and some richer examples of what problem sets look like in this
  template, including demonstrating various class options.
- The `lecture_notes` directory contains some style files for lecture notes. This is still a work in progress, but
  the end goal is to have something similar: a style file that's easy to use, with documented options and examples.
  I have a customized lecture notes style, but I also want to have a more minimal one, which only includes the many
  shortcuts I define for live-TeXing.
- Right now, these two do not share any code. That is something I would like to fix, but first I should get
  everything up and running.
