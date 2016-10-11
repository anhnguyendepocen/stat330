prereqs=problems.tex homework.tex ../topmatter.tex \
  problem1.tex problem2.tex problem3.tex \
  problem4.tex problem5.tex problem6.tex

all: STAT330_hw07.pdf STAT330_hw07_sol.pdf

%.pdf: %.tex $(prereqs)
	pdflatex $<
	pdflatex $<
