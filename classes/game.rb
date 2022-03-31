require './item'
require 'date'

class Game

    def initialize(multiplayer, last_played_at)
        @multiplayer = multiplayer
        @last_played_at = last_played_at
    end

    def can_be_archived?
        now = Date.now
        timeElapsed = (now - last_played_at).to_i
        super() and (timeElapsed > 2.year)
    end
end
