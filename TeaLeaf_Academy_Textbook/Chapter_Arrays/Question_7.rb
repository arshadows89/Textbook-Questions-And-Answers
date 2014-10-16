#Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.
array = [1, 2, 3, 4, 5]
array_new = []
array.each do |num|
array_new.push(num + 2) 
end
p array
p array_new