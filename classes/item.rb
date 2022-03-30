require 'date'

class Item
  attr_accessor :publish_date, :archived, :label, :author, :source, :genre
  attr_reader :id

  def initialize(publish_date, archived = false)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
    @label = label
  end

  # setter methods
  def genre(genre)
    @genre = genre
  end

  def author(author)
    @author = author
  end

  def source(source)
    @source = source
  end

  def label=(label)
    @label = label
    label.item.push(self) unless label.item.include?(self)
  end

  def can_be_archived?
    current = Date.today

    difference_in_days = (current - @publish_date).to_i
    (difference_in_days / 365.25) > 10
  end

  def move_to_archive
    @archived = true if can_be_archived? == true
  end
end
