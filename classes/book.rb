require_relative './item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state, publish_date)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || @cover_state == 'bad'
  end
end
module BookModule
  def capture_input(request_text)
    print "#{request_text}: "

    gets.chomp
  end

  def add_new_book_details
    puts "\n-------------------------------"
    puts "\nENTER BOOK DETAILS\n\n"

    publisher = capture_input('Input publisher name')
    publish_date = capture_input('Input publish date')
    cover_state = capture_input('Input cover state eg:(good or bad)')

    @app.add_book([publisher, publish_date, cover_state])
    puts "\nNew Book Added!"
    puts "\n-------------------------------"
    add_new_label_details
  end

  def add_new_label_details
    puts "\n-------------------------------"
    puts "\nENTER LABEL DETAILS\n\n"

    title = capture_input('Input label title')
    color = capture_input('Input label color')

    @app.add_label([title, color])
    puts "\nNew Label Added!"
    puts "\n-------------------------------"
  end
end
