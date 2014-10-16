#Write a program that contains a method called greeting that takes a name as its parameter. It then prints a greeting message with the name included in it.
def greeting(name)
puts 'Why hello there '+name+''
end

puts 'Hey, what is your name?'
name = gets.chomp
greeting(name)