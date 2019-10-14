\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{notes_d}
%
%[2016/7/8 Arun Debray's lecture minimal notes template]
%
% A template for lectures notes that makes few stylistic changes, but has lots of
% macros predefied for ease of live-TeXing.
%
% Provides a way to check whether this class is being used
\def\UsingNotesD{}
%
% For now, this is a one-off that disables the " -> ^(...) feature.
\DeclareOption{quotes}{\def\qu@es{YES}}
\DeclareOption{no_quotes}{\def\noqu@es{}}
\ExecuteOptions{quotes}
% Avoids redefining \H to be the quaterions, which causes a problem when writing double accute accents.
% The most common example is "Erdős".
\DeclareOption{redefine_H}{\def\redef@H{YES}}
\DeclareOption{no_redefine_H}{\def\noredef@H}
\ExecuteOptions{redefine_H}
%
% Do I want any package options?
% Possibilities:
%	1. \mathbb vs. \mathbf for N, Z, Q, R, ...
%	2. Roman or italic d in f(x) dx
%
% Other options can be handed off to the amsart class (e.g. fontsize)
% TODO: for larger notes, I want to use amsbook instead. How should I efficiently unify
% this with shorter notes, which use amsart?
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsart}}
%
\ProcessOptions\relax
%
\LoadClass{amsart}

#include "packages.tex"
#include "macros.tex"
#include "style.tex"
