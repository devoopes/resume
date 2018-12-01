#!/bin/bash

for typo in ./*.md; do
	aspell --home-dir=. check $typo

#Convert from Markdown to LaTeX
#https://pandoc.org/getting-started.html
	pandoc README.md -f markdown -t latex -s -o resume.tex
	pandoc resume.tex -t latex -o test.pdf
done
