require_relative './book'
require_relative './label'
# require_relative './author'
# require_relative './genre'

def add_book
  puts 'Please enter the books name'
  title = gets.chomp

  puts 'Please enter the books color'
  color = gets.chomp

  puts 'Please enter the authors first name'
  first_name = gets.chomp

  puts 'Please enter the authors last name'
  last_name = gets.chomp

  puts 'Please enter the genre'
  name = gets.chomp

  puts 'Please enter the publisher'
  publisher = gets.chomp

  puts 'Please enter the state of the cover(good or bad)'
  cover_state = gets.chomp

  puts 'Please enter publish date in the following formet[yy-mm-dd]'
  publish_date = gets.chomp.to_s

  puts 'Has the book been archived? [y/n]'
  archived = gets.chomp.downcase == 'y'

  # author = Author.new(first_name, last_name)
  label = Label.new(title, color)
  # genre = Genre.new(name)

  book = Book.new(publisher, cover_state, publish_date)
  @books.push(book)

  # author.add_item(book)
  label.add_item(book)
  # genre.add_item(book)

  puts 'Book successfully added!'
  sleep 0.75
end
