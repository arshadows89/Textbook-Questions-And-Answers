# runs the whole blackjack program
require 'pry'
def blackjack
  
  deck = {Ace_of_Diamonds: 11, Two_of_Diamonds: 2, Three_of_Diamonds: 3, Four_of_Diamonds: 4, Five_of_Diamonds: 5, Six_of_Diamonds: 6, Seven_of_Diamonds: 7, Eight_of_Diamonds: 8, Nine_of_Diamonds: 9, Ten_of_Diamonds: 10, Jack_of_Diamonds: 10, Queen_of_Diamonds: 10, King_of_Diamonds: 10, Ace_of_Spades: 11, Two_of_Spades: 2, Three_of_Spades: 3, Four_of_Spades: 4, Five_of_Spades: 5, Six_of_Spades: 6, Seven_of_Spades: 7, Eight_of_Spades: 8, Nine_of_Spades: 9, Ten_of_Spades: 10, Jack_of_Spades: 10, Queen_of_Spades: 10, King_of_Spades: 10, Ace_of_Diamonds: 11, Two_of_Diamonds: 2, Three_of_Diamonds: 3, Four_of_Diamonds: 4, Five_of_Diamonds: 5, Six_of_Diamonds: 6, Seven_of_Diamonds: 7, Eight_of_Diamonds: 8, Nine_of_Diamonds: 9, Ten_of_Diamonds: 10, Jack_of_Diamonds: 10, Queen_of_Diamonds: 10, King_of_Diamonds: 10, Ace_of_Clubs: 11, Two_of_Clubs: 2, Three_of_Clubs: 3, Four_of_Clubs: 4, Five_of_Clubs: 5, Six_of_Clubs: 6, Seven_of_Clubs: 7, Eight_of_Clubs: 8, Nine_of_Clubs: 9, Ten_of_Clubs: 10, Jack_of_Clubs: 10, Queen_of_Clubs: 10, King_of_Clubs: 10, Ace_of_Hearts: 11, Two_of_Hearts: 2, Three_of_Hearts: 3, Four_of_Hearts: 4, Five_of_Hearts: 5, Six_of_Hearts: 6, Seven_of_Hearts: 7, Eight_of_Hearts: 8, Nine_of_Hearts: 9, Ten_of_Hearts: 10, Jack_of_Hearts: 10, Queen_of_Hearts: 10, King_of_Hearts: 10}
  deck = deck.to_a
  players_cards = []
  players_cards_two = []
  computers_cards =[]
  players_cards_value = 0
  players_cards_two_value = 0
  computers_cards_value = 0
  
  #The Draw, picks a card and removes it from the deck
  def the_draw(deck)
    card_random = rand(deck.length)
    deck[card_random.to_i]
    deck.delete_at(card_random.to_i)
  end
  
  #Method to print cards to board
  def cards_print(cards)
    print_this = cards.each {|x, y| print x.to_s, ', '}
    end
  
  #The playing board we see with first of the house cards hidden
  def board(computers_cards_value, players_cards_value, players_cards, computers_cards, players_cards_two, players_cards_two_value)
    system 'clear'
    linewidth = 100
    #add the cards
    puts (('BlackJack').ljust(linewidth / 3)) + (('Computers Cards').center(linewidth / 3)) + (('Computers Cards Value = '+computers_cards_value.to_s+'').rjust(linewidth / 3))
    print ('').center(linewidth / 3)
    cards_print(computers_cards)
    print "Hidden Card"
    puts ''
    puts ''
    puts ''
    if players_cards_two_value >0
      puts (('').ljust(linewidth / 3)) + (('Players Double Down Cards').center(linewidth / 3)) + (('Players Cards Value = '+players_cards_two_value.to_s+'').rjust(linewidth / 3)) 
      print ('').center(linewidth / 3)
      cards_print(players_cards_two)
    end
    print ('').center(linewidth / 3)
    cards_print(players_cards)
    puts '' 
    puts (('').ljust(linewidth / 3)) + (('Players Cards').center(linewidth / 3)) + (('Players Cards Value = '+players_cards_value.to_s+'').rjust(linewidth / 3)) 
    end
  
  #Reveals houses hidden card
  def board_show_all(computers_cards_value, players_cards_value, players_cards, computers_cards, players_cards_two, players_cards_two_value)
    system 'clear'
    linewidth = 100
    #add the cards
    puts (('BlackJack').ljust(linewidth / 3)) + (('Computers Cards').center(linewidth / 3)) + (('Computers Cards Value = '+computers_cards_value.to_s+'').rjust(linewidth / 3))
    print ('').center(linewidth / 3)
    cards_print(computers_cards)
    puts ''
    puts ''
    puts ''
    if players_cards_two_value >0
      puts (('').ljust(linewidth / 3)) + (('Players Double Down Cards').center(linewidth / 3)) + (('Players Cards Value = '+players_cards_two_value.to_s+'').rjust(linewidth / 3)) 
      print ('').center(linewidth / 3)
      cards_print(players_cards_two)
    end
    print ('').center(linewidth / 3)
    cards_print(players_cards)
    puts '' 
    puts (('').ljust(linewidth / 3)) + (('Players Cards').center(linewidth / 3)) + (('Players Cards Value = '+players_cards_value.to_s+'').rjust(linewidth / 3)) 
    end

  #Dealing the opening hand
  def opening_hand(players_cards, computers_cards, deck)
    players_cards.push (the_draw(deck))
    computers_cards.push (the_draw(deck))
    players_cards.push (the_draw(deck))
    computers_cards.push (the_draw(deck))
  end
  
  #Checks to see if said deck has a ace or 11
  def card_elleven_or_one(cards, card_spot)
    new_players_cards = cards.collect{|x| x}
    old_cards = new_players_cards[card_spot]
    old_cards = old_cards.delete_at(0)
    new_cards = []
    new_cards.push(old_cards)
    new_cards.push(1)
  end

  #Saves players or computers card deck aces to ones if they have it
  def card_value_one(cards)
    card_spot = cards.index{ |x, y| y == 11 }
    card_elleven_or_one_save = card_elleven_or_one(ards, card_spot)
    cards.delete_at(card_spot)
    cards = cards.push(card_elleven_or_one_save)
  end
  
  #Gets card value for player or computer
  def card_value(cards_value, cards)
    cards_value = 0
    players_cards_length = cards.length
    players_cards_info = cards[0 .. cards.length]
    cards.each {|y, x| cards_value = cards_value + x }
    return cards_value
  end
  
  #Asking the player to hit or stay
  def players_actions(players_cards_value, players_cards, deck, computers_cards_value, computers_cards, players_cards_two_value, players_cards_two)
    puts 'You have '+players_cards_value.to_s+' right now. Would you like to hit or stay? (type hit or stay to perform said action)'
    players_actions_reply = gets.chomp
    while players_actions_reply.downcase != 'stay'
      #if reply is 'stay' then program ends
      binding.pry
      if players_actions_reply.downcase == 'hit'
        players_cards.push (the_draw(deck))
        players_cards_value = card_value(players_cards_value, players_cards)
        board(computers_cards_value, players_cards_value, players_cards, computers_cards, players_cards_two, players_cards_two_value)
        if players_cards_value >= 21
          if players_cards.index{ |x, y| y == 11 } == true
            card_value_one(players_cards)
            players_actions(players_cards_value, players_cards, deck, computers_cards_value, computers_cards, players_cards_two_value, players_cards_two)
            exit
          else
            if players_cards_two_value == 0
              puts 'Busted. You went over 21. You Lose'
              play_again
              exit
            else
              #could be bellow here
              players_actions(players_cards_two_value, players_cards_two, deck, computers_cards_value, computers_cards, players_cards_two_value, players_cards_two)
              exit 
            end
          end
        else
          players_actions(players_cards_value, players_cards, deck, computers_cards_value, computers_cards, players_cards_two_value, players_cards_two)
          exit
        end
      else
         puts 'You didn\'t enter hit or stay. Please try again.'
        players_actions_reply = gets.chomp
      end
    end
    binding.pry
  end
  
  #Computers action, (stays at anything at 17 and above)
  def computers_actions(computers_cards_value, computers_cards, deck, players_cards_value, players_cards_two_value)
    while (computers_cards_value.to_i < players_cards_value.to_i) or (computers_cards_value.to_i < players_cards_two_value.to_i)
      if computers_cards_value.to_i > 17
        exit
      else
        computers_cards.push (the_draw(deck))
        computers_cards_value = card_value(computers_cards_value, computers_cards)
        if (computers_cards_value.to_i > 21) and (computers_cards.index{ |x, y| y == 11 } == true)
          card_value_one(computers_cards)
          computers_actions(computers_cards_value, computers_cards, deck, players_cards_value, players_cards_two_value)  
          exit
        end
      end
    end
    return computers_cards_value
  end
    
  # Checks to see if the player wants to double down or not
  def double_down(players_cards, deck)
    double_down_value = []
    players_cards.each {|x, y| double_down_value.push(y)}
    if double_down_value[0] == double_down_value[1]
      puts 'Yo have matching cards. Do you want to double down? Yes or No?'
      double_down_reply = gets.chomp
      while double_down_reply.downcase != 'no'
        if double_down_reply.downcase == 'yes'
        players_cards = double_down_value[0]
        players_cards_two = double_down_value[1]
        players_cards.push (the_draw(deck))
        players_cards_two.push (the_draw(deck))
        elsif double_down_reply.downcase == 'no'
          exit
        else
          puts 'You didn\'t enter Yes or No to the question, do you want to double down? Please respond with Yes or No'
          double_down_reply = gets.chomp
        end
      end
    end
  end
  
  #Deciding winner
  def who_won?(players_cards_value, computers_cards_value, players_cards_two_value)
    if players_cards_value <= 21 and players_cards_value > computers_cards_value
      puts 'You win!'
      play_again
      exit
    elsif  players_cards_two_value <= 21 and players_cards_two_value > computers_cards_value
      puts 'You win!'
      play_again
      exit
    elsif computers_cards_value > 21
      puts "The house went over 21. You Win!"
      play_again
      exit
    else
      puts 'The house Wins!'
      play_again
      exit
    end
  end
    
  #Checking if blackjack happened
  def blackjack?(players_cards_value, computers_cards_value, players_cards_two_value)
    if players_cards_value == 21
      puts 'BlackJack! You Win!'
      play_again
      exit
    elsif players_cards_two_value == 21
      puts 'BlackJack! You Win!'
      play_again
      exit
    elsif computers_cards_value == 21
      puts 'Blackjack! House Wins'
      play_again
      exit
    end
  end
  
  #Method if the user wants to play again
  def play_again
    puts 'Would you like to play another hand of BlackJack? If so say Yes or No'
    play_again_response = gets.chomp
    while play_again_response != 'no'
      if play_again_response.downcase == 'yes'
        puts 'OK, lets play again!'
        blackjack
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

  #The execution of the method.
  opening_hand(players_cards, computers_cards, deck)
  players_cards_value = card_value(players_cards_value, players_cards)
  board(computers_cards_value, players_cards_value, players_cards, computers_cards, players_cards_two, players_cards_two_value)
  blackjack?(players_cards_value, computers_cards_value, players_cards_two_value)
  hidden_computer_card = computers_cards[0]
  computers_cards.delete_at(0)
  computers_cards_value = card_value(computers_cards_value, computers_cards)
  board(computers_cards_value, players_cards_value, players_cards, computers_cards, players_cards_two, players_cards_two_value)
  blackjack?(players_cards_value, computers_cards_value, players_cards_two_value)
  double_down(players_cards, deck)
  players_actions(players_cards_value, players_cards, deck, computers_cards_value, computers_cards, players_cards_two_value, players_cards_two)
  computers_cards = computers_cards.push(hidden_computer_card)
  computers_cards_value = card_value(computers_cards_value, computers_cards)
  computers_actions(computers_cards_value, computers_cards, deck, players_cards_value, players_cards_two_value)
  computers_cards_value = card_value(computers_cards_value, computers_cards)
  board_show_all(computers_cards_value, players_cards_value, players_cards, computers_cards, players_cards_two, players_cards_two_value)
  who_won?(players_cards_value, computers_cards_value, players_cards_two_value)

end
blackjack

# need to fix the board printing players cards using gsub to get rid of _ for spaces but its not working due to array? (.gsub("_", " ") method isnt working on the array.)

#also the card names are not centering cause its a array?

#######################################


#the ace thing doesnt work...

#after multiple hits, stay ends program


#house hit on queen and jack???

# my double down detection might thinkg 10 queen jack king all are same

# when i win with blackjack it shows this BlackJack                                 Computers Cards                 Computers Cards Value = 0                                                                                         Four_of_Diamonds, Three_of_Spades, Hidden Card  

# if house has a greater value then you when you stay it wont hit


#a.rb:177:in `double_down': undefined method `push' for 6:Fixnum (NoMethodError)  

# cpu had 15, i had 16 and it didnt bother to hit...
# house is no longer hitting at all...

# i busted by hitting 21???

#a.rb:174:in `double_down': undefined method `push' for 11:Fixnum (NoMethodError)        