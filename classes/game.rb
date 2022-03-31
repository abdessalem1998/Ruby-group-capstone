require_relative './item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at, :game_name

  def initialize(game_name, multiplayer, last_played_at)
    super(publish_date)
    @game_name = game_name
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    now = Date.now
    time_elapsed = (now - last_played_at).to_i
    super() and (time_elapsed > 2.year)
  end
end
