This repo holds a collection of LaTeX style files that I use for lecture notes and problem sets. I originally had
a separate style file for each class, but this led to some code duplication. Instead, collating these classes once
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
- The `lecture_notes` directory contains some style files for lecture notes. Though I will still need to make
  minor changes to these files, I believe the bulk of the work is done. There are three classes: a minimal class,
  `minnotes_d`, which only includes the shortcuts I define for live-TeXing; `lightnotes_d`, which makes a very
  small number of stylistic changes, and `notes_d`, which implements the full set of style changes that I use
  when taking lecture notes. All of these classes have been tested: I expect minor fixes to be necessary, and I
  will update my macros and notes style, but hopefully nothing major will be needed.
- Right now, these two do not share any code. That is something I would like to fix, but first I should get
  everything up and running. Since class files cannot include relative path names, I have to use a workaround
  to get them to share code: I'm using `cpp` to preprocess the files in the `lecture_notes` directory, which
  seems to mostly work.
