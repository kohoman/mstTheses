# ****** ****** ****** ****** ****** ****** ****** ****** ******
# ... GNU Make for Bourne Shell ...
#
# Notes:
#   - the nomencl.ist file exists in the base texmf tree
#     and is accessed there by default.
#
# ****** ****** ****** ****** ****** ****** ****** ****** ******

SHELL = /bin/bash

# ... variable definitions ...

foo  = template

# ... bib files - only those accessed ...

biblist = strings.bib lit.bib add.bib
bibhome = $(HOME)/texmf/bibtex/bib
bibs  := $(addprefix $(bibhome)/,$(biblist))

# ... rules ...

.PHONY : clean help

$(foo).ps : $(foo).tex $(bibs)
	pdflatex $(foo).tex
	makeindex $(foo).nlo -s nomencl.ist -o $(foo).nls
	bibtex $(foo)
	pdflatex $(foo).tex
	pdflatex $(foo).tex

nobib : $(foo).tex
	pdflatex $(foo).tex
	makeindex $(foo).nlo -s nomencl.ist -o $(foo).nls
	pdflatex $(foo).tex
	pdflatex $(foo).tex
	touch nobib

nonlo : $(foo).tex $(bibs)
	pdflatex $(foo).tex
	bibtex $(foo)
	pdflatex $(foo).tex
	pdflatex $(foo).tex
	touch nonlo

min : $(foo).tex
	pdflatex $(foo).tex
	pdflatex $(foo).tex
	pdflatex $(foo).tex
	touch min

clean : 
	-rm -f $(foo).{aux,bbl,blg,dvi,fff,nlo,nls,ilg}
	-rm -f $(foo).{lof,log,lot,pdf,ps,toc,ttt}
	-rm -f nobib nonlo min

help : 
	@echo "make       -> generate ps from tex"
	@echo "make nobib -> generate ps from tex (no bib)"
	@echo "make nonlo -> generate ps from tex (no glo)"
	@echo "make min   -> generate ps from tex (no bib or glo)"
	@echo "make clean -> remove all auxiliary files"

# ****** ****** ****** ****** ****** ****** ****** ****** ******





