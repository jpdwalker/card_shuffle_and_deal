# frozen_string_literal: true

require_relative "shuffle_and_deal"

puts "*** CARD SHUFFLE AND DEAL ***"

running = true

while running
  puts "Would you like to be dealt a card? (y/n)"
  first_answer = gets.chomp
  if %w[y yes].include?(first_answer)
    puts "cut from the top, middle or bottom? (t/m/b)"
    second_answer = gets.chomp
    ShuffleAndDeal.new(second_answer).shuffle_and_deal
  else
    puts 'See ya!'
    running = false
  end
end
