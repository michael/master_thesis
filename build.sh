pdflatex -halt-on-error -interaction nonstopmode -output-directory build index.tex
cp literatur.bib build/literatur.bib
cd build
bibtex index.aux
cd ..
pdflatex -halt-on-error -interaction nonstopmode -output-directory build index.tex
pdflatex -halt-on-error -interaction nonstopmode -output-directory build index.tex