require_relative '../classes/genre'
require_relative '../classes/item'

describe 'Genre test' do
  context 'Should create a new genre' do
    new_item = Item.new(id: nil, publish_date: Date.parse('2000/11/20'))
    genre = Genre.new('Rock and Roll')

    it 'creates a new genre' do
      expect(genre.name).to eq 'Rock and Roll'
    end

    it 'add a new item' do
      genre.add_item(new_item)
      expect(genre.items.length).to eq 1
    end

    it 'has a publish date' do
      expect(new_item.publish_date).to eq Date.parse('2000/11/20')
    end
  end
end
