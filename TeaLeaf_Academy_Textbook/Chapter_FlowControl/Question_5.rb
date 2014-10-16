#Rewrite your program from exercise 3 using a case statement. Wrap each statement in a method and make sure they both still work.
puts 'Give me a number and i will tell you if its between 0 and 50 or 51 and 100'
number_given = gets.chomp.to_i
case
when number_given <= 50 && number_given >= 0
	puts 'This number is between 0 and 50'
when number_given >=51 && number_given <= 100
	puts 'This number is between 51 and 100'
else
	puts 'This number is not between 0 and 100'
end