# frozen_string_literal: true

RANKS = %i[ace two three four five six seven eight nine ten jack queen king].freeze
SUITS = %i[heart club diamond spade].freeze

class BuildPack

  attr_reader :rank, :suit

  def initialize(rank='',suit='')
    @rank = rank
    @suit = suit
  end

  def self.build_pack
    RANKS.flat_map { |rank| SUITS.map { |suit| BuildPack.new(rank, suit).pretty_print } }
  end

  def pretty_print
    "#{rank.capitalize} of #{suit.capitalize}s"
  end

end
