#Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
bobs_info = {name: 'bob', age: '32', weight: '42', height: '5.10'}
#prints values
p bobs_info.values
#prints keys
p bobs_info.keys
#prints both he values and the keys
bobs_info.each do |value, key|
puts 'Bobs '+value.to_s+' is '+key+''
end