def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  1 + rand(11)
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  display_card_total(deal_card + deal_card)
  return deal_card + deal_card
end

def hit?(number)
  # code hit? here
  prompt_user
  user_input = get_user_input

  if user_input == 'h'
    number += deal_card
    puts "Your cards add up to #{number}"
  elsif user_input != 's'
    invalid_command
  end
  number
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  # initial_round
  total = hit?(initial_round)
  until total > 21 
    total = hit?(total)
  end
  end_game(total)
end
