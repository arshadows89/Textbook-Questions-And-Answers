#Try writing the above program without using the sort method
puts 'Type as many words as you want to be put in alphabetical order, for each word press enter to submit the individual word.(capital letters come before lower case!) Once finished leave a blank line and hit enter'
sortingArray = []
reply = '1'
#loop that will gather all the words into an array
while reply != ''  
reply = gets.chomp.downcase #downcase to make sure capital letters dont affect the sort
	if reply == ''
	else
		sortingArray.push reply
	end												
end
# seting things up for the array
sortedArray = []
sortingLength = sortingArray.length.to_i
# Sort the array sortingArray
while sortingLength != 0         
checkingWord = sortingArray[0]     
sortingArray.delete_at(0)         
sortingArray.all? {|a| checkingWord < a}    
	if sortingArray.all? {|a| checkingWord < a} == true 
	sortedArray.push(checkingWord) 
	sortingLength = sortingLength.to_i - 1  
	else
	sortingArray.push(checkingWord)
	end
end
puts 'Here is the list of words you asked for in alphabetical order: '+sortedArray.join(', ')+'.' 
