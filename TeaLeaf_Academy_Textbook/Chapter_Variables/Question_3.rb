#Add another section onto name.rb that prints the name of the user 10 times. You must do this without explicitly writing the puts method 10 times in a row. Hint: you can use the times method to do something repeatedly.
puts 'Hey! What is your first name?'
first_name = gets.chomp.capitalize
puts 'And what about your last name?'
last_name = gets.chomp.capitalize
10.times do 
puts 'Why hello there '+first_name+' '+last_name+'!'
end