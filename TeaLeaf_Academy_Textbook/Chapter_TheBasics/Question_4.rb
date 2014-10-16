#Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
puts 'Give me a list of movies and the years they came out! When done \'Leave the space blank and enter nothing\'.'
movies_name_array = []
movies_year_array = []
loop_end = 'go'
while loop_end != 'stop'
	puts 'Movie?'
	movie_name = gets.chomp.capitalize
		if movie_name !=  ''
			movies_name_array.push(movie_name)
			puts 'Year said Movie came out?'
			movie_year = gets.chomp.capitalize
			movies_year_array.push(movie_year)
		else
		loop_end = 'stop'
		end
end		
puts movies_year_array