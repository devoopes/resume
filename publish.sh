#!/bin/bash

for f in ./*.md; do
	aspell --home-dir=. check $f

#Convert from Markdown to LaTeX
#https://pandoc.org/getting-started.html
pandoc README.md -f markdown -t latex -s -o cv.tex

done
