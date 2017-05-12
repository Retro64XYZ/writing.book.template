# The name of the project
PROJ:=my_book
# The extension for the content
OBJS:=md
# The chapters
CHAP:=chapters

# Configuration:
# The compiler
CC=pandoc

# Rules
final:
	pandoc --top-level-division=chapter --toc -S -o release.epub $(CHAP)/title.yaml $(CHAP)/*.$(OBJS)
draft:
clean:
	rm release.epub;
