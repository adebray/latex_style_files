This repo holds a LaTeX `.cls` file, `pset_d.cls`, that defines a document class for problem sets.
It came about because I realized that I do a lot of the same things in each class for problem sets,
and it would be good to centralize that. Moreover, there are a few things that I have been meaning
to fix about my problem set template, and this gives me the opportunity to do that.

I will also document the class options here, and how to use the class (there will also be some
examples).

### Current Status

At this point, I'm using this class for problem sets with no huge snafus. There are a couple of
things I still want to fix: specifically, I would like the ability to define custom problem numbers
such as `\item[2.A.]` and have the class automatically handle things like equation numbering within
that item or `\ref`s to that item; this is currently not in place. There are also various smaller
TODOs scattered throughout my document.

I would also like to provide some more examples: some minimal examples of how to use the class,
and some richer examples of what problem sets look like in this template, including demonstrating
various class options.
