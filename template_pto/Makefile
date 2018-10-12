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

biblist = add.bib
bibs = $(biblist)
#bibhome = $(HOME)/texmf/bibtex/bib
#bibs  := $(addprefix $(bibhome)/,$(biblist))

# ... rules ...

.PHONY : clean help

ptoths : $(foo).tex $(bibs)
	make nonlo
	touch ptoths
       
$(foo).pdf : $(foo).tex $(bibs)
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
	mv $(foo).tex o$(foo).tex
	sed "s/bib]{chap/bib,draft]{chap/"  o$(foo).tex > $(foo).tex
	pdflatex $(foo).tex
	-bibtex $(foo)
	bibtex pprtwo
	bibtex pprthree
	mv o$(foo).tex $(foo).tex
	pdflatex $(foo).tex
	pdflatex $(foo).tex
	touch nonlo

min : $(foo).tex
	pdflatex $(foo).tex
	pdflatex $(foo).tex
	pdflatex $(foo).tex
	touch min

pprmin : pprmin.tex
	make rtcmin foo=pprmin
	touch pprmin
       
rtcmin : $(foo).tex
	pdflatex $(foo).tex
	pdflatex $(foo).tex
	pdflatex $(foo).tex

pprbib : pprbib.tex
	make rtcbib foo=pprbib
	touch pprbib

rtcbib : $(foo).tex
	pdflatex $(foo).tex
	bibtex $(foo)
	pdflatex $(foo).tex
	pdflatex $(foo).tex

pprall : pprall.tex
	make rtcall foo=pprall
	touch pprall

rtcall : $(foo).tex
	pdflatex $(foo).tex
	makeindex $(foo).nlo -s nomencl.ist -o $(foo).nls
	bibtex $(foo)
	pdflatex $(foo).tex
	pdflatex $(foo).tex

clean : 
	-rm -f $(foo).{aux,bbl,blg,dvi,fff,nlo,nls,ilg}
	-rm -f $(foo).{lof,log,lot,pdf,ps,toc,ttt}
	-rm -f pprall.{aux,bbl,blg,ilg,log,nlo,nls,pdf}
	-rm -f pprbib.{aux,bbl,blg,log,pdf}
	-rm -f pprmin.{aux,log,pdf}
	-rm -f ptoths nobib nonlo min pprmin pprbib pprall

help : 
	@echo "make ptoths -> generate ptoths pdf from tex"
	@echo "make nobib  -> generate pdf from tex (no bib, nlo)"
	@echo "make nonlo  -> generate pdf from tex (bib, no nlo)"
	@echo "make min    -> generate pdf from tex (no bib or nlo)"
	@echo "make clean  -> remove all generated files"
	@echo "make pprmin -> compile standalone pprmin (no bib or nlo)"
	@echo "make pprbib -> compile standalone pprbib (bib, no nlo)"
	@echo "make pprall -> compile standalone pprall (bib and nlo)"

# ****** ****** ****** ****** ****** ****** ****** ****** ******





