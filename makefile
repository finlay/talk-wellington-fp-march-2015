talk.pdf: talk.tex 
	xelatex talk.tex


%.pdf: %.R
	Rscript $<
