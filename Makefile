

all: ClassicThesis.pdf

.PHONY: clean
clean:
	rm -f *.bbl *.log ClassicThesis.pdf *.log *.aux *.blg *.bcf *.slp

ClassicThesis.pdf: ClassicThesis.tex Chapters/*.tex FrontBackmatter/*.tex
	texi2pdf ClassicThesis.tex
	bibtex ClassicThesis
	texi2pdf ClassicThesis.tex

