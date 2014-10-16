#So here's something for you to do in order to play around more with center, ljust, and rjust: write a program which displays a Table of Contents so that it looks like this:
linewidth = 75
puts 'Table of Contents'.center(linewidth)
puts ''
puts ('Chapter 1: Numbers'.ljust(linewidth/2)) + ('page 1'.rjust(linewidth/2))
puts ('Chapter 2: Letters'.ljust(linewidth/2)) + ('page 72'.rjust(linewidth/2))
puts ('Chapter 3: Variables'.ljust(linewidth/2)) + ('page 118'.rjust(linewidth/2))