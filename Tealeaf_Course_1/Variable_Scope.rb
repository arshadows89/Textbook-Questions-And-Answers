#1 Create a local variable and modify it at an inner scope. You can try
#a) re-assigning the variable to something else
a = 4
a = 3
# a is now 3

#b) call a method that doesn’t mutate the caller
a = [1, 2, 3]
a.reverse
# a stays same

#c) call a method that mutates the caller.
a = [1, 2, 3]
a.reverse!
puts a
#changes to the mutated method
  

#2 Create a local variable at an inner scope and try to reference it in the outer scope. What happens when you have nested do/end blocks?
a = [4, 8, 15]
a.each do |a|
  b = 1
 puts a + b
end
#the local variable can be reference in the outer variable. But the outer scope variable b cant be refrenced in the inner scope.
