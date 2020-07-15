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

Given this, I use the following layout:

- `style.tex`, which includes packages and applies settings that produce the typical style of my
   lecture notes.
- `packages.tex`, which includes packages that aren't style-focused, e.g. `inputenc`.
- `macros.tex`, which contains shortcuts I define for ease of TeXing.
	- `xy_macros.tex` for those macros specific to Xy.
	- `letters.tex` will contain shortcuts for commands I use involving \mathbb, \mathcal, \mathscr,
	   etc.
	- `theorems.tex` will contain all definitions of theorem environments.
- A `notes_d` document class, which includes everything.
- A `minnotes_d` document class which includes `macros.tex`.
- A `lightnotes_d` document class which adds a few small personal style changes to `minnotes_d`.
  So far I've been using `lightnotes_d` to take notes in seminars, whereas `notes_d` will be used for classes.

### Current Status

- The class files in this directory can be used in your TeX documents; they were built out of the files in
  the `src/` directory using the Makefile.
- I've used `minnotes_d`, `lightnotes_d`, and `notes_d` extensively and am pretty happy with them.
- I will likely be updating my macros whenever I discover new useful ones.
- `.cls` files are not allowed to include files through relative class names, so in order to share code
  between these classes, I used `cpp` to process these files into the finalized document classes. This
  is obviously out of the intended scope of `cpp`, and so imposes a few quirky constraints on the TeX code,
  but these are surmountable.
- These classes aren't compatible with the `\VerbatimFootnotes` command from the `fancyvrb` command. I do not
  know why this is, but I'll be debugging it.
- If you want to use Hood's [`spectralsequences`](https://github.com/hoodmane/spectralsequences) package, you should
  enable the `no_quotes` option in these document classes, or you'll get difficult-to-Google errors.
- If you need to use the double acute accent `\H{`-`}` (e.g. in the name "Erdős"), you will need to pass the
  `no_redefine_H` option to these document classes. Confusingly, this is still true if you use the `inputenc`
  package to avoid wriitng `\H`. Then you won't be able to use `\H` for the quaternions.
- I also added a package "adamsmacros" for collecting a bunch of TikZ shortcuts I find useful when typesetting
  A(1)-resolutions, etc. Some of these macros are adapted from Agnès Beaudry and Jonathan Campbell's macros in the
  source code of [this paper](https://arxiv.org/abs/1801.07530).
