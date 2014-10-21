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
    
#need to redo board so its into hash

#random to see who goes first
##################################################
#Tic Tac Toe Game
  
#Runs the whole game of Tic Tac Toe
def tic_tac_toe
    
  player_picks = []
  computers_picks = []
  total_picks = []
  gameboard = {a: ' ', b: ' ', c: ' ', d: ' ', e: ' ', f: ' ', g: ' ', h: ' ', i: ' '}
  
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
  def who_won(player_picks, computers_picks, total_picks)
    # checks to see if user won
    if player_picks.include?(1) and player_picks.include?(4) and player_picks.include?(7) or player_picks.include?(7) and player_picks.include?(5) and player_picks.include?(3) or player_picks.include?(3) and player_picks.include?(6) and player_picks.include?(9) or player_picks.include?(2) and player_picks.include?(5) and player_picks.include?(8) or player_picks.include?(7) and player_picks.include?(8) and player_picks.include?(9) or player_picks.include?(4) and player_picks.include?(5) and player_picks.include?(6) or player_picks.include?(1) and player_picks.include?(2) and player_picks.include?(3) or player_picks.include?(1) and player_picks.include?(5) and player_picks.include?(9)
     puts 'You WON!!!'
     play_again
     exit
   
     # checks to see if computer won
   elsif computers_picks.include?(1) and computers_picks.include?(4) and computers_picks.include?(7) or computers_picks.include?(3) and computers_picks.include?(6) and computers_picks.include?(9) or computers_picks.include?(2) and computers_picks.include?(5) and computers_picks.include?(8) or computers_picks.include?(7) and computers_picks.include?(8) and computers_picks.include?(9) or computers_picks.include?(4) and computers_picks.include?(5) and computers_picks.include?(6) or computers_picks.include?(1) and computers_picks.include?(2) and computers_picks.include?(3) or computers_picks.include?(1) and computers_picks.include?(5) and computers_picks.include?(9) or computers_picks.include?(7) and computers_picks.include?(5) and computers_picks.include?(3)
     puts 'You Lose'
      play_again
     exit
     
     #its a tie so ask them to play again
    elsif total_picks == [1, 2, 3 ,4 ,5 ,6, 7, 8, 9]
     puts 'You Tied'
     play_again
     exit
    else
   end
  end
  
  # calculates what is left to tell the user what he can pick
  def whats_left (total_picks)
    possible_picks = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    picks_left = possible_picks - total_picks
    print 'You still can pick from' 
    picks_left.each do |left|
      print ' '+left.to_s+''
    end
    puts '.'
  end
  
  # Gets player move, and makes changes to the board
  def players_turn(gameboard, player_picks, total_picks)
    board(gameboard)
    whats_left (total_picks)
    player_choice = gets.chomp
    unless total_picks.include? player_choice.to_i
      player_picks.push player_choice.to_i
      total_picks.push player_choice.to_i    
      if player_choice.to_i == 1
        gameboard[:a] = 'X'
      elsif player_choice.to_i == 2
        gameboard[:b] = 'X'
      elsif player_choice.to_i == 3
        gameboard[:c] = 'X'
      elsif player_choice.to_i == 4
        gameboard[:d] = 'X'
      elsif player_choice.to_i == 5
        gameboard[:e] = 'X'
      elsif player_choice.to_i == 6
        gameboard[:f] = 'X'
      elsif player_choice.to_i == 7
        gameboard[:g] = 'X'
      elsif player_choice.to_i == 8
        gameboard[:h] = 'X'
      elsif player_choice.to_i == 9
        gameboard[:i] = 'X'
      end
    else 
      puts 'You picked a spot that wasnt available, try again.'
      players_turn(gameboard, player_picks, total_picks)
      exit   
    end
  end
  
  #the board
  def board(gameboard)
    system 'clear'

    puts ' '+gameboard[:a]+' | '+gameboard[:b]+' | '+gameboard[:c]+' '
    puts '---|---|---'
    puts ' '+gameboard[:d]+' | '+gameboard[:e]+' | '+gameboard[:f]+' '
    puts '---|---|---'
    puts ' '+gameboard[:g]+' | '+gameboard[:h]+' | '+gameboard[:i]+' '
  end
  
  #What move the computer will make
  def computers_turn(gameboard, computers_picks, player_picks, total_picks)
    # simple random ai for computers picks
    computer_picks = rand(9)
    if computer_picks == 0
      if total_picks.include? 1
        computers_turn(gameboard, computers_picks, player_picks, total_picks)
        exit
      else
        gameboard[:a] = 'O'
        computers_picks.push 1
        total_picks.push 1
      end
    elsif computer_picks == 1
      if total_picks.include? 2
        computers_turn(gameboard, computers_picks, player_picks, total_picks)
        exit
      else
        gameboard[:b] = 'O'
        computers_picks.push 2
        total_picks.push 2
      end
    elsif computer_picks == 2
      if total_picks.include? 3
        computers_turn(gameboard, computers_picks, player_picks, total_picks)
        exit
      else
        gameboard[:c] = 'O'
        computers_picks.push 3
        total_picks.push 3
      end
    elsif computer_picks == 3
      if total_picks.include? 4
        computers_turn(gameboard, computers_picks, player_picks, total_picks)
        exit
      else
        gameboard[:d] = 'O'
        computers_picks.push 4
        total_picks.push 4
      end
    elsif computer_picks == 4
      if total_picks.include? 5
        computers_turn(gameboard, computers_picks, player_picks, total_picks)
        exit
      else
        gameboard[:e] = 'O'
        computers_picks.push 5
        total_picks.push 5
      end
    elsif computer_picks == 5
      if total_picks.include? 6
        computers_turn(gameboard, computers_picks, player_picks, total_picks)
        exit
      else
        gameboard[:f] = 'O'
        computers_picks.push 6
        total_picks.push 6
      end
    elsif computer_picks == 6
      if total_picks.include? 7
        computers_turn(gameboard, computers_picks, player_picks, total_picks)
        exit
      else
        gameboard[:g] = 'O'
        computers_picks.push 7
        total_picks.push 7
      end
    elsif computer_picks == 7
      if total_picks.include? 8
        computers_turn(gameboard, computers_picks, player_picks, total_picks)
        exit
      else
        gameboard[:h] = 'O'
        computers_picks.push 8
        total_picks.push 8
      end
    elsif computer_picks == 8
      if total_picks.include? 9
        computers_turn(gameboard, computers_picks, player_picks, total_picks)
        exit
      else
        gameboard[:i] = 'O'
        computers_picks.push 9 
        total_picks.push 9
      end
    end
  end

  
  #runs each turn, stops if winner is found though
  def turns(gameboard, computers_picks, player_picks, total_picks)
  #9 total turns
  players_turn(gameboard, player_picks, total_picks)
  who_won(player_picks, computers_picks, total_picks)
  computers_turn(gameboard, computers_picks, player_picks, total_picks)
  who_won(player_picks, computers_picks, total_picks)
  players_turn(gameboard, player_picks, total_picks)
  who_won(player_picks, computers_picks, total_picks)
  computers_turn(gameboard, computers_picks, player_picks, total_picks)
  who_won(player_picks, computers_picks, total_picks)
  players_turn(gameboard, player_picks, total_picks)
  who_won(player_picks, computers_picks, total_picks)
  computers_turn(gameboard, computers_picks, player_picks, total_picks)
  who_won(player_picks, computers_picks, total_picks)
  players_turn(gameboard, player_picks, total_picks)
  who_won(player_picks, computers_picks, total_picks)
  computers_turn(gameboard, computers_picks, player_picks, total_picks)
  who_won(player_picks, computers_picks, total_picks)
  players_turn(gameboard, player_picks, total_picks)
  who_won(player_picks, computers_picks, total_picks)
end
  
  turns(gameboard, computers_picks, player_picks, total_picks)
end

puts 'Welcome to Tic-Tac-Toe. '
#write out more instruction once we develop the game
tic_tac_toe




# make section for players turn
# fix the board to hash use gameboard references
# gameboard and chat doesnt move when entering numbers. (might need to look at how they did that) might be not using puts which pushes to a new line?
# fix def turns
# add description for each method
#need to add board move to player and computers choice

# if no winner decieded we need to decide if ...

  # easier way then long if else statement for both computer and players turn for the telling it what part of gameboard to go to?
  

    