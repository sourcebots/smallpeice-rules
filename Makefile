COMPILESVG=inkscape -A

rules.pdf: rules.tex specs.tex game-rules.tex regulations.tex fig-sidewall.pdf
	pdflatex $<
	pdflatex $<

clean:
	xargs rm -rf <.gitignore

fig-%.pdf: fig-%.svg
	$(COMPILESVG) $@ $<

.PHONY: clean

