
# csum

This is a LaTeX document class for writing course summaries.
I've written it to ease writing summaries in the future, and as an exercise in writing LaTeX code and working with GitHub.

## Short Description

The class works like a template and changes a couple of things, namely:
- the result of the \*maketitle command
- the look of the table of contents
- the look of the different section headers
- the headers and footers of the document

The file `example.pdf` contains an example of the class, compiled from the `example.tex` file.

## Implementation

The class works by calling several custom packages, one for each feature.
The included packages are:
- `csumhdr.sty` for the headers and footers
- `csuminf.sty` to add commands which enables users to input information
- `csumsec.sty` to change section headers
- `csumtoc.sty` for a custom table of contents look
- `csumttl.sty` for the new titlepage

Note that `csumhdr.sty` and `csumttl.sty` require the `csuminf.sty` package, while the `csum.cls` class requires all packages.

***

## TO DO

- add documentation for user commands
- improve readme in general
- add planned features
- add license
- add how to install (maybe?)
- whatever I think up
