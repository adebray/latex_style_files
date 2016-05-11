\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{minnotes_d}[2016/5/10 Arun Debray's minimal notes template]

% TeX class files aren't usually split into several subfiles, so input and
% include aren't relative to the current file path. Thus, I need to look
% up the full path of the current file to include other .tex files in this
% directory.
% You will have to change this on your system to get this to work (and yes, I
% know this is a temporary and inelegant solution).
\def\@pwd{/home/arun/Dropbox/Documents/LaTeX/style_files/lecture_notes}

% A template for lectures notes that makes few stylistic changes, but has lots of
% macros predefied for ease of live-TeXing.

% Provides a way to check whether this class is being used
\def\UsingMinNotesD{}

% Do I want any package options?
% Possibilities:
%	1. \mathbb vs. \mathbf for N, Z, Q, R, ...
%	2. Roman or italic d in f(x) dx

% Other options can be handed off to the amsart class (e.g. fontsize)
% TODO: for larger notes, I want to use amsbook instead. How should I efficiently unify
% this with shorter notes, which use amsart?
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsart}}

\ProcessOptions\relax

\LoadClass[reqno]{amsart}

\input{\@pwd/packages}
\input{\@pwd/macros}
