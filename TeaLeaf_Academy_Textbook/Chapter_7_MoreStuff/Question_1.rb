#Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.
#"laboratory"
#"experiment"
#"Pans Labyrinth"
#"elaborate"
#"polar bear"
def lab_in_string(word)
	word = word.downcase
	if /lab/ =~ word
		puts 'lab is in the string '+word+'.'
	else
	puts 'Lab is not in the string '+word+'.'	
	end
end
lab_in_string('laboratory')
lab_in_string('experiment')
lab_in_string('Pans Labyrinth')
lab_in_string('elaborate')
lab_in_string('polar bear')
