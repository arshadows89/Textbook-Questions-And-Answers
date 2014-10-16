#Program Logger. Write a method called log, which takes a string description of a block and, of course, a block. Similar to  doSelfImportantly, it should puts a string telling that it has started the block, and another string at the end telling you that it has finished the block, and also telling you what the block returned. Test your method by sending it a code block. Inside the block, put another call to log, passing another block to it. (This is called nesting.) In other words, your output should look something like this:
# log method
def log blockDescription, &some_proc
  #tell us it strated the block
  puts 'Begining \''+blockDescription+'\'...'
  #what the block returned
  returned = some_proc.call
  #tell us the block finished
  puts '..."'+blockDescription.to_s+'" finished, returning: '+returned.to_s+''
end
#how to repeat the answers shown
log 'outer block' do
log 'some little block' do
  5
end
log 'yet another block' do 
'I like Thai food!'
end
false 
end
