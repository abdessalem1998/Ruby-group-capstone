require 'date'

class Item
  attr_reader :id, :archived
  attr_accessor :publish_date, :label, :genre, :author, :source

  def initialize(id:, publish_date:, archived: false)
    @id = id || Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    current_date = Date.today.year
    current_date - Date.parse(@publish_date).year > 10
  end
end
