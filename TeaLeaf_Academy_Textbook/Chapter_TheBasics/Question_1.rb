
#Add two strings together that, when concatenated, return your first and last name as your full name in one string.
puts 'What is your first name?'
first_name = gets.chomp.capitalize
puts 'What about your last name?'
last_name = gets.chomp.capitalize
puts 'Nice to meet you '+first_name+' '+last_name+'!'