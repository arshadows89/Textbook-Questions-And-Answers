#Get rid of "11". And append a "3".
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.push 11
array.unshift 0
puts array
array.delete 11
array_location = array.index(3)
array.insert(array_location, 3)
puts ''
puts array