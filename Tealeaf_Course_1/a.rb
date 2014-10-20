####Tic Tac Toe#####
#use a array to for each specific spot on the board 1-3 in top 4-6 midd ext
#if a x or 0 is placed it cant be over written

# need to have b set to the board being printed on the screen which is b = a and have a being the one mutating the board
# might have to do the above for asking questions also. so it doesnt do a new line everytime.

# data should be kept in a hash so a>'' b> '' c = x d> '' f = o ext

#need to create a function for putting the x's and 0's on the board, cant put it into something already occupied

#need to create a function for computers action (prob run random but could craete a cpu ai)
 # computer_picks
 # user_picks
# all_picks (need to have a array with all pick from both user and computer)
 # computers_turn
    
##################################################
#Tic Tac Toe Game
  
#Runs the whole game of Tic Tac Toe
def tic_tac_toe
  
  #Method if the user wants to play again
  def play_again
    puts 'Would you like to play Tic-Tac-Toe again? If so say Yes or No'
    play_again_response = gets.chomp
    while play_again_response != 'no'
      if play_again_response.downcase == 'yes'
        puts 'OK, lets play again!'
        tic_tac_toe
        exit
      elsif play_again_response == 'no'
        puts 'Ok, Thanks for playing'
        exit
      else
        puts 'You didnt enter Yes or No to the question if you wanted to play again. Please try again.'
        play_again_response = gets.chomp
      end
    end
  end
  
  # calculates if someone won
  def who_won
    # checks to see if user won
   if user_picks.include?(1) and user_picks.include?(4) and user_picks.include?(7) or user_picks.include?(7) and user_picks.include?(5) and user_picks.include?(3) or user_picks.include?(3) and user_picks.include?(6) and user_picks.include?(9) or user_picks.include?(2) and user_picks.include?(5) and user_picks.include?(8) or user_picks.include?(7) and user_picks.include?(8) and user_picks.include?(9) or user_picks.include?(4) and user_picks.include?(5) and user_picks.include?(6) or user_picks.include?(1) and user_picks.include?(2) and user_picks.include?(3) or user_picks.include?(1) and user_picks.include?(5) and user_picks.include?(9)
     puts 'You WON!!!'
     play_again
     exit
   
     # checks to see if computer won
   elsif computer_picks.include?(1) and computer_picks.include?(4) and computer_picks.include?(7) or computer_picks.include?(3) and computer_picks.include?(6) and computer_picks.include?(9) or computer_picks.include?(2) and computer_picks.include?(5) and computer_picks.include?(8) or computer_picks.include?(7) and computer_picks.include?(8) and computer_picks.include?(9) or computer_picks.include?(4) and computer_picks.include?(5) and computer_picks.include?(6) or computer_picks.include?(1) and computer_picks.include?(2) and computer_picks.include?(3) or computer_picks.include?(1) and computer_picks.include?(5) and computer_picks.include?(9) or computer_picks.include?(7) and computer_picks.include?(5) and computer_picks.include?(3)
     puts 'You Lose'
     play_again
     exit
     
     #its a tie so ask them to play again
   else
     puts 'You Tied'
     play_again
     exit
   end
  end
  
  #the board
  def board
    a, b, c, d, e, f, g, h, i = ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' 

    puts ' '+a+' | '+b+' | '+c+' '
    puts '---|---|---'
    puts ' '+d+' | '+e+' | '+f+' '
    puts '---|---|---'
    puts ' '+g+' | '+h+' | '+i+' '
  end
  
  #What move the computer will make
  def computers_turn
    #need to create a function for computers action (prob run random but could craete a cpu ai)
    #random rand(9) to get 9 numbers
    computer_picks = rand(9)
    if computer_picks == 0
      computer_picks = a
    elsif computer_picks == 1
      computer_picks = b
    elsif computer_picks == 2
      computer_picks = c
    elsif computer_picks == 3
      computer_picks = d
    elsif computer_picks == 4
      computer_picks = e
    elsif computer_picks == 5
      computer_picks = f
    elsif computer_picks == 6
      computer_picks = g
    elsif computer_picks == 7
      computer_picks = h
    elsif computer_picks == 8
      computer_picks = i
    end
    # if the random number is in the all_picks array then have to redo rand so run computer_turn again (use exit at end)
  end
end

puts 'Welcome to Tic-Tac-Toe. '
#write out more instruction once we develop the game
tic_tac_toe



#need to redo board so its into hash
# need to tell computer_picks to push into the hash at value a if 0 then push O for board pick.