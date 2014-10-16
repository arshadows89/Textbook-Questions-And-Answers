#Happy Birthday! Ask what year a person was born in, then the month, then the day. Figure out how old they are and give them a big SPANK! for each birthday they have had.
puts 'Wonder when ur birthday was!'
puts 'Can you tell me what year you were born?'
yearBorn = gets.chomp.to_i
puts 'What about the month?'
monthBorn = gets.chomp.to_i
puts 'and the day?'
dayBorn = gets.chomp.to_i
born = Time.mktime(yearBorn, monthBorn, dayBorn)
seconds = Time.new - born
minute = seconds / 60
hour = minute / 60
day = hour / 24
year = day / 365
year = year.to_i
year = year.to_s
puts 'So you are '+year+' years old!!!'
