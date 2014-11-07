#Some exercises from lesson 1 materials:

#1)What is the value of a after the below code is executed?
#  a = 1
#  b = a
#  b = 3

# a is = 1


#2)What's the difference between an Array and a Hash?
#array is good for sorting multiple things in a orginzed  fashion, like a dictionary. array is good for lists

#3)Every Ruby expression returns a value. Say what value is returned in the below expressions:

#arr = [1, 2, 3, 3]
#[1, 2, 3, 3].uniq # returns arr = [1, 2, 3] just arr is still 1,2 ,3, 3
#[1, 2, 3, 3].uniq!# returns arr = [1, 2, 3] arrr has mutated to 1 2 3

#4)What's the difference between the map and select methods for the Array class? Give an example of when you'd use one versus the other.
#select returns a new array for all things true
#treturns a new array based on what was returned

#5)Say you wanted to create a Hash. How would you do so if you wanted the hash keys to be String objects instead of symbols?
#hash = {"height" => "5"}

#6)What is returned?
# x = 1
#  x.odd? ? "no way!" : "yes, sir!"
# no way!

#7)What is x?
#  x = 1
#  3.times do
#    x += 1
#  end
# puts x
# x = 4

#8What is x?
#  3.times do
#    x += 1
#  end
#  puts x
# error... no local varialbe for x