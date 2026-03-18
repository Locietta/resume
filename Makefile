LATEXMK = latexmk
LATEXFLAGS = -xelatex -interaction=nonstopmode -halt-on-error
DOCS = resume.tex resume-gpgpu.tex resume-cpp.tex
PDFS = $(DOCS:.tex=.pdf)

all: $(PDFS)

graphics: resume.pdf

gpgpu: resume-gpgpu.pdf

cpp: resume-cpp.pdf

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
