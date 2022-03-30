class Label
  attr_accessor :title, :color
  attr_reader :id, :item

  def initialize(title, color)
    @id = Random.rand(1..100.0)
    @title = title
    @color = color
    @item = []
  end

  def add_item(item)
    @item.push(item)
    item.label = self
  end
end
