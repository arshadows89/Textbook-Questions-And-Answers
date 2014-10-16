#Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.
puts 'I will continue to copy what you say until you say \'STOP\' ok?'
reply = gets.chomp
while reply != 'STOP'
 puts reply
 reply = gets.chomp
end