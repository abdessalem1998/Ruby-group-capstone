require_relative './create'
require_relative './list'

class App
  def initialize
    @books = []
    @labels = []
  end

  def run
    puts 'Welcome to Catalog of Things!'
    loop do
      menu
      option = gets.chomp

      get_num option
      break if option == '13'
    end
    puts 'Thank you for using the Catalog of Things!'
  end

  def menu
    puts
    puts 'Please choose an option by entering a number'
    puts '1 - List all books'
    puts '2 - List all music albums'
    puts '3 - List all movies'
    puts '4 - List all games'
    puts '5 - List all genres'
    puts '6 - List all labels'
    puts '7 - List all authors'
    puts '8 - List all sources'
    puts '9 - Add a book'
    puts '10 - Add a music album'
    puts '11 - Add a movie'
    puts '12 - Add a game'
    puts '13 - Exit'
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def get_num(option)
    case option
    when '1'
      list_all_books
    when '2'
      list_all_music_albums
    when '3'
      list_all_movies
    when '4'
      list_all_games
    when '5'
      list_all_genres
    when '6'
      list_all_labels
    when '7'
      list_all_authors
    when '8'
      list_all_sources
    when '9'
      add_book
    when '10'
      add_music_album
    when '11'
      add_movie
    when '12'
      add_game
    else
      puts 'Please enter a number between 1 and 7'
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity
end
