
all:	satzung.dvi satzung.ps satzung.pdf

satzung.dvi:	satzung.tex
	latex satzung.tex
	latex satzung.tex

satzung.ps:	satzung.dvi
	dvips -t a4 -o satzung.ps satzung.dvi

satzung.pdf: satzung.tex
	pdflatex satzung.tex

clean::
	rm -rf -- satzung *.dvi *.ps *.aux *.css *.log *.pdf
