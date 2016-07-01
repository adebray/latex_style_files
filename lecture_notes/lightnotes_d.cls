\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lightnotes_d}[2016/5/10 Arun Debray's minimal notes template]

% TeX class files aren't usually split into several subfiles, so input and
% include aren't relative to the current file path. Thus, I need to look
% up the full path of the current file to include other .tex files in this
% directory.
% You will have to change this on your system to get this to work (and yes, I
% know this is a temporary and inelegant solution).
\def\@pwd{/home/arun/Dropbox/Documents/LaTeX/style_files/lecture_notes}

% I found myself making the same few changes when using minnotes_d, so I created
% this class, which applies all of my macros (functionality) changes, and a very few
% style changes.

% Provides a way to check whether this class is being used
\def\UsingLightNotesD{}

% Other options can be handed off to the amsart class (e.g. fontsize)
% I want to double-check that I am doing option-passing correctly.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsart}}

\ProcessOptions\relax

\LoadClass[reqno]{amsart}

\input{\@pwd/packages}
\input{\@pwd/macros}

% style changes
\pagestyle{plain}
\usepackage{xcolor}
\renewcommand{\qedsymbol}{\small{\ensuremath{\boxtimes}}}

\AtBeginDocument{
	% this needs to come after any fonts loaded
	\usepackage{microtype}
}
\usepackage{hyperref}
\hypersetup{
	colorlinks,
	linkcolor={red!50!black},
	citecolor={green!50!black},
	urlcolor={blue!80!black}
}
