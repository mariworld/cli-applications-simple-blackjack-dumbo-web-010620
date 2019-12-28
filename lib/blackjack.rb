require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
    puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp.to_s
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = 0
  total += deal_card
  total_two = 0
  total_two += deal_card
  sum = total + total_two
  display_card_total(sum)
  sum
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(number)
  prompt_user
  move = get_user_input
  number
  if move == "s"
    number
  elsif move == "h"
    number += deal_card
  else
    invalid_command
    hit?(number)
  end
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  total = 10
  welcome
  until total >= 21
    total += initial_round
    hit?(total)
  end
  display_card_total(total)
  end_game(total)
end
