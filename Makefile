all:
	cp README.md index.md
	pandoc index.md -o index.html