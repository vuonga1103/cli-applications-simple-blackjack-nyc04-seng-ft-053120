require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1 + card2)
  return card1 + card2
end

def invalid_command
  puts 'Please enter a valid command'
  prompt_user
  get_user_input
end

def hit?(current_card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    current_card_total += deal_card
  elsif user_input == "s"
    current_card_total
  else
    invalid_command
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  
  until initial_round > 21 
    total = hit?(total)
    display_card_total
  end
end
    
