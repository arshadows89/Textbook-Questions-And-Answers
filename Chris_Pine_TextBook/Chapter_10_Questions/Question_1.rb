#Grandfather Clock. Write a method which takes a block and calls it once for each hour that has passed today. That way, if I were to pass in the block do puts 'DONG!' end, it would chime (sort of) like a grandfather clock. Test your method out with a few different blocks (including the one I just gave you)
def GrandfatherClockChime some_proc
  #Getting the current hour
@currentTime = Time.now.hour
if @currentTime > 11
  numberOfChimes = @currentTime - 12
else
  numberOfChimes = @currentTime + 1
end
#Action the proc takes
#take the number of chimes and have it say dong for each hour
numberOfChimes.times do
  some_proc.call
end
puts 'The Clock chimed '+numberOfChimes.to_s+' times'
end
#create the proc
dong_proc = Proc.new do
  puts 'DONG!'
end
# Run the program / proc
GrandfatherClockChime dong_proc
