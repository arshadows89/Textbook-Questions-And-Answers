#to run program do ruby Madlib.rb Madlib_Sample.txt

dictionary = {
  nouns: ['dog', 'car', 'clown', 'hat']
  verbs: ['juggle', 'spin']
  adjectives: ['giant', 'red']
  }

def say(msg)
  puts ("=> #{msg}")
end

# writes message for exit
def exit_with(msg)
  say msg
  exit
end

# if you just run ruby madlib.rb will tell you, you didnt input a file
#could write it as
#if ARGV.empty?
#  puts 'No input file!'
#  exit
#end
exit_with("No input file!") if ARGV.empty?

# if you ruby madlib.rb sadk because sadk isnt a file then it will tell you this
#could write it as
#if !File.exists?(ARGV[0])
#  puts 'Input file doesn't exist!
#  exit
#end
exit_with("File doesn't exists") if !File.exists?(ARGV[0])

#opening file and just telling it we want to read it 'r'
contents = File.open(ARGV[0], 'r') do |f|
  f.read
end

# Replaced NOUN VERB ADJECTIVE in txt file to the ones we have here
#we need to mutate it or have to save contents to it... which takes up more space to do contents = contents.gsub....
#randoms the gsub
contents.gsub!('NOUN').each do |noun|
  dictionary[nouns].sample
end
#replace each word Verb with hash verbs, use above if more vers and adjateives in Madlib_Sample.txt
contents.gsub!('VERB', dictionary[:verbs].sample)
contents.gsub!('ADJECTIVE', dictionary[:adjectives].sample)
p contents