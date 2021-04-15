# frozen_string_literal: true

class ShuffleAndDeal
  attr_reader :deal_position, :built_pack

  def initialize(deal_position='', built_pack)
    @built_pack = built_pack
    @deal_position = deal_position
  end

  def shuffle_and_deal
    dealer_output
    built_pack.shuffle
    sleep(2)
    show_shuffled_pack
    deal_card
  end

  private

  def deal_card
    case deal_position
    when 't' || 'top'
      puts "Your card is the #{built_pack.first}"
    when 'm' || 'middle'
      puts "Your card is the #{find_middle_card}"
    when 'b' || 'bottom'
      puts "Your card is the #{built_pack.last}"
    end
  end

  def find_middle_card
    mid = (built_pack.length) / 2.0
    built_pack[mid]
  end

  def dealer_output
    puts "shufflin' n' dealin'"
  end

  def show_shuffled_pack
    puts "--------------SHUFFLED PACK---------------------"
    puts built_pack
    puts "-----------------------------------"
  end
end
