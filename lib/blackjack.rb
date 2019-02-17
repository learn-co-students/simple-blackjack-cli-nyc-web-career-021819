def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  method = gets.chomp
end

def end_game(card_total)
  if card_total >= 22
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  end
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(total_now)
  prompt_user
  input = get_user_input
  if input == "s"
    return total_now
  elsif input == "h"
    total_now += deal_card
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

def runner
  welcome
  hand = initial_round
  until hand > 21 do
    hand = hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end
