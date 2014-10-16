#Write a method that counts down to zero using recursion.
def count_down_zero(number)
	number = number.to_i
	if number >= 0
		puts number
		number -= 1
	elsif number < 0
	puts 'This number isnt bigger then 0. Please give me a new number large then zero.'
	number = gets.chomp
	end
count_down_zero(number)
end
puts 'What number would you like me to count down from zero for you?'
number = gets.chomp.to_i
count_down_zero(number)