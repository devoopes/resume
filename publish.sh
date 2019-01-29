#!/bin/bash

for typo in ./*.md; do
	aspell --home-dir=. check $typo

#Convert from Markdown to LaTeX
#https://pandoc.org/getting-started.html
	pandoc resume.md -f markdown -t latex -s -o resume.tex
	pandoc resume.tex -t latex -o test.pdf
done
