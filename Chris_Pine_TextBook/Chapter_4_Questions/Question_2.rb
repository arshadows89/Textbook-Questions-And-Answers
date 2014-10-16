#Write a program which asks for a person's favorite number. Have your program add one to he number, then suggest the result as a bigger and better favorite number.
puts 'What is your favorite number?'
favNumber = gets.chomp
betterNumber = favNumber.to_i + 1
puts 'Isn\'t '+betterNumber.to_s+' a bigger and better number!!!'