###Blackjack####
#use modules of 4 to figure out if hearts spades ext
#52 cards in deck
#if player over 21 then they lose
#  1 of the dealers card is hidden
#  dealer stays at 17
#ace = 1 or 11
#if 2 same cards, can double down (only on first move)
#  if user has 21 then automaticly win

#lets create the cards method

#and the value method for what each card is worth(ignores cards face)
 # but also needs to understand that ace = 1 and 11 except if you split


#if user or computer has ace has to realize it can also be a 1. So if ur over 10 detect if player has ace then if they do, redo calculations and get there new number.

#draw would be random 52 then take that x spot out of the deck, remove it from the deck and then random till all cards are drawn

#when telling them there card remove the _ and replace it with a space

# runs the whole blackjack program
def blackjack
  
  deck = {Ace_of_Diamonds: 11, Two_of_Diamonds: 2, Three_of_Diamonds: 3, Four_of_Diamonds: 4, Five_of_Diamonds: 5, Six_of_Diamonds: 6, Seven_of_Diamonds: 7, Eight_of_Diamonds: 8, Nine_of_Diamonds: 9, Ten_of_Diamonds: 10, Jack_of_Diamonds: 10, Queen_of_Diamonds: 10, King_of_Diamonds: 10, Ace_of_Spades: 11, Two_of_Spades: 2, Three_of_Spades: 3, Four_of_Spades: 4, Five_of_Spades: 5, Six_of_Spades: 6, Seven_of_Spades: 7, Eight_of_Spades: 8, Nine_of_Spades: 9, Ten_of_Spades: 10, Jack_of_Spades: 10, Queen_of_Spades: 10, King_of_Spades: 10, Ace_of_Diamonds: 11, Two_of_Diamonds: 2, Three_of_Diamonds: 3, Four_of_Diamonds: 4, Five_of_Diamonds: 5, Six_of_Diamonds: 6, Seven_of_Diamonds: 7, Eight_of_Diamonds: 8, Nine_of_Diamonds: 9, Ten_of_Diamonds: 10, Jack_of_Diamonds: 10, Queen_of_Diamonds: 10, King_of_Diamonds: 10, Ace_of_Clubs: 11, Two_of_Clubs: 2, Three_of_Clubs: 3, Four_of_Clubs: 4, Five_of_Clubs: 5, Six_of_Clubs: 6, Seven_of_Clubs: 7, Eight_of_Clubs: 8, Nine_of_Clubs: 9, Ten_of_Clubs: 10, Jack_of_Clubs: 10, Queen_of_Clubs: 10, King_of_Clubs: 10, Ace_of_Hearts: 11, Two_of_Hearts: 2, Three_of_Hearts: 3, Four_of_Hearts: 4, Five_of_Hearts: 5, Six_of_Hearts: 6, Seven_of_Hearts: 7, Eight_of_Hearts: 8, Nine_of_Hearts: 9, Ten_of_Hearts: 10, Jack_of_Hearts: 10, Queen_of_Hearts: 10, King_of_Hearts: 10}
  deck = deck.to_a
  players_cards = []
  computers_cards =[]
  players_cards_value = 0
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
  
  # the playing board
  def board(computers_cards_value, players_cards_value, players_cards, computers_cards)
    system 'clear'
    linewidth = 100
    #add the cards
    puts (('BlackJack').ljust(linewidth / 3)) + (('Computers Cards').center(linewidth / 3)) + (('Computers Cards Value = '+computers_cards_value.to_s+'').rjust(linewidth / 3))
    puts ((''+computers_cards.to_s+'').center(linewidth))
    puts ''
    print cards_print(players_cards)
    puts '' 
    puts (('').ljust(linewidth / 3)) + (('Players Cards').center(linewidth / 3)) + (('Players Cards Value = '+players_cards_value.to_s+'').rjust(linewidth / 3)) 
    
  end

  #dealing the opening hands
  def opening_hand(players_cards, computers_cards, deck)
    players_cards.push (the_draw(deck))
    computers_cards.push (the_draw(deck))
    players_cards.push (the_draw(deck))
    computers_cards.push (the_draw(deck))
  end
  
  #gets card value for player or computer
  def card_value(cards_value, cards)
    players_cards_length = cards.length
    players_cards_info = cards[0 .. cards.length]
    cards.each {|y, x| cards_value = cards_value + x }
    return cards_value
  end
  

  puts 'hey'
  cards_print(players_cards)
  puts ''rb
  # the execution of the method.
  opening_hand(players_cards, computers_cards, deck)
  players_cards_value = card_value(players_cards_value, players_cards)
  computers_cards_value = card_value(computers_cards_value, computers_cards)
  board(computers_cards_value, players_cards_value, players_cards, computers_cards)
  
  puts 'hey'
  cards_print(players_cards)
  puts ''

end
blackjack

# need to fix the board printing players cards using gsub to get rid of _ for spaces
# currently the players cards arent pritning right even with the created method print this...

#need to add the hit stay method (players actions)

#need to add computers actions

#need to decide winner on draw player or computer have 21? if not keep playing

#need to figure out winner

# need to add play again?

#myString.gsub("_", " ")

#old things i was working on
# who is currently going
  def turn
    while players_cards_value.to_i <= 21
      we ask him to hit or stay
      if hit
        draw another card
        elsif stay
      end loop soo comput goes
    end
      then run computers turn   
  end
      
        #updates the board with new info
  def board_update()
    get the card value for both computer and player
      write players cards and computers cards
  end
    
        
    ###### DONT NEED, USED .each method isntead ########### 
    # gets the value out of the array for each card, ignoring the name
    while players_cards_length.to_i != 0
      card_get_value = players_cards_info[0]
      players_all_cards_value = players_all_cards_value.push(card_get_value.last)
      players_cards_length = players_cards_length.to_i - 1
    end

    #adds up the value
    while players_all_cards_value.length != 0
      card_test = players_all_cards_value[0]
      players_cards_value = players_cards_value + (card_test.to_i)
      players_all_cards_value.delete_at(0)
    end