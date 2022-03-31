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

  def display(albums)
    if albums.length.zero?
      puts "\nThere are no albums in the Catalog-of-my-things. You can create a book from the main menu."
    else
      puts "\nHere are all the albums in the Catalog-of-my-things:"
      albums.each_with_index do |album, index|
        puts "#{index + 1}. name: #{album.name}, publish_date: #{album.publish_date}"
      end
    end
  end
end
