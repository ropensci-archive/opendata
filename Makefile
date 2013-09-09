all:
	cp README.md webservices.md
	pandoc webservices.md -o webservices.html