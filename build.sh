pdflatex -halt-on-error -interaction nonstopmode -output-directory build index.tex
bibtex build/index.aux
pdflatex -halt-on-error -interaction nonstopmode -output-directory build index.tex
pdflatex -halt-on-error -interaction nonstopmode -output-directory build index.tex