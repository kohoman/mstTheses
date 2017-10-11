# mst_ths
Missouri S&amp;T Thesis Class and Templates

Notes for version 3.2 (2017/03/23)

Provides fixes for several issues raised by OGS reviews of spring 2017 theses and disserations.

1. Provides more flexible title page specification of advisor and committee
2. Provides correct hanging indent for authoryear citations
3. Adds template proofs which utilize number citation
4. Document margins which match the required 1" top and bottom (as closely as possible)
5. Left justified abstract in individual manuscript chapters of publication thesis
6. Forced uppercase of second level headings
7. Provides numbering (and inclusion in toc) of fourth level headings

----- ----- ----- -----
Additional notes for the newest version of the mstthesis class (2017/02/07):

1. The publication-option thesis relies on use of the chapterbib package in order to deal with the issue of individual reference 
lists for each publication/manuscript chapter and, potentially, a bibliography for the other chapters in the thesis/dissertation.

2. In order to successfully compile the publication-option thesis template, the compile process must follow thesis steps:
  a. Add the package option “draft” to the chapterbib package.
  b. Compile the base tex file with LaTeX (pdflatex template.tex)
  c. BibTeX the base tex file and then, also the individual publication/manuscript chapters.
  d. Remove the “draft” package option and LaTeX the base tex file at least twice more to assemble the reference and bibliography
  lists as well as the table of contents.

3. Note, at this time, neither the class file nor the template provides support for multiple lists of symbols.  If this is 
something that you wish to implement, I would suggest use of the glossaries package available on CTAN.  At present, the provided 
templates make use of the nomencl package for a list of symbols.

----- ----- ----- -----
This repository contains the OGS-approved class and template files for theses and dissertations at the 
Missouri University of Science and Technology, Rolla, Missouri.

The following subdirectories are included:
 a. proofs:  pdf versions of the template using various class and format options.
 b. source_class: the ins and dtx files for the mstthesis class.
 c. source_template: the ins and dtx files for the templates based on the mstthesis class.
 d. template_pto: template files for a publication-option thesis or dissertation.
 e. template_rpc: template files for a report-class thesis or dissertation.

The template_pto and and template_rpc subdirectories contain a fully-functional template which can be used to verify 
a properly configured local LaTeX environment. If you do not know how to compile the provided template file, please begin by 
learning how to use LaTeX using one of the references recommended below.

The class and template files have been developed in a unix environment and, in my own environment, are compiled with a Makefile.  
The Makefiles are included but not necessary, depending upon your OS/environment.

Suggestions for improvement or identification of suspected bugs in the class or template files are welcome and may be directed 
to the author (khoman@mst.edu).  Please do not contact with questions about how to use LaTeX.

If you are new to LaTeX, recommended references for learning how to use LaTeX effectively are:
  a. The Not So Short Introduction to LaTeX by Tobias Oethiker,
  b. LaTeX: A Document Preparation System by Leslie Lamport, and 
  c. LaTeX Wikibooks.
  
Guides for installation of a LaTeX environment on Windows OS or Mac OS are available on the website: howtotex.com.
