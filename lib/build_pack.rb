# frozen_string_literal: true

RANKS = %i[ace two three four five six seven eight nine ten jack queen king].freeze
SUITS = %i[heart club diamond spade].freeze

class BuildPack

  def self.build_pack
    RANKS.flat_map { |rank| SUITS.map { |suit| ShuffleAndDeal.new(rank, suit).pretty_print } }
  end

end
