#Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. Then outputs their full name all at once.
puts 'Hey! What is your first name?'
first_name = gets.chomp.capitalize
puts 'And what about your last name?'
last_name = gets.chomp.capitalize
puts 'Why hello there '+first_name+' '+last_name+'!'