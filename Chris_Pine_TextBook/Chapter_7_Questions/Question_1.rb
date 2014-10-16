#Write the program we talked about at the very begining of this chapter
puts 'Type as many words as you want to be put in alphabetical order, for each word press enter to submit the individual word. Once finished leave a blank line and hit enter'
arraywords = []
reply = '1'
while reply != ''
reply = gets.chomp
	if reply == ''
	else
		arraywords.push reply
	end
end
puts 'Here is the list of words you asked for in alphabetical order: '+arraywords.sort.join(', ')+'.' 
