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

  def create
    puts "\nCreate a new music album"
    print "\nEnter music_album's title: "
    title = gets.chomp
    print "Enter publish_date(yyyy-mm-dd): "
    date = gets.chomp
    @music_albums.push(MusicAlbum.new(title, date, false))
    save
    puts "music album #{title} created successfully.\n"
  end

  def save
    albums_obj = @music_albums.map do |album|
      { name: album.name, publish_date: album.publish_date,on_spotify: album.on_spotify }
    end
    albums_json = JSON.generate(albums_obj)
    save_file('data/music_albums.json', albums_json)
  end

  def save_file(filename, json)
    file = File.new(filename, 'w')
    file.puts([])
    file.puts(json)
    file.close
  end

end
