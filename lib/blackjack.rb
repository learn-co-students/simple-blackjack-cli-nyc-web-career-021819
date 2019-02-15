def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  # code #initial_round here
  round_1_total = deal_card + deal_card
  display_card_total(round_1_total)
  return round_1_total
end

def hit?(total)
  prompt_user
  response = get_user_input
    if response == "h"
    total += deal_card
  elsif response == "s"
  return total
else
  invalid_command
  prompt_user
  # code hit? here
end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  until total > 21
  total = hit?(total)
  display_card_total(total)
end
end_game(total)
  
end
    
