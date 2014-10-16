#Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
#arr = [1, 3, 5, 7, 9, 11]
#number = 3
arr = [1, 3, 5, 7, 9, 11]
puts 'Inside the array are the numbers 1, 3, 5, 7, 9 and 11. Type a number to see if its in the array.'
number_given = gets.chomp.to_i
while number_given.to_i != arr.include?(number_given.to_i)
	if arr.include?(number_given.to_i)
		puts 'The number '+number_given.to_s+' is inside the array.'
		break
	else
		puts 'That number is not in the array, try again.'
		number_given = gets.chomp.to_i
	end
end