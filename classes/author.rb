class Author
  attr_accessor :first_name, :last_name, :last_played_at
  attr_reader :items

  def initialize(first_name, last_name)
    @id = Random.rand(1..1000)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(new_item)
    @item << new_item
    new_item.author = self
  end
end
