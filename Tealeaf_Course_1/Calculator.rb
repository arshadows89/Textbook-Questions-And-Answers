# Calculator app
def number_fail(number)
  number = number
  while number != nil
    if number == '0'
      return number
      break
    elsif number.to_i == 0
      puts 'You entered '+number.to_s+' which isn\'t a number. Please enter a new number'
      number = gets.chomp 
      number = number
      if number == '0'
        return number
        break
      end
    else
      return number
      break
    end
  end
end

def divide_by_zero_fail(number) 
  while number != nil
    number = number_fail(number) 
    if number == '0'
      puts 'You cant divide by 0. Please enter a new number'
      number = gets.chomp
    else 
      return number
      break
    end
  end
end

puts 'What\'s the first number?'
first_number = gets.chomp
first_number = number_fail(first_number)

puts 'and what do you want to do to that number?(multiply, add, divide, subtract or you can say +. -, / , *)'

calc_method = gets.chomp
calc_method_tf = false

while calc_method_tf == false
  if calc_method == '-'
    calc_method = '-'
    word_method = 'subtract'
    break
  elsif calc_method == '+'
    calc_method = '+'
    word_method = 'add'
    break
  elsif calc_method == '*'
    calc_method = '*'
    word_method = 'multiply'
    break
  elsif calc_method == '/'
    calc_method = '/'
    word_method = 'divide'
    break
  elsif calc_method.downcase == 'multiply'
    calc_method = '*'
    word_method = 'multiply'
    break
  elsif calc_method.downcase == 'divide'
    calc_method = '/'
    word_method = 'divide'
    break
  elsif calc_method.downcase == 'add'
    calc_method = '+'
    word_method = 'add'
    break
  elsif calc_method.downcase == 'subtract'
    calc_method = '-'
    word_method = 'subtract'
    break
   else
    puts 'You didnt respond with a function I could do. Please say one of the following.     add, subtract, multiply, divide, +, -, /, or *'
    calc_method = gets.chomp
    calc_method_tf == false
  end
end

puts 'so you want to '+word_method.to_s+' '+first_number.to_s+' by what number?'
second_number = gets.chomp

if word_method == 'subtract'
  second_number = number_fail(second_number)
  answer = first_number.to_i - second_number.to_i
elsif word_method == 'add'
  second_number = number_fail(second_number)
  answer = first_number.to_i + second_number.to_i
elsif word_method == 'multiply'
  second_number = number_fail(second_number)
  answer = first_number.to_i * second_number.to_i
elsif word_method == 'divide'
  second_number = divide_by_zero_fail(second_number)
  answer = first_number.to_f / second_number.to_f
end

puts ''+first_number.to_s+' '+calc_method+' '+second_number.to_s+' = '+answer.to_s+''