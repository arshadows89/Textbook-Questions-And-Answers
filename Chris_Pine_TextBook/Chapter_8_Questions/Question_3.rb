#"Ninety-nine bottles of beer..." Using englishNumber and your old program, write out the lyrics to this song the right way this time. Punish your computer: have it start at 9999. (Don't pick a number too large, though, because writing all of that to the screen takes your computer quite a while. A hundred thousand bottles of beer takes some time; and if you pick a million, you'll be punishing yourself as well!
def englishNumber number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
numString = ''
  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left  = number

  write = left/1000000000000          
  left  = left - write*1000000000000  

  if write > 0 
    trillions = englishNumber write
    numString = numString + trillions + ' trillion'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left/1000000000          
  left  = left - write*1000000000  

  if write > 0 
    billions = englishNumber write
    numString = numString + billions + ' billion'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left/1000000          
  left  = left - write*1000000 

  if write > 0 
    millions = englishNumber write
    numString = numString + millions + ' million'
    if left > 0
      numString = numString + ' '
    end
  end

  write = left/1000       
  left  = left - write*1000  
  if write > 0 
    thousands = englishNumber write
    numString = numString + thousands + ' thousand'
    if left > 0
      numString = numString + ' '
    end
  end
   write = left/100         
  left  = left - write*100  

  if write > 0
    
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'

    if left > 0
      numString = numString + ' '
    end
  end

  write = left/10         
  left  = left - write*10  

  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left  
  left  = 0     

  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString
end

puts 'How many bottles of beer on the wall?'
bottlesofbeer = gets.chomp.to_i
while bottlesofbeer != 0
  puts ''+(englishNumber(bottlesofbeer.to_i).to_s)+' bottles of beer on the wall, '+(englishNumber(bottlesofbeer.to_i).to_s)+' bottles of beer.'
  bottlesofbeer = bottlesofbeer.to_i - 1
  puts 'Take one down pass it around '+(englishNumber(bottlesofbeer.to_i).to_s)+' bottles of beer on the wall!'
end
puts 'No more bottle of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, we now have more bottles of beer on the wall!'