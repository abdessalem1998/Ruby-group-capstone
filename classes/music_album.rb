require_relative 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify, :archived, :name
  attr_reader :publish_date

  def initialize(name, publish_date, on_spotify)
    super(id: nil, publish_date: publish_date)
    @name = name
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?
    archived && @on_spotify
  end
end
