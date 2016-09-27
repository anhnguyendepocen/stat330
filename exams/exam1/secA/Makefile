prereqs=problems.tex exam.tex ../../frontmatter.tex ../../frontmatter2.tex

all: secA_exam1.pdf secA_exam1_sol.pdf

%.pdf: %.tex $(prereqs)
	pdflatex $<
