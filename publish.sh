#!/bin/bash

for typo in ./*.md; do
	aspell --home-dir=. check $typo

#Convert from Markdown to LaTeX
#https://pandoc.org/getting-started.html
# brew install basictex
pandoc resume.md -o resume.pdf "-fmarkdown-implicit_figures -o" --from=markdown -V geometry:margin=.4in --highlight-style=espresso
	#pandoc resume.md -f markdown -t latex -s -o resume.tex
	#pandoc resume.tex -t latex -o test.pdf
done
