#Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.
puts 'Hey! What is your first name?'
first_name = gets.chomp.capitalize
puts 'And what about your last name?'
last_name = gets.chomp.capitalize
puts 'Why hello there '+first_name+' '+last_name+'!'