prereqs=problems.tex exam.tex ../../frontmatter.tex

all: secB_exam1.pdf secB_exam1_sol.pdf

%.pdf: %.tex $(prereqs)
	pdflatex $<
