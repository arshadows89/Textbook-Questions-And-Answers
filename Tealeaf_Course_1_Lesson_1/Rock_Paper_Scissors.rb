# Rock Paper Scissors game

# Method that will run the whole Rock Paper Scissors game
def rock_paper_scissors_game
  
  # Creates What hand (rock, paper, scissors) that the cpu uses
  def cpu_answer
  cpu_answer = rand(3)
    if cpu_answer == 0
      cpu_answer = 'Rock'
    elsif cpu_answer == 1
      cpu_answer = 'Paper'
    elsif cpu_answer == 2
      cpu_answer = 'Scissors'
    end
  end

  # Compares your hand and computers hand to see who won or tied
  # if tied will run the program again
  def winner(answer, computers_answer)
    if  (answer.downcase == 'rock') && (computers_answer.downcase == 'paper')
      puts 'YOU LOSE'
    elsif (answer.downcase == 'paper') && (computers_answer.downcase == 'rock')
      puts 'WINNER'
    elsif (answer.downcase == 'paper') && (computers_answer.downcase == 'scissors')
      puts 'You Lose'
    elsif (answer.downcase == 'scissors') && (computers_answer.downcase == 'paper')
      puts 'WINNER'
    elsif (answer.downcase == 'scissors') && (computers_answer.downcase == 'rock')
      puts 'You Lose'
    elsif (answer.downcase == 'rock') && (computers_answer.downcase == 'scissors')
      puts 'Winner'
    else
      puts 'You both tied. Go again.'
      rock_paper_scissors_game
      exit
    end
  end
  
  # Asks if you want to play again after a winner is decided
  def play_again(play_again_response)
    while play_again_response.downcase != 'no'
      puts 'Do you want to play another round of Rock, Paper, Scissors? Yes or No?'
      play_again_response = gets.chomp
      if play_again_response.downcase == 'yes'
        puts "OK! Lets play again!"
        rock_paper_scissors_game
        exit
      elsif  play_again_response.downcase == 'no'
      else
        puts 'You enetered '+play_again_response.capitalize+' which isnt Yes or No. Please type Yes or No if you want to play again.'
        play_again_response = gets.chomp
      end
    end
  end

  puts 'Rock, Paper, Scissors, Shoot!!!'
  puts 'What do you choose, Rock, Paper, or Scissors?'
  answer = gets.chomp

  # Gets what the user is picking for his hand (rock, paper, or scissors)
  while answer != nil
    if (answer.downcase == 'rock') || (answer.downcase == 'paper') || (answer.downcase == 'scissors')
      break
    else
      puts 'You entered '+answer.capitalize+' which isn\'t one of the following words, Scissors, Paper, or Rock.  Please try again.'
      answer = gets.chomp
    end
  end

  computers_answer = cpu_answer
  puts 'You chose '+answer.capitalize+' and the computer chose '+computers_answer+'!'
  winner(answer, computers_answer)
  play_again('yes')
end

# This is the start of the program
puts 'Lets play a game of rock, paper, scissors'
rock_paper_scissors_game