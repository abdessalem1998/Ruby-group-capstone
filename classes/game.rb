require_relative './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at, :game_name

  def initialize(game_name, multiplayer, last_played_at)
    super(publish_date)
    @game_name = game_name
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    bool = super
    now_year = Time.new.year
    year_last_played = @last_played_at.year
    archive = now_year - year_last_played
    archive && bool
  end
end
