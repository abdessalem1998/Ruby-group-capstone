require 'json'
module GenreModule
  def retrieve_genre
    json = File.read('data/genre.json')
    if json.empty?
      []
    else
      parsed_json = JSON.parse(json)
      parsed_json.map do |g|
        genre = Genre.new(g['name'])
        genre
      end
    end
  end

  def display_genre(genres)
    if genres.length.zero?
      puts "\nThere are no genres in the Catalog-of-my-things!"
    else
      puts "\nHere are all the genres in the Catalog-of-my-things:"
      genres.each_with_index do |genre, index|
        puts "#{index + 1}. name: #{genre.name}"
      end
    end
  end

  def create
    puts "\nCreate a new music album"
    print "\nEnter music_album's title: "
    title = gets.chomp
    print 'Enter publish_date(yyyy-mm-dd): '
    date = gets.chomp
    @music_albums.push(MusicAlbum.new(title, date, false))
    save
    puts "music album #{title} created successfully.\n"
  end

  def save
    albums_obj = @music_albums.map do |album|
      { name: album.name, publish_date: album.publish_date, on_spotify: album.on_spotify }
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
