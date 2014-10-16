#Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. Below is the output for someone 20 years old.
puts 'How old are you?'
age = gets.chomp.to_i
puts 'In 10 years you will be '+(age + 10).to_s+'.'
puts 'In 20 years you will be '+(age + 20).to_s+'.'
puts 'In 30 years you will be '+(age + 30).to_s+'.'
puts 'In 40 years you will be '+(age + 40).to_s+'.'