LATEXMK = latexmk
LATEXFLAGS = -xelatex -interaction=nonstopmode -halt-on-error
DOCS = resume.tex resume-zh_CN.tex resume_photo.tex
PDFS = $(DOCS:.tex=.pdf)

all: $(PDFS)

en: resume.pdf

zh_CN: resume-zh_CN.pdf

photo: resume_photo.pdf

pdf: $(PDFS)

%.pdf: %.tex
	$(LATEXMK) $(LATEXFLAGS) $<

ifeq ($(OS),Windows_NT)
  # on Windows
  RM = cmd //C del
else
  # on Unix/Linux
  RM = rm -f
endif

clean:
	-$(LATEXMK) -c
	-$(RM) *.fdb_latexmk *.fls *.xdv
