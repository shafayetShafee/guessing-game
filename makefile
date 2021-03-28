readme: guessinggame.sh
	echo "# Creating readme.md with makefile and bash Programming" > README.md
	echo "" >> README.md
	echo "" >> README.md
	echo "### The Details are:" >> README.md
	echo "- Date & time: $$(date +'%A, %B %d, %Y - %r')" >>  README.md
	echo "- No of lines in guessinggame.sh file: $$(wc -l guessinggame.sh | egrep -o '[0-9]+')" >> README.md
clean:
	rm README.md
