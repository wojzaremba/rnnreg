PARTS=rnn.tex

all: clean rnn.pdf 

rnn.pdf: $(PARTS) bibliography.bib 
	pdflatex -shell-escape rnn.tex
	pdflatex -shell-escape rnn.tex
	pdflatex -shell-escape rnn.tex
	bibtex rnn
	bibtex rnn
	bibtex rnn
	pdflatex -shell-escape rnn.tex
	pdflatex -shell-escape rnn.tex

clean:
	rm -f *.log *.blg *.aux *.bbl *.4tc *.xref *.tmp *.dvi *.hd *.idx *.out *.toc *.drv *.ins *.py *.pdf
	rm -rf ~*
	rm -rf *.tmp
	rm -rf *.4om
	rm -rf *~
