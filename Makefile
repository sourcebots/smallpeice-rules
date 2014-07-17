rules.pdf: rules.tex
	pdflatex $<
	pdflatex $<

clean:
	xargs rm -rf <.gitignore

.PHONY: clean

