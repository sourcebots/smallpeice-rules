rules.pdf: rules.tex
	pdflatex $<
	pdflatex $<

clean:
	xargs rm <.gitignore

.PHONY: clean

