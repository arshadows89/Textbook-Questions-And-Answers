#Use the modulo operator, division, or a combination of both to take a 4 digit number and find 1) the thousands number 2) the hundreds 3) the tens and 4) and the ones.
puts 'Give me a number between 1000 and 9999 and I will give the the thousandth, hundrendthm tenth and last digit for the number you provide.'
number = gets.chomp.to_i
# stop til number = nil
while number != nil
	if number >= 1000 and number <= 9999
	thousandth_number = number / 1000
	hundredth_number = number % 1000 / 100
	tenth_number = number % 1000 % 100 / 10
	ones_number = number % 1000 % 100 % 10
	number = nil
	else
	puts 'That number is not between 1000 and 9999. Please enter a new number'
	number = gets.chomp.to_i
	end
end 
puts 'The thousands number is '+thousandth_number.to_s+', the hundrendth number is '+hundredth_number.to_s+', the tenth number is '+tenth_number.to_s+' and the ones number is '+ones_number.to_s+'.'