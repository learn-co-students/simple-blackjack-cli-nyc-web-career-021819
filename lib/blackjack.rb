def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand_num = 1 + rand(11)
  # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_get = gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  initial_round_sum = deal_card + deal_card
  display_card_total(initial_round_sum)
  initial_round_sum
end

def hit? (initial_round)
  prompt_user
  user_input = get_user_input.chomp
  
  if user_input == "s"
      result=initial_round
  elsif user_input == "h"
     result= initial_round+ deal_card 
  else 
      puts invalid_command  
  end
  result
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  # code invalid_command here
end
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  results = initial_round
until results > 21
results = hit?(results)
display_card_total(results)
end
end_game(results)

end