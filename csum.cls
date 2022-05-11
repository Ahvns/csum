%% File: csum.cls
%% Copyright 2022 A. Hoendervangers
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
%
% The Current Maintainer of this work is A. Hoendervangers
%
% This work consists of the files csum.cls, csumhdr.sty,
% csuminf.sty, csumsec.sty, csumtoc.sty, and csumttl.sty.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{csum}[2022/05/06 version 1.00 Course Summary]


%%  PRELIMINARY DECLARATIONS    %%
% This class extends the article class
% Read all the documentclass options; pass them to article
\RequirePackage{etoolbox}%


%%  OPTIONS %%
\DeclareOption*{%
    \PassOptionsToClass{\CurrentOption}{article}%
    }%

\ProcessOptions\relax%
\LoadClass{article}%


%%  MORE DECLARATIONS   %%

%   Custom packages
\RequirePackage{csuminf}%
\RequirePackage{csumttl}%
\RequirePackage{csumsec}%
\RequirePackage{csumtoc}%
\RequirePackage{csumhdr}%

% typography & typesetting
\RequirePackage{charter}%
\RequirePackage{microtype}%
\RequirePackage[margin=2.5cm]{geometry}%

% hyperlinks
\AtEndPreamble{%
    \RequirePackage{hyperref}%
    \hypersetup{colorlinks=true,%
        allcolors=black,%
        linkcolor=blue,%
        citecolor=black,%
        linktocpage=true,%
        hypertexnames=false}%
    }%
% Custom commands for options
\newcommand{\summarytype}[1]{%
  \sectiontype{#1}%
  \headertype{#1}%
  \titletype{#1}%
}%
\onehalfspacing%
