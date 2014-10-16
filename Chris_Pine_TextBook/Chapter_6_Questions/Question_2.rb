#Write a Deaf Grandma program. Whatever you say to grandma she should respond with HUH?! Speak Up, Sonny!, unless you shout it. If you shout, she yells back, NO, NOT sINCE 1938! Have each year be random between 1930 and 1950. You can't stop talking to gradnma until you shout BYE.
puts 'Backstory: Your talking to your grandmother and she can\'t haer you that well. What do you want to tell her?'
reply = gets.chomp
while reply != 'BYE'
	if reply == reply.upcase
		puts 'NO, NOT SINCE 19'+((rand(21.to_i))+30.to_i).to_s+'!'
		reply = gets.chomp
	else 
		puts 'HUH?! SPEAK UP, SONNY!'
		reply = gets.chomp
	end
end
