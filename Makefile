COMPILESVG=inkscape

rules.pdf: rules.tex specs.tex game-rules.tex regulations.tex fig-sidewall.pdf \
           fig-arena.pdf tournament.tex
	pdflatex $<
	pdflatex $<

clean:
	@xargs -t rm -rf <.gitignore

fig-%.pdf: fig-%.svg
ifeq ($(COMPILESVG),inkscape)
	inkscape -A $@ $<
else
ifeq ($(COMPILESVG),svg2pdf)
	svg2pdf $< $@
else
	echo "Unknown COMPILESVG."; false
endif
endif

.PHONY: clean

