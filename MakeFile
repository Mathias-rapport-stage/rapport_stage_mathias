all: pdf

pdf: prepare
	@echo "Creating pdf output ..."
	@pwd
	@pandoc --latex-engine=xelatex page1.md --output page1.pdf

prepare:
	@echo "Preparing ..."