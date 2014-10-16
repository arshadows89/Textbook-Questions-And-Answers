#Better Logger. The output from that last logger was kind of hard to read, and it would just get worse the more you used it. It would be so much easier to read if it indented the lines in the inner blocks. To do this, you'll need to keep track of how deeply nested you are every time the logger wants to write something. To do this, use a global variable, a variable you can see from anywhere in your code. To make a global variable, just precede your variable name with $, like these:  $global, $nestingDepth, and $bigTopPeeWee. In the end, your logger should output code like this:
$nestedSpaces = ' '
if $nested == nil
    $nested = 0
  end
#creating a log that indents each time there is a nested
def log blockDescription, &some_proc
  puts ($nestedSpaces*$nested) + 'Begining \''+blockDescription.to_s+'\'...'
  $nested = $nested + 1
  returned = some_proc.call
   $nested = $nested - 1
  puts ($nestedSpaces*$nested) + '..."'+blockDescription.to_s+'" finished, returning: '+returned.to_s+''
end

#repeat answer shown
log 'outer block' do                
  log 'some little block' do
    log 'teen-tiny block' do
    'lots of love'
    end
  42 
  end
  log 'yet another block' do
  'I love Indian food!'
  end
true                              
end