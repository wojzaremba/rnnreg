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
	rm -f rnn.log rnn.blg rnn.aux rnn.bbl rnn.pdf rnn.4tc rnn.xref rnn.tmp rnn.dvi rnn.bbl 
	rm -rf ~*
	rm -rf *.tmp
	rm -rf *.4om
	rm -rf *~
