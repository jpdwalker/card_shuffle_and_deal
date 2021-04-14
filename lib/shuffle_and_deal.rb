# frozen_string_literal: true

require_relative "build_pack"
require 'pry'

class ShuffleAndDeal
  attr_reader :rank, :suit, :deal_position

  def initialize(rank='',suit='',deal_position='')
    @rank = rank
    @suit = suit
    @deal_position = deal_position
  end

  def shuffle_and_deal
    dealer_output
    shuffled_pack = BuildPack.build_pack.shuffle
    sleep(2)
    show_shuffled_pack(shuffled_pack)
    deal_card(shuffled_pack)
  end

  def deal_card(shuffled_pack)
    case deal_position
    when 't' || 'top'
      puts "Your card is #{shuffled_pack.first}"
    when 'm' || 'middle'
      puts "Your card is #{find_middle_card(shuffled_pack)}"
    when 'b' || 'bottom'
      puts "Your card is #{shuffled_pack.last}"
    end
  end

  def find_middle_card(shuffled_pack)
    mid = (shuffled_pack.length) / 2.0
    shuffled_pack[mid]
  end

  def dealer_output
    puts "shufflin' n' dealin'"
  end

  def pretty_print
    "the #{rank.capitalize} of #{suit.capitalize}s"
  end

  def show_shuffled_pack(shuffled_pack)
    puts "--------------SHUFFLED PACK---------------------"
    puts shuffled_pack
    puts "-----------------------------------"
  end
end
