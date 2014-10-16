#Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.
def multiply(a, b)
	a * b
end

puts 'What two numbers do you want multiplied?'
puts 'First number?'
a = gets.chomp.to_i
puts 'Muliplied by what number?'
b = gets.chomp.to_i
puts 'Your answer is '+(multiply(a, b)).to_s+'.'