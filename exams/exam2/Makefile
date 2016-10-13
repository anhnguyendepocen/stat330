prereqs=problems.tex problem1.tex problem2.tex problem3.tex problem4.tex \
  problem5.tex exam.tex ../frontmatter.tex

all: exam2.pdf exam2_sol.pdf

%.pdf: %.tex $(prereqs)
	pdflatex $<
