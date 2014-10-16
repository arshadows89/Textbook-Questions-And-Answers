#When you shout BYE she could pretend not to hear you. You have to shout BYe three times in a row, but if its not in a row grandma still talks to u.
puts 'Backstory: Your talking to your grandmother and she can\'t haer you that well. What do you want to tell her?'
numberofbyes = 0
while numberofbyes != 3
	reply = gets.chomp
	if reply == 'BYE'
	numberofbyes = numberofbyes.to_i + 1
		if numberofbyes != 3
			puts 'HUH! CANT HEAR YOU DARLING!'
		else
			puts 'OK FINE GOODBYE!!!'
		end
	else
		if reply == reply.upcase
			puts 'NO, NOT SINCE 19'+((rand(21.to_i))+30.to_i).to_s+'!'
			numberofbyes = 0
		else 
			puts 'HUH?! SPEAK UP, SONNY!'
			numberofbyes = 0
		end	
	end
end
