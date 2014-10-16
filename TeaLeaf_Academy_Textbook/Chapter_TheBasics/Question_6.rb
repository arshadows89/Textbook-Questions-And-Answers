#Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.
puts 'How many different equations do you need me to square for you? (can be decimal)'
equations = gets.chomp.to_i
while equations != 0
puts 'What number do you need squared?'
number_being_squared = gets.chomp.to_f
puts number_being_squared * number_being_squared
equations = equations - 1
end