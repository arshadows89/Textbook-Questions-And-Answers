#Write a program which prints out the lyrics to that beloved classic, that field-trip favorite: "99 bottles of beer on the wall."
puts 'How many bottles of beer on the wall?'
bottlesofbeer = gets.chomp.to_i
while bottlesofbeer != 0
	puts ''+bottlesofbeer.to_s+' bottles of beer on the wall, '+bottlesofbeer.to_s+' bottles of beer.'
	bottlesofbeer = bottlesofbeer.to_i - 1
	puts 'Take one down pass it around '+bottlesofbeer.to_s+' bottles of beer on the wall!'
end
puts 'No more bottle of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, we now have more bottles of beer on the wall!'
