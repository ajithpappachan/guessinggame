all: README.md

README.md: 
	echo "# Ajith Pappachan : Unix Workbench assignment" > README.md
	echo "\n## Guessing Game assignment : " >> README.md
	echo "- **Make rundate :** $(shell date +%Y-%m-%d:%H:%M:%S)" >> README.md
	echo "- **Number of lines in guessinggame.sh :** $(shell wc -l < guessinggame.sh)" >> README.md

clean:
	rm README.md
