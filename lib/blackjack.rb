def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand (1..11)
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
  gets.chomp
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = (deal_card + deal_card)
  display_card_total(card_total)
  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

def hit?(card_total)
  # code hit? here
  prompt_user
  x = get_user_input
  case x
    when "h"
      card_total+=deal_card
      display_card_total(card_total)
    when "s"
      display_card_total(card_total)
    else
      invalid_command
  end
  card_total
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  x = initial_round
  until x > 21
    x = hit?(x)
  end
end_game(x)
end
