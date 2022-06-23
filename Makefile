#.ONESHELL:
thesis.pdf: thesis.tex
	export TEXINPUTS=.:./src//:; \
	pdflatex --shell-escape -halt-on-error -interaction=nonstopmode thesis.tex; \
	bibtex thesis.aux; \
	pdflatex --shell-escape -halt-on-error -interaction=nonstopmode thesis.tex; \
	pdflatex --shell-escape -halt-on-error -interaction=nonstopmode thesis.tex; \
	rm -rf thesis.aux thesis.log thesis.out thesis.toc thesis.lof thesis.lot thesis.bbl thesis.blg thesis-autopp.out thesis-pics.pdf thesis-autopp.log thesis-autopp.xcp

clean:
	rm -rf *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg *.pdf
