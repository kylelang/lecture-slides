# -*- Makefile -*-

### Assumptions:
### 1. You want to compile every RNW file in the current directory
### 2. After compilation, you want to move every PDF file to the "../slides/"
###    directory

## Find all RNW files beginning:
RNWS := $(wildcard *.Rnw)

## Strip the file extension off the located RNW files:
NAMES := $(RNWS:%.Rnw=%)

all: ${NAMES}

%: %.tex
	pdflatex $@.tex
	pdflatex $@.tex

%.tex: %.Rnw
	Rscript -e "library(knitr); knit('$^')"

clean:
	mv *.pdf ../slides/
	rm -f *.tex *.aux *.log *.out *.nav *.snm *.toc *.vrb
