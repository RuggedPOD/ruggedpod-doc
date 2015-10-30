A=ruggedpod_firmware

all: $(A).pdf

$(A).pdf: $(A).md
	pandoc -t latex --latex-engine=xelatex --toc -s -S -V toctitle:'Table of content' -V documentclass=scrartcl -o $@ $<

clean:
	rm -f *~ # emacs backup
