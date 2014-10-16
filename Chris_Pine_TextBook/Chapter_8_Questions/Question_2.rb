#How about weddingNumber? It should work almost the same as englishNumber, except that it should insert the word "and" all over the place, returning things like 'nineteen hundred and seventy and two', or however wedding invitations are supposed to look. I'd give you more examples, but I don't fully understand it myself. You might need to contact a wedding coordinator to help you.
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
		numString = numString + trillions + ' trillion and'
		if left > 0
			numString = numString + ' '
		end
	end

  write = left/1000000000          
  left  = left - write*1000000000  

	if write > 0 
		billions = englishNumber write
		numString = numString + billions + ' billion and'
		if left > 0
			numString = numString + ' '
		end
	end

  write = left/1000000          
  left  = left - write*1000000 

	if write > 0 
		millions = englishNumber write
		numString = numString + millions + ' million and'
		if left > 0
			numString = numString + ' '
		end
	end

  write = left/1000       
  left  = left - write*1000  
	if write > 0 
		thousands = englishNumber write
		numString = numString + thousands + ' thousand and'
		if left > 0
			numString = numString + ' '
		end
	end
	 write = left/100         
  left  = left - write*100  

  if write > 0
    
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred and'

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