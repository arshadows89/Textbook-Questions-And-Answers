#Rewrite your Table of Contents program (from the chapter on methods). Start the program with an array holding all of the information for your Table of Contents (chapter names, page numbers, etc.). Then print out the information from the array in a beautifully formatted Table of Contents.
tocArray = [['Chapter 1: Numbers', 'page 1'], ['Chapter 2: Letters', 'page 72'], ['Chapter 3: Variables', 'page 118']]
linewidth = 75
puts 'Table of Contents'.center(linewidth)
puts ''
tocArray.each {|chapter, page| puts (chapter.ljust(linewidth/2)) + (page.rjust(linewidth/2)) }