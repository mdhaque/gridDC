default: pdf3
ps:
	latex paper
	bibtex paper
	latex paper
	latex paper
	dvips -Pcmz -t letter -o paper.ps paper

sc:
	latex sc
	bibtex sc
	latex sc
	latex sc
	dvips -Pcmz -t letter -o sc.ps sc
#	ps2pdf sc.ps


pdf3:	
	pdflatex -t letter paper
	bibtex paper
	pdflatex -t letter paper
	pdflatex -t letter paper
pdf:
	latex paper
	bibtex paper
	latex paper
	latex paper
	ps2pdf paper.ps

pdf2:
	latex paper
	-bibtex paper
	latex paper
	latex paper
	dvips -Ppdf -t letter -q -f paper.dvi | gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=paper.pdf -c .setpdfwrite -
wf:	all
	cp paper.ps /res/users/tdnguyen/tmp

quick:
	latex paper
	dvips -t letter -o paper.ps paper

view:	all
	gv paper.ps

clean:
	rm *.aux *.bbl *.blg *.log *.brf *.out *.rel *.synctex.gz *~

realclean:
	rm *.aux *.bbl *.blg *.log *.brf *.out *.rel *.synctex.gz paper.pdf


tr:	
	pdflatex -t letter paper_tr
	bibtex paper_tr
	pdflatex -t letter paper_tr
	pdflatex -t letter paper_tr


outline:
	latex outline
	-bibtex outline	
	latex outline
	latex outline
	dvips -Pcmz -t letter -o outline.ps outline
