file_name = zasshi-hinagata3

.PHONY: all
all:
	uplatex $(file_name).tex
	dvipdfmx -f uptex-ipaex.map $(file_name).dvi
	evince $(file_name).pdf &

pdf: $(file_name).dvi
	dvipdfmx -f uptex-ipaex.map $(file_name).dvi

.PHONY: clean
clean: 
	rm -f $(file_name).[^t]* $(file_name).toc

.PHONY: cln
cln: clean
