COMPILESVG=inkscape

rules.pdf: rules.tex specs.tex game-rules.tex regulations.tex fig-arena.pdf \
	fig-sourcebots.pdf fig-sidewall.pdf fig-markers.pdf
	pdflatex $<
	pdflatex $<

clean:
	@xargs -t rm -rf <.gitignore

fig-%.pdf: fig-%.svg
ifeq ($(COMPILESVG),inkscape)
	inkscape -A `pwd`/$@ `pwd`/$<
else
ifeq ($(COMPILESVG),svg2pdf)
	svg2pdf $< $@
else
	echo "Unknown COMPILESVG."; false
endif
endif

.PHONY: clean

