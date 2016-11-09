prereqs=problems.tex problem1.tex problem2.tex problem3.tex problem4.tex \
  problem5.tex exam.tex ../frontmatter.tex

all: exam3.pdf exam3_sol.pdf

%.pdf: %.tex $(prereqs)
	pdflatex $<
