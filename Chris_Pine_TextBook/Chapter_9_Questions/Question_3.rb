#Make an OrangeTree class. It should have a  height method which returns its height, and a oneYearPasses method, which, when called, ages the tree one year. Each year the tree grows taller (however much you think an orange tree should grow in a year), and after some number of years (again, your call) the tree should die. For the first few years, it should not produce fruit, but after a while it should, and I guess that older trees produce more each year than younger trees... whatever you think makes most sense. And, of course, you should be able to countTheOranges (which returns the number of oranges on the tree), and pickAnOrange (which reduces the @orangeCount by one and returns a string telling you how delicious the orange was, or else it just tells you that there are no more oranges to pick this year). Make sure that any oranges you don't pick one year fall off before the next year.
class OrangeTree
  def initialize
    @treeHeight = 1
    @treeAge = 0
    @totalOranges = 0
    @maxTreeHeight = 15 + rand(15)
    @maxTreeAge = 40 + rand(15)
    @treeHeightGains = (((@maxTreeHeight.to_f / @maxTreeAge.to_f) * 10).to_i)
    puts 'Your orange tree is starting to grow!'
  end

  def height
    @treeInches = @treeHeight % 12
    @treeFeet = ((@treeHeight - @treeInches)/12)
    puts 'Your tree is '+@treeFeet.to_s+' feet by '+@treeInches.to_s+' inches tall.'
    #returns height
  end 

  def age
    puts 'Your tree is '+@treeAge.to_s+' years old'
    #retruns age
  end

  def countTheOranges
    if @totalOranges == 0
      puts 'Your tree isnt old enough to produce oranges just yet.'
    else
      puts 'Your orange tree has '+@totalOranges.to_s+' oranges on its tree.'  
    end
    #returns how many oranges on the tree 
  end

  def pickAnOrange(numberPicked)
    if @treeAge <= 2
      puts 'The tree is not old enough to pick oranges yet.'
    elsif @treeAge > 2 && @totalOranges == 0
      puts 'There are no more oranges to be picked'
    else
      if numberPicked > @totalOranges
        puts 'You can pick more oranges then you have.'
      elsif numberPicked <= 0
        puts 'You cant pick nothing!'
      else
        puts 'YUM! That orange was delicous.'
      @totalOranges = @totalOranges - numberPicked
    # subtract the orange picked number for the count the oranges total
      end
    end
  end

  def oneYearPasses
  @treeHeight = @treeHeight + @treeHeightGains
  @treeAge = @treeAge + 1
    if @treeAge <= 2
      @totalOranges = 0
    elsif @treeAge > 2
      @totalOranges = (700 + (rand(15) * @treeAge))
      # oranges wont grow back next year with this code, and grow more each year then the last (possibly)
    end
    if @treeAge == @maxTreeAge
      puts 'Your tree has died.'
      exit
    else
      puts 'Your tree survived the winter'
    end
  end
      
end
