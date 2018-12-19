all: pdf

pdf: prepare
	@echo "Creating pdf output ..."
	@pwd
	@pandoc --toc --pdf-engine=xelatex -f markdown_strict page1.md --output page1.pdf
	@ls

prepare:
	@echo "Preparing ..."
