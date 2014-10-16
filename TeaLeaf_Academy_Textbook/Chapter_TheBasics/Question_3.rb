#Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. The output for your program should look something like this.
puts 'Give me a list of movies and the years they came out! When done \'Leave the space blank and enter nothing\'.'
movies = {}
#giving end_loop and movie_name a variable so loop will start. They will change later in the program so it doesn't matter what they are now.
end_loop = 'start'
movie_name = 'start'
while end_loop != 'stop'
		puts 'Movie?'
		movie_name = gets.chomp.capitalize.to_s
			if movie_name != ''
				puts 'Year said Movie came out?'
				movie_year = gets.chomp
				movies[movie_name] = movie_year
			end
	else
		end_loop = 'stop'	
	end
end	

movies.each {|moviename, movieyear| puts "#{movieyear}" }
