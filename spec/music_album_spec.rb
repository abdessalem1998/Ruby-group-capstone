require 'date'
require_relative '../classes/music_album'

describe 'Music album test' do
  context 'Should create a new music album' do
    new_album = MusicAlbum.new('music 1', Date.parse('2012-12-12'), true)

    it 'creates a new music album' do
      expect(new_album.name).to eq('music 1')
    end

    it 'it should be an instance of MusicAlbum class' do
      expect(new_album).to be_an_instance_of MusicAlbum
    end

    it 'should have a published date of 1998/10/24' do
      expect(new_album.publish_date).to eq Date.parse('2012-12-12')
    end

    it 'should be on spotify' do
      expect(new_album.on_spotify).to eq(true)
    end
  end
end
