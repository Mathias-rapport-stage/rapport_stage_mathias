all: spellCheck pdf

spellCheck :
	@ "Checking spell ..."
	@cat page1.md | aspell --lang=fr --encoding=utf-8 list

pdf: prepare
	@echo "Creating pdf output ..."
	@pwd
	#@pandoc --toc --latex-engine=xelatex -f markdown page1.md --output page1.pdf
	#@
	#@md-to-pdf --launch-options '{ "args": ["--no-sandbox"] }'
	@md-to-pdf 
	@ls

prepare:
	@echo "Preparing ..."
