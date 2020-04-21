PAPER=Lab6_9073072564_200427

all: $(PAPER).pdf

$(PAPER).pdf: $(PAPER).tex references.bib 
	pdflatex $(PAPER).tex
	bibtex $(PAPER).aux
	pdflatex $(PAPER).tex
	pdflatex $(PAPER).tex

clean:
	rm -f $(PAPER).aux $(PAPER).log $(PAPER).blg $(PAPER).bbl $(PAPER).pdf


.PHONY: all clean paper
