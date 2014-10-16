#What will the following programs return? What is value of arr after each?
#1. arr = ["b", "a"]
#   arr = arr.product(Array(1..3))
#   arr.first.delete(arr.first.last)

###ANSWER###
#returns 1
#[['b'], ['b', 2], [b', 3], ['a', 1], ['a', 2], ['a', 3]]

#2. arr = ["b", "a"]
#   arr = arr.product([Array(1..3)])
#   arr.first.delete(arr.first.last)

###AMSWER###
#returns [1,2, 3]
#[['b'],['a', [1, 2, 3]]]