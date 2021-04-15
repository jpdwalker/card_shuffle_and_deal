# frozen_string_literal: true

require_relative "shuffle_and_deal"
require_relative "build_pack"

puts "*** CARD SHUFFLE AND DEAL ***"

running = true

while running
  puts "Would you like to be dealt a card? (y/n)"
  first_answer = gets.chomp
  if %w[y yes].include?(first_answer)
    puts "Building a pack..."
    sleep(2)
    built_pack = BuildPack.build_pack
    puts "Cut from the top, middle or bottom? (t/m/b)"
    second_answer = gets.chomp
    ShuffleAndDeal.new(second_answer, built_pack).shuffle_and_deal
  else
    puts 'See ya!'
    running = false
  end
end
