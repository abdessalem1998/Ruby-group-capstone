require 'json'
module Music
  def retrieve_music_albums
    json = File.read('data/music_albums.json')
    if json.empty?
      []
    else
      parsed_json = JSON.parse(json)
      parsed_json.map do |music|
        new_music = MusicAlbum.new(music['name'], music['publish_date'], music['on_spotify'])
        new_music
      end
    end
  end
end
