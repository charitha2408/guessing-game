README.md: guessinggame.sh
    echo "# Guessing Game" > README.md
    echo "Makefile was run on: $$(date)" >> README.md
    echo "Number of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

clean:
    rm README.md
