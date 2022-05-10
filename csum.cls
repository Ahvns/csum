%%  IDENTIFICATION  %%
% csum.cls
% Make a course summary
% 2022-May-06 Armin Hoendervangers 428365ah (at) student.eur.nl
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
}%
\onehalfspacing%
