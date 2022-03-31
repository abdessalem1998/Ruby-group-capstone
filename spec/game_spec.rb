require './classes/game'
require 'date'

describe Game do
  context 'Game tests' do
    before :each do
      @game = Game.new('Fifa 2022', 'Y', '2010-08-06')
    end

    it 'should be a Game class instance' do
      expect(@game).to be_an_instance_of Game
    end

    it 'should return a correct Game name' do
      expect(@game.game_name).to eq 'Fifa 2022'
    end

    it 'should return true since the game is multiplayer' do
      expect(@game.multiplayer).to eq 'Y'
    end

    it 'shold return the date the game was last played' do
      expect(@game.last_played_at).to eq '2010-08-06'
    end

    it 'shoud return true since the last played date is mor than 2 years ago' do
      expect(@game.can_be_archived?).to eq true
    end
  end
end
