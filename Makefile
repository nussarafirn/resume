CC = xelatex
RESUME_DIR = content
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CONFIG_FILES = fontawesome.sty awesome-cv.cls

resume.pdf: ./resume.tex $(RESUME_SRCS) $(CONFIG_FILES)
	$(CC) -output-directory=./ $<

clean:
	rm -rf *.aux *.log *.out
