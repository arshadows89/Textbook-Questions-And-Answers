#What will the following program print to the screen? What will it return?
def execute(&block)
  block
end
execute { puts "Hello from inside the execute method!" }
##########################
#Prints = doesnt print anything cuase you need to use the call method which is block.call
#Returns = it returns a proc with a bunch of numbers
