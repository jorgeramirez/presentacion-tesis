#/bin/bash

NAME=presentacion

rm *.aux *.log *.b{lg,bl,cf} *.run.xml

pdflatex $NAME
biber $NAME
makeglossaries $NAME
pdflatex $NAME
makeglossaries $NAME
pdflatex $NAME