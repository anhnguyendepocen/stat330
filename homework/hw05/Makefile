prereqs=problems.tex homework.tex ../topmatter.tex \
  problem1.tex problem2.tex problem3.tex \
  problem4.tex problem5.tex problem6.tex

all: sta330_hw05.pdf sta330_hw05_sol.pdf

%.pdf: %.tex $(prereqs)
	pdflatex $<
	pdflatex $<
