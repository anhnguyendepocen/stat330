prereqs=problems.tex homework.tex ../topmatter.tex \
  problem1.tex problem2.tex problem3.tex \
  problem4.tex problem5.tex problem6.tex

all: STAT330_hw11.pdf STAT330_hw11_sol.pdf

%.pdf: %.tex $(prereqs)
	Rscript problem3.R
	Rscript problem4.R
	Rscript problem5.R
	pdflatex $<
	pdflatex $<
	