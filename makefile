

all: readme title date lines

# The makefile should produce the README.md which should contain the following information:
readme: 
	rm README.md
	touch README.md
# The title of the project.
title: 
	echo "## Peer-graded Assignment: Bash, Make, Git, and GitHub" >> README.md
# The date and time at which make was run.
date: 
	date +"makefile run at {b}%H:%M{/b} on {b}%A the %d-%h-%y{/b}" >> README.md
	echo ' ' >> README.md
# The number of lines of code contained in guessinggame.sh.
lines: guessinggame.sh
	echo "Number of lines in guessinggame.sh:" >> README.md
	cat  guessinggame.sh | wc -l >> README.md


