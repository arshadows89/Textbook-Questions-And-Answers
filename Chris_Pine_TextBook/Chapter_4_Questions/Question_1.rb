#Write a program which asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.
puts 'Can I please have your first name?'
firstName = gets.chomp
puts 'What about your middle name?'
middleName = gets.chomp
puts 'And your last name?'
lastName = gets.chomp
puts 'Nice to meet you, '+firstName+' '+middleName+' '+lastName+'.'