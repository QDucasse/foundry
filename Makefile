ACM_FILENAME=article_ACM
IEEE_FILENAME=article_IEEE

define generate_latex
pdflatex -shell-escape $(1).tex
bibtex $(1).aux
pdflatex -shell-escape $(1).tex
pdflatex -shell-escape $(1).tex
endef

default: acm ieee

check: checkacm checkieee

checkacm: acm
	-textidote --check en --output html --dict textidote/ignored.txt $(ACM_FILENAME).tex > textidote/report_ACM.html

checkieee: ieee
	-textidote --check en --output html --dict textidote/ignored.txt $(IEEE_FILENAME).tex > textidote/report_IEEE.html

acm:
	$(call generate_latex, $(ACM_FILENAME))

ieee:
	$(call generate_latex, $(IEEE_FILENAME))

.PHONY: clean
clean:
	rm *.aux *.log *.out *.bbl *.blg *.pdf textidote/*.html
