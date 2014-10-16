#Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
puts 'What number do you need factorialed?'
factorialed_number = gets.chomp.to_i 
#preset variables so loop works
changing_number = factorialed_number 
minused_factorial = changing_number - 1 
combined_results = factorialed_number
while minused_factorial != 1
minused_factorial = changing_number - 1
changing_number = minused_factorial
combined_results = combined_results * minused_factorial
end
puts combined_results