prereqs=problems.tex homework.tex \
  problem1.tex problem2.tex problem3.tex \
  problem4.tex problem5.tex problem6.tex

all: sta330_hw01.pdf sta330_hw01_sol.pdf

%.pdf: %.tex $(prereqs)
	pdflatex $<
	pdflatex $<
