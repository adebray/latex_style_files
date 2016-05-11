I've noticed that I have a lot of LaTeX code duplication between different versions of my lecture
notes, and so I've made this directory to unify everything, so I only have to access it in one
place. I did something similar for my problem set template, but for notes it's a little more
nuanced: I have the following constraints/goals:

- I would like a "rich base class" that contains all the modifications that I tend to apply to my
  lecture notes, including stylistic modifications.
  	* Ideally, it will be possible to use this class with things like title pages or other
	  modifications ad lib.
	* Since I've taken lecture notes using both the amsart and amsbook document classes, I would
	  like this class to support both an article-like class and a book-like class (so, without
	  chapters and with chapters). This is less essential.
- I would like a "minimal base class" which contains only the macros that I consider necessary for
  live-TeXing, and all of the packages I use to set this up, but with no stylistic changes.
  	* This is a better choice for notes that other people might edit or help write.
	* It's OK if this one only supports a book-like base class.
- I would like to avoid duplicating code.

Given this, I think I'll need the following layout:

- `style.tex`, which includes packages and applies settings that produce the typical style of my
   lecture notes.
- `packages.tex`, which includes packages that aren't style-focused, e.g. `inputenc`.
- `macros.tex`, which contains shortcuts I define for ease of TeXing.
	- `xy_macros.tex` for those macros specific to Xy.
	- `letters.tex` will contain shortcuts for \mathbb, \mathcal, and \mathscr for letters I
	  tend to use.
	- `theorems.tex` will contain all definitions of theorem environments.
- A `notes_d` document class, which includes everything.
- A `minnotes_d` document class which includes `macros.tex`.

### Current Status

I've written most of the supporting files and `minnotes_d.cls`, then tested it with examples. I have
not made progress on `notes_d.cls`.
