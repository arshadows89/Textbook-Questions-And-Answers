#What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
if person.has_value?('Bob') == true
	puts 'This hash has Bob in it'
else
	puts 'There is no Bob in this hash'
end