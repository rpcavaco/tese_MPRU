pandoc -V papersize:a4 ../conf/tese.yamlhdr ../src/intro.md -o ../out/current.pdf  -H ../conf/header.tex --filter pandoc-citeproc --bibliography=../src/base.bib --latex-engine=xelatex --template=rc
