#Write a method that takes a string as argument. The method should return the capitalized version of the string, only if the string is longer than 10 characters. (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)
puts 'Give me a word in all lowercase, if it is longer than 10 charachters (spaces included), I will capatialize the word or first word if you used multiple words.'
word_given = gets.chomp
if word_given.length > 10
	puts word_given.capitalize
else
	puts word_given.downcase
end