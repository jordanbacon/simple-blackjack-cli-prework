def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(n)
  # code #display_card_total here
  puts "Your cards add up to #{n}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  method = gets.chomp
end

def end_game(n)
  # code #end_game here
  if n > 21
    puts "Sorry, you hit #{n}. Thanks for playing!"
  end
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  user_input = get_user_input
    if user_input == "h"
      card_total += deal_card
    elsif
      user_input == "s"
      card_total
    else
      invalid_command
    end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
