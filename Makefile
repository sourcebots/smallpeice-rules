rules.pdf: rules.tex specs.tex game-rules.tex regulations.tex
	pdflatex $<
	pdflatex $<

clean:
	xargs rm -rf <.gitignore

.PHONY: clean

