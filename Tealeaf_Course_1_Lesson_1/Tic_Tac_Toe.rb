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
        puts 'You didn\'t enter Yes or No to the question if you wanted to play again. Please try again.'
        play_again_response = gets.chomp
      end
    end
  end
  
  # calculates if someone won
  def who_won(player_picks, computers_picks, total_picks, gameboard)
    # checks to see if user won
    board(gameboard)
    if (player_picks.include?(1) and player_picks.include?(4) and player_picks.include?(7)) or (player_picks.include?(3) and player_picks.include?(6) and player_picks.include?(9)) or (player_picks.include?(2) and player_picks.include?(5) and player_picks.include?(8)) or (player_picks.include?(7) and player_picks.include?(8) and player_picks.include?(9)) or (player_picks.include?(4) and player_picks.include?(5) and player_picks.include?(6)) or (player_picks.include?(1) and player_picks.include?(2) and player_picks.include?(3)) or (player_picks.include?(1) and player_picks.include?(5) and player_picks.include?(9)) or (player_picks.include?(3) and player_picks.include?(5) and player_picks.include?(7))
     puts 'You WON!!!'
     play_again
     exit
      
     # checks to see if computer won
   elsif (computers_picks.include?(1) and computers_picks.include?(4) and computers_picks.include?(7)) or (computers_picks.include?(3) and computers_picks.include?(6) and computers_picks.include?(9)) or (computers_picks.include?(2) and computers_picks.include?(5) and computers_picks.include?(8)) or (computers_picks.include?(7) and computers_picks.include?(8) and computers_picks.include?(9)) or (computers_picks.include?(4) and computers_picks.include?(5) and computers_picks.include?(6)) or (computers_picks.include?(1) and computers_picks.include?(2) and computers_picks.include?(3)) or (computers_picks.include?(1) and computers_picks.include?(5) and computers_picks.include?(9)) or (computers_picks.include?(7) and computers_picks.include?(5) and computers_picks.include?(3))
     puts 'You Lose'
      play_again
     exit
     
     #its a tie so ask them to play again
    elsif total_picks.sort == [1, 2, 3 ,4 ,5 ,6, 7, 8, 9]
     puts 'You Tied'
     play_again
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
    players_choice = gets.chomp
  end
  
  # Gets player move, and makes changes to the board
    def players_turn(gameboard, player_picks, total_picks, player_choice)
    while player_choice.to_i == 0
      if player_choice == 0
        board(gameboard)
        puts 'You said, 0 which isnt one of the remaining spots available.'
        player_choice = gets.chomp
      elsif player_choice.to_i == 0
        board(gameboard)
        puts 'You said, '+player_choice+' which isnt one of the remaining spots available.'
        player_choice = gets.chomp
      else
        exit
      end
    end
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
        board(gameboard)
        puts 'You picked a spot that wasnt available, try again.'
        player_choice = whats_left(total_picks)
        players_turn(gameboard, player_picks, total_picks, player_choice)
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
    # simple random ai for computers total_picks
    possible_picks = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    left_over_picks = possible_picks - total_picks 
    left_over_picks = left_over_picks.to_a 
    left_over_picks_length = left_over_picks.length 
    computers_choice = rand(left_over_picks_length.to_i) 
    computers_choice = left_over_picks.at(computers_choice) 
    unless total_picks.include? computers_choice.to_i
      computers_picks.push computers_choice.to_i
      total_picks.push computers_choice.to_i
      if computers_choice.to_i == 1
        gameboard[:a] = 'O'
      elsif computers_choice.to_i == 2
        gameboard[:b] = 'O'
      elsif computers_choice.to_i == 3
        gameboard[:c] = 'O'
      elsif computers_choice.to_i == 4
        gameboard[:d] = 'O'
      elsif computers_choice.to_i == 5
        gameboard[:e] = 'O'
      elsif computers_choice.to_i == 6
        gameboard[:f] = 'O'
      elsif computers_choice.to_i == 7
        gameboard[:g] = 'O'
      elsif computers_choice.to_i == 8
        gameboard[:h] = 'O'
      elsif computers_choice.to_i == 9
        gameboard[:i] = 'O'
      end
    else
      computers_turn(gameboard, computers_picks, player_picks, total_picks)
      exit
    end
  end

  #runs each turn, stops if winner is found though
  def turns(gameboard, computers_picks, player_picks, total_picks)
    #9 total turns
    who_won(player_picks, computers_picks, total_picks, gameboard)
    player_choice = whats_left (total_picks)
    players_turn(gameboard, player_picks, total_picks, player_choice)
    who_won(player_picks, computers_picks, total_picks, gameboard)
    computers_turn(gameboard, computers_picks, player_picks, total_picks)
    who_won(player_picks, computers_picks, total_picks, gameboard)
    player_choice = whats_left (total_picks)
    players_turn(gameboard, player_picks, total_picks, player_choice)
    who_won(player_picks, computers_picks, total_picks, gameboard)
    computers_turn(gameboard, computers_picks, player_picks, total_picks)
    who_won(player_picks, computers_picks, total_picks, gameboard)
    player_choice = whats_left (total_picks)
    players_turn(gameboard, player_picks, total_picks, player_choice)
    who_won(player_picks, computers_picks, total_picks, gameboard)
    computers_turn(gameboard, computers_picks, player_picks, total_picks)
    who_won(player_picks, computers_picks, total_picks, gameboard)
    player_choice = whats_left (total_picks)
    players_turn(gameboard, player_picks, total_picks, player_choice)
    who_won(player_picks, computers_picks, total_picks, gameboard)
    computers_turn(gameboard, computers_picks, player_picks, total_picks)
    who_won(player_picks, computers_picks, total_picks, gameboard)
    player_choice = whats_left (total_picks)
    players_turn(gameboard, player_picks, total_picks, player_choice)
    who_won(player_picks, computers_picks, total_picks, gameboard)
  end
  
  turns(gameboard, computers_picks, player_picks, total_picks)
end

tic_tac_toe