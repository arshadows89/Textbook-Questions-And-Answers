#Look at the following programs...
x = 0
3.times do
  x += 1
end
puts x
#and...
y = 0
3.times do
  y+= 1
  x = y
end
puts x
#What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?

###ANSWER###
#For the second one you will receive a error telling you there is no variable for x. You need to put the  x = y before 3.times do for it to work. While also keeping the original x = y where it is.