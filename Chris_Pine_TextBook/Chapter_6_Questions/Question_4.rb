#Leap Years. Write a program which will ask for a starting year and an ending year, and then puts all of the leap years between them (and including them, if they are also leap years). 
puts 'In order to find out what leap years fall between certain years, I first will need you to tell me the starting year?'
startingYear = gets.chomp.to_i
puts 'And the ending year?'
endingYear = gets.chomp.to_i
leapYear = startingYear
puts 'These are the Leap years between '+startingYear.to_s+' and '+endingYear.to_s+'.'

while leapYear.to_i <= endingYear.to_i
	leapnum = (leapYear.to_i) % (4.to_i)
	if leapnum == 0
		leapnumonehundred = leapYear % 100
		if leapnumonehundred == 0
			leapfourhundred = leapYear % 400
			if leapfourhundred == 0
				puts ''+leapYear.to_s+''
			end
		else
			puts ''+leapYear.to_s+''
		end
	else 
		leapYear = (leapYear.to_i - leapnum.to_i)
	end
	leapYear = leapYear.to_i + 4.to_i
end