
all:	satzung.dvi satzung.ps

satzung.dvi:	satzung.tex
	latex satzung.tex
	latex satzung.tex

satzung.ps:	satzung.dvi
	dvips -t a4 -o satzung.ps satzung.dvi

# satzung.txt:	satzung.tex

satzung/satzung.html:	satzung.tex
	rm -rf satzung
	latex2html satzung.tex

clean::
	rm -rf -- satzung *.dvi *.ps *.aux *.css *.log
