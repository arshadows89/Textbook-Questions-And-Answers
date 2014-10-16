#Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 50 and 100, or above 100.
puts 'Give me a number and i will tell you if its between 0 and 50 or 51 and 100'
number_given = gets.chomp.to_i
if number_given <= 50 && number_given >= 0
	puts 'This number is between 0 and 50'
elsif number_given >=51 && number_given <= 100
	puts 'This number is between 51 and 100'
else
	puts 'This number is not between 0 and 100'
end