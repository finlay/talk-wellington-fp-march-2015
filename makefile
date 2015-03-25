talk.pdf: talk.tex maybe.pyg \
	functor-class.pyg functor-instance.pyg functor-example.pyg
	xelatex talk.tex

%.pyg: %.hs
	pygmentize  -f latex $< > $@

%.pdf: %.R
	Rscript $<
