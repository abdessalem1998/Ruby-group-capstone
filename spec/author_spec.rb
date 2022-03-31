require './classes/author'
require './classes/item'
describe Author do
  context 'Author tests' do
    before :each do
      @author = Author.new('Sadiq', 'Habil')
      @item = Item.new('2022/07/5')
    end

    it 'should be an Author class instance' do
      expect(@author).to be_an_instance_of Author
    end

    it 'should return a correct Author name' do
      expect(@author.first_name).to eq 'Sadiq'
    end

    it 'should return a correct Author last name' do
      expect(@author.last_name).to eq 'Habil'
    end

    it 'should return an array' do
      expect(@author.items).to eq []
    end

    it 'should add an item' do
      @author.add_item(@item)
      expect(@author.items.size).to eq(1)
      expect(@author.items[0]).to eq(@item)
    end
  end
end
