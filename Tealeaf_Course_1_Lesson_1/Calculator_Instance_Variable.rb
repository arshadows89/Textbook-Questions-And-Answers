*#Calculator App using Instance Variables.

# Takes your input for operation and converts it into either the operation and the word the operation is called
def calc_method_info(word_method, calc_method)
  @calc_method = calc_method.to_s
  @word_method = word_method.to_s
end

# Method to see if your inputing a number or not
def number_fail(number)
  @number = number
  while @number != nil
    if @number == '0'
      break
    elsif @number.to_i == 0
      puts 'You entered '+@number.to_s+' which isn\'t a number. Please enter a new number'
      number = gets.chomp 
      @number = number
      if @number == '0'
        break
      end
    else
      break
    end
  end
end

# Method to check if ur entering a number and checks to make sure if ur dividing your not using a 0
def divide_by_zero_fail(number) 
  @number = number
  while @number != nil
    number_fail(number) 
    if @number == '0'
      puts 'You cant divide by 0. Please enter a new number'
      number = gets.chomp
      @number = number 
    else 
      break
    end
  end
end

puts 'What\'s the first number?'
first_number = gets.chomp
number_fail(first_number)
first_number = @number

puts 'and what do you want to do to that number?(multiply, add, divide, subtract or you can say +. -, / , *)'

calc_method = gets.chomp
calc_method_tf = false

#Checks to see if your inputing a operatation the program can use. And converts operation into its name.
while calc_method_tf == false
  if calc_method == '-'
    calc_method_info('subtract', '-')
    break
  elsif calc_method == '+'
    calc_method_info('add', '+')
    break
  elsif calc_method == '*'
    calc_method_info('multiply', '*')
    break
  elsif calc_method == '/'
    calc_method_info('divide', '/')
    break
  elsif calc_method.downcase == 'multiply'
    calc_method_info('multiply', '*')
    break
  elsif calc_method.downcase == 'divide'
    calc_method_info('divide', '/')
    break
  elsif calc_method.downcase == 'add'
    calc_method_info('add', '+')
    break
  elsif calc_method.downcase == 'subtract'
    calc_method_info('subtract', '-')
    break
   else
    puts 'You didnt respond with a function I could do. Please say one of the following.     add, subtract, multiply, divide, +, -, /, or *'
    calc_method = gets.chomp
    calc_method_tf == false
  end
end

puts 'so you want to '+@word_method.to_s+' '+first_number.to_s+' by what number?'
second_number = gets.chomp

# Created the equation and solves it
if @word_method == 'subtract'
  number_fail(second_number)
  second_number = @number
  answer = first_number.to_i - second_number.to_i
elsif @word_method == 'add'
  number_fail(second_number)
  second_number = @number
  answer = first_number.to_i + second_number.to_i
elsif @word_method == 'multiply'
  number_fail(second_number) 
  second_number = @number     
  answer = first_number.to_i * second_number.to_i
elsif @word_method == 'divide'
  divide_by_zero_fail(second_number)
  second_number = @number
  answer = first_number.to_f / second_number.to_f
end

puts ''+first_number.to_s+' '+@calc_method+' '+second_number.to_s+' = '+answer.to_s+''