#Create a method that takes an array as a parameter. 

# Try calling methods that do not mutate the caller.How does that affect the array outside of the method?
def some_method(array)
  array.shuffle
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9 ,10]
#Does nothing to the array



#What about when you call a method that mutates the caller within the method?
def some_method(array)
  array.shuffle!
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9 ,10]
#Mutates the outside array