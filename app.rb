require './modules/music_album_module'
require './classes/music_album'
require './modules/genre_module'
require './classes/genre'

class App
  include Music
  include GenreModule
  def initialize
    @music_albums = retrieve_music_albums
    @genre = retrieve_genre
  end

  def print_start_message
    puts 'Please choose an option:'
    puts '1  - List all books'
    puts '2  - List all music albums'
    puts '3  - List all movies'
    puts '4  - List of games'
    puts '5  - List all genres'
    puts '6  - List all labels'
    puts '7  - List all authors'
    puts '8  - List all sources'
    puts '9  - Add a book'
    puts '10 - Add a music album'
    puts '11 - Add a movie'
    puts '12 - Add a game'
    puts '13 - Exit'
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def execute(option)
    case option
    when 1
      puts 'List all books'
    when 2
      display(@music_albums)
    when 3
      puts 'List all movies'
    when 4
      puts 'List of games'
    when 5
      display_genre(@genre)
    when 6
      puts 'List all labels'
    when 7
      puts 'List all authors'
    when 8
      puts 'List all sources'
    when 9
      puts 'Add a book'
    when 10
      create
    when 11
      puts 'Add a movie'
    when 12
      puts 'Add a game'
    else
      puts 'please enter a valid option'
    end
  end

  # rubocop:enable Metrics/CyclomaticComplexity
  def start
    puts 'Welcome to our Catalog of my things App!'
    loop do
      print_start_message

      option = gets.chomp.to_i

      if option == 13
        puts 'thanks!!'
        break
      end

      execute(option)
    end
  end
end
